Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430D39B1BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzx+oEkCOYE3+4mmrQrnR8MvJeUBT5ZYQ9WAujlDktU=; b=eMtqi4LfjdU51G
	LBMBy+6HtjHJHsKLAfAQ0Mkt5pwld4BTVSXniitySYeGorP2GRAPX4dVQz/MVdzL9bKTC8hhxmij7
	XufWaOMo6imum8eTxEcWMiCmON4iIhrqG8irfb8HABlCCUQdZCK4Va3ZBki8PsLQi+oOfhWSiB4eC
	JAZVfNrWKkRJ0KNnEIDRaZMPbt5DdBliMGx3fUV0LrkbCn6AABgnTop/mudHm6uGuSoLGN7a4Aale
	BwQfMxxuokrWLfN3R+7DRQ01h3OWczni8l27v/+Gh637AMq6D+3WyrmQMF73tPZGRcReBzZfGrjep
	QT64aYdNI8rQHRS2seyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1APn-0007hI-Sp; Fri, 23 Aug 2019 14:19:43 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1APh-0007gZ-6w
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:19:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id y9so6191505pfl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 07:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ATCgi1Sogh8xX//ITzLr0C3oCB9rJq6klExJFgC99wk=;
 b=MX6bUf+/9Pr+Mih2RzamjzGFDvamjBBVObGGRSU2DW4pK8Lh6MpQt0E6uHZsSAVS7f
 YenWpoaVjJG+XxFvAeS9QB7xfnXUcyjXMpkuyjfbx5dkYHOTZegtXuGZ8P0BOEklfQn+
 yQdsCWD9bOYS/WF06y738602EXzJkdiDKxhYV6E5v73tFv+S9FdaTBY+0ZKyhbXjIvZG
 utPTLaJSBlIOs/B+tCpcXqzenocmxxqNEdgvJvwt3DZ4/p01AhF/ER/AeZu9kzMM9e9O
 QT3aaYnKAmUP8Q62w7oDoThj3aixcTac36nJA47OoZMsTT6yGuvatR+asjCuzQh8A07O
 k2Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=ATCgi1Sogh8xX//ITzLr0C3oCB9rJq6klExJFgC99wk=;
 b=bIwLnN/hD7yVieKt4J7iP5hymOM6VH66dxIcXM7uE79kVcYE6z4AgAaCsBACcgcY96
 CrHZjFUdjio0QWEUxXApJ6NGGApqW3ef5zCYm7qg5wGUR/mWXUXZrv3vTTz8r4SedPJb
 EdSa2lEWkogVD+OKuqfa9lgUX2xcP1mjT1bE15nidogx4BB0SWEbKs07KrAW70RqORuF
 JGz0tWz84PF04TCp0WpC2huB832QmEcaYBvpVFQPH8/vLIaEqYW+qZV0CsYHYqTG8lZ2
 CvuxVspzbLYeOxNxmE2lUgmVC5zcEkZ7MDQlAqMf6qSDwh/srqwV2AKbxdRtrSKi6M49
 92oA==
X-Gm-Message-State: APjAAAUDpA9krMSNyKzghCoQa8V4NUcRm7zGEGBaPfHaZXcrgX0UceC7
 DZQw/GFK4r71zgXXKE+LS2Q=
X-Google-Smtp-Source: APXvYqxULzxl6gBv9C/yDCUlvYScoI2YH9z2w7u10ezY3qZ82ieomNLXNu8OJeZ7a3FW6rb7HwkbZQ==
X-Received: by 2002:a65:4c4d:: with SMTP id l13mr4137814pgr.156.1566569973137; 
 Fri, 23 Aug 2019 07:19:33 -0700 (PDT)
Received: from localhost (108-223-40-66.lightspeed.sntcca.sbcglobal.net.
 [108.223.40.66])
 by smtp.gmail.com with ESMTPSA id x24sm2099614pgl.84.2019.08.23.07.19.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Aug 2019 07:19:31 -0700 (PDT)
