Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135A4DC0B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=os73UtLpcdJyskmflmQKMTka7zjdl8cXk6jhDzXE9ZU=; b=t0UZUhYmj3horX
	GOpzTuBsppbB8GZtaLCeW3mUfEc0UEHDbUnzw57FgrOoPfxqTBEQUSQs7+fvNL4enZEUObLk6VwEP
	l+FpP8aOOlKjXrSMp5YQvi+r4IUfx7uKv3eMgbQCT8BKYQv/G08YmbJKgXACa32pMOQ0t9u+U1ofr
	KKX7mYFCcvwOwNj6K5nuNf6kOHEssuIurVYPDJ+YtoNJwBqJvPYWwqtVr4xPLG8Lsvv36k8/xLHhh
	SVcYtb2p/vJLBD47qMGj6qmkTU6ZcVrUlzlmPvBopvlOSg0ngWvhNj2A+be7rnikxb0mkHrt+Ky+e
	vXv18xsRF1r4F3/Q5T4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKzuC-00058p-OR; Mon, 29 Apr 2019 06:36:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKzu4-00057S-BA; Mon, 29 Apr 2019 06:36:41 +0000
X-UUID: 33a79edcf875460594ecf9746ce6e65b-20190428
X-UUID: 33a79edcf875460594ecf9746ce6e65b-20190428
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <eddie.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1725050422; Sun, 28 Apr 2019 22:35:54 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Apr 2019 23:35:53 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 14:35:51 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 29 Apr 2019 14:35:51 +0800
Message-ID: <1556519751.15195.5.camel@mtksdaap41>
Subject: Re: [PATCH v2 2/2] clk: reset: Modify reset-controller driver
From: Eddie Huang <eddie.huang@mediatek.com>
To: Yong Liang <yong.liang@mediatek.com>
Date: Mon, 29 Apr 2019 14:35:51 +0800
In-Reply-To: <1556262618-14281-2-git-send-email-yong.liang@mediatek.com>
References: <1556262618-14281-1-git-send-email-yong.liang@mediatek.com>
 <1556262618-14281-2-git-send-email-yong.liang@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_233640_381175_72E3B7F7 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 JamesJJ Liao =?UTF-8?Q?=28=E5=BB=96=E5=BB=BA=E6=99=BA=29?=
 <jamesjj.liao@mediatek.com>, "drinkcat@chromium.org" <drinkcat@chromium.org>,
 Weiyi Lu =?UTF-8?Q?=28=E5=91=82=E5=A8=81=E5=84=80=29?= <Weiyi.Lu@mediatek.com>,
 "chunhui.dai@mediatek.com" <chunhui.dai@mediatek.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "jasu@njomotys.info" <jasu@njomotys.info>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Owen Chen =?UTF-8?Q?=28=E9=99=B3=E5=B3=BB=E6=96=8C=29?=
 <owen.chen@mediatek.com>,
 Erin Lo =?UTF-8?Q?=28=E7=BE=85=E9=9B=85=E9=BD=A1=29?= <erin.lo@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yong,

Please add reset controller maintainer in this mailing loop
  Philipp Zabel <p.zabel@pengutronix.de>


On Fri, 2019-04-26 at 15:10 +0800, Yong Liang wrote:
> From: "yong.liang" <yong.liang@mediatek.com>
> 
> Set reset signal by a register and clear reset signal by
> another register for 8183.

You should move your signed-off-by here, then add --- in next line to
avoid your notes appear in commit message when use git am to apply this
patch

> Base on https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git branch clk-next and https://patchwork.kernel.org/patch/10856987/
> 
> Changes in patch v2:
> Rollback modify for "_tuner_en_bit, _pcw_reg, _pcw_shift,"
> in drivers/clk/mediatek/clk-mt8183.c
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> ---
>  drivers/clk/mediatek/clk-mt8183.c                  |   10 ++-
>  drivers/clk/mediatek/clk-mtk.h                     |    3 +
>  drivers/clk/mediatek/reset.c                       |   53 +++++++++++-
>  .../dt-bindings/reset-controller/mt8183-resets.h   |   89 ++++++++++++++++++++
>  4 files changed, 151 insertions(+), 4 deletions(-)
>  create mode 100644 include/dt-bindings/reset-controller/mt8183-resets.h
> 
> diff --git a/drivers/clk/mediatek/clk-mt8183.c b/drivers/clk/mediatek/clk-mt8183.c
> index 9d86510..cda5b91 100644
> --- a/drivers/clk/mediatek/clk-mt8183.c
> +++ b/drivers/clk/mediatek/clk-mt8183.c
> @@ -1156,6 +1156,7 @@ static int clk_mt8183_apmixed_probe(struct platform_device *pdev)
>  {
>  	struct clk_onecell_data *clk_data;
>  	struct device_node *node = pdev->dev.of_node;
> +	int r;
>  
>  	clk_data = mtk_alloc_clk_data(CLK_APMIXED_NR_CLK);
>  
> @@ -1164,7 +1165,14 @@ static int clk_mt8183_apmixed_probe(struct platform_device *pdev)
>  	mtk_clk_register_gates(node, apmixed_clks, ARRAY_SIZE(apmixed_clks),
>  		clk_data);
>  
> -	return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
> +	r = of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
> +	if (r)
> +		dev_err(&pdev->dev,
> +			"%s(): could not register clock provider: %d\n",__func__, r);
> +
> +	mtk_register_reset_controller_set_clr(node, 4, 0x120);
> +
> +	return r;
>  }

You should call mtk_register_reset_controller_set_clr function in
clk_mt8183_infra_probe

Eddie



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
