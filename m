Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B260D1DCB48
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 12:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLDmEsi28ebRdqUl30LR5ttF6qUnG4btra3ugfdpLIk=; b=earEWzrIaQ3dd6
	rk8pG058azDMa1ao+5A+o/MBoRUXHzYnRNmeiA2vZg9klzNjgw5wz5wICjxMO6fluASvjk7jCvKPB
	oEPINWk7D2eP1XJ3Wfa8gMdN0ThQTguqOxDeU7yE0Ma977DEaeBZbNPHJsDGI9uS4AYVg1THdSbur
	JhEgfkg0oCfhFy/Ai7J448FNQ/wbtZcRKogdUaw/IYvmj69lz6k1NJ6bwO2VhqiKi14wWVKUp2tVD
	2nTFAuQnhWxGmZMDkL93IkGsn2fx8y7mNg2dI2GrBHPh/Nd6Bvo5sEU1Pc68aG508m6vYcB3sNhWc
	0TJ5BYVXCQh4TS6v16yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbijh-0005K3-MO; Thu, 21 May 2020 10:47:37 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbijU-0005AX-PH; Thu, 21 May 2020 10:47:27 +0000
X-UUID: f931fecfc08344c2a46900d9ea10fb99-20200521
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=vwJUCYOgb3bqVmIWxvK+TT8AtKtO3x/nNC/FL8RCFqU=; 
 b=Nl+kGqhGbrIvD93P5HGlyKFgjOI/QgG+6fvZkXUt/4hMYWEKw43HvEA9nP+EyWoDCkXm/TcDwwfn1+I36grZHX+6tP4aYIjFz+U93fO0+lTZqGXiBW65wroqXvNR/LoiapE9SKADN+IMj7XK46Of4iROySPyi5glGnnS4e+I7aI=;
X-UUID: f931fecfc08344c2a46900d9ea10fb99-20200521
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 624276758; Thu, 21 May 2020 02:47:16 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 03:47:15 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 18:47:12 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 21 May 2020 18:47:11 +0800
Message-ID: <1590058033.29894.2.camel@mtksdaap41>
Subject: Re: [PATCH 1/3] arm64: dts: mt8183: Add gce setting in display node
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 21 May 2020 18:47:13 +0800
In-Reply-To: <77a11bb2-83a1-07b8-e949-eb9e5b37549d@gmail.com>
References: <20200214044954.16923-1-bibby.hsieh@mediatek.com>
 <2369225e-2a92-c493-d089-e03f792df8cf@gmail.com>
 <77a11bb2-83a1-07b8-e949-eb9e5b37549d@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C6A05536FA69D4ABBA47AC2218374DEC3C688214C640B5B6C4D594B6D953DC982000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_034724_847086_F09704E3 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: drinkcat@chromium.org, Yongqiang Niu <yongqiang.niu@mediatek.com>,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, tfiga@chromium.org,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 YT Shen <yt.shen@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-21 at 12:10 +0200, Matthias Brugger wrote:
> On 14/02/2020 11:06, Matthias Brugger wrote:
> > 
> > 
> > On 14/02/2020 05:49, Bibby Hsieh wrote:
> >> In order to use GCE function, we need add some information
> >> into display node (mboxes, mediatek,gce-client-reg, mediatek,gce-events).
> >>
> >> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> >> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> >> ---
> > 
> > For the next time please provide some context on which patches this are based
> > on. Bet below the '---' with a link.
> > 
> > For this time, on which patch/series is this based? :)
> 
> Bibby can you please help and rebase the patch against my for-next branch [1].
> I'm then happy to queue it. Not sure if we can make it for v5.8 as we are really
> late, but we could try :)

Hi, Matthias,

NP, but this patch[1] is depends on another patch [2].
Should I rebase them together into your for-next branch?

[1] https://patchwork.kernel.org/patch/11385863/
[2] https://patchwork.kernel.org/patch/11316277/

Bibby

