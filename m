Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F6410771F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 19:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0nys0PhoO8p4oigBoeYCjtDQdMP7h0mH9DTUK9+G10=; b=kUWKu14xabTYyv
	JgLxFCO0oQFnGYBa4EGm1t5WHgRbuSOtrN1EF6b7RAcHQimeQbEfFrss2Z4yBTVp+caGQFgmf8qh/
	xQ+OCAMEvSgtYy0fgraJRqQJ7cj6lU41/MndlXQ5QUdJozNi16WNFC//aRH3aZPwjpoQ2l8iYKjgG
	YDgNV8abJsupJg7Zfqoet4qZ2rIsyQ4REjVO9z+EUdJUiChT+2gflVBNp/mf5o+uDwBprK/R+Hg9s
	kDEMWSypiLzIxcTEeAgSJi3OUvhhBK5Ka15wC/HEZWEpckthST6qkzo+xD8mcXecCONnsXxsoAG8c
	nfxWTzBR82iF7QpIFR/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYDSn-0005DG-TF; Fri, 22 Nov 2019 18:15:25 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYDSe-0005Cj-ON
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 18:15:18 +0000
Received: by mail-ot1-x344.google.com with SMTP id w11so7007430ote.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 10:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ETqvKsN8Ki2d6xHH8hTbXwpsKjbO3HfYiexCJg5rHps=;
 b=Vz3gQ6O1BkWhfRXtLHeOZ1T4j0hc4HluEkr2GeygkgSlXNXYYls21eZu5tBmUxU+b0
 vujx+tMFlVWeq6L7c40pdigm6tdfzY+MBy430YjI91yH9k0WvHBwSELP2kByBZVikZIG
 40FJeXLCZrR2RuSbOsQxawVgBZ8YTfm36yX6kbjcsZyB0rtBH5OcPXNQrQ2mVaIxg0jI
 LLGoxqrDBzEvEVJ9Dn0joSrhUGIxdqivs5KIbC2/hIf5aeNpxRmeLJbE1uojbgcMDVn4
 eIDnamhHvrUYwjVCQmhijVLTXA7429vX9v4ZKh7JuBc6nORGyuKZZmZLF8UXPIurGpzX
 vHcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=ETqvKsN8Ki2d6xHH8hTbXwpsKjbO3HfYiexCJg5rHps=;
 b=U9sEHAierv4ZyDJ9R0xoL6WCZM1lE/gtqs4PhEE5/DSF6DKnPexp/BfmmPWX8SEz96
 NkkS+ZN+T2lBuASSl3jKZEXPj4Xd+th4wUh+1nQr1F3h7BAiS0qRpb1tyUII4+WNP3hw
 juamvklO6GOoUL8a8zEeSk7xGN4VzvRjDQSiuR9t+QcZ/Zex43sLV7kYzm4grlRF7QU8
 rjXr5IvcAcZZ2HV28Q3Y4Z/g/fW64x7dSDh43+Kh5k+Zq/TaSe/SpN2Pvr1TH/Abq+O3
 ZGdpHdACY1bfA1mB5c7aSjVd7tJXOX6CMqubxdv2R0shfTnM8OloG2y9EooMbK4QtoQw
 dw0A==
X-Gm-Message-State: APjAAAX0Umkw6CCG6kwOXCzTS6A2UPd0eyTE6IG/3B9+sVr+v5UluHV1
 B8RPzs4t7f4JSig9AXPN7nY=
X-Google-Smtp-Source: APXvYqwBL0X8maNi1+glH+XvII4//7Sep1yviT3f2IJKTzhTVDnXRxb6iMDaSdRlzAFvgdA3hxqlRg==
X-Received: by 2002:a9d:3b0:: with SMTP id f45mr4071239otf.92.1574446515684;
 Fri, 22 Nov 2019 10:15:15 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id e23sm2391977otk.73.2019.11.22.10.15.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 22 Nov 2019 10:15:15 -0800 (PST)
Date: Fri, 22 Nov 2019 10:15:13 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Christophe Roullier <christophe.roullier@st.com>
Subject: Re: [PATCH v3 1/1] drivers: watchdog: stm32_iwdg: set
 WDOG_HW_RUNNING at probe
Message-ID: <20191122181513.GF13514@roeck-us.net>
References: <20191122132246.8473-1-christophe.roullier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122132246.8473-1-christophe.roullier@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_101516_795826_230C1C27 
X-CRM114-Status: GOOD (  21.57  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, wim@linux-watchdog.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 02:22:46PM +0100, Christophe Roullier wrote:
> If the watchdog hardware is already enabled during the boot process,
> when the Linux watchdog driver loads, it should start/reset the watchdog
> and tell the watchdog framework. As a result, ping can be generated from
> the watchdog framework (if CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED is set),
> until the userspace watchdog daemon takes over control
> 
> Fixes:4332d113c66a ("watchdog: Add STM32 IWDG driver")
> 
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> Changes since v2:
> According to Guenter
> removed intermediate variable
> 
> I've tested some config and it is working as expected:
> Watchdog enable in Uboot + HANDLE_BOOT_ENABLE is not set + daemon watchdog in userland ON ==> No reset IWDG2
> Watchdog enable in Uboot + HANDLE_BOOT_ENABLE is not set ==> Reset IWDG2
> Watchdog enable in Uboot + HANDLE_BOOT_ENABLE=y ==> No reset IWDG2
> Watchdog enable in Uboot + HANDLE_BOOT_ENABLE=y + daemon watchdog in userland ON puis OFF ==> Reset IWDG2
> Watchdog disable in Uboot + HANDLE_BOOT_ENABLE is not set ==> No reset IWDG2
> Watchdog disable in Uboot + HANDLE_BOOT_ENABLE=y ==> No reset IWDG2
> Watchdog disable in Uboot + HANDLE_BOOT_ENABLE=y + daemon watchdog in userland ON ==> No reset IWDG2
> Watchdog disable in Uboot + HANDLE_BOOT_ENABLE=y + daemon watchdog in userland ON puis OFF ==> Reset IWDG2
> 
> Thanks,
> Christophe
> 
>  drivers/watchdog/stm32_iwdg.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
> index a3a329011a06..25188d6bbe15 100644
> --- a/drivers/watchdog/stm32_iwdg.c
> +++ b/drivers/watchdog/stm32_iwdg.c
> @@ -262,6 +262,24 @@ static int stm32_iwdg_probe(struct platform_device *pdev)
>  	watchdog_set_nowayout(wdd, WATCHDOG_NOWAYOUT);
>  	watchdog_init_timeout(wdd, 0, dev);
>  
> +	/*
> +	 * In case of CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED is set
> +	 * (Means U-Boot/bootloaders leaves the watchdog running)
> +	 * When we get here we should make a decision to prevent
> +	 * any side effects before user space daemon will take care of it.
> +	 * The best option, taking into consideration that there is no
> +	 * way to read values back from hardware, is to enforce watchdog
> +	 * being run with deterministic values.
> +	 */
> +	if (IS_ENABLED(CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED)) {
> +		ret = stm32_iwdg_start(wdd);
> +		if (ret)
> +			return ret;
> +
> +		/* Make sure the watchdog is serviced */
> +		set_bit(WDOG_HW_RUNNING, &wdd->status);
> +	}
> +
>  	ret = devm_watchdog_register_device(dev, wdd);
>  	if (ret)
>  		return ret;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
