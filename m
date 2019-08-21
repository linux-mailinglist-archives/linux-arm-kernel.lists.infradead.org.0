Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB61B98025
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRcpZ2oUYUgqN9PUPgd0+XxO+CW/dJ4ht7oyfQb/4ug=; b=bWuA6tCaQuuUR9
	v4dHA/QVdeAX8eluQCl6ojZ5AXVtb+QvPegXKY6TrvBTWt+v4qfaTMIGjN1fUXOIa2/Lmy7UrWAcs
	UuptxKQt/98cg1HLQIf09owRumsTsiS3jF6wR7GdtTTwFp+Y3O4K98LvHeE1bzEW4YL+sdO0YKYXR
	/LVldd/32xWY6VUlECVu7olzXyoXBrMshfWMBWd9MwJNt53uDilWg4SHxfYDpoJpnsASXcvWDDGN+
	YuA0zawbzpd6uAmyaxOLN6Iiw1Ce+MisqGh6ibSiunKltHtmhqVxRtRKu1kUxZ7T1i9w1GqKNX7p5
	Gk9DFOSzTlw5yb+3ED9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0TXH-00017c-5L; Wed, 21 Aug 2019 16:32:35 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0TX8-00016R-DW
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:32:27 +0000
Received: by mail-pl1-x642.google.com with SMTP id m9so1595689pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 09:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pDSd7SGk/DY6GuxuuavhgDxlL+IufA63dRDI3AQTbS4=;
 b=UcVOc4tBUOwmoJfipEg8MeVlXJDmigZScACSk87Msp47DaE/lPpGmF06Lcg7rzyoGE
 AqSxpFcQfVTKoSxtyA4vu6ZwnMIVz8YSGtAFerKUX9kK7h5WLLm+pIb6rd0o75bBwOKb
 mWL7kOqv6CwibF4Gi1nFzhpmogzAyGUpVMFO/FZzZTM98xbRhROy0FxH4aT4U/+J/yTv
 iB4yPOwCZxlKJBndqDhwJ4t6FHiIowZWYgcB5q3/EAPwzn8U11OEwlE40+MpW4C4Rc/L
 Fc4iFUWO4EtoZA1YDKE86WFDr/KIfj21I1BUzYUsOwoZPIQnN+rCFUuMKOC9yVSUDE3D
 yfjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=pDSd7SGk/DY6GuxuuavhgDxlL+IufA63dRDI3AQTbS4=;
 b=WPS7HDzSYKShYggQpPFNKJidpJstWn5lFueA8kRJGtVq0ZaUB7ecwKeBmXgl7AJLaB
 T15bm13vhz90dq5BzI0wOfV9hK3BR62V+VspdNI86YBiGAB61SM2TItomxVSiAEfIfhj
 vNKPl0kWU34CManGAdz5Ijh4rytOIGWUx8vs2yav9si8pjr9CZJ/WJyAFiYSdt3378mQ
 3MUl9az2GtLCmxrqVLvqCuDA1dc64l1euGhNzhFyQK6Sln7UvX6wR9ZQcN63yy/yMABs
 pV3vXm8rvDBMh7/mMo0sVhlRBuUenh5UN7r4kJstKVMmxv9TPQhYlwkAvSDL70rDBtPX
 +YFA==
X-Gm-Message-State: APjAAAVpPT55p3HI/KsRXj5DZy30gLiT0Iulpz3WHQnYYDyNvmfq6Gvv
 jZAigQkzBN+iJ5KJosPRA8k=
X-Google-Smtp-Source: APXvYqygLt6JnGdpnnQo0Yur5Q+gq4DxiD8HmafW1pMiWWteLsUUEZ3r2fvMrKKz1FF5ZBiKAnkR8w==
X-Received: by 2002:a17:902:d70a:: with SMTP id
 w10mr32715980ply.251.1566405142614; 
 Wed, 21 Aug 2019 09:32:22 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id o130sm29917759pfg.171.2019.08.21.09.32.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 09:32:21 -0700 (PDT)
