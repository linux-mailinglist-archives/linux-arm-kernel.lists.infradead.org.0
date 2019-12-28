Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6710A12BC54
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 03:54:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9K2/IlFtpAPSHsuUczBgzxEZG7CDP3ZgQbnirUedsNk=; b=t8znvT9na4M9PA
	54E55QMODWtvmosntFPYOqEmpCYahA7TKs2B2fWPy4LWhBoNpTG6zUFTwi0QE7KuQod9lKULT9POg
	6SxY4H1sKKK4w+N0mtapwaSjrx6rRsoXmlJBdEzAD3KWUUGDLFOiFEeoGQkFS/C8N08NzG/jksyJn
	ZiSbFFmooMk34XSAileud04tFhscaG1NxvEoBhcgh4966Za1f787lL2X0T3SpS6P/tlfUG9JLqQiH
	2D752BzdoiQdhYm/RApfrQatHQtn1MMXKm2BbJs9bvRn37gZV0VfTIv8W26W73CDaH4eq3jk4xfjC
	DGf+WdpTNwnzFj8zVGdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il2FP-0007Bj-Oo; Sat, 28 Dec 2019 02:54:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il2FE-0007BA-K7; Sat, 28 Dec 2019 02:54:25 +0000
X-UUID: 8f72a633fe8e4b2c964a2f6bb7712a5d-20191227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=DuK72F7gBZXvEYq3y3vW4ZuOMFEZduG7ni5TClqn+Jw=; 
 b=Xqb8qm4VIFCwJy9or7rS3RLV8gGOtdoZSvTFnFmjX0rcv8HHXjTmhsDuT6K4czVKSUes1e5HDS62BaaMNCTRZJxaRyEk5xR+5yjZy1d+sGewC/wYEiyycvQlt2wLzYOAuzoRTqU1VdyYMxUGH3sM97AWxddrvudiryLpj9rru98=;
X-UUID: 8f72a633fe8e4b2c964a2f6bb7712a5d-20191227
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1038913153; Fri, 27 Dec 2019 18:54:19 -0800
Received: from MTKMBS32N1.mediatek.inc (172.27.4.71) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 18:54:24 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS32N1.mediatek.inc
 (172.27.4.71) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 28 Dec 2019 10:53:43 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 28 Dec 2019 10:54:44 +0800
Message-ID: <1577501595.21256.8.camel@mhfsdcap03>
Subject: Re: [PATCH v3 3/6] phy: amlogic: Add Amlogic A1 USB2 PHY Driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Hanjie Lin <hanjie.lin@amlogic.com>
Date: Sat, 28 Dec 2019 10:53:15 +0800
In-Reply-To: <1577428606-69855-4-git-send-email-hanjie.lin@amlogic.com>
References: <1577428606-69855-1-git-send-email-hanjie.lin@amlogic.com>
 <1577428606-69855-4-git-send-email-hanjie.lin@amlogic.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7D6A139BDF8753CECA92F2F08A4142A8071CBE782207FE70DB2AA7114E397CFB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_185424_668926_3EDC882C 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen
 Boyd <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, Liang Yang <liang.yang@amlogic.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, Xingyu
 Chen <xingyu.chen@amlogic.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, Jian Hu <jian.hu@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-12-27 at 14:36 +0800, Hanjie Lin wrote:
> This adds support for the USB2 PHY found in the Amlogic A1 SoC Family.
> 
> It supports host mode only.
> 
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> ---
>  drivers/phy/amlogic/phy-meson-g12a-usb2.c | 93 +++++++++++++++++++++----------
>  1 file changed, 64 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb2.c b/drivers/phy/amlogic/phy-meson-g12a-usb2.c
> index 9065ffc..a564747 100644
> --- a/drivers/phy/amlogic/phy-meson-g12a-usb2.c
> +++ b/drivers/phy/amlogic/phy-meson-g12a-usb2.c
> @@ -146,11 +146,17 @@
[...]
> +	priv->soc_id = (enum meson_soc_id)of_device_get_match_data(&pdev->dev);
> +
>  	priv->regmap = devm_regmap_init_mmio(dev, base,
>  					     &phy_meson_g12a_usb2_regmap_conf);
>  	if (IS_ERR(priv->regmap))
>  		return PTR_ERR(priv->regmap);
>  
> -	priv->clk = devm_clk_get(dev, "xtal");
> -	if (IS_ERR(priv->clk))
> -		return PTR_ERR(priv->clk);
> +	if (priv->soc_id == MESON_SOC_G12A) {
> +		priv->clk = devm_clk_get(dev, "xtal");
> +		if (IS_ERR(priv->clk))
> +			return PTR_ERR(priv->clk);
> +	}
How about use devm_clk_get_optional(), then make it as optional clock
also in dt-binding
>  

>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
