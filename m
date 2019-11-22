Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88DC106BD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:47:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eYlNb5j7MkB87TJKHGY85fhPGBGaxVVyPRoPRmX3JS8=; b=eLLqkVPiJHKJvZa6/wSj2fsr4
	sQ7lPPbHD7fPCqRwr0zxehnGUNMFKSGGNKHMAOoilccxRsp6pZSBYiDcKCSOKmolXCILlvxNQCrOZ
	2pY7I9E9gOrzipRcPpIxGyeoUqoMqfcPpTR0nbidohEYfJ1Ph2K8/dj8o2HUypUT+WR4UYiRc63MU
	eDmJDzxX9KI307SQJnapio4njVmZ5Ed4xtGlHbT8hk4Rx2N9C44eKdhDKhw97gNvg7egR7cmQfa2w
	qBOunl6J4D8SbwUCApcMXWJk2uKuuBsPjRzwSf1DEY0hzFAyoK06VTHojriwT0wPddJdHZvydGDvy
	Gll6fcfsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6TT-0000kc-6M; Fri, 22 Nov 2019 10:47:39 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Rl-0007oH-SK
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:45:56 +0000
Received: by mail-pl1-x643.google.com with SMTP id j12so2955596plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 02:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2io4k/iq1gwW+3Ml4L4lOh1AzuywwhhqM/bGXIM0Dfg=;
 b=iMZkNX+PGvb23ecBpYgNQRQUaO8mtr3kGqYmRlTO9CWrFfM75lItHURi2rzgm9oq06
 r28HwxF0sYxRLtuBx3lJzz/TC+/bz8eCPuZ/ic524dTjXYTJNjf/L+nTapgjLmDUPrOC
 DZ+zu/haiL/BnkGR6wysoLGx+ryVj+yvLXp9c9D2g0G9Nwb04yo8tz1miD1VSBJumtBT
 vrDTl+2KIi2z3IMnGVfGcRjyYWPSjzLXOZqJ0+oVcxXjQ3wU7PnczHv5xratdBBiKuEN
 1hjBUbZXIBl+zHucz+0MXvvyK4a5w5vEJ1zQE48XNOTY84kQb5L8NgiAuCM47y35qCse
 h/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2io4k/iq1gwW+3Ml4L4lOh1AzuywwhhqM/bGXIM0Dfg=;
 b=l6DWR1GQZLTTzmeFdFUzDmwuM95h6ihuZ6fZNxQErkMrm7EQiDZ3SJytkcx4sPAsHW
 A/hVWfGDW/mS3I2WLnB8I9gwU/jf3xtHMRGvGprocZpuTKhs7ijO74ZfgG4AjNa71ISn
 v/+bF1+lc7DUKAG+W8FvIKq4n5t3V93FB76Ha0jFlVDJS8MLKWB7q3bCcyo3xffomCM9
 cALdtQS0kGjPVC1G7z1YZIQaBs/dWpFfgAtt2SY5p8fyoy6gJQmfxdPAnecgXV+WhqWA
 vQwuk/WpklQ95zMI9vqXJRtGmCC6CHOh6c73dG9vA/iuT4Y8U0L0zKZg9egHOpjdv2P+
 T8aw==
X-Gm-Message-State: APjAAAXf+1pOMUhl1cm8AbmfWaWo6CWSGT1Kq2T+kyfGI66fiAzD7M2+
 tJqke7lc0XyXQ5ujoEzPUb3W8AMF
X-Google-Smtp-Source: APXvYqxNbupSKQWXBXy0M3HLAZgGsZHVaATRyTWbQLfH0dXjq7jJ7Ve2vFUF3xJ5pA3CN94az8rCuw==
X-Received: by 2002:a17:902:d211:: with SMTP id
 t17mr7562415ply.141.1574419551426; 
 Fri, 22 Nov 2019 02:45:51 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 v16sm2714213pje.1.2019.11.22.02.45.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Nov 2019 02:45:50 -0800 (PST)
Subject: Re: [PATCH v2 1/1] drivers: watchdog: stm32_iwdg: set WDOG_HW_RUNNING
 at probe
To: Christophe Roullier <christophe.roullier@st.com>, wim@linux-watchdog.org, 
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com
References: <20191122082442.21695-1-christophe.roullier@st.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <ffa20f2f-1ca2-9d8f-6594-33b906cbb74a@roeck-us.net>
Date: Fri, 22 Nov 2019 02:45:49 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191122082442.21695-1-christophe.roullier@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024553_938227_46468720 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On 11/22/19 12:24 AM, Christophe Roullier wrote:
> If the watchdog hardware is already enabled during the boot process,
> when the Linux watchdog driver loads, it should start/reset the watchdog
> and tell the watchdog framework. As a result, ping can be generated from
> the watchdog framework (if CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED is set),
> until the userspace watchdog daemon takes over control
> 
> Fixes:4332d113c66a ("watchdog: Add STM32 IWDG driver")
> 
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> ---
> Changes since v1:
> According to Guenter
> I follow the guidance from intel-mid_wdt.c
> and I added test to check if CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED is set
> because we need to be flexible (depends on customer config, but watchdog
> not always start by bootloader (Uboot, ..))
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
>   drivers/watchdog/stm32_iwdg.c | 21 +++++++++++++++++++++
>   1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
> index a3a329011a06..7f454a6e17ba 100644
> --- a/drivers/watchdog/stm32_iwdg.c
> +++ b/drivers/watchdog/stm32_iwdg.c
> @@ -50,6 +50,9 @@
>   #define TIMEOUT_US	100000
>   #define SLEEP_US	1000
>   
> +static bool handle_boot_enabled =
> +	IS_ENABLED(CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED);
> +
>   struct stm32_iwdg_data {
>   	bool has_pclk;
>   	u32 max_prescaler;
> @@ -262,6 +265,24 @@ static int stm32_iwdg_probe(struct platform_device *pdev)
>   	watchdog_set_nowayout(wdd, WATCHDOG_NOWAYOUT);
>   	watchdog_init_timeout(wdd, 0, dev);
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
> +	if (handle_boot_enabled) {

You don't need that variable. Just use
	if (IS_ENABLED(CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED)) {
directly.

> +		ret = stm32_iwdg_start(wdd);
> +		if (ret)
> +			return ret;
> +
> +		/* Make sure the watchdog is serviced */
> +		set_bit(WDOG_HW_RUNNING, &wdd->status);
> +	}
> +
>   	ret = devm_watchdog_register_device(dev, wdd);
>   	if (ret)
>   		return ret;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
