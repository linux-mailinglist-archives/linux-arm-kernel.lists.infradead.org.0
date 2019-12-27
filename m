Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660F812B36C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 10:06:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hr2JCbpNOeUXK01QWWerJPQFNz0GavY2lsl8HTmo5KI=; b=XaI9+sYB9euShM
	ppwmEJh5PDsPDkniHk3uU0E0c4IRgePqLpCyGM2s/+dDEID9N/tgwPTjbuGMUKCjloaZOhWMIZvmx
	NqbGFgt5X27OOng6FhY3vPmrjK0QBmNvuwR2wK5PlWVSCpMciAimDUDTALNRK377RhbBY56qc/jNm
	bYgW/Y3h23i5KONybRa4FMTw0Q/xRdPHeJTsIFqPYKvmEBT8+sonBltJVZhgBM9TltDa3fYIeHf5U
	WUV8mEw9wrCzUIe0ygU/mBKDm48kOb8FTmDrT9pIeoutm9r/fLb0y9kIs9YLwe+5TwTUdmyZlTDMR
	ixfaeRusdYtIUcng2cIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iklZP-0005vO-CK; Fri, 27 Dec 2019 09:06:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iklZB-0005u3-6q; Fri, 27 Dec 2019 09:05:57 +0000
X-UUID: e196869b850249249938a58062db3cf3-20191227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=vw3daw3yTmkrN+6XdT1P6BfgoGgdsrWEw22e2uq60bc=; 
 b=IMuSolpw3l3hNsi1EYtdHhI0YkfT9XgM/ODPAB77ghjYOfPX0OxwtL9CmeVNZKXmcetgCnVZPdUSVbqBo8XDITI5MhjCjrtdeJ6sqY5xv7U+2dIPyitLCql6lZmaxA/nrG8ASEwLCWv5anIfpksANN2UQWCp42TQQWkJUGjwUfY=;
X-UUID: e196869b850249249938a58062db3cf3-20191227
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 415845351; Fri, 27 Dec 2019 01:05:47 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 00:56:20 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 16:55:47 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Dec 2019 16:55:57 +0800
Message-ID: <1577436969.22281.1.camel@mtksdccf07>
Subject: Re: [RESEND][PATCH] thermal: mediatek: add suspend/resume callback
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>
Date: Fri, 27 Dec 2019 16:56:09 +0800
In-Reply-To: <20191219092431.8935-2-michael.kao@mediatek.com>
References: <20191219092431.8935-1-michael.kao@mediatek.com>
 <20191219092431.8935-2-michael.kao@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_010553_261556_37426F84 
