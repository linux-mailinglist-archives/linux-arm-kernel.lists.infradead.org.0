Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A77A44E0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 17:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0YaiAxybY+/Pbss32Z5dK5mbi6yTXsiM+NVYrTCFso=; b=UEjSeIaxlo0diD
	hq4AhN8qm2jLyeUqDHI9BvTsSIAMjkW1y/vMt9jOIwj81Ju3JBpdjWpklLNBW/QLrnbfDkmwDVrJG
	hsY8vgTnVEoSwjtFMELlNp4xIp/Vi/mbaUF5xw2GsU9MuBF3Y65EImatEI+sPkAmhSF9NMtOnp30K
	YMRSh+z24ZVTGOh91xTamLRsX0Kl6J5ZkiNi3M4BvDvKCHPh76bxJBMCv+1SSrTB930kI5H1yKKyB
	H74BKzB03cK3Qy6uJC7Z9daa2cFR94DYQzogL4LR6a+s9caujanTR8mJ2UrrqwD3eDK3QxUwOJaSF
	9tfSnwoLkCbV2hrj46xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i44sk-0002kz-Ch; Sat, 31 Aug 2019 15:01:38 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i44sX-0002kV-CN
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 15:01:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id l21so5034662pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 31 Aug 2019 08:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Z3F2/OBM2r9MZXkNsTFN/E8FK5FABjqdMx5/AO1nG/g=;
 b=CuCpBywjeSbor/AUATEjJGeahuzzcf61kGRBxkCn9VujZBwt1OH7GBtazWd8HWWZ9V
 uxDdha5Hkvd2WhaTH8sAlRpaXL+Sdo0o7Mq89dpGqtnhSkfhlfaSXCQiFMNKFCu/Bp6W
 TgTMsPUw+KHQzZ6efA51vBlWkuMvzoHQLk5ywEnngDLduCoJl7Rr0oZSTLAMfTIAb2md
 V3xxwyGQzyfuXqA+dazV/1F+2tjLV/+qIwZV9MSlmmmkhlmyNmEWuVv0ze729MlqqPVF
 MJcATu8EWdnyFLtZZcCmk8Epyiv0aVbE7/tlOz1AiUbSaSKe6B43hnp0MEY8b8g/jet+
 gmdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z3F2/OBM2r9MZXkNsTFN/E8FK5FABjqdMx5/AO1nG/g=;
 b=aiwMPZBsIIugOy/lJTvU9pgyQ64HXDDCyafPOABaowkHufTRsI1ySHms9Kq6Fn4BGC
 zQxbIsZIwCS8twUaLKjXTbciVuUqrRfcjpH9jpsxtY2CsvZLymu24vyo7vU1oWR5LLAo
 vQf+jkHGDt5Dk4jVzvSfbINQMS3iA4867eAcxvs5UBgafTKsmC+6Nh7xQY7oiqkzfaAK
 EOrqREpyTJ6Na8GvHCgC4oU03LXilPtfmKXPByxhBZ45bOJyzbeKxc3oiQrEjH6E79TW
 24Yojr8mEwdEMf4wLdm6sn6SHf7HzWQ7Nt9jaI77MWEhUvyifHzA6Z7LVzxcSQdIzWqh
 fTWQ==
X-Gm-Message-State: APjAAAVQsmKTX8eDNdTnggf9u3J15Zg2C5B6tW6AQ8f+oRQc3t65vcbq
 UZWtmhYwwbtuZstq9Xr7pi4=
X-Google-Smtp-Source: APXvYqxXttPAlJ1qKQngtS+ANawEYl7YbL2EVX15AVZnZuJHMlbx6iKicR8YpvckL1STr06dOyGfww==
X-Received: by 2002:a17:90a:17aa:: with SMTP id
 q39mr4272622pja.106.1567263683947; 
 Sat, 31 Aug 2019 08:01:23 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id v18sm11994233pgl.87.2019.08.31.08.01.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 31 Aug 2019 08:01:23 -0700 (PDT)
