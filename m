Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3511410A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:19:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8YYj38tTA3bldsgPDYbkBMaRLjmG3xI6ZEh47MWRpSg=; b=h0BcQcKf6WfGqo
	e4sZVyQ8pSZxauMmK8OAS2g+I9wkbSEff2Z7CQ6CqskthYafUOWw67ujlFg5aByR7ma7jlfXokkL+
	KFhe97CZbZq76jlrz9eMQtQDO0KNtkFBvLdhI3l6N3V0puhn6/PGPVEbAdj3LiS7bfYuxaDOErhH8
	h/o1HLiFlmwzcbnhYX3o43y8L2ia/kEe/Raxy/WXE5KSdJVZwx9o3Kns7VNfRu+gi38uciuY+SO/w
	KchIAgFSpGnUTwboNWz3fbs3vPx5/AYWQV1djDf0DNzFsEpx0YGn2MyKSOi/mDz/VGYYKBAgkaj12
	K6SVjxGDtFaF/5jGwmEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isWDE-0004kn-EJ; Fri, 17 Jan 2020 18:19:16 +0000
Received: from mailoutvs53.siol.net ([185.57.226.244] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWD5-0004jZ-Pi
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:19:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 3B8B7523E9F;
 Fri, 17 Jan 2020 19:19:00 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id KYaxS-gW__TX; Fri, 17 Jan 2020 19:18:59 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id DB642523E5B;
 Fri, 17 Jan 2020 19:18:59 +0100 (CET)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id F2837523EA2;
 Fri, 17 Jan 2020 19:18:58 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 1/3] arm64: dts: allwinner: h6: tanix-tx6: enable emmc
Date: Fri, 17 Jan 2020 19:18:58 +0100
Message-ID: <3332569.R56niFO833@jernej-laptop>
In-Reply-To: <20200117181427.hy7qsyxwomsl3v2q@gilmour.lan>
References: <20200115193441.172902-1-jernej.skrabec@siol.net>
 <20200117181427.hy7qsyxwomsl3v2q@gilmour.lan>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_101907_992478_3585C326 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.244 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne petek, 17. januar 2020 ob 19:14:27 CET je Maxime Ripard napisal(a):
> On Wed, Jan 15, 2020 at 08:34:41PM +0100, Jernej Skrabec wrote:
> > Tanix TX6 has 32 GiB eMMC. Add a node for it.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  .../dts/allwinner/sun50i-h6-tanix-tx6.dts     | 20 +++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> > b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts index
> > 83e6cb0e59ce..8cbf4e4a761e 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> > @@ -31,6 +31,13 @@ hdmi_con_in: endpoint {
> > 
> >  		};
> >  	
> >  	};
> > 
> > +	reg_vcc1v8: vcc1v8 {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc1v8";
> > +		regulator-min-microvolt = <1800000>;
> > +		regulator-max-microvolt = <1800000>;
> > +	};
> > +
> > 
> >  	reg_vcc3v3: vcc3v3 {
> >  	
> >  		compatible = "regulator-fixed";
> >  		regulator-name = "vcc3v3";
> > 
> > @@ -78,6 +85,15 @@ &mmc0 {
> > 
> >  	status = "okay";
> >  
> >  };
> > 
> > +&mmc2 {
> > +	vmmc-supply = <&reg_vcc3v3>;
> > +	vqmmc-supply = <&reg_vcc1v8>;
> > +	non-removable;
> > +	cap-mmc-hw-reset;
> > +	bus-width = <8>;
> > +	status = "okay";
> > +};
> > +
> > 
> >  &ohci0 {
> >  
> >  	status = "okay";
> >  
> >  };
> > 
> > @@ -86,6 +102,10 @@ &ohci3 {
> > 
> >  	status = "okay";
> >  
> >  };
> > 
> > +&pio {
> > +	vcc-pc-supply = <&reg_vcc1v8>;
> > +};
> > +
> 
> Can you list all of the regulators for the H6 while you're at it (in a
> preliminary patch, ideally)?

Not sure what you mean. This box has only fixed regulators. I deducted above 
from the fact that port C is mostly dedicated to eMMC, so it has to use same 
regulator as vqmmc. Other than that, I don't know.

Best regards,
Jernej





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
