Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F5816A816
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 15:15:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DdNK6Mpc/GNDeZJMgZpfOs9w/YkVeATXgLKWvim4qjg=; b=sIdtDsjYX3IcDh9NWHJO7Y6XQ
	tx/Al0YDtYXOhLfKDAXc4lhyYxY5t4Q/8IT5tGPLr2Ue7KnH6KtZY2y6Zuq8tM6YI7fos23jsRcRS
	WK2zBg12go8xMKCGX1H5krImkUQTjCweh9B3nnMHotMGuQuuD8PEFO2WkSJYYmoW6uMGXvnYO0fTD
	AL12a0NhHDcZTai77tR14jttCvyP0wb74R0s2fYGq1co0/uW2bEmf5617cbFZeG6vwE6csMGQB9Z6
	7RNlB0iv4MTM56qZPZCs4jUxKm1AbnvIzs1T9lSZg7z0kL6CHtqJ44Nj2YfBnoOLZXAuLGfEtNhZP
	7iAimOKzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6EWB-0001cM-6b; Mon, 24 Feb 2020 14:15:31 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6EW1-0001bZ-AB
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 14:15:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id t6so4116545plj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 06:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ubnVVT6qI7uXjPc1KQmojOU0uY/xl8NGz3VGIX5HNBc=;
 b=SFl8sfij2SzuzRD/MqxHZCrFH3Kt3RLYSp33JZO30sqPxNMDzLj+mmvl0Ubpxv5VQH
 WlU+ckd1Bv4C9Zmy+9fQIW4KvWcXx7izP6YMT7VuBt356HjETVFGBcYuN+xxM2KR8Zbw
 +Re8EvV6pdushQliODKSJ90UMzSe2l8Kf2b2Zk8nd0P7e3GjNmzJQrZfBf1gAhieumS/
 RMtAd5UrJWoRQQSrqOSozOK9aY/+5MO9mZx2gBCAodH2CwTRhf6R6TBfYzGYVN4KVcxT
 keIz6Zoc9pzYfHet7yyntrC4X/bS5fzpY1K94cxNti1P0Ww64BOF4FdJgiFbgEwNdb5u
 cV+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ubnVVT6qI7uXjPc1KQmojOU0uY/xl8NGz3VGIX5HNBc=;
 b=N0NLv+XpZ9XrdJc2+1ERZl4G4zdiTZans/D7BQEJM+0m01WcnCAW4vQzXl3jjUEBCS
 kpm+gSyK1+yLQ9HlgxRVibC5nDAtsgyZi66ze5RWsvk7DPBOQotcywabS1ifyagQNZlN
 j5bqFchw4ThhqBizkQA99ME1K/lIhU2k5FrUVAJGoP37mSJZ5fMPlRozLORjqDnbCWt4
 pI/RXpj/gmMdNk8t8j31sJ2FgZ1qM7wX5RarHY1ZcE/tZNBuPlBt1HLiwQursFgFb/Fk
 +NARnuWeCo9TVagmgZssIoLiPn0gI8obKhduXTXpYylHrw3E1a/K7ByY7ZcNEr/WU8k6
 NPnw==
X-Gm-Message-State: APjAAAW5adwOETxs3OKY2f98SHJcw19L50zJZxnn/DBwwxzKeqWCbHJW
 tDKpFWrcTOr+fG59X9SbEwk=
X-Google-Smtp-Source: APXvYqwXN5Q+WIqw9lgTr9ImuUegHgpzk3JW2OBJbZvQqEUTnnkuLgM1HXf28ZOfeWIVE3AfwuwgHQ==
X-Received: by 2002:a17:902:bb93:: with SMTP id
 m19mr51549174pls.310.1582553720077; 
 Mon, 24 Feb 2020 06:15:20 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 w14sm13074074pgi.22.2020.02.24.06.15.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Feb 2020 06:15:19 -0800 (PST)
Subject: Re: [PATCH] watchdog: imx2_wdt: Drop .remove callback
To: Anson Huang <anson.huang@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <1582512687-13312-1-git-send-email-Anson.Huang@nxp.com>
 <20200224102211.clzqw4vtzc4nz5df@pengutronix.de>
 <DB3PR0402MB391637EB54A1FD37059FBE47F5EC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <33c3778f-fc7e-8564-f767-91aafae03122@roeck-us.net>
