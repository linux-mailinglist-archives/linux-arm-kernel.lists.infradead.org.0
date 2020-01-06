Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF4D131349
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 15:00:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIymygvKX4LxqS7EEwr/Q3gEe39wJPInswQbq1HrwGo=; b=W74UaTHzszC7Ca
	UpTed9IcWJCx+CmlnWh8+gVJrQHuBfdR4JSxhaO6vTpL6KZLoKKGx9axsRCE5vCR2YbeB97mEv8uo
	xWeMOVQMgHoWzucZpWSgq4KudV/BxvVa9yoxmV1vxyKGgvUdedslsLLxkzE3zYVpMhP/Gp/Q1URqV
	5HbFYWT894wQ0H9XCimmpiifjjn9FN+VCgOXmf1qr/eLeCEGKh0on4BIQ/ssFmSpUlcA+vp879f+C
	H16GmSIQ9AeGiglzMC1d7i50aK1QTPinq5tnngkZoyBJMRqTxk/QrAPUCWoZbGT3pYKU51TA2YL0B
	tnQg/38Qxnd2HDWtSgYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSvq-0001On-38; Mon, 06 Jan 2020 14:00:34 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSvk-0001Oc-KS
 for linux-arm-kernel@bombadil.infradead.org; Mon, 06 Jan 2020 14:00:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XOT0uvy49j4cgEVb16vxiIYppWQn1WNxPA1qF9ZJwP4=; b=EH7SzIU7aJRq0dgkh8No2j9zML
 //OMEtWmvjOMgh1oqkR3Fwv23KP2kIjmmp32Yg1KCwzWT3q2YoTmCffH8fOzxXsE6KYaxGoQYV6jt
 uZz5D0KxZL0OV1brwUQTxoLqYZj1+hZaBdnY92OUOxXDF4t9dvpVT+PZfeKeE7MZ6h5MJE4y8vCUL
 GJShNd9bzetg6+hxRgAyIfCt+GcsVtXtMlyp6fHPJtPpP7Si0epAUsx1yzxSn3Mw3E5BCqOACrpj4
 Jf7GHqJZqTJj5WJGihSYU1g9OsPzRq+IEsVNMnnctevOhZ1rDpFAPaIG2N5WQvsImmiZaBMooKiT6
 vuhnNQGg==;
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSe6-0002UC-Hr
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 13:42:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0C99328;
 Mon,  6 Jan 2020 05:42:11 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5BC153F534;
 Mon,  6 Jan 2020 05:42:10 -0800 (PST)
Date: Mon, 6 Jan 2020 13:42:07 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v2] ARM: dts: sun8i: R40: Add SPI controllers nodes and
 pinmuxes
Message-ID: <20200106134207.3088a74a@donnerap.cambridge.arm.com>
In-Reply-To: <CAGb2v65=iJzPJneUF=e9Xsqj_ufhuZtr5javN5YNKtaApGq2zA@mail.gmail.com>
References: <20200106003849.16666-1-andre.przywara@arm.com>
 <20200106085613.mxe33t7eklj3aeld@gilmour.lan>
 <CAGb2v65=iJzPJneUF=e9Xsqj_ufhuZtr5javN5YNKtaApGq2zA@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 6 Jan 2020 21:37:38 +0800
Chen-Yu Tsai <wens@csie.org> wrote:

Hi,

> On Mon, Jan 6, 2020 at 4:56 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Mon, Jan 06, 2020 at 12:38:49AM +0000, Andre Przywara wrote:  
> > > The Allwinner R40 SoC contains four SPI controllers, using the newer
> > > sun6i design (but at the legacy addresses).
> > > The controller seems to be fully compatible to the A64 one, so no driver
> > > changes are necessary.
> > > The first three controllers can be used on two sets of pins, but SPI3 is
> > > only routed to one set on Port A.
> > > Only the pin groups for SPI0 on PortC and SPI1 on PortI are added here,
> > > because those seem to be the only one exposed on the Bananapi boards.
> > >
> > > Tested by connecting a SPI flash to a Bananapi M2 Berry SPI0 and SPI1
> > > header pins.
> > >
> > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>  
> >
> > Applied, thanks!
> > Maxime  
> 
> Looks like this patch doesn't build. The SPI device nodes reference
> a non-existent DMA node.

Argh, shoot, sorry for that. Looks like a rebase artefact (I originally had the DMA controller in, but then saw that this is actually not used by the SPI driver, so removed it).

Thanks for testing!

Maxime, shall I send a fixup or redo the patch?

Cheers,
Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
