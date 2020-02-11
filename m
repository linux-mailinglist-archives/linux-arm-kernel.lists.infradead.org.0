Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B40158E92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:34:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TwfTWH5o6t75fhEGDdz/IH627SYirvJbq3nEbk9O35Q=; b=m6wow2beufvMhQBj8A2tfln9o
	5Oj6bouEm65YpZFzq4K0DubguxnNxWwJ7d91uXM8MNOHkRqK1emsRbLW4odWSXER5BF83B/ej1B4w
	ee8wf6atTgbN+S5GfheoEkSAd2Yb01MtqUF9GpKmdNcOwkUistGvk9XTSqQKRCoAc56jZLKhXNrEV
	iiAQOh8whz6UiCRflCFak2e/rz1bCgidit0cEaDpZQ4ntFnVUWe56XMVhYqA4O0xyhqBUTP7NJPEP
	yu0rlgwOtY1Naa8UoeaBRVz18WZWFvQJ48bLb0Q2Z5SIJ9iyqb799ZXaUenjdzLQJuk4SOVjgznLB
	egoqLaSuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UkY-0006gt-Gl; Tue, 11 Feb 2020 12:34:46 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1UkP-0006fZ-Of
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:34:40 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id CBE9D401;
 Tue, 11 Feb 2020 07:34:32 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 11 Feb 2020 07:34:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=N9WD4clEkI22x4YRI2EF2hRk6VB
 GhYejj1RHgce/Ifs=; b=al58YlJSIzmOI7BhyVghINMyu4YamS9RnzQkNRf3DOx
 SW4vqQh4BisDaOUWH2e2MQZsw5l7Wi1QbQlzLY7nbw0SeywoqBHDV1gAtF27mhGA
 UvtrMVRqU5+/khFHkyiPdbtJlLTiDoicZVMW9U4FnMFCp4DHFlAG3jRAjQbenOsq
 6WXoWQhLzCt+QP5aXCtNfhXSlTQaxAmJEKn8g6VJ8iX/LqBByFqco+rd4zIkVHkQ
 AQ83CMZ57SwE+THY5+jeLKToe309zUOBvXuMqYYSpfMduU05zzIf4sCuP6a/mxdC
 26LR9iglpHHUrXnfH35y4EMLfOOWMuJ7lT++BtAIMDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=N9WD4c
 lEkI22x4YRI2EF2hRk6VBGhYejj1RHgce/Ifs=; b=y88tSnKPRXgQRukhzjtcgV
 q0wLNlux4PsTe3lPTH2vn2GrAoW5Dn5ni/8oxnmiwQ03dKCRa0HLvV/ykCaa+hlC
 L3hUNW4/mRY3pAD2mie1Gqmo5s/2uiliGq9ej6uPnk1BjY+3TLyK4CUZuTdzG729
 brfgE/3ZE8OgbzaTcvjkl8rEZOChDDmWI6wz7NiDobrjNwr2X8Gb6uM37PJWLO3A
 eycV45eCA5kJys/AbuOv73dR92BmXb4gDakFpWF92gMRUnLsO3KgDx02bh6AzmLI
 4K/WmQaqyMq8P7ebQXvVDcfrfrBAx78F2cjgcf9rmUDOIC4K1Ws5o1UjR5NOiMOA
 ==
X-ME-Sender: <xms:VZ9CXpLuilg25k7RJKWi9NrQqxrfPh8VNU6Q5S8wt-b9f70AKz3avQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieefgdegvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 eplhhinhhugidqshhunhigihdrohhrghenucfkphepledtrdekledrieekrdejieenucev
 lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvg
 estggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:VZ9CXpEHQd787bRHBlDYi3CmmOVQ37cikHYXUi5H2jQaJ00rSXjZOg>
 <xmx:VZ9CXqO-5Q7WEeCQNlL4Yhb0VyupmHsXFp0U4Pw7KMkYWT6Fd1e4Jg>
 <xmx:VZ9CXj-uOEvJAL3-TLs3qOjj6p686gSEDFTW0nsJJJXpuEdVG_f5-g>
 <xmx:WJ9CXnvxZrzsFL39sobj4-Yh9GRS5NXQUgH5iGkwbWgIeZz_88i3Ig>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 89CC23280059;
 Tue, 11 Feb 2020 07:34:29 -0500 (EST)
