Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB0F1AD5B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 07:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUoF5Va1h0LhsD5OEXIjdnGcrFpnTk4GzeWmUXPCUtM=; b=G3OSX/7xmntSrv
	9BaOx0ixM4ZH5cm+6J2lmi91wcLVK+1HPKvy91wDxqN+3lQwLu7wyHpj/dXMCz4+FJWi/Z0VbWp+0
	aOJnQ16bpKtseu0PcG8Eh1AyiYchq4vF1JfRvI5vvsEPd0WwIw/JpZN0qhJI+xMxJp1A/DN0FJ9Tf
	GQ30ThuLD0dlnZRu0KM4UicvK0jgQjBw7xkxzyxlHicomNg7S791LSmUENEgI8LcZaPseSXtYvMul
	GiCCZpCLa1+GRsnG4KMJCfOFRGLX3ZIiUMsqYAM98HNeyJFnRWFLDJ9ZJMy4oM8tIEDOIjIxrfYnD
	G1eOZ8GPYYSKqarg76Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPJel-0000so-9r; Fri, 17 Apr 2020 05:35:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPJeU-0000qs-5V; Fri, 17 Apr 2020 05:34:59 +0000
X-UUID: 78cd0454403c4b22b5356deedeaedd5b-20200416
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=bUFVZsbh1IFtMkOupYY4so6J8bYhLyH6LTR/8vJHYYg=; 
 b=gkrEUm3w60ugcgkguxL1Bn4Ig9RN61y4MGn+YRCsokMcs7qvTVlq3kX7a/xDRXhTNHsjwBRUEdHF+MEBne7QFcHBmkHFwV8vy8YxzJmdE7ztFugu25oToBT8eOYpqtyxqOqa0kdf3gFut8wpPbu89oZK76igo1/XU1Zt2zMPZ0A=;
X-UUID: 78cd0454403c4b22b5356deedeaedd5b-20200416
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1805863052; Thu, 16 Apr 2020 21:34:49 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 16 Apr 2020 22:34:52 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 17 Apr 2020 13:34:47 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 17 Apr 2020 13:34:47 +0800
Message-ID: <1587101661.28772.40.camel@mhfsdcap03>
Subject: Re: [PATCH 2/2] phy: phy-mtk-tphy: introduce force_vbus for u2 phy
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Date: Fri, 17 Apr 2020 13:34:21 +0800
In-Reply-To: <1587100986-3104-2-git-send-email-macpaul.lin@mediatek.com>
References: <1587100986-3104-1-git-send-email-macpaul.lin@mediatek.com>
 <1587100986-3104-2-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: BF05952D618A127CD5818E03CF14DCD593C923CD996704F9E83F26F467CE44782000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_223458_209567_20945751 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Mediatek WSD
 Upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.Guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Macpaul Lin <macpaul.lin@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Macpaul,

On Fri, 2020-04-17 at 13:23 +0800, Macpaul Lin wrote:
> For some platforms, they don't have vbus pin connection between usb phy and
> mac. Hence we need to control force_vbus related registers to keep hardware
> works normal.
> This patch add corresponding behavior of force vbus in u2 phy related
> functions.
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
NACK, I tried to support it early, but found this will cause some issue
for SS/SSP device only mode, so please abandon this patch, thanks


> ---
>  drivers/phy/mediatek/phy-mtk-tphy.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
> index cdbcc49f7115..46f0fea175e5 100644
> --- a/drivers/phy/mediatek/phy-mtk-tphy.c
> +++ b/drivers/phy/mediatek/phy-mtk-tphy.c
> @@ -99,6 +99,7 @@
>  
>  #define U3P_U2PHYDTM1		0x06C
>  #define P2C_RG_UART_EN			BIT(16)
> +#define P2C_FORCE_VBUSVALID		BIT(13)
>  #define P2C_FORCE_IDDIG		BIT(9)
>  #define P2C_RG_VBUSVALID		BIT(5)
>  #define P2C_RG_SESSEND			BIT(4)
> @@ -318,6 +319,7 @@ struct mtk_tphy {
>  	int nphys;
>  	int src_ref_clk; /* MHZ, reference clock for slew rate calibrate */
>  	int src_coef; /* coefficient for slew rate calibrate */
> +	bool force_vbus;
>  };
>  
>  static void hs_slew_rate_calibrate(struct mtk_tphy *tphy,
> @@ -611,13 +613,20 @@ static void u2_phy_instance_set_mode(struct mtk_tphy *tphy,
>  	switch (mode) {
>  	case PHY_MODE_USB_DEVICE:
>  		tmp |= P2C_FORCE_IDDIG | P2C_RG_IDDIG;
> +		if (tphy->force_vbus)
> +			tmp |= P2C_RG_VBUSVALID | P2C_FORCE_VBUSVALID;
>  		break;
>  	case PHY_MODE_USB_HOST:
>  		tmp |= P2C_FORCE_IDDIG;
> -		tmp &= ~P2C_RG_IDDIG;
> +		if (tphy->force_vbus)
> +			tmp &= ~(P2C_RG_VBUSVALID | P2C_FORCE_VBUSVALID);
> +		else
> +			tmp &= ~P2C_RG_IDDIG;
>  		break;
>  	case PHY_MODE_USB_OTG:
>  		tmp &= ~(P2C_FORCE_IDDIG | P2C_RG_IDDIG);
> +		if (tphy->force_vbus)
> +			tmp &= ~(P2C_RG_VBUSVALID | P2C_FORCE_VBUSVALID);
>  		break;
>  	default:
>  		return;
> @@ -1187,6 +1196,11 @@ static int mtk_tphy_probe(struct platform_device *pdev)
>  			retval = PTR_ERR(instance->da_ref_clk);
>  			goto put_child;
>  		}
> +
> +		/*
> +		 * On some platform, vbus is dis-connected between PHY and MAC.
> +		 */
> +		tphy->force_vbus = device_property_read_bool(dev, "force_vbus");
>  	}
>  
>  	provider = devm_of_phy_provider_register(dev, mtk_phy_xlate);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
