Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4D69E894
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vfUknUP85dEb87xM6sf7DBZi+hEh1rhtenTiU14R+T4=; b=PhPSo5wNvavYI1hTzZJskmcKB
	bTOQekloZAf/Vg8GBEUYvGauSLdmrfZ9UotcQzwZHVtir9H06flvm892VKH0LjaSwcVZnvM/VatVR
	Ud3p/LjBcverbrXVg2v2r97s9+tuljW5eykrKhxwVQ5WSoVm/Io+YJ/c052T8B5xTV5DUvevxhRBJ
	jVQMlOjB35reY7iMMGUoQDnXW62NukrjlNtCK7aOpoqVd5QTuKww+brtJi0KQHSVUqyYwa7oZhNgN
	9HlC53erFKIQ3kP9ZHtBJNHz2XPTH2a58Q0Iw901ubOl4GtrlKzBdIO2O8gQCYx02NsiuBUCt2vfm
	GU2SUF8Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bBN-00068m-K3; Tue, 27 Aug 2019 13:06:45 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bBD-00068O-KD
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:06:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id m3so12645245pgv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 06:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tLfakLGpMLvdTV8QFc4nFi+HIp0PsQAUDM5NCWw4kOM=;
 b=e3RW4O/bkBNjJRXt0syqTSuQGa6iNaNuqgXq1e20CmuXTlkyv4RT1GXqxjJswj3P9n
 /YdtWylwjfbPGSAQdoXp4eYTIbehmw1D9qGRsg1gTqCMVaKrxKQWjCdN86PKqUq51kRq
 NR8qAB0zKrdjK75IhJeRlJgDOAXQNeFdgAjdFD4dBsx4aN9OEFmUQFHpIvf8vtA0Bj70
 ket1ALJGUasj0Ii86eSbQCX2dj2wHIOF1zoAwi0pGp63B+/MuqFU13+jrGuTeNXLRXKG
 6OQqyleuALUIjqcKCCtWtnbGPvmSg1mzEQWWArfw4basGrT1oA/gbONb+qvQ5t4qTte8
 UQDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tLfakLGpMLvdTV8QFc4nFi+HIp0PsQAUDM5NCWw4kOM=;
 b=OtiCyjfzwK58OxefD/ogH7/1//qsji/7S7RGN5UJs0Q8fcu0MonY/pnWlZ7F7VZTyd
 tnTD9GWsX7QAgGI6YKZbrpcFHUhqAakqkkxrV7BTEfi2/G0HMEzLRAoTzgmJSAvmxeZP
 0FzWu0ipsvgqroBtFGqwxI9KR8GfZTrqrxBXWkM3abF6xJQ9PSqKy5Aa3gxSoRvxBgTp
 KFRq+BI4vuipZBJqFzWCeq+gakJZGX3ZHstY8//BvFNFbWA5Ks8A6w5zscU6ukJBIqJ0
 ixVGAOxBVgjbSKNxLxrImhuL4H702XO71GmN6ZamPhAxyJrbQKq4iElC/oomQAhtGpLC
 Eg0g==
X-Gm-Message-State: APjAAAVcAdSlwwSDkUdfokehnKfPL2Yr9INA/TiBrhfmP305z80NnOpx
 H6a+ycoemU3mYwb1Sb+1fmVyzY2z
X-Google-Smtp-Source: APXvYqwfc3SZsT1Lj8EgzY5d72Zcg5rMHFxdArytviyXSiZ1V1oA2QmZOxx6LeKLWB7fM8fNGtzyfw==
X-Received: by 2002:a63:c203:: with SMTP id b3mr21289785pgd.450.1566911194546; 
 Tue, 27 Aug 2019 06:06:34 -0700 (PDT)
Received: from server.roeck-us.net
 (108-223-40-66.lightspeed.sntcca.sbcglobal.net. [108.223.40.66])
 by smtp.gmail.com with ESMTPSA id a23sm11467191pfc.71.2019.08.27.06.06.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Aug 2019 06:06:32 -0700 (PDT)
