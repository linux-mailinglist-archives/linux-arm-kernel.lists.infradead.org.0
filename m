Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD58419B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 02:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFfsnHNMRZrpzGq+aLYfdMpTJ5quQC1EI0gcGTpg10A=; b=jRnVHIdC3gnvwS
	ClOMO474Sg0UXHxyPkMxgo9I16dNFS4QzsK8vbbP7CDndX9AO6KJc2TG5SGKV5Kw3PXIdJlUpyI99
	9HQ/3Cx/GfPCnMd1uEBzaimxOnb3aWEz3F6Miy7IYmPF/3gCUB6rPT4KP14lewDZb8y2JT2TKwZ20
	z5/t4rqX7z+lVDTKXniHGB9nhnf4IEHF2QdR2bNDflHhCn3MKL4D0ZuUkOMO8PxcLorVmlll54NA/
	z5HCJBiuwNvOvL1PHqQ4Amjsx1LoUmtau2TTrN+tDNDFFwZ+NvaOYfO7St0j1roCs8ytHvLkixamI
	o5PzWWzjke7vsIReZkTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1harUD-00024H-BI; Wed, 12 Jun 2019 00:51:33 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1harU4-00023S-02
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 00:51:25 +0000
Received: by mail-pl1-x641.google.com with SMTP id bh12so5854667plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 17:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cO1aoOgamWKzIBPutERy4+vShJ7ff0SjV7iwgqOmOxU=;
 b=bjVRjE0AIuXeVIkRPq5d1Q0m6f/ChSKt7gvzCfbsz28S9ZzhVQDoKcXtAbRw1ACu7m
 7kp5ZXFytWCzXikbqIWU3/EvpxFMQfB2WIIUqTOSaJMIVSVV+Dhm+q2vF1nsxPL0ZQZN
 Xr4PWhZzFjjKM8olQlI+MNryiceHMLT2yhZwrxNEe+PPQiJHcsAN3gqc/Mj1eyT37wpG
 c97pPNrG3ML1GaEN+kj4zNEVcoHq9wcOmaqbjGvpzCgZTLuyoJtUrBdZ/iSO7t17EGrG
 4euwRIk+oYorOyunXr8AfmtpioQuylyPP3xvwk0CbS+/E00uzYIB370WOdBdaH6J7lDA
 PWDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cO1aoOgamWKzIBPutERy4+vShJ7ff0SjV7iwgqOmOxU=;
 b=QKxlECGFhWjktIXSXBJlsnQargIST7CcWpaK+6Esb0Zi5NH2/4iWNjk6+wVagzHP3z
 SZ5ZlpIvdp/fxFPq5RoOUn7JqJMV5KJozx0LeVombTwDNdCKBVg7nM50PcKozyHSoW6f
 gmiJ20dl6+tTFoa6zmBW6sJNLz8j8fiV6YbA4JM6K5TMChGLi4qlewOBtp0HfAUV+eQ5
 hq6S/fAlaN8zGKouSiqeTlDvHFCCikeKo7Flk3OzjX4twroYnkuAGq5dWxzxX90Q7k6B
 lk4QBQXoKEudkqXJecmSVtFdX4xCObF+DmgyJ0Nth5xhC03OdJdYD0kvdfbgsR8oENBX
 CPpw==
X-Gm-Message-State: APjAAAWk/uQENNZHIt+rUftf5h5ONlQW84ccK2elcyL7OwA6GRghL+Ru
 zn+JtVIKcubWTLC96oR8nTI=
X-Google-Smtp-Source: APXvYqyv4mJyfH+lo6mByyMGtaJjJbLmgLMkrNCaA8Qe4uCJ+nryDBS0GuP0K4qXtHGMM5kn8Y9Izg==
X-Received: by 2002:a17:902:28:: with SMTP id
 37mr15273311pla.188.1560300682592; 
 Tue, 11 Jun 2019 17:51:22 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id y5sm14480199pgv.12.2019.06.11.17.51.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 17:51:21 -0700 (PDT)
