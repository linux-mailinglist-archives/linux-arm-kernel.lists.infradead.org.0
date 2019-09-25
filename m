Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59164BDCBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 13:09:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JqUGvawphpYlA8SQ/dTYPhpqT1ccG/5XZYm0q8l6SdQ=; b=tl+7A6mHnuihjPDSpv6ldEuT8
	MT2KhbNpfgNU5Anwc+S4dxevZcJPqdKdTgENdQkNI1lrzgorOoCh2UIsu0KD4M3r+C5JB7z5OgQzb
	UDGVSDQVWqo97JBfRJBOIlQyUJqw69PfMrJt+7K9EICuzp52kVUGBl4BweNpF2ZOM4UBLLKlQE+Dh
	JInQ3gpH2MxJ5cUcTv4Kk/AoCe5DNQXc5mwPBFQnFkcTKO2DejBm5/R5vFmLL8BXWyUYKmLQOsDqc
	YnhAdzbBzvxM/zFYfICpdWT/X8unFmHi0R6T0v/FiXj72NTIuRIR+pVey3X8QKMUW22Qke8d5ue5O
	x4ih+DLHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD5AU-0001X2-A6; Wed, 25 Sep 2019 11:09:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD5A7-0001Wb-OC
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 11:08:49 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E87692082F;
 Wed, 25 Sep 2019 11:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569409727;
 bh=FMDS8H1Rv7cPuJUqBeDnNtTPKy6Ryfmb3rVdLRw8l9s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lj4oicj7cJomaLMxHcbWE1rG5FrENpsW1jl+RsL9x5er1qVQYkoSJY0yn10wz6AB+
 Lj+HNMxEgLqmFVWgK3ottEq09ElWg180t4nwcklu03yNkJYU62yghpTpItEQuxm3Y4
 lVw/xkgnCx6kjo7/gDQbhoGB+G9pTcTFT0VQWprI=
Date: Wed, 25 Sep 2019 13:08:44 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
Message-ID: <20190925110844.qfm5ris7xeze44th@gilmour>
References: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
 <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea>
 <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
 <20190812080420.saelmqb36vkelxn4@flea>
 <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
 <20190813053905.hu2hyi7fah2vujzz@flea>
 <CA+E=qVegU8M09tmbxGUaBSoueGU6PRsAtr9XWrc8V8HnCPjULg@mail.gmail.com>
 <CA+E=qVeArUV0u_17ty=HgaU35TwcBfQjSOJf0A5yM6L6+W-0Og@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+E=qVeArUV0u_17ty=HgaU35TwcBfQjSOJf0A5yM6L6+W-0Og@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_040847_829517_22A0CCD4 
X-CRM114-Status: GOOD (  32.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: multipart/mixed; boundary="===============7100334768661815615=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7100334768661815615==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xfvtyfmvyh5dzqpu"
Content-Disposition: inline


--xfvtyfmvyh5dzqpu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 23, 2019 at 04:55:59PM -0700, Vasily Khoruzhick wrote:
> On Mon, Sep 23, 2019 at 4:51 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> >
> > On Mon, Aug 12, 2019 at 10:39 PM Maxime Ripard
> > <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Mon, Aug 12, 2019 at 11:01:51AM -0700, Vasily Khoruzhick wrote:
> > > > On Mon, Aug 12, 2019 at 1:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > On Thu, Aug 08, 2019 at 12:59:07PM -0700, Vasily Khoruzhick wrote:
> > > > > > On Thu, Aug 8, 2019 at 9:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > >
> > > > > > > On Wed, Aug 07, 2019 at 10:36:08AM -0700, Vasily Khoruzhick wrote:
> > > > > > > > On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > >
> > > > > > > > > On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> > > > > > > > > > On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > > > > > >
> > > > > > > > > > > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > > > > > > > > > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > > > > > > > > > > >>
> > > > > > > > > > > >> Vasily Khoruzhick writes:
> > > > > > > > > > > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > > > > > > >>>>
> > > > > > > > > > > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > > > > > > > > > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > > > > > > > > > >>>>> as result 'perf top' shows no events.
> > > > > > > > > > > >>>>
> > > > > > > > > > > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > > > > > > > > > >>>> It could well just be that the interrupt numbers are wrong...
> > > > > > > > > > > >>>
> > > > > > > > > > > >>> Looks like it does, at least result looks plausible:
> > > > > > > > > > > >>
> > > > > > > > > > > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > > > > > > > > > > >>
> > > > > > > > > > > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > > > > > > > > > > >> the interrupts part of the node, when I added it. So I'm not too
> > > > > > > > > > > >> surprised I got it wrong.
> > > > > > > > > > > >>
> > > > > > > > > > > >> However, it would be unfortunate if the node got removed completely,
> > > > > > > > > > > >> because perf stat would not work anymore. Maybe we can only remove
> > > > > > > > > > > >> the interrupts or just fix them even if the HW doesn't work?
> > > > > > > > > > > >
> > > > > > > > > > > > I'm not familiar with PMU driver. Is it possible to get it working
> > > > > > > > > > > > without interrupts?
> > > > > > > > > > >
> > > > > > > > > > > Yup - you get a grumpy message from the driver, it will refuse sampling
> > > > > > > > > > > events (the ones which weren't working anyway), and if you measure
> > > > > > > > > > > anything for long enough that a counter overflows you'll get wonky
> > > > > > > > > > > results. But for counting hardware events over relatively short periods
> > > > > > > > > > > it'll still do the job.
> > > > > > > > > >
> > > > > > > > > > I tried to drop interrupts completely from the node but 'perf top' is
> > > > > > > > > > still broken. Though now in different way: it complains "cycles: PMU
> > > > > > > > > > Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> > > > > > > > > > stat'"
> > > > > > > > >
> > > > > > > > > I have no idea if that's the culprit, but what is the state of the
> > > > > > > > > 0x09010000 register?
> > > > > > > >
> > > > > > > > What register is that and how do I check it?
> > > > > > >
> > > > > > > It's in the CPUX Configuration block, and the bits are labelled as CPU
> > > > > > > Debug Reset.
> > > > > > >
> > > > > > > And if you have busybox, you can use devmem.
> > > > > >
> > > > > > CPUX configuration block is at 0x01700000 according to A64 user
> > > > > > manual, and particular register you're interested in is at 0x01700080,
> > > > > > its value is 0x1110110F.
> > > > > >
> > > > > > Bits 16-19 are not defined in user manual and are not set.
> > > > >
> > > > > Sorry, I somehow thought this was for the H6...
> > > > >
> > > > > I don't have any idea then :/
> > > >
> > > > OK, so what should we do? 'perf top'/'perf record' work fine if PMU
> > > > node is dropped, but they don't work if PMU node is present (even with
> > > > interrupts dropped). I'd prefer to have 'perf top' and 'perf record'
> > > > working instead of 'perf stat'
> > >
> > > Well, it doesn't work so we should just remove the node, and if
> > > someone wants it back, they should figure it out.
> >
> > Hey Maxime,
> >
> > So can you merge this patch?
>
> Added new Maxime's email to CC

Queued as a fix for 5.4, thanks!
Maxime

--xfvtyfmvyh5dzqpu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXYtKvAAKCRDj7w1vZxhR
xR1uAP97hTHRaN8dhsyjKWxKH1xeWMcMtioTmtYPAjmrULwgpQD+PRLN3idwDWf8
1xX4j9HiktGKEPSFa5JcdzrqH2NtLAU=
=roCs
-----END PGP SIGNATURE-----

--xfvtyfmvyh5dzqpu--


--===============7100334768661815615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7100334768661815615==--