Date: Sat, 31 Aug 2019 08:01:22 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ivan Mikhaylov <i.mikhaylov@yadro.com>
Subject: Re: [PATCH v4 3/4] watchdog/aspeed: add support for dual boot
Message-ID: <20190831150122.GA7207@roeck-us.net>
References: <20190828102402.13155-1-i.mikhaylov@yadro.com>
 <20190828102402.13155-4-i.mikhaylov@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828102402.13155-4-i.mikhaylov@yadro.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_080125_450097_9D7815D0 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 Alexander Amelkin <a.amelkin@yadro.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 01:24:01PM +0300, Ivan Mikhaylov wrote:
> Set WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION into WDT_CLEAR_TIMEOUT_STATUS
> to clear out boot code source and re-enable access to the primary SPI flash
> chip while booted via wdt2 from the alternate chip.
> 
> AST2400 datasheet says:
> "In the 2nd flash booting mode, all the address mapping to CS0# would be
> re-directed to CS1#. And CS0# is not accessible under this mode. To access
> CS0#, firmware should clear the 2nd boot mode register in the WDT2 status
> register WDT30.bit[1]."
> 
> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/aspeed_wdt.c | 65 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 64 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/aspeed_wdt.c b/drivers/watchdog/aspeed_wdt.c
> index cc71861e033a..125dbd349b00 100644
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
> @@ -165,6 +167,60 @@ static int aspeed_wdt_restart(struct watchdog_device *wdd,
>  	return 0;
>  }
>  
> +/* access_cs0 shows if cs0 is accessible, hence the reverted bit */
> +static ssize_t access_cs0_show(struct device *dev,
> +			       struct device_attribute *attr, char *buf)
> +{
> +	struct aspeed_wdt *wdt = dev_get_drvdata(dev);
> +	u32 status = readl(wdt->base + WDT_TIMEOUT_STATUS);
> +
> +	return sprintf(buf, "%u\n",
> +		      !(status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY));
> +}
> +
> +static ssize_t access_cs0_store(struct device *dev,
> +				struct device_attribute *attr, const char *buf,
> +				size_t size)
> +{
> +	struct aspeed_wdt *wdt = dev_get_drvdata(dev);
> +	unsigned long val;
> +
> +	if (kstrtoul(buf, 10, &val))
> +		return -EINVAL;
> +
> +	if (val)
> +		writel(WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION,
> +		       wdt->base + WDT_CLEAR_TIMEOUT_STATUS);
> +
> +	return size;
> +}
> +
> +/*
> + * This attribute exists only if the system has booted from the alternate
> + * flash with 'alt-boot' option.
> + *
> + * At alternate flash the 'access_cs0' sysfs node provides:
> + *   ast2400: a way to get access to the primary SPI flash chip at CS0
> + *            after booting from the alternate chip at CS1.
> + *   ast2500: a way to restore the normal address mapping from
> + *            (CS0->CS1, CS1->CS0) to (CS0->CS0, CS1->CS1).
> + *
> + * Clearing the boot code selection and timeout counter also resets to the
> + * initial state the chip select line mapping. When the SoC is in normal
> + * mapping state (i.e. booted from CS0), clearing those bits does nothing for
> + * both versions of the SoC. For alternate boot mode (booted from CS1 due to
> + * wdt2 expiration) the behavior differs as described above.
> + *
> + * This option can be used with wdt2 (watchdog1) only.
> + */
> +static DEVICE_ATTR_RW(access_cs0);
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
> @@ -306,9 +362,16 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
>  	}
>  
>  	status = readl(wdt->base + WDT_TIMEOUT_STATUS);
> -	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY)
> +	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY) {
>  		wdt->wdd.bootstatus = WDIOF_CARDRESET;
>  
> +		if (of_device_is_compatible(np, "aspeed,ast2400-wdt") ||
> +		    of_device_is_compatible(np, "aspeed,ast2500-wdt"))
> +			wdt->wdd.groups = bswitch_groups;
> +	}
> +
> +	dev_set_drvdata(dev, wdt);
> +
>  	return devm_watchdog_register_device(dev, &wdt->wdd);
>  }
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