Date: Tue, 11 Jun 2019 17:51:20 -0700
From: "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [RESEND] input: keyboard: imx: make sure keyboard can always
 wake up system
Message-ID: <20190612005120.GI143729@dtor-ws>
References: <1554341727-16084-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554341727-16084-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_175124_038758_93240E19 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 04, 2019 at 01:40:16AM +0000, Anson Huang wrote:
> There are several scenarios that keyboard can NOT wake up system
> from suspend, e.g., if a keyboard is depressed between system
> device suspend phase and device noirq suspend phase, the keyboard
> ISR will be called and both keyboard depress and release interrupts
> will be disabled, then keyboard will no longer be able to wake up
> system. Another scenario would be, if a keyboard is kept depressed,
> and then system goes into suspend, the expected behavior would be
> when keyboard is released, system will be waked up, but current
> implementation can NOT achieve that, because both depress and release
> interrupts are disabled in ISR, and the event check is still in
> progress.
> 
> To fix these issues, need to make sure keyboard's depress or release
> interrupt is enabled after noirq device suspend phase, this patch
> moves the suspend/resume callback to noirq suspend/resume phase, and
> enable the corresponding interrupt according to current keyboard status.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thank you.

> ---
>  drivers/input/keyboard/imx_keypad.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/input/keyboard/imx_keypad.c b/drivers/input/keyboard/imx_keypad.c
> index cf08f4a..97500a2 100644
> --- a/drivers/input/keyboard/imx_keypad.c
> +++ b/drivers/input/keyboard/imx_keypad.c
> @@ -524,11 +524,12 @@ static int imx_keypad_probe(struct platform_device *pdev)
>  	return 0;
>  }
>  
> -static int __maybe_unused imx_kbd_suspend(struct device *dev)
> +static int __maybe_unused imx_kbd_noirq_suspend(struct device *dev)
>  {
>  	struct platform_device *pdev = to_platform_device(dev);
>  	struct imx_keypad *kbd = platform_get_drvdata(pdev);
>  	struct input_dev *input_dev = kbd->input_dev;
> +	unsigned short reg_val = readw(kbd->mmio_base + KPSR);
>  
>  	/* imx kbd can wake up system even clock is disabled */
>  	mutex_lock(&input_dev->mutex);
> @@ -538,13 +539,20 @@ static int __maybe_unused imx_kbd_suspend(struct device *dev)
>  
>  	mutex_unlock(&input_dev->mutex);
>  
> -	if (device_may_wakeup(&pdev->dev))
> +	if (device_may_wakeup(&pdev->dev)) {
> +		if (reg_val & KBD_STAT_KPKD)
> +			reg_val |= KBD_STAT_KRIE;
> +		if (reg_val & KBD_STAT_KPKR)
> +			reg_val |= KBD_STAT_KDIE;
> +		writew(reg_val, kbd->mmio_base + KPSR);
> +
>  		enable_irq_wake(kbd->irq);
> +	}
>  
>  	return 0;
>  }
>  
> -static int __maybe_unused imx_kbd_resume(struct device *dev)
> +static int __maybe_unused imx_kbd_noirq_resume(struct device *dev)
>  {
>  	struct platform_device *pdev = to_platform_device(dev);
>  	struct imx_keypad *kbd = platform_get_drvdata(pdev);
> @@ -568,7 +576,9 @@ static int __maybe_unused imx_kbd_resume(struct device *dev)
>  	return ret;
>  }
>  
> -static SIMPLE_DEV_PM_OPS(imx_kbd_pm_ops, imx_kbd_suspend, imx_kbd_resume);
> +static const struct dev_pm_ops imx_kbd_pm_ops = {
> +	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(imx_kbd_noirq_suspend, imx_kbd_noirq_resume)
> +};
>  
>  static struct platform_driver imx_keypad_driver = {
>  	.driver		= {
> -- 
> 2.7.4
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
