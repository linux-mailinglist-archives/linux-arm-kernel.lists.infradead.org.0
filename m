Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1623104FB2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 10:53:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N2Sfylv2fl4dNpymD1BNjnC7M2c+opddzSoekP1nEpY=; b=o9Vz281HEL1PbFMuhLbEbYqoz
	fy8XfSb9sneAHRfTlyk6We7Ikc1xTLMbdg8hk5RHhSEjusUdAhRUK3E2cRN7Uro46KUoyjgfMtBTO
	ljjv7sT+mZmJakud85OCa394Rf5U4m0fX1lhQV2QIINBELMDTJoZ4RLi9yxrqqcUuwr+kOZwx/8Gj
	pzXqQdM5HVM7wtdwbNoMh2wa4FpX6/zRQMmsyTtLFhD3+A8+atw+ue/qCmSFw9T0vNKnsykjzXvkZ
	/dLmcsKeTIQakg0sIcyrgUWCr0YTUR/zh2VEfAAQ6VJ32WgdTAlJt74EBiZ4D1NWb+qKcPO0d13Iw
	0MGgmJmvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXj9n-00040x-88; Thu, 21 Nov 2019 09:53:47 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXj9f-00040d-5B
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 09:53:40 +0000
Received: by mail-pf1-x441.google.com with SMTP id z4so1385217pfn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 01:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=24Z96VAL0Kc1Ory+ij+teunstFq8Wsss9gha+iAZp1A=;
 b=SxVFKQkA5BaDYF5mJppd2hlZ80wgUKapnXzXhrBilpXnOlr/xCwU7vE//ig32zOceT
 XtkpMORvWROG5o5fl2D0BxBXRGBggHSUcpa95yRaTuABLqdLLXrzbyKJaQ56WlmFBceL
 xMPA2xpH+pkOrZSCtgbJISkyeOH56yfseOr377m00McqQbJObdmbdGgXfByGUef1uekX
 dGxqugCdAm2UnNFD7svyX4IVhZ40X7dISw1a+6mYfDxmD55B1fcPuW1OmCzbZDTpphNo
 Xq6lm2EXq6CMlY4Zp4SNk/A0YnWCV2Q6/dn3UCeQG0veNqkGUAsErHvJGaqxws4Y6xYW
 /bYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=24Z96VAL0Kc1Ory+ij+teunstFq8Wsss9gha+iAZp1A=;
 b=JjWwSTxAKnQc/yb2qVzMidfe1822PqIOGrlRXM2RF3Q7GmqKfQpYU5vLNu6bGT2Shi
 EygyRWwLqHZX/acPA3deddqdqdFq2wSr9Cy78qR8XVUQtrYsvf63J/F3vY2xbKf4UH0Q
 ztsP9E9NGWdseU5KNJjK2yaPSwIqvXl6kp081+vEXBFVMTWUTfs7h3ewQWQ1KwGGptu5
 OZMpEWufkA87pamm2lkSAtKsdJcwxkJ+odsnfXCizQjExUNyIKlmqs1OyID5jDt6jM1Q
 LEcOX/uNTd0BkGjOJ+qZp+Z01Ohwml+kyUT8eDBOsoPPyrvc+l9Qgj83dlzmEeWdtqdO
 G9TQ==
X-Gm-Message-State: APjAAAUMqmCXTNgFX2+qsCHMnLzMK87hCobT+4THIWNEsWN0gv/8fdIn
 0PVDj/hb7U1rxK/BsQ7HXEOtcL1+
X-Google-Smtp-Source: APXvYqyQQtJCGLeNZ9QIHYtWJHPoYAV8WyiiJMmXgLDMcQgxIw+iZZPKs0Mi17aWOTVD3zHS2LO3Lg==
X-Received: by 2002:a62:174b:: with SMTP id 72mr8853102pfx.179.1574330017805; 
 Thu, 21 Nov 2019 01:53:37 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 e17sm2655360pfh.121.2019.11.21.01.53.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 21 Nov 2019 01:53:36 -0800 (PST)
Subject: Re: [PATCH 1/1] drivers: watchdog: stm32_iwdg: set WDOG_HW_RUNNING at
 probe
To: Christophe Roullier <christophe.roullier@st.com>, wim@linux-watchdog.org, 
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com
References: <20191121082813.29267-1-christophe.roullier@st.com>
 <20191121082813.29267-2-christophe.roullier@st.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <ce10681c-8fa3-0fa6-3509-376a2f37aec9@roeck-us.net>
