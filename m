Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E85E1E9934
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 19:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iXc7QmabZ0s9KsYXmtNQazDNyLzZ8o/8No3I/M/nP34=; b=ZoU2jVsRNsy/TuKzsywPbe3eK
	m4GAdr3ekLWM0nkNEe/8O+Z3KOB8J+Asz/fiCRfjErS6O1oDO1TJc1IL3hjza3SuSuwT7XDbZeTJp
	jopZR166MA8obPg5eX+Rvx2BLiFUrsQF2ED4IFACJMwlRlCPy2Tt5V+O46i/PiFnR4rEnsad7rqmW
	wduJsIxNbEohdQb/lyYMPGOA6o82P1E37d2xazaBRNEbypFv6d+ihOlQR64hTeoaEOyxj5qCd60gZ
	EAw74r+XTbDpTB9Ypf2vNo4Kf8x360RivNkPy/jxJLmz+fm3ekJmE4KVszd8Rz4qMVZCw+Xw6ETud
	ZLIHaHQJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfRXg-0004Yw-82; Sun, 31 May 2020 17:14:36 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfRXT-0004Yd-Dg
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 17:14:25 +0000
Received: by mail-qt1-x841.google.com with SMTP id z1so6016936qtn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 31 May 2020 10:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=W9YeYm7+qwNuukA3pDM3CW8tbGlWmscS3K1roRx6pbI=;
 b=iUHsDEQvhBX0Me0H+4CxfQ4jBkPFyNUs33ZzzTByxrBU7MtCralM4uy9C3vpDURyR1
 zOzfmQpTA0E1Pz/SNGafACSKn5AOLSosBeLmF8JR8EwZT1hjDvp9yCBW6fgyErEChEBD
 GO5Co/WqOebMXxIWPkIWJRvIQAVTya1ynuaB7TXzp3HrFu1EDNvYgia9P8T53eU1qBR1
 +x1K0j6v5U1aQhnmXxGNKeyG5BAzVKY1qd5Gg8gk+81cuyFG6ccgZerlRK/QUs+Z2y9T
 WzwYgvNVo1T5E0V0makiXEQzqvZWHlZuC6Bq7JkmwDgcE0ioYmcIr+J+sf4XBvMocDfI
 m9eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=W9YeYm7+qwNuukA3pDM3CW8tbGlWmscS3K1roRx6pbI=;
 b=V9fbheR12M2uTXZD6IC6fmbA33/AqVowlLDag3QynSz32k6XtQC+ANFfcME3sVPq8M
 4oW2QjV7Kq2XPtIKcZ/rDUezGXfaMinm4BwtSrDoUS6gUoYNpMmStf5Fq6YPx/QgJe6y
 79b+Ajtz8azzzVVDXAX5c6p6xezb7QW9q7ZbVmwyrQGw8YkU3Oh2lra8ThTgnUPDOknR
 Ob2+OTjm5Sewz5EFGSxvrtzcpfKrl1ykL4CCz7OOuH3T/wUEcdnYt799Jr77tdMtEk0w
 iat7nFM047A0IobheRRDN4bWsUS4jDANWCbiWJpt9/GzRRxhD8fTxK66fTzj8ueSZiUu
 5QMg==
X-Gm-Message-State: AOAM530wIigTQErghNVmqEq+BNRIUJcDEgmnjTSKNJeH4TNh560XX7/R
 2Ebz2E0ajDB7+dByMb+k/2g=
X-Google-Smtp-Source: ABdhPJzMHHJ5AL5aj6Axy9koQLZPTNb5yDhSpVvm24Lz8ySrSUlIVplbbv5DStjArEYpkCw0sy27EA==
X-Received: by 2002:ac8:458d:: with SMTP id l13mr18184698qtn.279.1590945262004; 
 Sun, 31 May 2020 10:14:22 -0700 (PDT)
Received: from shinobu (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id m10sm6369658qtq.79.2020.05.31.10.14.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 May 2020 10:14:21 -0700 (PDT)
Date: Sun, 31 May 2020 13:14:06 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v2 0/4] Introduce the Counter character device interface
Message-ID: <20200531171351.GA10597@shinobu>
References: <cover.1589654470.git.vilhelm.gray@gmail.com>
 <20200524172542.31ff6ac7@archlinux>
 <20200524175439.GA14300@shinobu>
 <20200531161813.658ffdfb@archlinux>
