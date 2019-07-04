Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFB55FDD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 22:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1FSsnkO9iLy/AF7SVyTch8zhgD95WjVi3rEA1O/xZo=; b=dyCds+GWz10pRh
	PC2u1qfui81fzYcn9820xzPeh6LNDezVW63PiByMq6FdJCS63ua8ddczdPxHYQsJFt+8JZz4mt05/
	iY1B14Gqh1o/qnHWVfTF87jVDwVLRPjQRzPzx0P1cVKVlIgpibFwVQT1j4LGsUnkTKrosplIT9PuY
	GOAGM8ex9qEhBzaVCTWFxr0AT4ICZ5Y8i7hGr058qHsOyqeIRmfIcOnVD4aa6oB1H8co4aA4btdud
	/jQXkO47Rta88eKRfD+NihyYnmzUu0eUOvTR34R4U16fg7TCvnqWdyFuLIchUOM32Vcxx1nYQF77K
	vCvHYnaZlFiVb4njFAHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj8aW-0002W5-Cb; Thu, 04 Jul 2019 20:44:16 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj8aH-0002V0-Lu; Thu, 04 Jul 2019 20:44:03 +0000
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id E568E100006;
 Thu,  4 Jul 2019 20:43:37 +0000 (UTC)
Date: Thu, 4 Jul 2019 22:43:36 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v2 3/7] rtc: mt6397: improvements of rtc driver
Message-ID: <20190704204336.GJ3692@piout.net>
References: <20190703164822.17924-1-frank-w@public-files.de>
 <20190703164822.17924-4-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703164822.17924-4-frank-w@public-files.de>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_134402_034645_0D288FA9 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Lee Jones <lee.jones@linaro.org>,
 linux-rtc@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Allison Randal <allison@lohutok.net>, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/07/2019 18:48:18+0200, Frank Wunderlich wrote:
> @@ -271,14 +268,11 @@ static int mtk_rtc_probe(struct platform_device *pdev)
> 
>  	platform_set_drvdata(pdev, rtc);
> 
> -	rtc->rtc_dev = devm_rtc_allocate_device(rtc->dev);
> -	if (IS_ERR(rtc->rtc_dev))
> -		return PTR_ERR(rtc->rtc_dev);
> +	ret = devm_request_threaded_irq(&pdev->dev, rtc->irq, NULL,
> +					mtk_rtc_irq_handler_thread,
> +					IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
> +					"mt6397-rtc", rtc);
> 

This change may lead to a crash and the allocation was intentionally
placed before the irq request.

> -	ret = request_threaded_irq(rtc->irq, NULL,
> -				   mtk_rtc_irq_handler_thread,
> -				   IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
> -				   "mt6397-rtc", rtc);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
>  			rtc->irq, ret);
> @@ -287,6 +281,10 @@ static int mtk_rtc_probe(struct platform_device *pdev)
> 
>  	device_init_wakeup(&pdev->dev, 1);
> 
> +	rtc->rtc_dev = devm_rtc_allocate_device(&pdev->dev);
> +	if (IS_ERR(rtc->rtc_dev))
> +		return PTR_ERR(rtc->rtc_dev);
> +
>  	rtc->rtc_dev->ops = &mtk_rtc_ops;
> 
>  	ret = rtc_register_device(rtc->rtc_dev);
> @@ -302,15 +300,6 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>  	return ret;
>  }
> 
> -static int mtk_rtc_remove(struct platform_device *pdev)
> -{
> -	struct mt6397_rtc *rtc = platform_get_drvdata(pdev);
> -
> -	free_irq(rtc->irq, rtc);
> -
> -	return 0;
> -}
> -
>  #ifdef CONFIG_PM_SLEEP
>  static int mt6397_rtc_suspend(struct device *dev)
>  {
> @@ -337,6 +326,7 @@ static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_rtc_suspend,
>  			mt6397_rtc_resume);
> 
>  static const struct of_device_id mt6397_rtc_of_match[] = {
> +	{ .compatible = "mediatek,mt6323-rtc", },

Unrelated change, this is not an improvement and must be accompanied by
a documentation change.

>  	{ .compatible = "mediatek,mt6397-rtc", },
>  	{ }
>  };
> @@ -349,7 +339,6 @@ static struct platform_driver mtk_rtc_driver = {
>  		.pm = &mt6397_pm_ops,
>  	},
>  	.probe	= mtk_rtc_probe,
> -	.remove = mtk_rtc_remove,
>  };
> 
>  module_platform_driver(mtk_rtc_driver);
> --
> 2.17.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