> 
> Thanks!
> Matthias
> 
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/log/?h=for-next
> 
> > 
> > Thanks,
> > Matthias
> > 
> >>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 16 ++++++++++++++++
> >>  1 file changed, 16 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> >> index be4428c92f35..8b522b039a37 100644
> >> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> >> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> >> @@ -9,6 +9,7 @@
> >>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> >>  #include <dt-bindings/interrupt-controller/irq.h>
> >>  #include <dt-bindings/power/mt8183-power.h>
> >> +#include <dt-bindings/gce/mt8183-gce.h>
> >>  #include "mt8183-pinfunc.h"
> >>  
> >>  / {
> >> @@ -664,6 +665,9 @@
> >>  			reg = <0 0x14000000 0 0x1000>;
> >>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> >>  			#clock-cells = <1>;
> >> +			mboxes = <&gce 0 CMDQ_THR_PRIO_HIGHEST>,
> >> +				 <&gce 1 CMDQ_THR_PRIO_HIGHEST>;
> >> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0 0x1000>;
> >>  		};
> >>  
> >>  		ovl0: ovl@14008000 {
> >> @@ -672,6 +676,7 @@
> >>  			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_LOW>;
> >>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> >>  			clocks = <&mmsys CLK_MM_DISP_OVL0>;
> >> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x8000 0x1000>;
> >>  		};
> >>  
> >>  		ovl_2l0: ovl@14009000 {
> >> @@ -680,6 +685,7 @@
> >>  			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_LOW>;
> >>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> >>  			clocks = <&mmsys CLK_MM_DISP_OVL0_2L>;
> >> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x9000 0x1000>;
> >>  		};
> >>  
> >>  		ovl_2l1: ovl@1400a000 {
> >> @@ -688,6 +694,7 @@
> >>  			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_LOW>;
> >>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> >>  			clocks = <&mmsys CLK_MM_DISP_OVL1_2L>;
> >> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xa000 0x1000>;
> >>  		};
> >>  
> >>  		rdma0: rdma@1400b000 {
> >> @@ -697,6 +704,7 @@
> >>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> >>  			clocks = <&mmsys CLK_MM_DISP_RDMA0>;
> >>  			mediatek,rdma_fifo_size = <5120>;
> >> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xb000 0x1000>;
> >>  		};
> >>  
> >>  		rdma1: rdma@1400c000 {
> >> @@ -706,6 +714,7 @@
> >>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> >>  			clocks = <&mmsys CLK_MM_DISP_RDMA1>;
> >>  			mediatek,rdma_fifo_size = <2048>;
> >> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xc000 0x1000>;
> >>  		};
> >>  
> >>  		color0: color@1400e000 {
> >> @@ -715,6 +724,7 @@
> >>  			interrupts = <GIC_SPI 231 IRQ_TYPE_LEVEL_LOW>;
> >>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> >>  			clocks = <&mmsys CLK_MM_DISP_COLOR0>;
> >> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xe000 0x1000>;
> >>  		};
> >>  
> >>  		ccorr0: ccorr@1400f000 {
> >> @@ -723,6 +733,7 @@
> >>  			interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_LOW>;
> >>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> >>  			clocks = <&mmsys CLK_MM_DISP_CCORR0>;
> >> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xf000 0x1000>;
> >>  		};
> >>  
> >>  		aal0: aal@14010000 {
> >> @@ -732,6 +743,7 @@
> >>  			interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_LOW>;
> >>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> >>  			clocks = <&mmsys CLK_MM_DISP_AAL0>;
> >> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0 0x1000>;
> >>  		};
> >>  
> >>  		gamma0: gamma@14011000 {
> >> @@ -741,6 +753,7 @@
> >>  			interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_LOW>;
> >>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> >>  			clocks = <&mmsys CLK_MM_DISP_GAMMA0>;
> >> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x1000 0x1000>;
> >>  		};
> >>  
> >>  		dither0: dither@14012000 {
> >> @@ -749,6 +762,7 @@
> >>  			interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_LOW>;
> >>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> >>  			clocks = <&mmsys CLK_MM_DISP_DITHER0>;
> >> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x2000 0x1000>;
> >>  		};
> >>  
> >>  		mutex: mutex@14016000 {
> >> @@ -756,6 +770,8 @@
> >>  			reg = <0 0x14016000 0 0x1000>;
> >>  			interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_LOW>;
> >>  			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> >> +			mediatek,gce-events = <CMDQ_EVENT_MUTEX_STREAM_DONE0>,
> >> +					      <CMDQ_EVENT_MUTEX_STREAM_DONE1>;
> >>  		};
> >>  
> >>  		smi_common: smi@14019000 {
> >>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