MIME-Version: 1.0
In-Reply-To: <20200531161813.658ffdfb@archlinux>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_101423_466719_7E2B57F9 
X-CRM114-Status: GOOD (  44.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, david@lechnology.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com, syednwaris@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: multipart/mixed; boundary="===============7425712141532214915=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7425712141532214915==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y7xTucakfITjPcLV"
Content-Disposition: inline


--Y7xTucakfITjPcLV
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 31, 2020 at 04:18:13PM +0100, Jonathan Cameron wrote:
> On Sun, 24 May 2020 13:54:39 -0400
> William Breathitt Gray <vilhelm.gray@gmail.com> wrote:
> > After giving this some more thought, I believe human-readable sysfs
> > attributes are the way to go to support configuration of the character
> > device. I am thinking of a system like this:
> >=20
> > * Users configure the counter character device via a sysfs attribute
> >   such as /sys/bus/counter/devices/counterX/chrdev_format or similar.
> >=20
> > * Users may write to this sysfs attribute to select the components they
> >   want to interface -- the layout can be determined as well from the
> >   order. For example:
> >=20
> >   # echo "C0 C3 C2" > /sys/bus/counter/devices/counter0/chrdev_format
>=20
> I guess that 'just' meets the sysfs requirement of one file =3D> one thin=
g.

We can massage this further to make it more apt, but the main idea here
is that configuration should be separate from our data; and that
configuration should be performed via sysfs.

> >   This would select Counts 0, 3, and 2 (in that order) to be available
> >   in the /dev/counter0 node as a contiguous memory region.
> >=20
> >   You can select extensions in a similar fashion:
> >=20
> >   # echo "C4E2 S1E0" > /sys/bus/counter/devices/counter0/chrdev_format
> >=20
> >   This would select extension 2 from Count 4, and extension 0 from
> >   Signal 1.
>=20
> I'm not totally clear why we'd want to have a chrdev access to extensions.
> To be honest I'm not totally sure what an extension is today as it's been
> a week ;)

In the context of the Counter subsystem, an extension is data/control
that is not one of the core components of the Counter paradigm (i.e. not
a Counter, Signal, nor Synapse). Extensions essentially represent
configuration options for the counter device and auxiliary
functionality.

The "Implementation" section of the Generic Counter documentation
Documentation/driver-api/generic-counter.rst file gives some good
examples of extensions, but I'll provide an example here for the sake of
this new character device interface.

Suppose we have a robot controlling a laser on a dual-axes positioning
table. A counter device is used to track the position of the laser:
Count 0 represents position on the X axis, while Count 1 represents
position on the Y axis. Because this machine is moving across two axes
at the same time, we want to grab both counts together via the
character device subsystem (grabbing them separately via sysfs would be
imprecise due to the inherent latency).

The motors are physically able the robot out of the work area, which is
not something we want to happen. A common setup in systems like this is
to set soft boundaries on the counter device to represent the edge of
the work area; when the boundary is passed, a flag is set high on the
device to indicate the position is out-of-bounds.

On the Counter subsystem side, this counter device would appear as
having four sysfs attributes: count0/count, count0/boundary,
count1/count, and count1/boundary. In terms of the character device
interface, we could perform a setup like this:

# echo "C0E0 C0 C1E1 C1" > counter0/chrdev_format

Yielding the following /dev/counter0 memory layout:

+------------+-----------------+------------+-------------------+
| Byte 0     | Byte 1 - Byte 8 | Byte 9     | Byte 10 - Byte 17 |
+------------+-----------------+------------+-------------------+
| Boundary 0 | Count 0         | Boundary 1 | Count 1           |
+------------+-----------------+------------+-------------------+

Now a single read() operation can grab the counts together as well as
their respective boundary flags to verify whether the current counts are
valid. This is a scenario where using sysfs wouldn't be viable to use:
we could check the count0/boundary sysfs attribute first, but by the
time we read the count0/count sysfs attribute second, the robot has
already moved to a new (possibly invalid) position.

> Perhaps an example?  I see timestamp below.  What is that attached to?
> If we gave multiple counters, do they each have a timestamp?

Some counter devices feature "timestamp" functionality. I haven't yet
implemented this in the Counter subsystem because it's new functionality
and I want to keep this patchset limited to the existing Counter
subsystem functionality support.

However, to briefly go into the topic (we'll need to discuss this more
in-depth before committing to a Counter subsystem design), some counter
devices can keep track of historic counts based on various events; we
call these "timestamps", although they may not necessary be tied to a
wall-clock time.