Date: Tue, 11 Feb 2020 13:34:27 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH 1/3] hwspinlock: sunxi: Implement support for Allwinner's
 A64 SoC
Message-ID: <20200211123427.gbzhopfuge6osd2s@gilmour.lan>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-2-nborisov@suse.com>
 <20200211074643.uhhzpp4ycvkaz4pd@gilmour.lan>
 <7fb0e4f7-4da6-517f-6e96-9b3dc6ee4e56@suse.com>
MIME-Version: 1.0
In-Reply-To: <7fb0e4f7-4da6-517f-6e96-9b3dc6ee4e56@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_043438_048873_0490CA37 
X-CRM114-Status: GOOD (  35.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, bjorn.andersson@linaro.org
Content-Type: multipart/mixed; boundary="===============7379253988968469988=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7379253988968469988==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="g56hx7svfglz3log"
Content-Disposition: inline


--g56hx7svfglz3log
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 11, 2020 at 10:08:08AM +0200, Nikolay Borisov wrote:
> On 11.02.20 =D0=B3. 9:46 =D1=87., Maxime Ripard wrote:
> > Hi,
> >
> > On Mon, Feb 10, 2020 at 07:01:41PM +0200, Nikolay Borisov wrote:
> >> Based on the datasheet this implements support for the hwspinlock IP
> >> block.
> >
> > How was this tested?
>
> I tested it on my pine64 lts e.g. loading the driver and reading the
> reset/clock/sysstatus registers to ensure everything is unmasked and has
> expected values.

Isn't the point of hwspinlocks that it's shared between the ARISC core
and the ARM cores. How did you test that the lock was actually taken
on the other side just by using the ARM cores?

> >
> > There's also a lot of checkpatch issues, make sure you fix those.
> >
> >> Signed-off-by: Nikolay Borisov <nborisov@suse.com>
> >> ---
> >>  drivers/hwspinlock/Kconfig            |   9 ++
> >>  drivers/hwspinlock/Makefile           |   1 +
> >>  drivers/hwspinlock/sunxi_hwspinlock.c | 181 ++++++++++++++++++++++++++
> >>  3 files changed, 191 insertions(+)
> >>  create mode 100644 drivers/hwspinlock/sunxi_hwspinlock.c
> >>
> >> diff --git a/drivers/hwspinlock/Kconfig b/drivers/hwspinlock/Kconfig
> >> index 37740e992cfa..ebc1ea48ef16 100644
> >> --- a/drivers/hwspinlock/Kconfig
> >> +++ b/drivers/hwspinlock/Kconfig
> >> @@ -68,3 +68,12 @@ config HSEM_U8500
> >>  	  SoC.
> >>
> >>  	  If unsure, say N.
> >> +
> >> +config HWSPINLOCK_SUNXI
> >> +	tristate "Allwinner Hardware Spinlock device"
> >> +	depends on ARCH_SUNXI
> >> +	depends on HWSPINLOCK
> >> +	help
> >> +	  Say y here to support the SUNXI Hardware Spinlock device.
> >> +
> >> +	  If unsure, say N.
> >
> > sunxi doesn't really mean anything though, the A10 is also part of the
> > sunxi family and doesn't have that IP. Similarly, nothing prevents a
> > future SoC from changing that design. The first SoC that used it was
> > the A33 iirc, so let's just use sun8i.
>
> Fair enough, I will use the same for the symbols as well. TBH the
> nomenclature is quite confusing in allwinner land...
>
> Actually since this driver will initially support A64 shouldn't the
> symbols really be prefixed with sun50i, since looking at
> https://linux-sunxi.org/Allwinner_SoC_Family sun8i pertains to 32 bit A7
> cores?

Not really, the design is the same and we don't want to rename
everything.

> >
> <snip>
> >> +
> >> +	/*
> >> +	 * make sure the module is enabled and clocked before reading
> >> +	 * the module SYSSTATUS register
> >> +	 */
> >
> > You don't define that register anywhere?
> >
> >> +	clk =3D devm_clk_get(&pdev->dev, NULL);
> >> +	if (IS_ERR(clk))
> >> +		return PTR_ERR(clk);
> >> +
> >> +	ret =3D clk_prepare_enable(clk);
> >> +	if (ret) {
> >> +		dev_err(&pdev->dev, "Cannot enable clock\n");
> >> +		return ret;
> >> +	}
> >
> > Can't we do that with runtime_pm?
>
> Probably can but I'm new to device driver development so I don't
> understand all the implications of using the pm framework. I saw that
> other drivers did this but atm it's terra incognita to me.
>
> >
> >> +	/* Disable soft reset */
> >> +        reset=3D devm_reset_control_get_exclusive(&pdev->dev, NULL);
> >> +        if (IS_ERR(reset)) {
> >> +                ret =3D PTR_ERR(reset);
> >> +                goto out_declock;
> >> +        }
> >> +        reset_control_deassert(reset);
> >
> > We might have the same issue than the mailbox driver where the
> > firmware will need to access the block at any time, so we can't really
> > toggle the reset line as we want.
>
> What should we do then ?

Unless you put a firmware on the ARISC core and see how it interacts
between the two, you can't really do anything.

> >> +	num_locks =3D sunxi_get_num_locks(io_base);
> >> +	if (!num_locks) {
> >> +		dev_err(&pdev->dev, "Unrecognised sunxi hwspinlock device\n");
> >> +		ret =3D -EINVAL;
> >> +		goto out_reset;
> >> +	}
> >> +
> >> +	hw =3D devm_kzalloc(&pdev->dev, sizeof(*hw) +
> >> +			  num_locks * sizeof(struct hwspinlock), GFP_KERNEL);
> >> +	if (!hw) {
> >> +		ret =3D -ENOMEM;
> >> +		goto out_reset;
> >> +	}
> >
> > That looks rather convoluted (especially since the variable length
> > array is at the second level), and can be made more obvious by:
> >
> > - Removing the hwspinlock_device from sunxi_hwspinlock and allocating
> >   both separately.
> >
> > - And then allocate the hwspinlock_device separately with struct_size
>
> Actually this can be allocated via struct_size e.g. struct_size(hw,
> bank.lock, num_locks).
>
> >
> >> +	hw->clk =3D clk;
> >> +	hw->reset =3D reset;
> >
> > Why not using the structure directly instead of having temporary
> > variables?
>
> Because I use the clk/reset before allocating the devmem.

Then do it the other way around?

> >
> >> +	io_base +=3D LOCK_BASE_OFFSET;
> >> +	for (i =3D 0; i < num_locks; i++)
> >> +		hw->bank.lock[i].priv =3D io_base + i * sizeof(u32);
> >
> > Using a define for the registers offset would be nice here.
>
> you mean something like:
>
> # define LOCK(X) (x * sizeof(u32))
>
> I think this brings more needless indirection than helps but if you
> insist I won't mind.

It's not more of an indirection than using a function, and you're
doing that all the time already :)

Maxime

--g56hx7svfglz3log
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkKfUwAKCRDj7w1vZxhR
xeA1AQCiSAD516hNwvIHM3hZLjtIUFsuIgvatXOGkEPsQDXMTAEAvJI1RYsz3zP5
p5PAzdBynxNHTXNl8GH08U5Z0Sa4dgo=
=4OTb
-----END PGP SIGNATURE-----

--g56hx7svfglz3log--


--===============7379253988968469988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7379253988968469988==--

