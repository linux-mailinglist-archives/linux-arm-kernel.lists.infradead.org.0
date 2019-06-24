Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E69A50B39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 14:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1OJvDSZlWt6e7bASHBTxEt5XUJ9KejJwJUyCSpzPQw=; b=adl7vfpCWsCN0E
	3Ia4t6DIBFUykKDWT9ER9VvJmpT0DApoahgMCr8t58XhxxJepTOqR91nSy1t9AbesuljxjCcDRDWf
	xeR9ZKW14v6ktSSmDEbdBbsFHab03leBoHsHIxoLi9yF4yPVrC7l16pvM8yN1A3WdrjqA7x/Y4nNl
	shaO2G6usVSTJAXIFRckCkJFAxvDryxfvXnmv+YO4tz/m1Muq3lSHWwEfIzU1bs4h3P5hMoRRUwyC
	cRam2W4RWQ9vv85FYr/qyHQZDidwc3uHuZZUPfgnjDnU/720F+ldimcXduaxSJ84ZBBpvSozsnYFb
	P8ru1ja2gYrM/ubfaxDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOYB-0008Cf-PB; Mon, 24 Jun 2019 12:58:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOXz-0008C6-Su
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 12:58:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BB65344;
 Mon, 24 Jun 2019 05:58:10 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9745D3F718;
 Mon, 24 Jun 2019 05:58:09 -0700 (PDT)
Date: Mon, 24 Jun 2019 13:58:06 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] arm64: dts: allwinner: properly connect USB PHY to port 0
Message-ID: <20190624135806.7bc78378@donnerap.cambridge.arm.com>
In-Reply-To: <CAGb2v66WOTFvXWSSGwtLh3hD+N4CeJkFEPnCMXp0FuU2h=LS9Q@mail.gmail.com>
References: <20190620010127.12071-1-andre.przywara@arm.com>
 <CAGb2v66WOTFvXWSSGwtLh3hD+N4CeJkFEPnCMXp0FuU2h=LS9Q@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_055811_983828_B28C3F1F 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019 16:25:47 +0800
Chen-Yu Tsai <wens@csie.org> wrote:

Hi,

> On Thu, Jun 20, 2019 at 9:02 AM Andre Przywara <andre.przywara@arm.com> wrote:
> >
> > In recent Allwinner SoCs the first USB host controller (HCI0) shares
> > the first PHY with the MUSB controller. Probably to make this sharing
> > work, we were avoiding to declare this in the DT. This has two
> > shortcomings:
> > - U-Boot (which uses the same .dts) cannot use this port without a PHY
> >   linked, so we were loosing one USB port there.
> > - It requires the MUSB driver to be enabled and loaded, although we
> >   don't actually use it.
> >
> > For those (64-bit) boards which use an USB-A socket for HCI0/MUSB, add
> > a "phys" property pointing to the USB PHY 0.
> >
> > This makes it work in U-Boot, also improves compatiblity when no MUSB
> > driver is loaded (for instance in distribution installers).
> >
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> > Hi,
> >
> > I have the feeling this belongs into the .dtsi, but cant't tell for sure
> > how this interacts with the MUSB driver. If need be, we can always pull
> > this up later, I guess.  
> 
> Have you tried if gadget mode and switching between gadget/host mode on
> an otg port still works? AFAICT that would be the main thing to worry
> about.

I briefly tried gadget mode on a BPi-M64, and that still seemed to work,
but I couldn't switch it to host mode. IIRC that didn't even work without
this patch, but I didn't find the time to investigate yet.

Is it supposed to switch automatically when the ID pin changes state? Do
you know a board/kernel combination which is known to work?

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