For example, quadrature encoders often have an "index" signal in
addition to the quadrature A and B lines. This index signal may be used
to home a positioning device, or perhaps to indicate that a full
revolution -- or some other event -- has occurred. It's common for
quadrature counter devices to provide a FIFO buffer that logs these
"index" events by saving the current count when that respective index
signal goes high. Thus we have a timestamp buffer.

In the context of the Counter subsystem, I believe we will end up
implementing these timestamps as Count extensions (or Device extensions
if it's a single buffer for the entire device). I'm not sure yet what
the sysfs attribute will display, but I'm guessing we'll have a
respective /sys/bus/counter/devices/counterX/countX/timestamps sysfs
attribute or similar.

The character device implementation should be more straight forward I
would imagine. Since it's a memory buffer, I think we can provide access
to that buffer directly in the chrdev:

# echo "C0E0 C1E1" > /sys/bus/counter/devices/counter0/chrdev_format

Yielding the following /dev/counter0 memory layout for 32-byte
timestamps:

+---------------------+---------------------+
| Byte 0 - Byte 31    | Byte 32 - Byte 63   |
+---------------------+---------------------+
| Timestamps Buffer 0 | Timestamps Buffer 1 |
+---------------------+---------------------+

> > * Users may read from this chrdev_format sysfs attribute in order to see
> >   the currently configured format of the character device.
> >=20
> > * Users may perform read/write operations on the /dev/counterX node
> >   directly; the layout of the data is what they user has configured via
> >   the chrdev_format sysfs attribute. For example:
> >=20
> >   # echo "C0 C1 S0 S1" > /sys/bus/counter/devices/counter0/chrdev_format
> >=20
> >   Yields the following /dev/counter0 memory layout:
> >=20
> >   +-----------------+------------------+----------+----------+
> >   | Byte 0 - Byte 7 | Byte 8 - Byte 15 | Byte 16  | Byte 17  |
> >   +-----------------+------------------+----------+----------+
> >   | Count 0         | Count 1          | Signal 0 | Signal 2 |
> >   +-----------------+------------------+----------+----------+
> >=20
> > * Users may perform select/poll operations on the /dev/counterX node.
> >   Users can be notified if data is available or events have occurred.
>=20
> One thing to think about early if watermarks.  We bolted them on
> late in IIO and maybe we could have done it better from the start.
> I'd almost guarantee someone will want one fairly soon - particularly
> as it's more than possible you'll have a counter device with a
> hardware fifo.  I have some vague recollection that ti-ecap
> stuff could be presented as a short fifo for starters.
>=20
> >=20
> > The benefit of this design is that the format is robust so users can
> > choose the components they want to interface and in the layout they
> > want. For example, if I am writing a userspace application to control a
> > dual-axis positioning table, I can select the two counts I care about
> > for the position axes. This allows me to read just those two values
> > directly from /dev/counterX with a simple read() call, without having to
> > fumble around seeking to an offset and parsing the layout.
>=20
> I wonder if I'm over thinking things for counters, but you may run into
> the complexity of different counters having different sampling frequencie=
s.
> Here you are suggesting a scheme that I think ends up closer to IIO than
> input.   That makes this case a pain.   Input takes the view that it's
> fine to have data coming in any order and frequency because every
> record is self describing.  I'm not sure it matters here, but it is
> a nice layer of flexibility, but you do loose the efficiency of
> the description being external to the data flow.

I think one of the downsides to using a single a single character device
node to represent the entire counter device is that the frequency of two
individual counts may differ from each other. For example, using the
dual-axes positioning scenario from earlier, one axis might change more
frequently than the other (e.g. a conveyor belt situation where X is
always moving forward, while Y only changes when a part appears within
the work area).

In these cases, I think the Input subsystem approach might be better
because the user can just wait for events at large and handle each event
as it comes in, rather than try to coordinate between them all in a
shared memory space. The shortcoming with this approach is that we lose
the ability to grab Counts together at the same time, such as we require
in the constantly moving robot example earlier.

Perhaps what might work is to implement Counter events (perhaps even
timestamps) using the Input subsystem, and leave the Counter character
device interface to simple read/write operations. But we'll need to
investigate this further because we lack a concept of "events" right now
in the Counter subsystem.

> > Similarly, support for future extensions is simple to implement. When
> > timestamp support is implemented, users can just select the desired
> > timestamp extension and read it directly from the /dev/counterX node;
> > they should also be able to perform a select()/poll() call to be
> > notified on new timestamps.
> >=20
> > So what do you think of this sort of design? I think there is a useful
> > robustness to the simplicity of performing a single read/write call on
> > /dev/counterX.
>=20
> It seems like a reasonable solution to me.  The only blurry
> boundary to my mind is what level of buffering is behind this.
> The things you can do are open, non blocking read, blocking read and sele=
ct.
>=20
> If we have a counter that is sampled on demand, then=20
> 1) Non blocking read - makes not sense, fair enough I guess, could make it
>    the same as a blocking read.
> 2) Blocking read - reads from the sensor.
> 3) Select, meaningless as all reads are done on demand - so I guess you
>    hardwire it to return immediately.
> 4) open. Nothing special
>=20
> If you have a counter that is self clocking then data gets pushed into so=
me
> software structure (probably kfifo)
> 1) Blocking read, question of semantics to resolve
>    a) Return when 'some' data is available (like a socket)
>    b) Return when 'requested amount of data is available'?
> 2) Non blocking read. Return whatever happens to be available.
> 3) Select.  Semantics to be defined.
>    a) Some data?
>    b) Watermark based (default watermark is 0 so any data triggers it)
> 4) Open.  Starts up sampling of configured set - (typically turns on the
>    device, enables interrupt output etc.)
>=20
> So some corners to resolve but should all work.

