Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96301D2861
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 09:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWxvUOmp0vSx71aI76d87hsoRMZGGF9H6xM4gkxDOMg=; b=N5/tfbYlynM3NJ
	LFZHOCFQ8P58+cfnHQCJMMgjJ1j7awdCvme8LWEegfFPMC1mTNE78wGUI26ykZKW7PnHbZs0iKqKW
	c+zb3L/Ao83z7kA5PoJpYZrQ/1oKKwCL1P24/88RhePJWd/IhV9ZqxNi4euYSNdoPndpdPcJVTJCc
	CwwHPajSt6Mhd8bvqZCdn1xO7Cbhwbp/NxwMwYNC5m/bWsd1jF+iLV+2N57B98T0Gaux26evVLjJS
	1T9ZcYIbrmfezq9AXWUZzNOy5ikoAnVEfSVW7tNHgtTkINUwhv0rq3v6LgGxX/v7c0VJg02NUb9Ex
	FxSovrbR47UNukPfCWbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ7sc-0002YD-60; Thu, 14 May 2020 07:02:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ7sT-0002Xj-WE; Thu, 14 May 2020 07:01:59 +0000
X-UUID: e636c6c937934e56a2c5b2c0833b0501-20200513
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=5zGlRdavMd2wsvTw1i9a7QfFgoZD4gz4T4XBIfvDCtk=; 
 b=DerBXidtdW2tdacNgUgMTyHlY7i4mXmIoen8dp5F2Y3utJVWnvnS5Dl7Dvm6p7FqchDJMt7vOUMMfYgdnfAIYqhdYq60ypw3FoR5gL1BTgRDlIoyJnPiaFwT1IKSLc3c2RtXSIjpf/7AQ+ah1yIfBUVmVeylkY+aYgTQNzrBVVs=;
X-UUID: e636c6c937934e56a2c5b2c0833b0501-20200513
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 112141785; Wed, 13 May 2020 23:01:55 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 13 May 2020 23:55:22 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 14:55:21 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 14 May 2020 14:55:21 +0800
Message-ID: <1589439322.11120.2.camel@mtksdccf07>
Subject: Re: [v4,7/7] thermal: mediatek: use spinlock to protect PTPCORESEL
From: Michael Kao <michael.kao@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 14 May 2020 14:55:22 +0800
In-Reply-To: <20200323121537.22697-8-michael.kao@mediatek.com>
References: <20200323121537.22697-1-michael.kao@mediatek.com>
 <20200323121537.22697-8-michael.kao@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_000158_041609_C1E8D655 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-03-23 at 20:15 +0800, Michael Kao wrote:
> From: "michael.kao" <michael.kao@mediatek.com>
> 
> The driver of thermal and svs will use the
> same register for the project which should select
> bank before reading sensor value.
> 
> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> ---
>  drivers/thermal/mtk_thermal.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
> index 9eaca432920e..594ad4f0f8cd 100644
> --- a/drivers/thermal/mtk_thermal.c
> +++ b/drivers/thermal/mtk_thermal.c
> @@ -22,6 +22,7 @@
>  #include <linux/thermal.h>
>  #include <linux/reset.h>
>  #include <linux/types.h>
> +#include <linux/power/mtk_svs.h>
>  
>  /* AUXADC Registers */
>  #define AUXADC_CON1_SET_V	0x008
> @@ -262,7 +263,7 @@ struct mtk_thermal {
>  	struct clk *clk_peri_therm;
>  	struct clk *clk_auxadc;
>  	/* lock: for getting and putting banks */
> -	struct mutex lock;
> +	unsigned long flags;
>  
>  	/* Calibration values */
>  	s32 adc_ge;
> @@ -561,7 +562,7 @@ static void mtk_thermal_get_bank(struct mtk_thermal_bank *bank)
>  	u32 val;
>  
>  	if (mt->conf->need_switch_bank) {
> -		mutex_lock(&mt->lock);
> +		mt->flags = claim_mtk_svs_lock();
>  
>  		val = readl(mt->thermal_base + PTPCORESEL);
>  		val &= ~0xf;
> @@ -581,7 +582,7 @@ static void mtk_thermal_put_bank(struct mtk_thermal_bank *bank)
>  	struct mtk_thermal *mt = bank->mt;
>  
>  	if (mt->conf->need_switch_bank)
> -		mutex_unlock(&mt->lock);
> +		release_mtk_svs_lock(mt->flags);
>  }
>  
>  /**
> @@ -938,8 +939,6 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	mutex_init(&mt->lock);
> -
>  	mt->dev = &pdev->dev;
>  
>  	auxadc = of_parse_phandle(np, "mediatek,auxadc", 0);

Hi Matthias,

Kindly ping.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
