Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6706A1C2CAF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 15:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v8mJcPFvsVhFZjPDEdAS6SVugBj9VWumVn3PjYTeE3A=; b=UTKpLwdisoQ1cT2xJ6GvJjv3S
	AB5GG2mr3giTIKCLGqLqaKK2QlZajQ0Og91CBlFVFaC9IIz9C0C5zyAuUp6szpPts3gPOTIQOzPwU
	Iq009/ZWFpHryQ/gLoOoArYEZCvzPd1Y1AUR/fqA/mGLq2M8OMPmJcnLzHiNikzg7COmWCN9zImYE
	kJtDUgqEpoMS9THXG91CVHDzNupT+/qOkN5v+epP93ZXgxalLHpu9Oc2eaW8BLY6rin36stquKMDZ
	ffS+9BusUlXWyCHYhJ5fmCAndccmz/wjwLHZ/0tlryxyHMLQZXvTw7i+Qj51S3J5u+EwQfSju5K8h
	RLSJt/Xjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVEU5-0000GL-OI; Sun, 03 May 2020 13:16:41 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVETz-0000Fm-69
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 13:16:37 +0000
Received: by mail-qt1-x844.google.com with SMTP id l18so1239564qtp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 06:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=r4aotHQFi1mWuOgN+EX3J88KF8BQaJPh0rOHnS8qtnQ=;
 b=YPdADKBrir0+kb4glyxmusai9uMVf4ytm8ue+9rzB/bqfv8YHVjzs6mT5jaOFRApIq
 bpWm0JyDRrBNRxnl0GJKlVF5wtMWlrpLhyyLfbGAEsCicz2ObN4kZPp98v6IrVBIi1aM
 sXixXNBQX85HrhUPdjrCQolTzDYByGaQXt/TnnqBh4j9134cOweMpq8OQg2fiAT5C48+
 eGJ4QjTLB/nCd6MwYs5QE3vKxrUaARAiaxNKQ6ymaw/Q5HeCeuyHeplq/uXQIStS3+4N
 UgGyLxsqNBu3hwhaLe7HtDVfCkq0TBa5UrUmYO+65hcqo1ctI8QRb5YRZUBmo/G9xGXE
 enKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=r4aotHQFi1mWuOgN+EX3J88KF8BQaJPh0rOHnS8qtnQ=;
 b=ag28a5qeZaTnWCnwnvHk5DWveMMQuc9LSGAMq7ZzYWHlo2bGUSszoZYbQPgwaLj69h
 sOdRN8DbHQYrrc59R08gkHU6F1+uDwCq2LsGc473Ln/eXTTcyWAHyteTDMQzwWnAZvEw
 lKwYHkfwulhrZiy6471Svx0Yc1C+6aUOHQLQ+oG9R7AaAZBGmJtKE7YK3IeQGx8LZ8aM
 VSgHk2GGc0K7jHcb0j4uUaXTbWwReA4uCE6mUVMMFZsY9tc5zdvHcOGz4wbiRHqro8WW
 8eLdxv9XeXJ3F2fGYWjgdaHHD9Z4rywDJO1EdkSx/mOmzK6s+EDXXZ/+JNF0+3IU+FH/
 0Y8g==
X-Gm-Message-State: AGi0PubinUTVxRBwuouY7qYNdWgWnVSafjgmcyP1irguyV7jJO+33XrV
 VFtYk3hiU6mDWk+VHSGr8PY=
X-Google-Smtp-Source: APiQypIKkprM9+MilszOvMKlPl4VRjfQ5fDH7dQCzxppC4siFRUf7Cdo1FLPpYufH1G9Q7u66rhg6A==
X-Received: by 2002:ac8:7448:: with SMTP id h8mr12942772qtr.225.1588511793705; 
 Sun, 03 May 2020 06:16:33 -0700 (PDT)