I'm not familiar with the "watermark" terminology. Would you be able to
explain it bit more for me. Is this simply a flag that indicates if data
has changed from the last time it was checked?

> > > >    Moving this selection to a sysfs attribute and dedicating the
> > > >    character device to just data transfer might be a better design.=
 If
> > > >    such a design is chosen, should the selection attribute be
> > > >    human-readable or binary? =20
> > >=20
> > > Sysfs basically requires things are more or less human readable.
> > > So if you go that way I think it needs to be.
> > >  =20
> > > >=20
> > > > 2. How much space should allotted for strings?
> > > >=20
> > > >    Each Counter component and extension has a respective size allot=
ted
> > > >    for its data (u8 data is allotted 1 byte, u64 data is allotted 8
> > > >    bytes, etc.); I have arbitrarily chosen to allot 64 bytes for
> > > >    strings. Is this an apt size, or should string data be allotted =
more
> > > >    or less space? =20
> > >=20
> > > I'd go with that being big enough, but try to keep the expose interfa=
ce
> > > such that the size can change it it needs to the in the future. =20
> >=20
> > Following along with the separation of control vs data as discussed
> > above, we could support a more variable size by exposing it through a
> > sysfs attribute (maybe a chrdev_string_size attribute or similar).
>=20
> I'm unconvinced you'd ever want to return a string via the chardev.
> People are using the chrdev to get efficiency. String based data flows
> are rarely that!

That's a good point. I don't think there is a situation right now where
we need to deliver strings via the character device interface, so I
think I'll remove that in v3.

William Breathitt Gray

--Y7xTucakfITjPcLV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl7T5d4ACgkQhvpINdm7
VJLNXw/8D+xSsA/U+W8RuQ5HFvOyF69YvH72Yd7xTmtnPNpzwEPZSrWueS39olTJ
PBgU5sR+OAWLYuvOop0K1CWas+HMubgIgn12vfd3qUvXO9Ec8xBIemm/fdTnAZ6c
ixHDsPxuRi6aFWmmBvYvUsQ3T0/hpyobcmBThUYlB0Y//6zd3uXblu542iqZibpQ
C81kFcZ7oaX7j07HyeyuKMqxbJ+bXnWguF0OEIZTV7LnKCBTH/gD4z1RLt6glk1r
1Wnocu8mLxe++kM0a3PGqCHluAwePD4bNPE1iU8QMjJF8Cn0Qkt7YqB71PPHdbD2
QhNcyOEvsPeR7P5u9LdU73lqy40WTxdr/80oKPVBO7zLiDQJzqjeky6gnoc31vdR
yJmO9ATWeNx5nbEPuZl87YxLMME1cnBV7OP5tBqbFQSCj6wBssJX9uiJPnw7tGbq
SB0+HI/qOzlYdmye5KC3KpgXgP8hLb0unqj4kdxREROoKsy//T3VR9z/cI0hC6GY
dFDHwsdfci0RgKu8KJYH5omnYNiWCNWr0Ty5xp8gnqmTNArJfpXwc2bq9Y7l6vTR
q603Hp3RfliMG8l7OUYSYI2ODh+AHJXue9IZnhtqxAYXHP0dfjPKJZIPAWqliZz3
WOMD28blIxaDkDQzYVXw2VZPYBjXfpCvbyIyCadLsHKpxSVKFEE=
=UidO
-----END PGP SIGNATURE-----

--Y7xTucakfITjPcLV--


--===============7425712141532214915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7425712141532214915==--

