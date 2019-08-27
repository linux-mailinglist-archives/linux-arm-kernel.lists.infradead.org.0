Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A919DA76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 02:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W0UoCeSAd8l9Y+g7b/n7hHtPrM5LoLz4cd+DUqtIcAo=; b=G3Mge6VXv1F2KDiew8vXPCTVf
	RsyLzIf22TzzyWKM4l/BtbLzKfH1f3JdMu1a0n6yeIpBAYeGG8P6tN/QKS7t5vUkYEh3DX+uiupwV
	xMmridKZOzGItjOoouDbHU0rESRh26gptbObsY3lfXoZuKGoJP3jMbSaMgpR7mmGUJ1KCnMNVLFt5
	YWp/QucjcpyinN1lVnWGpIJhT3mi/0ol5ne8b02y7+iQsMem51RepsxMhoj6LCa9eSYUDXY7um4dZ
	o8mkmsxhGQl0U5uqSGTkxcLkUlq5vTIRWUB6IxuhCH/e0+a46g7jN/TS1wM7bW6vH2t6Viq7dxyWo
	D73pLsVRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2P8H-0000cf-CJ; Tue, 27 Aug 2019 00:14:45 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2P82-0000c8-I9
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 00:14:32 +0000
Received: by mail-pf1-x442.google.com with SMTP id o70so12878771pfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 17:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nJ8C78NoAqVqSum3LuoxAwskIWISqkgXdmo5sYpNHfk=;
 b=GUuYMNh/Zq9M6fu3kKwUR7xomor6vHtCuypnWT895hvqEeOCsaQgqtTUlpLfLT1S+o
 NkpHhFzliH5Lcd84Iu2vU+E93qYlREQSqB5+xntHrnTGwYhb6XslmoRGqDumw2vz8Cor
 gEEwJ/AjDkn2qUKos9LEGcfdNXCSjKxjhehiLRsTJy7tM9CAV4p+NEyo6yGR1FF55cjV
 OE/DMCIAu3bKaQj0ARtBGTikFBgjgIdsC53XHtFkTBr4qbZXUy/w/E9S7pqRNYzi8Wt1
 bPf/p5vnV6zh1RU0pVL4/yFQGTGekQqeYVcjLyQIac4bJBvIcasZ8ywgiG6Fd4tStHiT
 rLGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nJ8C78NoAqVqSum3LuoxAwskIWISqkgXdmo5sYpNHfk=;
 b=i0+XpzlLeeRXK0QTgL87WLxXWxbcGwea+e9CtGpoRPThEjDDCjV9iUU5uPmN7mjTFm
 1XZWIQ9yhkicYfXdVUHkrojk3VIXLpawYrfPxnvBY6k/Irnh5FSwwOo0IDsE1eNUSL9h
 3zCeYpIoJpvwU5qRNNEzLfuWOBKWRz3bENasC5Gu8qyBbdaTGgiZonh5DARZ8OGRYg42
 5CocZoLnmjNoKEhtSpEgBm7YHkv7yrO/aUvbd8myOHOr3DC8Spt7luhkghV2yn6qpghT
 K/iUo4CQvOCS2l9v0iSF/RY3C2iBQnqrECqALoXGf8edHZhyZBzSkan3W7hiGFtT3JTk
 LkBQ==
X-Gm-Message-State: APjAAAUTnm5er3MumudoAsANdgW84cmBKN5NflMJSku0MTGqbt88UIKP
 O+r5KVfkUCb8IXaLym8aZfvYHC6S
X-Google-Smtp-Source: APXvYqxvhXCKutjPnT5nWH3BMk7cObsbeQwIEFqub1CAyoV7XPoqs0YnakBp1Z0eeWOxE2cRwsTUlw==
X-Received: by 2002:a63:460d:: with SMTP id t13mr18245482pga.205.1566864869792; 
 Mon, 26 Aug 2019 17:14:29 -0700 (PDT)