Date: Wed, 21 Aug 2019 09:32:20 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ivan Mikhaylov <i.mikhaylov@yadro.com>
Subject: Re: [PATCH 3/3] watchdog/aspeed: add support for dual boot
Message-ID: <20190821163220.GA11547@roeck-us.net>
References: <1f2cd155057e5ab0cdb20a9a11614bbb09bb49ad.camel@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f2cd155057e5ab0cdb20a9a11614bbb09bb49ad.camel@yadro.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_093226_485673_08C7D797 
X-CRM114-Status: GOOD (  26.48  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Alexander Amelkin <a.amelkin@yadro.com>,
 linux-kernel@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 06:57:43PM +0300, Ivan Mikhaylov wrote:
> Set WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION into WDT_CLEAR_TIMEOUT_STATUS
> to clear out boot code source and re-enable access to the primary SPI flash
> chip while booted via wdt2 from the alternate chip.
> 
> AST2400 datasheet says:
> "In the 2nd flash booting mode, all the address mapping to CS0# would be
> re-directed to CS1#. And CS0# is not accessable under this mode. To access
> CS0#, firmware should clear the 2nd boot mode register in the WDT2 status
> register WDT30.bit[1]."

Is there reason to not do this automatically when loading the module
in alt-boot mode ? What means does userspace have to determine if CS0
or CS1 is active at any given time ? If there is reason to ever have CS1
active instead of CS0, what means would userspace have to enable it ?

If userspace can not really determine if CS1 or CS0 is active, all it could
ever do was to enable CS0 to be in a deterministic state. If so, it doesn't
make sense to ever have CS1 active, and re-enabling CS0 could be automatic.

Similar, if CS1 can ever be enabled, there is no means for userspace to ensure
that some other application did not re-enable CS0 while it believes that CS1
is enabled. If there is no means for userspace to enable CS1, it can never be
sure what is enabled (because some other entity may have enabled CS0 while
userspace just thought that CS1 is still enabled). Again, the only means
to guarantee a well defined state would be to explicitly enable CS0 and provive
no means to enable CS1. Again, this could be done during boot, not requiring
an explicit request from userspace.

> 
> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
> ---
>  drivers/watchdog/aspeed_wdt.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/watchdog/aspeed_wdt.c b/drivers/watchdog/aspeed_wdt.c
> index cc71861e033a..858e62f1c7ba 100644
> --- a/drivers/watchdog/aspeed_wdt.c
> +++ b/drivers/watchdog/aspeed_wdt.c
> @@ -53,6 +53,8 @@ MODULE_DEVICE_TABLE(of, aspeed_wdt_of_table);
>  #define   WDT_CTRL_ENABLE		BIT(0)
>  #define WDT_TIMEOUT_STATUS	0x10
>  #define   WDT_TIMEOUT_STATUS_BOOT_SECONDARY	BIT(1)
> +#define WDT_CLEAR_TIMEOUT_STATUS	0x14
> +#define   WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION	BIT(0)
>  
>  /*
>   * WDT_RESET_WIDTH controls the characteristics of the external pulse (if
> @@ -165,6 +167,29 @@ static int aspeed_wdt_restart(struct watchdog_device *wdd,
>  	return 0;
>  }
>  
> +static ssize_t access_cs0_store(struct device *dev,
> +			      struct device_attribute *attr,
> +			      const char *buf, size_t size)
> +{
> +	struct aspeed_wdt *wdt = dev_get_drvdata(dev);
> +
> +	if (unlikely(!wdt))
> +		return -ENODEV;
> +

How would this ever happen, and how / where is drvdata set to NULL ?

> +	writel(WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION,
> +			wdt->base + WDT_CLEAR_TIMEOUT_STATUS);
> +	wdt->wdd.bootstatus |= WDIOF_EXTERN1;

The variable reflects the _boot status_. It should not change after booting.

> +
> +	return size;
> +}
> +static DEVICE_ATTR_WO(access_cs0);
> +
> +static struct attribute *bswitch_attrs[] = {
> +	&dev_attr_access_cs0.attr,
> +	NULL
> +};
> +ATTRIBUTE_GROUPS(bswitch);
> +
>  static const struct watchdog_ops aspeed_wdt_ops = {
>  	.start		= aspeed_wdt_start,
>  	.stop		= aspeed_wdt_stop,
> @@ -223,6 +248,9 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
>  
>  	wdt->ctrl = WDT_CTRL_1MHZ_CLK;
>  
> +	if (of_property_read_bool(np, "aspeed,alt-boot"))
> +		wdt->wdd.groups = bswitch_groups;
> +
Why does this have to be separate to the existing evaluation of
aspeed,alt-boot, and why does the existing code not work ?

Also, is it guaranteed that this does not interfer with existing
support for alt-boot ?

>  	/*
>  	 * Control reset on a per-device basis to ensure the
>  	 * host is not affected by a BMC reboot
> @@ -309,6 +337,8 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
>  	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY)
>  		wdt->wdd.bootstatus = WDIOF_CARDRESET;
>  
> +	dev_set_drvdata(dev, wdt);
> +
>  	return devm_watchdog_register_device(dev, &wdt->wdd);
>  }
>  
> -- 
> 2.20.1
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