Subject: Re: [PATCH v2 3/4] watchdog/aspeed: add support for dual boot
To: Ivan Mikhaylov <i.mikhaylov@yadro.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>
References: <20190826104636.19324-1-i.mikhaylov@yadro.com>
 <20190826104636.19324-4-i.mikhaylov@yadro.com>
 <0df27d36-b45f-2059-6ead-a09ceb4b7605@roeck-us.net>
 <818746d20661b51914a7802dcbe0081352900b05.camel@yadro.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <d46685d9-c6d2-46af-67aa-844d2b0296a9@roeck-us.net>
Date: Tue, 27 Aug 2019 06:06:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <818746d20661b51914a7802dcbe0081352900b05.camel@yadro.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_060635_667824_0B24C5E9 
X-CRM114-Status: GOOD (  22.47  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 8/27/19 2:24 AM, Ivan Mikhaylov wrote:
> On Mon, 2019-08-26 at 17:14 -0700, Guenter Roeck wrote:
>>> +/*
>>> + * At alternate side the 'access_cs0' sysfs node provides:
>>> + *   ast2400: a way to get access to the primary SPI flash chip at CS0
>>> + *            after booting from the alternate chip at CS1.
>>> + *   ast2500: a way to restore the normal address mapping from
>>> + *            (CS0->CS1, CS1->CS0) to (CS0->CS0, CS1->CS1).
>>> + *
>>> + * Clearing the boot code selection and timeout counter also resets to the
>>> + * initial state the chip select line mapping. When the SoC is in normal
>>> + * mapping state (i.e. booted from CS0), clearing those bits does nothing
>>> for
>>> + * both versions of the SoC. For alternate boot mode (booted from CS1 due
>>> to
>>> + * wdt2 expiration) the behavior differs as described above.
>>> + *
>> The above needs to be in the sysfs attribute documentation as well.
> 
> My apologies but I didn't find any suitable, only watchdog parameters with
> dtbindings file, where should I put it? Documentation/watchdog/aspeed-wdt-
> sysfs.rst?
> 

Documentation/ABI/testing/sysfs-class-watchdog

Guenter

>>> + * This option can be used with wdt2 (watchdog1) only.
>>
>> This implies a specific watchdog numbering which is not guaranteed.
>> Someone might implement a system with some external watchdog.
>>
>>> + */
>>> +static DEVICE_ATTR_RW(access_cs0);
>>> +
>>> +static struct attribute *bswitch_attrs[] = {
>>> +	&dev_attr_access_cs0.attr,
>>> +	NULL
>>> +};
>>> +ATTRIBUTE_GROUPS(bswitch);
>>> +
>>>    static const struct watchdog_ops aspeed_wdt_ops = {
>>>    	.start		= aspeed_wdt_start,
>>>    	.stop		= aspeed_wdt_stop,
>>> @@ -306,9 +359,16 @@ static int aspeed_wdt_probe(struct platform_device
>>> *pdev)
>>>    	}
>>>    
>>>    	status = readl(wdt->base + WDT_TIMEOUT_STATUS);
>>> -	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY)
>>> +	if (status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY) {
>>>    		wdt->wdd.bootstatus = WDIOF_CARDRESET;
>>>    
>>> +		if (of_device_is_compatible(np, "aspeed,ast2400-wdt") ||
>>> +			of_device_is_compatible(np, "aspeed,ast2500-wdt"))
>>> +			wdt->wdd.groups = bswitch_groups;
> 
>> Kind of odd that the attribute only exists if the system booted from the
>> second flash, but if that is what you want I won't object. Just make sure
>> that this is explained properly.
> Perhaps dts configuration option would be better solution for it then? "force-
> cs0-switch" as example? Also, if it would be an option, dtbindings/wdt file for

You said earlier that this can not be done automatically but _must_ be done
from user space after the system has booted. Otherwise you could just
automatically switch to cs0 when the driver probes.

As I said, all I am asking for is proper documentation.

Guenter

> documentation will be the right place for it. Usage of this at side 0 will not
> get any good/bad results, it just makes user confused, so I decided to put it
> only at side 1. It works only for ast2400/2500 board unfortunately, for 2600
> there is big difference in switching mechanism. Any other thoughts how to make
> it better?
> 
> Thanks.
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
