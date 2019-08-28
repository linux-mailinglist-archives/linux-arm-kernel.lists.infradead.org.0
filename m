Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5240A9FAEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 08:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzNrIfZXEInqmJ+w7tzfKs/8jwEdNUxugboAsVDGo/c=; b=leE6dIlPhoEBEk
	K9bxBQ+OsqHNE+nzCv/P6+PHM68KBHvihzpv5fFh+pEFwmTKxc0KOhQ4boqE9c0DO0dhyGh+Dv4fh
	T0horvCS4Q0VFjHsarVUpoa4tY1GB9tfcIIYvEK0QyHNiLX3RHhsrNpP3l/zpWLGxFAhfA2joeC3Q
	eVqGwWeVU1+dBZwYhOb66WY2Zvr+XpkKTIWm21pDXd/KP+1P8I26ckwFNjkhadJrqaKKlxXH93RHP
	I4cwSS7xm+l0IU6xBl3w79x4UqHJzdIPpt9s3CsIC3bcf13RaPf95p+rrYt49o3buJlyDw23bXKl+
	FOATW8k6VtEP2RbA/TiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2rs9-00079a-63; Wed, 28 Aug 2019 06:56:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2rrv-000794-0H; Wed, 28 Aug 2019 06:55:48 +0000
X-UUID: 64dbac2a6d8d4b5db73c9823248878fb-20190827
X-UUID: 64dbac2a6d8d4b5db73c9823248878fb-20190827
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1052872101; Tue, 27 Aug 2019 22:55:49 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 23:55:48 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 14:55:40 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 28 Aug 2019 14:55:40 +0800
Message-ID: <1566975333.24969.2.camel@mtksdaap41>
Subject: Re: [PATCH 2/2] clk: mediatek: add pericfg clocks for MT8183
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Date: Wed, 28 Aug 2019 14:55:33 +0800
In-Reply-To: <1566971755-21217-2-git-send-email-chunfeng.yun@mediatek.com>
References: <1566971755-21217-1-git-send-email-chunfeng.yun@mediatek.com>
 <1566971755-21217-2-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_235547_054290_26210BA2 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@chromium.org>,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Erin Lo <erin.lo@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-28 at 13:55 +0800, Chunfeng Yun wrote:
> Add pericfg clocks for MT8183, it's used when support USB
> remote wakeup
> 
> Cc: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  drivers/clk/mediatek/clk-mt8183.c      | 35 ++++++++++++++++++++++++++
>  include/dt-bindings/clock/mt8183-clk.h |  4 +++
>  2 files changed, 39 insertions(+)
> 
> diff --git a/drivers/clk/mediatek/clk-mt8183.c b/drivers/clk/mediatek/clk-mt8183.c
> index 1aa5f4059251..b19221bad0c9 100644
> --- a/drivers/clk/mediatek/clk-mt8183.c
> +++ b/drivers/clk/mediatek/clk-mt8183.c
> @@ -999,6 +999,25 @@ static const struct mtk_gate infra_clks[] = {
>  		"msdc50_0_sel", 24),
>  };
>  
> +static const struct mtk_gate_regs peri_cg_regs = {
> +	.set_ofs = 0x20c,
> +	.clr_ofs = 0x20c,
> +	.sta_ofs = 0x20c,
> +};
> +
> +#define GATE_PERI(_id, _name, _parent, _shift) {	\
> +	.id = _id,				\
> +	.name = _name,				\
> +	.parent_name = _parent,			\
> +	.regs = &peri_cg_regs,			\
> +	.shift = _shift,			\
> +	.ops = &mtk_clk_gate_ops_no_setclr_inv,	\
> +}

Hi Chunfeng,

I suggest

#define GATE_PERI(_id, _name, _parent, _shift)		\
	GATE_MTK(_id, _name, _parent, &peri_cg_regs, _shift,	\
		&mtk_clk_gate_ops_no_setclr_inv)

> +
> +static const struct mtk_gate peri_clks[] = {
> +	GATE_PERI(CLK_PERI_AXI, "periaxi", "axi_sel", 31),
> +};
> +
>  static const struct mtk_gate_regs apmixed_cg_regs = {
>  	.set_ofs = 0x20,
>  	.clr_ofs = 0x20,
> @@ -1194,6 +1213,19 @@ static int clk_mt8183_infra_probe(struct platform_device *pdev)
>  	return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
>  }
>  
> +static int clk_mt8183_peri_probe(struct platform_device *pdev)
> +{
> +	struct clk_onecell_data *clk_data;
> +	struct device_node *node = pdev->dev.of_node;
> +
> +	clk_data = mtk_alloc_clk_data(CLK_PERI_NR_CLK);
> +
> +	mtk_clk_register_gates(node, peri_clks, ARRAY_SIZE(peri_clks),
> +			       clk_data);
> +
> +	return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
> +}
> +
>  static int clk_mt8183_mcu_probe(struct platform_device *pdev)
>  {
>  	struct clk_onecell_data *clk_data;
> @@ -1223,6 +1255,9 @@ static const struct of_device_id of_match_clk_mt8183[] = {
>  	}, {
>  		.compatible = "mediatek,mt8183-infracfg",
>  		.data = clk_mt8183_infra_probe,
> +	}, {
> +		.compatible = "mediatek,mt8183-pericfg",
> +		.data = clk_mt8183_peri_probe,
>  	}, {
>  		.compatible = "mediatek,mt8183-mcucfg",
>  		.data = clk_mt8183_mcu_probe,
> diff --git a/include/dt-bindings/clock/mt8183-clk.h b/include/dt-bindings/clock/mt8183-clk.h
> index 0046506eb24c..a7b470b0ec8a 100644
> --- a/include/dt-bindings/clock/mt8183-clk.h
> +++ b/include/dt-bindings/clock/mt8183-clk.h
> @@ -284,6 +284,10 @@
>  #define CLK_INFRA_FBIST2FPC		100
>  #define CLK_INFRA_NR_CLK		101
>  
> +/* PERICFG */
> +#define CLK_PERI_AXI			0
> +#define CLK_PERI_NR_CLK			1
> +
>  /* MFGCFG */
>  #define CLK_MFG_BG3D			0
>  #define CLK_MFG_NR_CLK			1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
