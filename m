Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7846A986D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 04:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISntg3UDw+xiLVQf9/xqMJQDbMkVPI5sOfZVzSJUulE=; b=s50dwlBdC/Vq33
	nRugyEEioOlyRdG3fvlgeq3ETTbyxviUUQMSdc1C/huS4Pym4z5yB9T8UZZ38Bwh4O/vsLGmmIdB2
	qno8v0Kv7VnFcMI4UpAyb4ruSZixCqOuml9VdOyXOxt6/QT6cUnSkU9Ono4gX5pWXar4u6PR32oxy
	fMGDxxzLqWgZvcFkoJR5dvcZpzuuv3cM3AXW8GgFZ4ggoh5spxzBP8vqpljfR6uRLQRcngCzBYWT5
	R2AYlMnEDXIJhjQ4SHzKeaNcPFMJHA2Cy/30+XrNpqYdy9IVZst/X1MrZL5M118Bno2yO4YjLotr/
	EJ0II4JSJiNPpv88lIMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5hfV-000288-BV; Thu, 05 Sep 2019 02:38:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5hfM-00026V-PB; Thu, 05 Sep 2019 02:38:34 +0000
X-UUID: 8abad3a7b9dc46ab86f0e061aea83221-20190904
X-UUID: 8abad3a7b9dc46ab86f0e061aea83221-20190904
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1633228878; Wed, 04 Sep 2019 18:38:26 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 19:38:24 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS33N1.mediatek.inc (172.27.4.75) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 10:38:19 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 10:38:19 +0800
Message-ID: <1567651100.13330.1.camel@mtksdaap41>
Subject: Re: [PATCH v6 0/3] Support mipitx for mt8183
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Thu, 5 Sep 2019 10:38:20 +0800
In-Reply-To: <20190807084645.63738-1-jitao.shi@mediatek.com>
References: <20190807084645.63738-1-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6FC0B6C8ACCBF84F2E1844C1B7B45B0403D54D0812C4D28F17CDBF053DE0F48D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_193832_826022_56D1E18C 
X-CRM114-Status: GOOD (  10.63  )
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

For this series, applied to mediatek-drm-next-5.5 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK

On Wed, 2019-08-07 at 16:46 +0800, Jitao Shi wrote:
> Change since v5:
>  - remove mipi_tx->ref_clk
>  - remove mt8183 pll prepare unprepare
> 
> Change since v4:
>  - fine tune the mipi_tx->ref_clk and mipi_tx->pll sequence
>    1. Prepare mipi_tx->ref_clk
>    2. Prepare mipi_tx->pll
>    3. Enable mipi_tx->ref_clk
>    4. Enable mipi_tx->pll
> 
> Changes since v3:
>  - turn off PLL before setting PLL parameters.
> 
> Changes since v2:
>  - update Acked-by: Rob Herring <robh@kernel.org>
>  - update mt8183 max bit rate support
> 
> Changes since v1:
>  - update dt-bindings document for mt8183 mipitx.
>  - remove mtk_mipitx_clk_get_ops and assign clk_ops in probe.
>  - fix the lincence
>  - remove txdiv1 from mtk_mipi_tx_pll_prepare
> 
> Jitao Shi (3):
>   dt-bindings: display: mediatek: update dsi supported chips
>   drm/mediatek: separate mipi_tx to different file
>   drm/mediatek: add mipi_tx driver for mt8183
> 
>  .../display/mediatek/mediatek,dsi.txt         |   4 +-
>  drivers/gpu/drm/mediatek/Makefile             |   2 +
>  drivers/gpu/drm/mediatek/mtk_mipi_tx.c        | 338 ++----------------
>  drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |  49 +++
>  drivers/gpu/drm/mediatek/mtk_mt8173_mipi_tx.c | 289 +++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 150 ++++++++
>  6 files changed, 515 insertions(+), 317 deletions(-)
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_mipi_tx.h
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8173_mipi_tx.c
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
