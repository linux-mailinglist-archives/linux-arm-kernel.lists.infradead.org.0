Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02217F579
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 13:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QdKv5VGtMVIyRsOIGlV32rYbPkwmGJysRLwoajpvxSs=; b=r2pL9GX4umpb5g9n+73T/q3CdC
	Gi9ct6xlUYpIfZzF5z3XVmyA75ff19AO+mDKatNDM06lRX2m1PHqY4EGYmuxd0XZlW5Ry7prTt3rB
	0lPqM5PLQFrtpXlvoxjSG22wbRGizYUyBQum9H+D558vb+gjO/bisTD9rTCmQ2Lg/SL7BE6tEeatr
	bsb5Q9olcwUi01q64sZ9nZyK5ltzxOd0k9SjpScVQqKG/cvYGIpaACDw/Fv1MqZYkvrIwwHwfC97q
	wwN9TutR0uNyPK6jKOIj6qKYnWucHY8RPsMOAa8CE4/oKPJe7zyGZ5nj/Z6tmcYF6A2y9VbT2jQJa
	idxk734Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQtZ-0003ng-OT; Tue, 30 Apr 2019 11:25:57 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQtR-0003me-1e
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 11:25:51 +0000
Received: from tarshish (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id C72FE44028D;
 Tue, 30 Apr 2019 14:25:43 +0300 (IDT)
References: <20190430093212.28425-1-alexandre.belloni@bootlin.com>
User-agent: mu4e 1.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 1/4] rtc: digicolor: fix possible race condition
In-reply-to: <20190430093212.28425-1-alexandre.belloni@bootlin.com>
Date: Tue, 30 Apr 2019 14:25:43 +0300
Message-ID: <878svru43s.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_042549_307870_29731E24 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandre,

On Tue, Apr 30 2019, Alexandre Belloni wrote:
> The IRQ is requested before the struct rtc is allocated and registered, but
> this struct is used in the IRQ handler. This may lead to a NULL pointer
> dereference.
>
> Switch to devm_rtc_allocate_device/rtc_register_device to allocate the rtc
> struct before requesting the IRQ.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Acked-by: Baruch Siach <baruch@tkos.co.il>

baruch

> ---
>  drivers/rtc/rtc-digicolor.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/rtc/rtc-digicolor.c b/drivers/rtc/rtc-digicolor.c
> index b253bf1b3531..5bb14c56bc9a 100644
> --- a/drivers/rtc/rtc-digicolor.c
> +++ b/drivers/rtc/rtc-digicolor.c
> @@ -192,6 +192,10 @@ static int __init dc_rtc_probe(struct platform_device *pdev)
>  	if (IS_ERR(rtc->regs))
>  		return PTR_ERR(rtc->regs);
>  
> +	rtc->rtc_dev = devm_rtc_allocate_device(&pdev->dev);
> +	if (IS_ERR(rtc->rtc_dev))
> +		return PTR_ERR(rtc->rtc_dev);
> +
>  	irq = platform_get_irq(pdev, 0);
>  	if (irq < 0)
>  		return irq;
> @@ -200,12 +204,10 @@ static int __init dc_rtc_probe(struct platform_device *pdev)
>  		return ret;
>  
>  	platform_set_drvdata(pdev, rtc);
> -	rtc->rtc_dev = devm_rtc_device_register(&pdev->dev, pdev->name,
> -						&dc_rtc_ops, THIS_MODULE);
> -	if (IS_ERR(rtc->rtc_dev))
> -		return PTR_ERR(rtc->rtc_dev);
>  
> -	return 0;
> +	rtc->rtc_dev->ops = &dc_rtc_ops;
> +
> +	return rtc_register_device(rtc->rtc_dev);
>  }
>  
>  static const struct of_device_id dc_dt_ids[] = {


-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
