Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A32E104F2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 10:26:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oq+TLeK1y8dZKpKHduXIwyn574wEC91lZBo2A+F+1BA=; b=nVhFNPFR2qTpYA
	LMaTud/hSnr9LPzaoM/AmDeJMF7PeHS3Mt5FVDN8P5vE50X1f6IZr+zLLWYoATjh9XuOa01bkI/fs
	p3yskOlkarXa5nKdaHjdq+07GH1fyfZtH60MJ26cW2blRfx87vGJfBCElgbB+UKOTur3kxqy1UeT5
	tewIZS9T5y1qV3xj+EH/OoIMyY/bcPZEGAsfsUAJ5SZxyeYAzjacHtlUd3kYVy3uPpl9JyWehwsXJ
	kVqxTNZ38+zlEN9Nv1V/5ivorKS+ym9AXcPWcDdnGwK7XtBkaCYlezwWyQVdd5rkIDqxmVnMNN2uL
	juLtxpcFMk2BqhxpNYFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXijL-00029L-BN; Thu, 21 Nov 2019 09:26:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXij7-00028g-Ix
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 09:26:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7278DA7;
 Thu, 21 Nov 2019 01:26:12 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B2EB3F52E;
 Thu, 21 Nov 2019 01:26:11 -0800 (PST)
Date: Thu, 21 Nov 2019 09:25:41 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/3] arm64: dts: allwinner: H6: Add PMU mode
Message-ID: <20191121092541.2bf9e5f5@donnerap.cambridge.arm.com>
In-Reply-To: <20191121072230.GD4345@gilmour.lan>
References: <20191121011835.8467-1-andre.przywara@arm.com>
 <20191121011835.8467-2-andre.przywara@arm.com>
 <20191121072230.GD4345@gilmour.lan>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_012618_233405_BB1F80C1 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-sunxi@googlegroups.com, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 Nov 2019 08:22:30 +0100
Maxime Ripard <maxime@cerno.tech> wrote:

Hi,

> On Thu, Nov 21, 2019 at 01:18:33AM +0000, Andre Przywara wrote:
> > Add the Performance Monitoring Unit (PMU) device tree node to the H6
> > .dtsi, which tells DT users which interrupts are triggered by PMU
> > overflow events on each core. The numbers come from the manual and have
> > been checked in U-Boot and with perf in Linux.
> >
> > Tested with perf record and taskset on a Pine H64.
> >
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>  
> 
> Queued all three patches for 5.6, thanks for taking the time to do
> this.
> 
> > ---
> >  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > index 29824081b43b..86a77b1734e0 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > @@ -70,6 +70,16 @@
> >  		clock-output-names = "ext_osc32k";
> >  	};
> >
> > +        pmu {  
> 
> This was indented with spaces however, unlike the rest of the DT. I've
> fixed it while applying.

Shoot, thinks for fixing this up, also for queuing it!

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