Date: Thu, 21 Nov 2019 01:53:35 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191121082813.29267-2-christophe.roullier@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_015339_218758_867105BA 
X-CRM114-Status: GOOD (  25.61  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: linux-stm32@st-md-mailman.stormreply.com, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/21/19 12:28 AM, Christophe Roullier wrote:
> If the watchdog hardware is already enabled during the boot process,
> when the Linux watchdog driver loads, it should reset the watchdog and
> tell the watchdog framework. As a result, ping can be generated from
> the watchdog framework (if CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED is set),
> until the userspace watchdog daemon takes over control
> 

This is not what the code is doing. It sets the WDOG_HW_RUNNING flag
unconditionally, no matter if the watchdog is already running or not.
It also changes the semantic of the rest of the code, as well as
functionality. The code in start_timeout no longer waits, and the ping
code explicitly (re-)enables the watchdog.

If you want an option to start the watchdog at probe time unconditionally,
please add a module parameter to do it. Otherwise you'll need to check if
it is indeed enabled before setting WDOG_HW_RUNNING, and in that case it
should not be necessary to re-enable it. It should also not be necessary
to split the start function.

Thanks,
Guenter

> Fixes:4332d113c66a ("watchdog: Add STM32 IWDG driver")
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> ---
>   drivers/watchdog/stm32_iwdg.c | 57 ++++++++++++++++++++++++-----------
>   1 file changed, 40 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
> index a3a329011a06..2b3be3b1c15b 100644
> --- a/drivers/watchdog/stm32_iwdg.c
> +++ b/drivers/watchdog/stm32_iwdg.c
> @@ -87,8 +87,23 @@ static inline void reg_write(void __iomem *base, u32 reg, u32 val)
>   static int stm32_iwdg_start(struct watchdog_device *wdd)
>   {
>   	struct stm32_iwdg *wdt = watchdog_get_drvdata(wdd);
> -	u32 tout, presc, iwdg_rlr, iwdg_pr, iwdg_sr;
> -	int ret;
> +
> +	dev_dbg(wdd->parent, "%s\n", __func__);
> +
> +	/*  Start the watchdog */
> +	reg_write(wdt->regs, IWDG_KR, KR_KEY_ENABLE);
> +
> +	/* reload watchdog */
> +	reg_write(wdt->regs, IWDG_KR, KR_KEY_RELOAD);
> +
> +	set_bit(WDOG_HW_RUNNING, &wdd->status);
> +	return 0;
> +}
> +
> +static int stm32_iwdg_setprescaler(struct watchdog_device *wdd)
> +{
> +	struct stm32_iwdg *wdt = watchdog_get_drvdata(wdd);
> +	u32 tout, presc, iwdg_rlr, iwdg_pr;
>   
>   	dev_dbg(wdd->parent, "%s\n", __func__);
>   
> @@ -108,19 +123,6 @@ static int stm32_iwdg_start(struct watchdog_device *wdd)
>   	/* set prescaler & reload registers */
>   	reg_write(wdt->regs, IWDG_PR, iwdg_pr);
>   	reg_write(wdt->regs, IWDG_RLR, iwdg_rlr);
> -	reg_write(wdt->regs, IWDG_KR, KR_KEY_ENABLE);
> -
> -	/* wait for the registers to be updated (max 100ms) */
> -	ret = readl_relaxed_poll_timeout(wdt->regs + IWDG_SR, iwdg_sr,
> -					 !(iwdg_sr & (SR_PVU | SR_RVU)),
> -					 SLEEP_US, TIMEOUT_US);
> -	if (ret) {
> -		dev_err(wdd->parent, "Fail to set prescaler, reload regs\n");
> -		return ret;
> -	}
> -
> -	/* reload watchdog */
> -	reg_write(wdt->regs, IWDG_KR, KR_KEY_RELOAD);
>   
>   	return 0;
>   }
> @@ -131,6 +133,9 @@ static int stm32_iwdg_ping(struct watchdog_device *wdd)
>   
>   	dev_dbg(wdd->parent, "%s\n", __func__);
>   
> +	/*  Start the watchdog */
> +	reg_write(wdt->regs, IWDG_KR, KR_KEY_ENABLE);
> +
>   	/* reload watchdog */
>   	reg_write(wdt->regs, IWDG_KR, KR_KEY_RELOAD);
>   
> @@ -140,12 +145,21 @@ static int stm32_iwdg_ping(struct watchdog_device *wdd)
>   static int stm32_iwdg_set_timeout(struct watchdog_device *wdd,
>   				  unsigned int timeout)
>   {
> +	int ret;
> +
>   	dev_dbg(wdd->parent, "%s timeout: %d sec\n", __func__, timeout);
>   
>   	wdd->timeout = timeout;
>   
> -	if (watchdog_active(wdd))
> -		return stm32_iwdg_start(wdd);
> +	if (watchdog_active(wdd)) {
> +		ret = stm32_iwdg_setprescaler(wdd);
> +		if (ret) {
> +			dev_err(wdd->parent, "failed to set prescaler\n");
> +			return ret;
> +		} else {
> +			return stm32_iwdg_start(wdd);
> +		}
> +	}
>   
>   	return 0;
>   }
> @@ -262,12 +276,21 @@ static int stm32_iwdg_probe(struct platform_device *pdev)
>   	watchdog_set_nowayout(wdd, WATCHDOG_NOWAYOUT);
>   	watchdog_init_timeout(wdd, 0, dev);
>   
> +	/* Make sure the watchdog is serviced */
> +	set_bit(WDOG_HW_RUNNING, &wdd->status);
> +
>   	ret = devm_watchdog_register_device(dev, wdd);
>   	if (ret)
>   		return ret;
>   
>   	platform_set_drvdata(pdev, wdt);
>   
> +	ret = stm32_iwdg_setprescaler(wdd);
> +	if (ret) {
> +		dev_err(dev, "failed to set prescaler\n");
> +		return ret;
> +	}
> +
>   	return 0;
>   }
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
