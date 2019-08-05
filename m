Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34B081DFA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:51:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTWXhIawWlTnZwGdk7NnXBCKUw5jk9ppMvGwtFlQmhg=; b=AAbPqsp1S4Glqj
	l6XzsBA6fPgKGvXFiqNLUVD5i3BAyh5cnxGfV/SIBJXMDXXv56ZMrPWTnfIGjP0Jw+PkGfnJIR4uI
	amqduqbqq/MfI7WAEr8fDF8LvuXCvsDGvlE6VJ8OROaDgLIkq5Yj6fZGQRet3JI08lacl2Y2GCI3M
	yUO+/UV8LM8+3aZ4GrQS+T3k+Il31T+g2wqZDGzHlCc/ah7M/3zaWvH1EmMhr62cfZdKOPqUlwfba
	MNDhjVgvXmtHXG6nhFpMXYbASBP+fgmA/i2ZuexKDLdsujnSQXWm/yWfebxwziuYitAAiEUYro3qg
	V7jx21J2zOT7DYM0MaeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudOE-0006gn-LN; Mon, 05 Aug 2019 13:51:06 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudO2-0006fk-7t; Mon, 05 Aug 2019 13:50:56 +0000
X-Originating-IP: 82.246.155.60
Received: from localhost (hy283-1-82-246-155-60.fbx.proxad.net [82.246.155.60])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1708A20008;
 Mon,  5 Aug 2019 13:50:44 +0000 (UTC)
Date: Mon, 5 Aug 2019 15:50:44 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v3 05/10] rtc: mt6397: add compatible for mt6323
Message-ID: <20190805135044.GH3600@piout.net>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-6-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729174154.4335-6-frank-w@public-files.de>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_065054_452421_83AC8F32 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/07/2019 19:41:49+0200, Frank Wunderlich wrote:
> From: Josef Friedl <josef.friedl@speed.at>
> 
> use mt6397 rtc driver also for mt6323
> compatible needed because of different rtc-base/size see part 7

I still don't think this is a good reason so I would remove that
sentence. Also, it refers to part 7 which is an info that will not be
available when looking at the git history.

> 
> changes since v2: splitted this from v2.3 suggested-by Alexandre Belloni
> 

Changelog after the --- marker please.

> Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  drivers/rtc/rtc-mt6397.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index 9370b7fc9f81..21cd9cc8b4c7 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -325,6 +325,7 @@ static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_rtc_suspend,
>  			mt6397_rtc_resume);
> 
>  static const struct of_device_id mt6397_rtc_of_match[] = {
> +	{ .compatible = "mediatek,mt6323-rtc", },
>  	{ .compatible = "mediatek,mt6397-rtc", },
>  	{ }
>  };
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
