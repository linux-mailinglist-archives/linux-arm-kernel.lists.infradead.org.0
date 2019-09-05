Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF34A987F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 04:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rr8pdQj684sqwbQ0rDCOVoUzfenYrYOTfDpKzkxf764=; b=paBljwFBb4Yprv
	ju4BjCBQcT8g4pJQe7yQ9a6QZxlKvi/cz86zyQ4+n5hV7jjHBWCvd6ROuhtJJGiTKUbdUpcSab1Lo
	4H98WeW8gQAsSQlR8DQHdD2Xar28yi0cPxgiMJqcDxAOFEjuqzKIzRIGpyZQYrOcHWrPBv+dbPJHW
	3/tkAlzquHaUErNb/0UAeFCVJJRDJ6ESAJcgo9cymzZ1+GQxt76lCbREJoedOQ7aCw6PEZ643Fs5K
	CrH+wknItaFpbMvOUtaYk4CuqT2rGZaWC5oA1jaMzbrXZ9iOHUCEUELWwHUPGSUo5wUh4y8g/FRvj
	o9MvBEetunZJwsfMoQ3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5hii-0003mv-RC; Thu, 05 Sep 2019 02:42:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5hia-0003lQ-1K; Thu, 05 Sep 2019 02:41:53 +0000
X-UUID: d5dadfe3cf9940239a961b3895cc8987-20190904
X-UUID: d5dadfe3cf9940239a961b3895cc8987-20190904
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 154976142; Wed, 04 Sep 2019 18:41:48 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 19:41:46 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS33DR.mediatek.inc (172.27.6.106) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 10:41:38 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 10:41:37 +0800
Message-ID: <1567651299.13330.4.camel@mtksdaap41>
Subject: Re: [PATCH v6 0/7] Support dsi for mt8183
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Thu, 5 Sep 2019 10:41:39 +0800
In-Reply-To: <20190811104008.53372-1-jitao.shi@mediatek.com>
References: <20190811104008.53372-1-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24890.000
X-TM-AS-Result: No-10.241600-8.000000-10
X-TMASE-MatchedRID: 6otD/cJAac2EFkjzuXHNt+LdprnA5EQRJih/yo+OvlVSAxvL+nqAnW4+
 gA+i9D2DqMlm1+4tGhQfHS8wUUuW9T4Pcn5OGAtGMpVOsYwN78M0YG6kQ2QiFFSOymiJfTYXrr5
 TE4GLzk06n5U+9hWy0GYwRleGHW3t0/GyN5MpGlOqNnzrkU+2mgKflB9+9kWVcJHSK1bfF9XGcw
 gtERMbmd99l6mYw28dfPU3ZRMebCuKiQbKW6KJeAlpVkdtt3WuOHhqIXe4IzZIyDY579vwTFYvW
 mlP6FyeEu6Hmd7GM5PTDbyTDLiYnVGEd5OSBmbmngIgpj8eDcC063Wh9WVqgmWCfbzydb0g2EuZ
 q9zngaeNo+PRbWqfRDsAVzN+Ov/sXEXPO/6fybNBoFITciebPaiz/Co2CGruef8GeKgmo5snmxJ
 8YZpSdw==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--10.241600-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24890.000
X-TM-SNTS-SMTP: 75FAA2A7B910283301DE15DCDB5DB7A8A744F4C0B4B7E434DF4A678FAB936AED2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_194152_086724_228EB9D8 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com,
 Ajay Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>, Thierry
 Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki
 Dae <inki.dae@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Andy
 Yan <andy.yan@rock-chips.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Sean
 Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jitao:

For this series, applied to mediatek-drm-next-5.5 [1], and I break
"[v6,2/7] drm/mediatek: fixes CMDQ reg address of mt8173 is different
with mt2701" into two patches, thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK


On Sun, 2019-08-11 at 18:40 +0800, Jitao Shi wrote:
> Change since v5:
>  - fine tune dphy timing.
> 
> Change since v4:
>  - move mipi_dsi_host_unregiter() to .remove()
>  - fine tune add frame size control coding style
>  - change the data type of data_rate as u32, and add DIV_ROUND_UP_ULL
>  - use div_u64 when 8000000000ULL / dsi->data_rate.
> 
> Changes since v3
>  - add one more 'tab' for bitwise define.
>  - add Tested-by: Ryan Case <ryandcase@chromium.org>
> 	and Reviewed-by: CK Hu <ck.hu@mediatek.com>.
>  - remove compare da_hs_zero to da_hs_prepare.
> 
> Changes since v2:
>  - change the video timing calc method
>  - fine the dsi and mipitx init sequence
>  - fine tune commit msg
> 
> Changes since v1:
>  - separate frame size and reg commit control independent patches.
>  - fix some return values in probe
>  - remove DSI_CMDW0 in "CMDQ reg address of mt8173 is different with mt2701" 
> 
> Jitao Shi (7):
>   drm/mediatek: move mipi_dsi_host_register to probe
>   drm/mediatek: fixes CMDQ reg address of mt8173 is different with
>     mt2701
>   drm/mediatek: add dsi reg commit disable control
>   drm/mediatek: add frame size control
>   drm/mediatek: add mt8183 dsi driver support
>   drm/mediatek: change the dsi phytiming calculate method
>   drm: mediatek: adjust dsi and mipi_tx probe sequence
> 
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c |   2 +-
>  drivers/gpu/drm/mediatek/mtk_dsi.c     | 224 ++++++++++++++++++-------
>  2 files changed, 161 insertions(+), 65 deletions(-)
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
