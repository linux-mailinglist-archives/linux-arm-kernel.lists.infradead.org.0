Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D765DED6DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:21:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4k5YEXS+O6TZA7+5OBWqaS35lbbJJKvWrog+WMeECE=; b=Ddo3R5tPYErDhk
	cNN+NATclu05RafOCvwT4u7Vbmd6L6caPy9Dv3j+aavPFxItCzlMu0RR1Migs4XU6qZnB7XPpqIfO
	4RIaYqnSaXbv7/AlQxlxS8Bd6eZT3ldVuQjaYaPfAlH35MmNjfeK7BfjeaaTVHS97eTRZB2U65+9v
	i6IaZo+A0E5Jqq6He6sv/eLmu/ZaFJV/bQKx7GOWyLklFC1oZMbMmCfSjTsB3AtgfqvkS/hHaxB2D
	GBdMeyimb0HwtJWnPKYLGtQP24LKyUTYohtJ37mcllANUSlyDwvtA3YeMKhvhnlFscUOb51SEEYqZ
	Fd/8AVi8vKOLaAfLrWiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRR3K-0000zD-VS; Mon, 04 Nov 2019 01:21:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRR3F-0000ys-1A
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 01:21:02 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D25862190F;
 Mon,  4 Nov 2019 01:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572830460;
 bh=HruCF1lEVR4Yi9ljTqDKuQaH4iqNuferBq6GJDj+boM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ciEPjPArR92meJw1XkXoh0PGuTbdNq62vI9w1ewlhqH7lXAUfZKp7tvm62XbPTMtf
 fuhIZWnYYJXbeVLNAuZOYU4ukFG/ElgIQxAYLHldwAna/I3GB42W+Jgbtglzr/9aP7
 LezzUuYG54cDC5e29+5daHpUIb3lKboGGpPlqpCc=
Date: Mon, 4 Nov 2019 09:20:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v2 1/5] arm: dts: vf-colibri: fix typo in top-level
 module compatible
Message-ID: <20191104012034.GF24620@dragon>
References: <20191026090403.3057-1-marcel@ziswiler.com>
 <20191104011657.GE24620@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104011657.GE24620@dragon>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_172101_095458_42168EF4 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 09:16:58AM +0800, Shawn Guo wrote:
> On Sat, Oct 26, 2019 at 11:03:59AM +0200, Marcel Ziswiler wrote:
> > From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > 
> > Fix typo in top-level module compatible.
> > 
> > Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > 
> > ---
> > 
> > Changes in v2: New patch.
> > 
> >  arch/arm/boot/dts/vf500-colibri.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boot/dts/vf500-colibri.dtsi b/arch/arm/boot/dts/vf500-colibri.dtsi
> > index 237b0246fa84..92255f8893ce 100644
> > --- a/arch/arm/boot/dts/vf500-colibri.dtsi
> > +++ b/arch/arm/boot/dts/vf500-colibri.dtsi
> > @@ -44,7 +44,7 @@
> >  
> >  / {
> >  	model = "Toradex Colibri VF50 COM";
> > -	compatible = "toradex,vf610-colibri_vf50", "fsl,vf500";
> > +	compatible = "toradex,vf500-colibri_vf50", "fsl,vf500";
> 
> Do we need to update bindings doc for this?

Sorry. I should have read the whole series.

> 
> Also as a practise, we use 'ARM: ...' for arch/arm/ patches going through
> IMX tree.

I fixed it up and applied the series.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