X-CRM114-Status: GOOD (  18.36  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Louis Yu <louis.yu@mediatek.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel@vger.kernel.org, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,
Just gentle ping. Many thanks.


On Thu, 2019-12-19 at 17:24 +0800, Michael Kao wrote:
> From: Louis Yu <louis.yu@mediatek.com>
> 
> Add suspend/resume callback to disable/enable Mediatek thermal sensor
> respectively. Since thermal power domain is off in suspend, thermal driver
> needs re-initialization during resume.
> 
> Signed-off-by: Louis Yu <louis.yu@mediatek.com>
> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> ---
>  drivers/thermal/mtk_thermal.c | 134 +++++++++++++++++++++++++++++++---
>  1 file changed, 125 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
> index acf4854cbb8b..2bb8b13591aa 100644
> --- a/drivers/thermal/mtk_thermal.c
> +++ b/drivers/thermal/mtk_thermal.c
> @@ -22,6 +22,7 @@
>  #include <linux/thermal.h>
>  #include <linux/reset.h>
>  #include <linux/types.h>
> +#include <linux/iopoll.h>
>  
>  /* AUXADC Registers */
>  #define AUXADC_CON1_SET_V	0x008
> @@ -31,6 +32,8 @@
>  
>  #define APMIXED_SYS_TS_CON1	0x604
>  
> +#define APMIXED_SYS_TS_CON1_BUFFER_OFF	0x30
> +
>  /* Thermal Controller Registers */
>  #define TEMP_MONCTL0		0x000
>  #define TEMP_MONCTL1		0x004
> @@ -38,6 +41,7 @@
>  #define TEMP_MONIDET0		0x014
>  #define TEMP_MONIDET1		0x018
>  #define TEMP_MSRCTL0		0x038
> +#define TEMP_MSRCTL1		0x03c
>  #define TEMP_AHBPOLL		0x040
>  #define TEMP_AHBTO		0x044
>  #define TEMP_ADCPNP0		0x048
> @@ -87,6 +91,9 @@
>  #define TEMP_ADCVALIDMASK_VALID_HIGH		BIT(5)
>  #define TEMP_ADCVALIDMASK_VALID_POS(bit)	(bit)
>  
> +#define TEMP_MSRCTL1_BUS_STA	(BIT(0) | BIT(7))
> +#define TEMP_MSRCTL1_SENSING_POINTS_PAUSE	0x10E
> +
>  /* MT8173 thermal sensors */
>  #define MT8173_TS1	0
>  #define MT8173_TS2	1
> @@ -250,6 +257,10 @@ struct mtk_thermal_data {
>  struct mtk_thermal {
>  	struct device *dev;
>  	void __iomem *thermal_base;
> +	void __iomem *apmixed_base;
> +	void __iomem *auxadc_base;
> +	u64 apmixed_phys_base;
> +	u64 auxadc_phys_base;
>  
>  	struct clk *clk_peri_therm;
>  	struct clk *clk_auxadc;
> @@ -746,6 +757,42 @@ static void mtk_thermal_init_bank(struct mtk_thermal *mt, int num,
>  	mtk_thermal_put_bank(bank);
>  }
>  
> +static int mtk_thermal_disable_sensing(struct mtk_thermal *mt, int num)
> +{
> +	struct mtk_thermal_bank *bank = &mt->banks[num];
> +	u32 val;
> +	unsigned long timeout;
> +	void __iomem *addr;
> +	int ret = 0;
> +
> +	bank->id = num;
> +	bank->mt = mt;
> +
> +	mtk_thermal_get_bank(bank);
> +
> +	val = readl(mt->thermal_base + TEMP_MSRCTL1);
> +	/* pause periodic temperature measurement for sensing points */
> +	writel(val | TEMP_MSRCTL1_SENSING_POINTS_PAUSE,
> +	       mt->thermal_base + TEMP_MSRCTL1);
> +
> +	/* wait until temperature measurement bus idle */
> +	timeout = jiffies + HZ;
> +	addr = mt->thermal_base + TEMP_MSRCTL1;
> +
> +	ret = readl_poll_timeout(addr, val, (val & TEMP_MSRCTL1_BUS_STA) == 0x0,
> +				 0, timeout);
> +	if (ret < 0)
> +		goto out;
> +
> +	/* disable periodic temperature meausrement on sensing points */
> +	writel(0x0, mt->thermal_base + TEMP_MONCTL0);
> +
> +out:
> +	mtk_thermal_put_bank(bank);
> +
> +	return ret;
> +}
> +
>  static u64 of_get_phys_base(struct device_node *np)
>  {
>  	u64 size64;
> @@ -868,7 +915,6 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>  	struct device_node *auxadc, *apmixedsys, *np = pdev->dev.of_node;
>  	struct mtk_thermal *mt;
>  	struct resource *res;
> -	u64 auxadc_phys_base, apmixed_phys_base;
>  	struct thermal_zone_device *tzdev;
>  
>  	mt = devm_kzalloc(&pdev->dev, sizeof(*mt), GFP_KERNEL);
> @@ -904,11 +950,11 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>  		return -ENODEV;
>  	}
>  
> -	auxadc_phys_base = of_get_phys_base(auxadc);
> +	mt->auxadc_phys_base = of_get_phys_base(auxadc);
>  
>  	of_node_put(auxadc);
>  
> -	if (auxadc_phys_base == OF_BAD_ADDR) {
> +	if (mt->auxadc_phys_base == OF_BAD_ADDR) {
>  		dev_err(&pdev->dev, "Can't get auxadc phys address\n");
>  		return -EINVAL;
>  	}
> @@ -919,11 +965,12 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>  		return -ENODEV;
>  	}
>  
> -	apmixed_phys_base = of_get_phys_base(apmixedsys);
> +	mt->apmixed_phys_base = of_get_phys_base(apmixedsys);
> +	mt->apmixed_base = of_iomap(apmixedsys, 0);
>  
>  	of_node_put(apmixedsys);
>  
> -	if (apmixed_phys_base == OF_BAD_ADDR) {
> +	if (mt->apmixed_phys_base == OF_BAD_ADDR) {
>  		dev_err(&pdev->dev, "Can't get auxadc phys address\n");
>  		return -EINVAL;
>  	}
> @@ -935,19 +982,19 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>  	ret = clk_prepare_enable(mt->clk_auxadc);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Can't enable auxadc clk: %d\n", ret);
> -		return ret;
> +		goto err_disable_clk_auxadc;
>  	}
>  
>  	ret = clk_prepare_enable(mt->clk_peri_therm);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Can't enable peri clk: %d\n", ret);
> -		goto err_disable_clk_auxadc;
> +		goto err_disable_clk_peri_therm;
>  	}
>  
>  	for (ctrl_id = 0; ctrl_id < mt->conf->num_controller ; ctrl_id++)
>  		for (i = 0; i < mt->conf->num_banks; i++)
> -			mtk_thermal_init_bank(mt, i, apmixed_phys_base,
> -					      auxadc_phys_base, ctrl_id);
> +			mtk_thermal_init_bank(mt, i, mt->apmixed_phys_base,
> +					      mt->auxadc_phys_base, ctrl_id);
>  
>  	platform_set_drvdata(pdev, mt);
>  
> @@ -978,11 +1025,80 @@ static int mtk_thermal_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int __maybe_unused mtk_thermal_suspend(struct device *dev)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct mtk_thermal *mt = platform_get_drvdata(pdev);
> +	int i, ret;
> +
> +	for (i = 0; i < mt->conf->num_banks; i++) {
> +		ret = mtk_thermal_disable_sensing(mt, i);
> +		if (ret)
> +			goto out;
> +	}
> +
> +	/* disable buffer */
> +	writel(readl(mt->apmixed_base + APMIXED_SYS_TS_CON1) |
> +	       APMIXED_SYS_TS_CON1_BUFFER_OFF,
> +	       mt->apmixed_base + APMIXED_SYS_TS_CON1);
> +
> +	clk_disable_unprepare(mt->clk_peri_therm);
> +	clk_disable_unprepare(mt->clk_auxadc);
> +
> +	return 0;
> +
> +out:
> +	dev_err(&pdev->dev, "Failed to wait until bus idle\n");
> +
> +	return ret;
> +}
> +
> +static int __maybe_unused mtk_thermal_resume(struct device *dev)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct mtk_thermal *mt = platform_get_drvdata(pdev);
> +	int i, ret, ctrl_id;
> +
> +	ret = device_reset(&pdev->dev);
> +	if (ret)
> +		return ret;
> +
> +	ret = clk_prepare_enable(mt->clk_auxadc);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Can't enable auxadc clk: %d\n", ret);
> +		goto err_disable_clk_auxadc;
> +	}
> +
> +	ret = clk_prepare_enable(mt->clk_peri_therm);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Can't enable peri clk: %d\n", ret);
> +		goto err_disable_clk_peri_therm;
> +	}
> +
> +	for (ctrl_id = 0; ctrl_id < mt->conf->num_controller ; ctrl_id++)
> +		for (i = 0; i < mt->conf->num_banks; i++)
> +			mtk_thermal_init_bank(mt, i, mt->apmixed_phys_base,
> +					      mt->auxadc_phys_base, ctrl_id);
> +
> +	return 0;
> +
> +err_disable_clk_peri_therm:
> +	clk_disable_unprepare(mt->clk_peri_therm);
> +err_disable_clk_auxadc:
> +	clk_disable_unprepare(mt->clk_auxadc);
> +
> +	return ret;
> +}
> +
> +static SIMPLE_DEV_PM_OPS(mtk_thermal_pm_ops,
> +			 mtk_thermal_suspend, mtk_thermal_resume);
> +
>  static struct platform_driver mtk_thermal_driver = {
>  	.probe = mtk_thermal_probe,
>  	.remove = mtk_thermal_remove,
>  	.driver = {
>  		.name = "mtk-thermal",
> +		.pm = &mtk_thermal_pm_ops,
>  		.of_match_table = mtk_thermal_of_match,
>  	},
>  };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
