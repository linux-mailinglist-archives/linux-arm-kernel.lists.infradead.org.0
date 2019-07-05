Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE8560DE4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 00:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66MaSxYIEmw8w2weD6sjLYsK0a5ZRednyKWWndvvB6M=; b=nDg2x2T3iNmN9+
	iiB22IJMFz5R8DBUgmcHvttL7enjRCNTEFrDRiDNrhgSzIs1drwX6kPX5kOYs8UOEz3fB2cgzr/8Q
	MT0h/6PUvlCYX5dLbv6+cI+uKlTwUbIqECJ5X+88shkCcRHO34Zamil/Ec4p/nKsCk5CBLDTseiDF
	DAR12w5hvaIjWO5h1D9jdBnlRRtV+HxSpyQCDUgAUXujwHdDHt6YfVbAdRMc+NK4dWq8rkfNjQ+SL
	nQ+LGGxdOMn1jEfmUMYCLyYRwhlhtd5M9SaF8rNTeq3uLqS9wqSzj1UlYFshr0vvO00kInFa7k3ll
	4WDP9ISnlLo7txU6ey7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjWpN-0004bm-89; Fri, 05 Jul 2019 22:37:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjWpD-0004bY-UC
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 22:37:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4aSyW2GmZvef/8f5We2/s8cnQWKE6nXUhEn5WBo3z2I=; b=njUJ8nKL0L5/dl3a0CWhsoV1J
 UjXtt0LNI5ZbDQVO2td2xW29Drjzy9BTAuEDd1Q7MeAcOqSLLCmNiqR3AhDFKHMazkgFMDCwOMeGm
 ij3EgYIjE4YC9ch6zqvOq3YBWk0wKMNeLJxLXa+lIuQSkVGUYGX0jWC+1djOyBoUfWDkiVIS2iT+F
 OscJ2rahRv16NWBZB2LamEOU0Xg292bzJsP4ByaJgCMetqQ0gkuuF0Ik79MzeBocUkNCbdGEUR4FW
 gltuM6XnTZGWp9+vOIhVkxZlUP26jFuGPFyHrEMSShXj6OMLd0jzLsbGL2qxoSZ3gFqhuHwn36jap
 +6j6M5wDA==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjWpG-0006V9-DY
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 22:37:08 +0000
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7A95A200006;
 Fri,  5 Jul 2019 22:36:17 +0000 (UTC)
Date: Sat, 6 Jul 2019 00:36:17 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] rtc: zynqmp: One function call less in
 xlnx_rtc_alarm_irq_enable()
Message-ID: <20190705223617.GC12409@piout.net>
References: <6f1db217-cb0a-9f6c-0e2e-5d932103f6ef@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f1db217-cb0a-9f6c-0e2e-5d932103f6ef@web.de>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_233706_520080_9AA74192 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 kernel-janitors@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/07/2019 22:45:39+0200, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Fri, 5 Jul 2019 22:37:58 +0200
> 
> Avoid an extra function call by using a ternary operator instead of
> a conditional statement for a setting selection.
> 

Please elaborate on why this is a good thing.

> This issue was detected by using the Coccinelle software.
> 

Unless you use an upstream coccinelle script or you share the one you
are using, this is not a useful information.

> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>  drivers/rtc/rtc-zynqmp.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-zynqmp.c b/drivers/rtc/rtc-zynqmp.c
> index 00639594de0c..4631019a54e2 100644
> --- a/drivers/rtc/rtc-zynqmp.c
> +++ b/drivers/rtc/rtc-zynqmp.c
> @@ -124,11 +124,8 @@ static int xlnx_rtc_alarm_irq_enable(struct device *dev, u32 enabled)
>  {
>  	struct xlnx_rtc_dev *xrtcdev = dev_get_drvdata(dev);
> 
> -	if (enabled)
> -		writel(RTC_INT_ALRM, xrtcdev->reg_base + RTC_INT_EN);
> -	else
> -		writel(RTC_INT_ALRM, xrtcdev->reg_base + RTC_INT_DIS);
> -
> +	writel(RTC_INT_ALRM,
> +	       xrtcdev->reg_base + (enabled ? RTC_INT_EN : RTC_INT_DIS));

This makes the code less readable.

>  	return 0;
>  }
> 
> --
> 2.22.0
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