Received: from shinobu (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id m12sm7898792qtu.42.2020.05.03.06.16.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 06:16:32 -0700 (PDT)
Date: Sun, 3 May 2020 09:16:18 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH 0/4] Introduce the Counter character device interface
Message-ID: <20200503131618.GA4758@shinobu>
References: <cover.1588176662.git.vilhelm.gray@gmail.com>
 <20200430201345.GX51277@piout.net> <20200501154519.GA4581@icarus>
 <20200502175536.1e9ac944@archlinux>
 <20200503092316.GA570888@kroah.com>
 <20200503135458.38debbbf@archlinux>
MIME-Version: 1.0
In-Reply-To: <20200503135458.38debbbf@archlinux>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_061635_252197_320D6C0E 
X-CRM114-Status: GOOD (  34.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
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
Cc: kamel.bouhara@bootlin.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, david@lechnology.com,
 felipe.balbi@linux.intel.com, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, gwendal@chromium.org,
 linux-kernel@vger.kernel.org, syednwaris@gmail.com, mcoquelin.stm32@gmail.com,
 patrick.havelange@essensium.com, fabrice.gasnier@st.com,
 fabien.lahoudere@collabora.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: multipart/mixed; boundary="===============3387377566397443103=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3387377566397443103==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k+w/mQv8wyuph6w0"
Content-Disposition: inline


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 03, 2020 at 01:54:58PM +0100, Jonathan Cameron wrote:
> On Sun, 3 May 2020 11:23:16 +0200
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
>=20
> > On Sat, May 02, 2020 at 05:55:36PM +0100, Jonathan Cameron wrote:
> > > On Fri, 1 May 2020 11:46:10 -0400
> > > William Breathitt Gray <vilhelm.gray@gmail.com> wrote:
> > >  =20
> > > > On Thu, Apr 30, 2020 at 10:13:45PM +0200, Alexandre Belloni wrote: =
=20
> > > > > Hi,
> > > > >=20
> > > > > On 29/04/2020 14:11:34-0400, William Breathitt Gray wrote:   =20
> > > > > > Over the past couple years we have noticed some shortcomings wi=
th the
> > > > > > Counter sysfs interface. Although useful in the majority of sit=
uations,
> > > > > > there are certain use-cases where interacting through sysfs att=
ributes
> > > > > > can become cumbersome and inefficient. A desire to support more=
 advanced
> > > > > > functionality such as timestamps, multi-axis positioning tables=
, and
> > > > > > other such latency-sensitive applications, has motivated a reev=
aluation
> > > > > > of the Counter subsystem. I believe a character device interfac=
e will be
> > > > > > helpful for this more niche area of counter device use.
> > > > > >=20
> > > > > > To quell any concerns from the offset: this patchset makes no c=
hanges to
> > > > > > the existing Counter sysfs userspace interface -- existing user=
space
> > > > > > applications will continue to work with no modifications necess=
ary. I
> > > > > > request that driver maintainers please test their applications =
to verify
> > > > > > that this is true, and report any discrepancies if they arise.
> > > > > >    =20
> > > > >=20
> > > > > On that topic, I'm wondering why the counter subsystem uses /sys/=
bus
> > > > > instead of /sys/class that would be more natural for a class of d=
evices.
> > > > > I can't see how counters would be considered busses. I think you =
should
> > > > > consider moving it over to /sys/class (even if deprecating
> > > > > /sys/bus/counter will be long).   =20
> > > >=20
> > > > At the time I wasn't quite familiar with sysfs development so I was
> > > > following the iio sysfs code rather closely. However, I see now that
> > > > you're probably right: this isn't really a bus but rather a collect=
ion
> > > > of various types of counters -- i.e. a class of devices.
> > > >=20
> > > > Perhaps I should migrate this then to /sys/class/counter. Of course=
, the
> > > > /sys/bus/counter location will have to remain for compatibility with
> > > > existing applications, but I think a simple symlink to the new
> > > > /sys/class/counter location should suffice for that.
> > > >=20
> > > > If anyone sees an issue with this give me a heads up. =20
> > > To just address this point as I've not read the rest of the thread ye=
t...
> > >=20
> > > I would resist moving it.  This one is an old argument.=20
> > >=20
> > > Some info in https://lwn.net/Articles/645810/
> > > As that puts it a "bus" is better known as a "subsystem".
> > >=20
> > > When we originally considered class vs bus for IIO, the view expressed
> > > at the times was that the whole separation of the two didn't mean any=
thing
> > > and for non trivial cases bus was always preferred.  It's nothing to =
do
> > > with with whether the thing is a bus or not.  Now I suppose it's poss=
ible
> > > opinion has moved on this topic...    However, I'd say there
> > > is really 0 advantage in moving an existing subsystem even if opinion
> > > has changed.
> > >=20
> > > +CC Greg in case he wants to add anything. =20
> >=20
> > Traditionally classes are a unified way of representing data to
> > userspace, independant of the physical transport that the data came to
> > userspace on (i.e. input devices are a class, it doesn't matter if they
> > came on serial, USB, PS/2, or virtual busses.)
> >=20
> > A bus is traditionally a collection of drivers that all talk on a same
> > physical transport, that then expose data from that transport to a
> > specific userspace class.  Again, think USB mice drivers, serial mice
> > drivers, PS/2 mice drivers.
> >=20
> > Busses bind a driver to a device it creates based on that "bus".
> > Classes create virtual devices that export data to userspace for a
> > specific common protocol.
> >=20
> > Does that help?
> >=20
> > One can argue (and have properly in the past), that classes and busses
> > really are not all that different, and there used to be code floating
> > around that made them the same exact thing in the kernel, with loads of
> > userspace sysfs symlinks to preserve things, but those are well out of
> > date and I don't think anyone feels like reviving them.  However I think
> > systemd might still have code in it to work properly if that ever
> > happens, haven't looked in a few years...
> >=20
> > thanks,
> >=20
> > greg k-h
>=20
> Thanks for the explanation. Here key thing to my mind is counters went
> in as a bus and should stay so because there is limited benefit in a move
> and it would be ABI breaking.  Maybe it 'should' have been a class, but
> too late now.
>=20
> Jonathan

Very well, that's an understandable reason to avoid incompatibility
issues down the road, and userspace applications apparently care little
about the difference between /sys/bus and /sys/class anyway, so I'll
keep things as they are now and avoid those unnecessary changes.

William Breathitt Gray

--k+w/mQv8wyuph6w0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6uxBMACgkQhvpINdm7
VJJLOg//V+aeTlvo+QIaEqvZg5txGs0sbp8PqGZ/uWuirkxS/UKKkXEk0bGjJMsM
zrKCQ9xIWgtY47UtBENQinf6rCtKz810MQUrHYhPCp0iTWiOlRhTuapqHHxTX0sT
zFGYPpdkpep0+cMSmp8CGOv0W5CeOY9It1LSHlg26ZpkbrouKTbhnj6ShSKszEY4
38Jd9HutxCwYaItfI4L8h+niS6mb+WEd65q+6hW2BClRQ4G9s+OuY8wkYlc23g7Y
Zb3KgMo4cTQqAW56spsOVQG/f6Uqy9fEEDgo5B1PSf75IWqwTAfkFEmGs2gqk85x
5/R+sb0O258rkyQee81fApMNybjs43F1JZX4wTU8vQEjb0D3otJeVlNDv08nHveY
0esrwFpccSWBcFz2vymWPydBErUIu8Ui2KIxNZG7FAB67Y3c0vGbXgsjLy9nMxZg
xqjTGdt33f7H6trG9zSPJDgqlka0FhQjfwxV2tA4Ob9jiAzooD6ivxiiz2uj1G9A
vPAKuV+crSrR+t4ConfgVoRo0pno9eioOOGendszvPiwpWPl0Pq81hi9NFizeSRj
O0ZnD2Hh32aawQHLqX6x/YD+bHusXaDWTJZOGpO2XjxGC6fFzFfXErUB5N+H9enR
/I5/ibV85dyGI6K3EdewBB68qCABOlVwb24Sz7unz25QacbjqHc=
=Sr86
-----END PGP SIGNATURE-----

--k+w/mQv8wyuph6w0--


--===============3387377566397443103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3387377566397443103==--