Date: Mon, 24 Feb 2020 06:15:17 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB391637EB54A1FD37059FBE47F5EC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_061521_390093_D7F597BA 
X-CRM114-Status: GOOD (  32.68  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/24/20 3:44 AM, Anson Huang wrote:
> Hi, Uwe
> 
>> Subject: Re: [PATCH] watchdog: imx2_wdt: Drop .remove callback
>>
>> On Mon, Feb 24, 2020 at 10:51:27AM +0800, Anson Huang wrote:
>>> .remove callback implementation doesn' call clk_disable_unprepare()
>>> which is buggy, actually, we can just use
>>> devm_watchdog_register_device() and
>>> devm_add_action_or_reset() to handle all necessary operations for
>>> remove action, then .remove callback can be dropped.
>>>
>>> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
>>> ---
>>>   drivers/watchdog/imx2_wdt.c | 37
>>> ++++++++++---------------------------
>>>   1 file changed, 10 insertions(+), 27 deletions(-)
>>>
>>> diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
>>> index f8d58bf..1fe472f 100644
>>> --- a/drivers/watchdog/imx2_wdt.c
>>> +++ b/drivers/watchdog/imx2_wdt.c
>>> @@ -244,6 +244,11 @@ static const struct regmap_config
>> imx2_wdt_regmap_config = {
>>>   	.max_register = 0x8,
>>>   };
>>>
>>> +static void imx2_wdt_action(void *data) {
>>> +	clk_disable_unprepare(data);
>>
>> Does this have the effect of stopping the watchdog? Maybe we can have a
>> more expressive function name here (imx2_wdt_stop_clk or similar)?
> 
> This action is ONLY called when probe failed or device is removed, and if watchdog
> is running, the core driver will prevent it from being removed.
> 
>>
>> Is there some watchdog core policy that tells if the watchdog should be
>> stopped on unload?
> 
> watchdog_stop_on_unregister() should be called in .probe function to make core
> policy stop the watchdog before removing it, but I think this driver does NOT call
> it, maybe I should add the API call, need Guenter to help confirm.
> 
The driver doesn't have a stop function, which implies that the watchdog
can not be stopped once started. Calling watchdog_stop_on_unregister()
seems to be pointless.

That also implies that the watchdog can not be unloaded after it has
been started since it can't be stopped. More on that below.

>>
>>> +}
>>> +
>>>   static int __init imx2_wdt_probe(struct platform_device *pdev)  {
>>>   	struct device *dev = &pdev->dev;
>>> @@ -292,6 +297,10 @@ static int __init imx2_wdt_probe(struct
>> platform_device *pdev)
>>>   	if (ret)
>>>   		return ret;
>>>
>>> +	ret = devm_add_action_or_reset(dev, imx2_wdt_action, wdev->clk);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>>   	regmap_read(wdev->regmap, IMX2_WDT_WRSR, &val);
>>>   	wdog->bootstatus = val & IMX2_WDT_WRSR_TOUT ?
>> WDIOF_CARDRESET : 0;
>>>
>>> @@ -315,32 +324,7 @@ static int __init imx2_wdt_probe(struct
>> platform_device *pdev)
>>>   	 */
>>>   	regmap_write(wdev->regmap, IMX2_WDT_WMCR, 0);
>>>
>>> -	ret = watchdog_register_device(wdog);
>>> -	if (ret)
>>> -		goto disable_clk;
>>> -
>>> -	dev_info(dev, "timeout %d sec (nowayout=%d)\n",
>>> -		 wdog->timeout, nowayout);
>>
>> Does the core put this info in the kernel log? If not dropping it isn't obviously
>> right enough to be done en passant.
> 
> This is just an info for user which I think NOT unnecessary, so I drop it in this patch
> as well.
> 
>>
>>> -	return 0;
>>> -
>>> -disable_clk:
>>> -	clk_disable_unprepare(wdev->clk);
>>> -	return ret;
>>> -}
>>> -
>>> -static int __exit imx2_wdt_remove(struct platform_device *pdev) -{
>>> -	struct watchdog_device *wdog = platform_get_drvdata(pdev);
>>> -	struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);
>>> -
>>> -	watchdog_unregister_device(wdog);
>>> -
>>> -	if (imx2_wdt_is_running(wdev)) {
>>> -		imx2_wdt_ping(wdog);
>>> -		dev_crit(&pdev->dev, "Device removed: Expect reboot!\n");
>>> -	}
>>
>> I also wonder about this one. This changes the timing behaviour and so
>> IMHO shouldn't be done as a side effect of a cleanup patch.
> 
> Guenter has a comment of "use devm_watchdog_register_device(), and the watchdog subsystem
> should prevent removal if the watchdog is running ", so I thought no need to check the watchdog's
> status here, but after further check the core code of watchdog_cdev_unregister() function, I ONLY
> see it will check whether need to stop watchdog before unregister,
> 

I would suggest for someone to try and trigger this message, and let me know
how you did it. If the watchdog is running, it should not be possible to unload
the driver; attempts to unload it should result in -EBUSY. If it is possible
to unload the driver, there is a bug in watchdog core which will need to get
fixed.

> ...
> 
> 1083         if (watchdog_active(wdd) &&
> 1084             test_bit(WDOG_STOP_ON_UNREGISTER, &wdd->status)) {
> 1085                 watchdog_stop(wdd);
> 1086         }
> 
> Hi, Guenter
> 	Do you think watchdog_stop_on_unregister() should be called in .probe function to
> make watchdog stop before unregister?
> 
How would you expect the watchdog core to stop the watchdog
with no stop function in the driver ?

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
