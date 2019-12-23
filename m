Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 809F51290DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 03:19:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nfu2X+ml5XBsVZM2vc85PqzgQWF3EmFG9JtMMzJoGQw=; b=I6ItiCo30IXL4X
	GVxqZuMoBXK842RZfNb3TjMAfTlCzMfTUCdURsfyQrCmbmucZ0vIksXWi6KosRT4qmC1dI32t8nQY
	Yn8v8IMpXb/DadNf45BSaqSt66m8TAkGHIgtDsjEDP5kgA9qjsmGkjsJRkc8oz0TfdBdX0A8iOzd9
	762654SJ8m6Gb+KEy28D/raHMTZEJ6ZOGKh/9mSbx/QcGHQbNVrNs3/Dd+h1G8C5XFf5Xl+Mmtu5I
	hY/muExUp7jsB2y4DcNZvpSGua5k8MEXPADTUwpg6kl6lFsXq1o5iRArA972MhDUYZ4fDl5efFE8r
	6P/cg2Ko4Lom1V98O/9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijDJp-0006Vv-Qd; Mon, 23 Dec 2019 02:19:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijDJc-0006Vc-IO
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 02:19:25 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 718B8206B7;
 Mon, 23 Dec 2019 02:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577067564;
 bh=Qs9x63hsjZxcsMDM0L+FbX3+vjr2YojnzjvOHKCVPDQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aI8aXM9CjGoY6MD/gw4xrY9FOLoPTahrWMuSN9OaS12eTVmRrm86lJHB5xXPDHPXG
 6ROn9pNtagHUUNQ5rDRFYv1Ab8oG7rN7BM9rDMYaQFZAjdpQHqGtCrZgg0eDFi6DRQ
 UALaKXm8bIbrPRe1kCLPUcfCf8C+CfM0b/P4DL/E=
Date: Mon, 23 Dec 2019 10:19:03 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 2/2] arm64: dts: lx2160a: add dts for CEX7 platforms
Message-ID: <20191223021900.GE11523@dragon>
References: <20191209120010.GG25745@shell.armlinux.org.uk>
 <E1ieHiU-0004wa-83@rmk-PC.armlinux.org.uk>
 <20191211074006.GP15858@dragon>
 <20191216110137.GD25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216110137.GD25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_181924_626734_760B568D 
X-CRM114-Status: GOOD (  14.69  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jon Nettleton <jon@solid-run.com>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Rabeeh Khoury <rabeeh@solid-run.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 11:01:37AM +0000, Russell King - ARM Linux admin wrote:
> > > diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
> > > new file mode 100644
> > > index 000000000000..4761737e62e2
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
> > > @@ -0,0 +1,123 @@
> > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > > +//
> > > +// Device Tree file for LX2160A-CEx7
> > > +//
> > > +// Copyright 2019 SolidRun Ltd.
> > > +
> > > +/dts-v1/;
> > > +
> > > +#include "fsl-lx2160a.dtsi"
> > > +
> > > +/ {
> > > +	model = "SolidRun LX2160A COM Express Type 7 module";
> > > +	compatible = "solidrun,lx2160a-cex7", "fsl,lx2160a";
> > 
> > Any new compatible needs to be documented.
> 
> Grepping for "lx2160a-qds" and "lx2160a-rdb" in that tree shows no
> matches.  Maybe all lx2160a boards should be documented together
> when a place for such documentation is decided upon.  (In other
> words, no, I'm not going to do as you requested until the existing
> boards are given the same treatment you're requesting - otherwise
> it's unfair.)

Okay, I will create a patch to document "lx2160a-qds" and "lx2160a-rdb".

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
