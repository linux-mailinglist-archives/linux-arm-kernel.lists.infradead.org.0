Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0863489865
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 10:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MvQbDmJa4ToJZWnCpzpMktKTA+pp4j01g0dE9fA/sSo=; b=Mj5prAwGjonDe+rE5foaYwuXh
	mycEXY5Zmo8B5paYtO4K4ExqjLUbFInOjQ59yfocr8hPWSxsjyZOQVbCVk8UtehYvydI08vQPGOD2
	dhOf6XENoEIgPNkRMzdpHw9YQrlYiJUhB69gxTPjdwre0OY9qeMzEO3/5Y4emWSrBkrRQ654ozG3/
	Jh3Ou3vRskrqADByrlEmWRU21WRlWBdB/EzUmbshDfV1ZA0pWhmvtd6oxpVFEOagnS1HxC8p0N/wd
	oBpihBqiT6qpalNLKW/xZr1sRbRsasPWSL4mUeVyQtKbiq8z97v6xmLi1vtH8BgR/3SNmV29guv/o
	4wjSU4EXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx5K3-0000ZX-OB; Mon, 12 Aug 2019 08:04:55 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx5Jm-0000ZE-0m
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 08:04:40 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 7A74A240006;
 Mon, 12 Aug 2019 08:04:21 +0000 (UTC)
Date: Mon, 12 Aug 2019 10:04:20 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
Message-ID: <20190812080420.saelmqb36vkelxn4@flea>
References: <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
 <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
 <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea>
 <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_010438_363823_5172160A 
X-CRM114-Status: GOOD (  27.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Harald Geyer <harald@ccbib.org>,
 Robin Murphy <robin.murphy@arm.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5669798909973755720=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5669798909973755720==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jjtftgvl3v4z5fl7"
Content-Disposition: inline


--jjtftgvl3v4z5fl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 08, 2019 at 12:59:07PM -0700, Vasily Khoruzhick wrote:
> On Thu, Aug 8, 2019 at 9:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Wed, Aug 07, 2019 at 10:36:08AM -0700, Vasily Khoruzhick wrote:
> > > On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > >
> > > > On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> > > > > On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > >
> > > > > > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > > > > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > > > > > >>
> > > > > > >> Vasily Khoruzhick writes:
> > > > > > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > >>>>
> > > > > > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > > > > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > > > > >>>>> as result 'perf top' shows no events.
> > > > > > >>>>
> > > > > > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > > > > >>>> It could well just be that the interrupt numbers are wrong...
> > > > > > >>>
> > > > > > >>> Looks like it does, at least result looks plausible:
> > > > > > >>
> > > > > > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > > > > > >>
> > > > > > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > > > > > >> the interrupts part of the node, when I added it. So I'm not too
> > > > > > >> surprised I got it wrong.
> > > > > > >>
> > > > > > >> However, it would be unfortunate if the node got removed completely,
> > > > > > >> because perf stat would not work anymore. Maybe we can only remove
> > > > > > >> the interrupts or just fix them even if the HW doesn't work?
> > > > > > >
> > > > > > > I'm not familiar with PMU driver. Is it possible to get it working
> > > > > > > without interrupts?
> > > > > >
> > > > > > Yup - you get a grumpy message from the driver, it will refuse sampling
> > > > > > events (the ones which weren't working anyway), and if you measure
> > > > > > anything for long enough that a counter overflows you'll get wonky
> > > > > > results. But for counting hardware events over relatively short periods
> > > > > > it'll still do the job.
> > > > >
> > > > > I tried to drop interrupts completely from the node but 'perf top' is
> > > > > still broken. Though now in different way: it complains "cycles: PMU
> > > > > Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> > > > > stat'"
> > > >
> > > > I have no idea if that's the culprit, but what is the state of the
> > > > 0x09010000 register?
> > >
> > > What register is that and how do I check it?
> >
> > It's in the CPUX Configuration block, and the bits are labelled as CPU
> > Debug Reset.
> >
> > And if you have busybox, you can use devmem.
>
> CPUX configuration block is at 0x01700000 according to A64 user
> manual, and particular register you're interested in is at 0x01700080,
> its value is 0x1110110F.
>
> Bits 16-19 are not defined in user manual and are not set.

Sorry, I somehow thought this was for the H6...

I don't have any idea then :/

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--jjtftgvl3v4z5fl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVEdhAAKCRDj7w1vZxhR
xSyPAQCFME/zsUEVHgZg4ppjjkr35AZKmYuqCT3DqH/bapfBDAD+PK0I4XFjk7cN
o4b5O3nwe0SmShTKrXjCEA0bEL8dfQ0=
=gNZ7
-----END PGP SIGNATURE-----

--jjtftgvl3v4z5fl7--


--===============5669798909973755720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5669798909973755720==--