Received: from server.roeck-us.net
 (108-223-40-66.lightspeed.sntcca.sbcglobal.net. [108.223.40.66])
 by smtp.gmail.com with ESMTPSA id j11sm4723844pfa.113.2019.08.26.17.14.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Aug 2019 17:14:29 -0700 (PDT)
Subject: Re: [PATCH v2 3/4] watchdog/aspeed: add support for dual boot
To: Ivan Mikhaylov <i.mikhaylov@yadro.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>
References: <20190826104636.19324-1-i.mikhaylov@yadro.com>
 <20190826104636.19324-4-i.mikhaylov@yadro.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <0df27d36-b45f-2059-6ead-a09ceb4b7605@roeck-us.net>
Date: Mon, 26 Aug 2019 17:14:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826104636.19324-4-i.mikhaylov@yadro.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_171430_604454_E3EC9F38 
X-CRM114-Status: GOOD (  28.18  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/26/19 3:46 AM, Ivan Mikhaylov wrote:
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
>   drivers/watchdog/aspeed_wdt.c | 62 ++++++++++++++++++++++++++++++++++-
>   1 file changed, 61 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/aspeed_wdt.c b/drivers/watchdog/aspeed_wdt.c
> index cc71861e033a..bbc42847c0e3 100644
> --- a/drivers/watchdog/aspeed_wdt.c
> +++ b/drivers/watchdog/aspeed_wdt.c
> @@ -53,6 +53,8 @@ MODULE_DEVICE_TABLE(of, aspeed_wdt_of_table);
>   #define   WDT_CTRL_ENABLE		BIT(0)
>   #define WDT_TIMEOUT_STATUS	0x10
>   #define   WDT_TIMEOUT_STATUS_BOOT_SECONDARY	BIT(1)
> +#define WDT_CLEAR_TIMEOUT_STATUS	0x14
> +#define   WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION	BIT(0)
>   
>   /*
>    * WDT_RESET_WIDTH controls the characteristics of the external pulse (if
> @@ -165,6 +167,57 @@ static int aspeed_wdt_restart(struct watchdog_device *wdd,
>   	return 0;
>   }
>   
> +/* access_cs0 shows if cs0 is accessible, hence the reverted bit */
> +static ssize_t access_cs0_show(struct device *dev,
> +		struct device_attribute *attr, char *buf)

This and other multi-line declarations do not appear to be aligned
with '('.

> +{
> +	struct aspeed_wdt *wdt = dev_get_drvdata(dev);
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
> +	unsigned long val;
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
> +
> +/*
> + * At alternate side the 'access_cs0' sysfs node provides:
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
The above needs to be in the sysfs attribute documentation as well.

> + * This option can be used with wdt2 (watchdog1) only.

This implies a specific watchdog numbering which is not guaranteed.
Someone might implement a system with some external watchdog.

> + */
> +static DEVICE_ATTR_RW(access_cs0);
> +
> +static struct attribute *bswitch_attrs[] = {
> +	&dev_attr_access_cs0.attr,
> +	NULL
> +};
> +ATTRIBUTE_GROUPS(bswitch);
> +
>   static const struct watchdog_ops aspeed_wdt_ops = {
>   	.start		= aspeed_wdt_start,
>   	.stop		= aspeed_wdt_stop,
> @@ -306,9 +359,16 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
>   	}
>   
>   	status = readl(wdt->base + WDT_TIMEOUT_STATUS);
> -	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY)
> +	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY) {
>   		wdt->wdd.bootstatus = WDIOF_CARDRESET;
>   
> +		if (of_device_is_compatible(np, "aspeed,ast2400-wdt") ||
> +			of_device_is_compatible(np, "aspeed,ast2500-wdt"))
> +			wdt->wdd.groups = bswitch_groups;

Kind of odd that the attribute only exists if the system booted from the
second flash, but if that is what you want I won't object. Just make sure
that this is explained properly.

> +	}
> +
> +	dev_set_drvdata(dev, wdt);
> +
>   	return devm_watchdog_register_device(dev, &wdt->wdd);
>   }
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
