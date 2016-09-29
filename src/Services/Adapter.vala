// -*- Mode: vala; indent-tabs-mode: nil; tab-width: 4 -*-
/*-
 * Copyright (c) 2016 elementary LLC.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * Authored by: Corentin Noël <corentin@elementary.io>
 */

[DBus (name = "org.bluez.Adapter1")]
public interface Bluetooth.Services.Adapter : Object {
    public abstract void remove_device (ObjectPath device) throws IOError;
    public abstract void set_discovery_filter (HashTable<string, Variant> properties) throws IOError;
    public abstract void start_discovery () throws IOError;
    public abstract void stop_discovery () throws IOError;

    public abstract string[] UUIDs { public owned get; private set; }
    public abstract bool discoverable { public get; public set; }
    public abstract bool discovering { public get; private set; }
    public abstract bool pairable { public get; public set; }
    public abstract bool powered { public get; public set; }
    public abstract string address { public owned get; private set; }
    public abstract string alias { public owned get; public set; }
    public abstract string modalias { public owned get; private set; }
    public abstract string name { public owned get; private set; }
    public abstract uint @class { public get; private set; }
    public abstract uint discoverable_timeout { public get; private set; }
    public abstract uint pairable_timeout { public get; private set; }
}
