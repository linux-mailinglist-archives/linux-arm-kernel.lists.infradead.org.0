Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B2DE474B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sY7Sggi8xFW7gsu/O6OPVIaXCB4hWlq00cKPvxhs4vs=; b=WRZWVaVOJi2BU0
	84eMAIjaB7j9SFwA2DWx38Heif+6T9aukLM0L6V9lYB7qT+zjax26C0brJ+SQGXgSR4qpNtCorOIM
	S3e8hFsSjmYyCIqFQ/TtG2xK/XCRzD18Laro9uNmOBRNB/xJ4ZPcBfWYnGHo1TtApU72DbskGseTP
	r5wfAboLMQM9g4J1HyP+zhONZZJ8zvGcjrQTYQj1o1kVQ9iJOwTIa0aaiL5IQtkdEIThmpTPUWSYk
	c1OTAca/drGKHT5QGVu5xPbKL/zQhSF2Cfz0IvTBDvFvk4gf8RYyXmdRX/aifuTIt+f0UI/JuXYKe
	Dcf4Z8HUTPx6NLZw0r1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvwp-000407-Cr; Fri, 25 Oct 2019 09:31:55 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvwe-0003z4-VZ
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:31:46 +0000
X-Originating-IP: 92.137.17.54
Received: from localhost (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id E7C3160004;
 Fri, 25 Oct 2019 09:31:41 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: YueHaibing <yuehaibing@huawei.com>, jason@lakedaemon.net, andrew@lunn.ch,
 sebastian.hesselbarth@gmail.com, linus.walleij@linaro.org
Subject: Re: [PATCH -next] pinctrl: armada-37xx: remove unneeded semicolon
In-Reply-To: <20191025092233.25108-1-yuehaibing@huawei.com>
References: <20191025092233.25108-1-yuehaibing@huawei.com>
Date: Fri, 25 Oct 2019 11:31:41 +0200
Message-ID: <87lft9p3wi.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_023145_151979_B70636F8 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-gpio@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YueHaibing <yuehaibing@huawei.com> writes:

> Remove unneeded semicolon.
> This is detected by coccinelle.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

I am against this patch, I don't see any value of this change. It will
only make backporting future fix more difficult and will obscurate the
git blame.

I could see the interest of scripts/coccinelle/misc/semicolon.cocci
when submitting new code, but not for existing code.

Gregory

> ---
>  drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> index 9df4277..fd32989 100644
> --- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> +++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> @@ -733,7 +733,7 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
>  			ret = 0;
>  			break;
>  		}
> -	};
> +	}
>  	if (ret) {
>  		dev_err(dev, "no gpio-controller child node\n");
>  		return ret;
> @@ -800,7 +800,7 @@ static int armada_37xx_gpiochip_register(struct platform_device *pdev,
>  			ret = 0;
>  			break;
>  		}
> -	};
> +	}
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.7.4
>
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
