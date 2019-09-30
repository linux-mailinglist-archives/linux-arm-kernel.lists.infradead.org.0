Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC907C21AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9i6HG7p1muChudRX5P8Bl908SM/tppysN4CljdqkH8=; b=qpXvV3jQRQt7xD
	HaurjCK1QOp9Y/aNTV8QnM+0sOTh45veeW7pBx6VlpD2jinOXuY9dKnUQeNpFPHbDV7DNkSyygf70
	wkbUB7BPNGkjIMMZQFcN6Fr3VYWuO4mdnJMYuXELCnBB50tb8g6a2N0bVNyLEJeZ64verMigE6oXT
	+3+n527UDvKBSOW1KadhQXg1HcKYbrbjjpyVoNv/+qTS/ekQ/A7iVBYUDB7Gz2vlHGKPvvR6MDG7f
	mYBR/69WHrLcth7IpqDUSO1zMPBNWbfN4X/ytSk74wBTgfOOPfpRviTTJfeAti8o1V3brres2CSUQ
	wqFgxeSoHfFJoXbiJFHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvYi-0001Kq-9e; Mon, 30 Sep 2019 13:17:48 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvYU-0001JM-5l
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:17:36 +0000
Received: by mail-pf1-x443.google.com with SMTP id q7so5600853pfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 06:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lyjxLghcbPT/guXD86JE2tkfP9LwZRh+SOW/3r4IE0k=;
 b=K4Me9AbzWb0e36PT1RsITpHnGoILWsd5427QwnSCROrxI8VBVpspAQ6nRIzi7NA8Yn
 57ZD4FqtDnmz5HuabUkCGTso9R7y3I8Vm6mJjZjQR4uJkiflPUKE9KV9JDxz4Ibnuj9P
 K6HdrGOHt2e2MLp8rdaATbgAkLHOwXs6LjtqzM6F4yYSzTZBR6cGMda/6TqP3Iwssc4f
 8EJnd0XT1F73jg0qhZFLTU5EX3Tyrpo//WWQDII+o0x1o+fGsuyi/OrEXu6swwTKEnSn
 w9s15QoapIOOScFiVI+HgZskTz/+kFV72evMnMH6eKX9cE8Q0GF+CsSkTf6OHKz0BcEM
 OTkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=lyjxLghcbPT/guXD86JE2tkfP9LwZRh+SOW/3r4IE0k=;
 b=LiqrcLSYbAQxNeqCsRKRlCg/7UYacUiaPl4qSNXzh9EctYw2wWBB0xm9/WQaIWlyZS
 6BmXCEMwPhHq3ZBl/4ZSDZ6BK6af+9jG5QMUmsodXrWbQGxrLu4NnIXTALeR/25EGz6H
 OF4qonPTikomTfOCyxwmEhpHQ28u9S1l0fia76+iNGSlBrwRafDqF9unSH/i26JcjS2B
 rftv6CC5WU7lxfeGTFrHHI3T1L6xSWW2m3cpYbHXS76A+l4oFXSPmGgMdtgHmmfuTWyq
 es0cdFzwhnnc2HIjSsnRQoebbnvp7cu6hv/+oZYPhWn4QeUQllx1LiqLmx6CUqFIPoDG
 kNBw==
X-Gm-Message-State: APjAAAX0EfuH4vkrLamKJtYiFG8Zv7vIeFhHtC6jr4bJJPleQAdzqOtN
 q++RTz5p7K4Pex9a5NY1CDM=
X-Google-Smtp-Source: APXvYqw2pu0gcwNDmR9jMGGlX/s5QhDeUO87p2+wVCm/9EfBUDnUV9c1aZTkY/ExoTEP0eKPr2VX5Q==
X-Received: by 2002:a63:d05:: with SMTP id c5mr23721805pgl.182.1569849453673; 
 Mon, 30 Sep 2019 06:17:33 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id n3sm10936090pff.102.2019.09.30.06.17.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Sep 2019 06:17:33 -0700 (PDT)
Date: Mon, 30 Sep 2019 06:17:32 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/3] watchdog: imx2_wdt: Use __maybe_unused instead of
 #if CONFIG_PM_SLEEP
Message-ID: <20190930131732.GB29750@roeck-us.net>
References: <1569308828-8320-1-git-send-email-Anson.Huang@nxp.com>
 <1569308828-8320-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569308828-8320-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_061734_216307_8C504A8B 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-watchdog@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 wim@linux-watchdog.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 03:07:07PM +0800, Anson Huang wrote:
> Use __maybe_unused for power management related functions instead
> of #if CONFIG_PM_SLEEP to simply the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/imx2_wdt.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
> index 6711b4e..034f32c 100644
> --- a/drivers/watchdog/imx2_wdt.c
> +++ b/drivers/watchdog/imx2_wdt.c
> @@ -358,9 +358,8 @@ static void imx2_wdt_shutdown(struct platform_device *pdev)
>  	}
>  }
>  
> -#ifdef CONFIG_PM_SLEEP
>  /* Disable watchdog if it is active or non-active but still running */
> -static int imx2_wdt_suspend(struct device *dev)
> +static int __maybe_unused imx2_wdt_suspend(struct device *dev)
>  {
>  	struct watchdog_device *wdog = dev_get_drvdata(dev);
>  	struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);
> @@ -381,7 +380,7 @@ static int imx2_wdt_suspend(struct device *dev)
>  }
>  
>  /* Enable watchdog and configure it if necessary */
> -static int imx2_wdt_resume(struct device *dev)
> +static int __maybe_unused imx2_wdt_resume(struct device *dev)
>  {
>  	struct watchdog_device *wdog = dev_get_drvdata(dev);
>  	struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);
> @@ -406,7 +405,6 @@ static int imx2_wdt_resume(struct device *dev)
>  
>  	return 0;
>  }
> -#endif
>  
>  static SIMPLE_DEV_PM_OPS(imx2_wdt_pm_ops, imx2_wdt_suspend,
>  			 imx2_wdt_resume);
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