Date: Fri, 23 Aug 2019 07:19:30 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ivan Mikhaylov <i.mikhaylov@yadro.com>
Subject: Re: [PATCH v1 3/3] watchdog/aspeed: add support for dual boot
Message-ID: <20190823141930.GA11610@roeck-us.net>
References: <fafd757238e204b2566f216f1d6a4bef4b4906c5.camel@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fafd757238e204b2566f216f1d6a4bef4b4906c5.camel@yadro.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_071937_281903_EFCA9D07 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 Alexander Amelkin <a.amelkin@yadro.com>, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 12:35:28PM +0300, Ivan Mikhaylov wrote:
> Set WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION into WDT_CLEAR_TIMEOUT_STATUS
> to clear out boot code source and re-enable access to the primary SPI flash
> chip while booted via wdt2 from the alternate chip.
> 
> AST2400 datasheet says:
> "In the 2nd flash booting mode, all the address mapping to CS0# would be
> re-directed to CS1#. And CS0# is not accessable under this mode. To access
> CS0#, firmware should clear the 2nd boot mode register in the WDT2 status
> register WDT30.bit[1]."
> 
> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
> ---
>  drivers/watchdog/aspeed_wdt.c | 44 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 43 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/aspeed_wdt.c b/drivers/watchdog/aspeed_wdt.c
> index cc71861e033a..62bf95cb741f 100644
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
> @@ -165,6 +167,42 @@ static int aspeed_wdt_restart(struct watchdog_device *wdd,
>  	return 0;
>  }
>  
> +/* access_cs0 shows if cs0 is accessible, hence the reverted bit */
> +static ssize_t access_cs0_show(struct device *dev,
> +		struct device_attribute *attr, char *buf)
> +{
> +	struct aspeed_wdt *wdt = dev_get_drvdata(dev);
> +

Unnecessary empty line.

> +	uint32_t status = readl(wdt->base + WDT_TIMEOUT_STATUS);
> +
> +	return sprintf(buf, "%u\n",
> +			!(status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY));
> +}
> +
> +static ssize_t access_cs0_store(struct device *dev,
> +			      struct device_attribute *attr,
> +			      const char *buf, size_t size)
> +{
> +	struct aspeed_wdt *wdt = dev_get_drvdata(dev);
> +	unsigned long val = 0;

Unnecessary initialization.

> +
> +	if (kstrtoul(buf, 10, &val))
> +		return -EINVAL;
> +
> +	if (val)
> +		writel(WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION,
> +			wdt->base + WDT_CLEAR_TIMEOUT_STATUS);
> +
> +	return size;
> +}
> +static DEVICE_ATTR_RW(access_cs0);
> +
> +static struct attribute *bswitch_attrs[] = {
> +	&dev_attr_access_cs0.attr,

The attribute needs to be documented.

> +	NULL
> +};
> +ATTRIBUTE_GROUPS(bswitch);
> +
>  static const struct watchdog_ops aspeed_wdt_ops = {
>  	.start		= aspeed_wdt_start,
>  	.stop		= aspeed_wdt_stop,
> @@ -306,8 +344,12 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
>  	}
>  
>  	status = readl(wdt->base + WDT_TIMEOUT_STATUS);
> -	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY)
> +	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY) {
>  		wdt->wdd.bootstatus = WDIOF_CARDRESET;
> +		wdt->wdd.groups = bswitch_groups;
> +	}

So the attribute would only exist if the boot was from the secondary
flash, and it would exist even if it wasn't needed (ie on ast2500 /
ast2600) ? Well, if that is what you want, who am I to argue, but
you'll have to document it accordingly. When you do so, please also
document what happens on ast2500 / ast2600 when the attribute exists
and is written.

> +
> +	dev_set_drvdata(dev, wdt);
>  
>  	return devm_watchdog_register_device(dev, &wdt->wdd);
>  }
> -- 
> 2.20.1
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
