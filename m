Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD8C740C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 23:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08bSfqCfWgo/FTuhygMFn1mw6CVSN7E/GMnq9+Txicw=; b=ABJ4q9HNiFw2BW
	JKpsQqgVN1auOXpXjHIwwu6473wFgQNDMiqaNmxUkDaunwGLIqVPqYWgTM8W380/EwRm46/AtVjdw
	WXbu+rWErYbTsD4VdbUILSZZI9NGje5REwHQhiv8ZjgBUvgCdhBo6wi0KsVR8OcE0tDO20nLqFSSb
	WLjkp1L0O6JMWojXZlD7V22B7HEb8tlJPTV/UhXnPphNYywV38EvDsMBDLiFlrdwFBBWpv3W9aWPb
	oXUaLLEl4z/h+K/DqDSlIZz6LkI4yQ+JJQ3o+dOHOMnCS61QU2F8MIOUir/2to1oruCWTGJ36narN
	KIuXJy4gU5+ZvXvA6Gxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqOd6-0003io-VV; Wed, 24 Jul 2019 21:16:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqOcu-0003iS-4w
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 21:16:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id p13so48407350wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 14:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W1jFeugsJ0oirRWmWhC8GQwi5V7rmQsow/rL22Dmte8=;
 b=usVr2ZwLIZQWZ7AIbj+TxyWWjwYj+Qp44q3aXgoV9E2Tqt/vYxz4oCR/lSjLaXfDta
 JOZ1NftN2dnDfnAD6PYTMvQYUD0igLbjcAGsnG7CK1TWLuw9ddtV2gpjDHq8MGUxsduG
 T9TTeXMSVtJ3To5rElilFQXBgSSOa0AXot8M9Ihi6R7+xomcyz0ztq3HKX/SrcKz7eW8
 AvzsPtuRLrvSFmFhFihwRslqM0LIgVigxV0fCgaFG1RHbfKNbjCXMQ9UBsmu4BPo11DN
 eGrBU4X5KYvEJOSFct2TrbXIY2bgA1Fn/JazB7SKpUVdfMiJTdCrDbMv4WQDlYHUci8a
 y/1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=W1jFeugsJ0oirRWmWhC8GQwi5V7rmQsow/rL22Dmte8=;
 b=rv/FaS605VE/+m9Pcm/qtVOgrNJJPUMr9J/MVvktxpykTeIZqCP8sPjiIOxiVKh8KN
 7D6C5BmrCUKRQZd1CKa9cboBRwRNnYT+hGH3iwswTw1E7WeaYP3hk6V8e8kjjyoQAa9n
 /LftyxWKdPJDjcAz4bYdowHVw2l1jz/0AY3i0gosev1EMb71iaILnh+fa7dGwF6KtCDa
 +wvrf39rvGwStBHzTr1vSWbmO8cYA4N+NE1I9LrPpbVyH8luN+S33y2nWtGXzdlS+V/S
 V+KsClr4LMHkSoqqNM0cStbEMu1uaoSuVcCbGd/a1qUMy1LEGYTaPhs5X6qsYqQP+L6r
 ONXg==
X-Gm-Message-State: APjAAAV/EoLO+eZY0AQQ7tgZx0KxLGdvuJKaFMSChgq1KHDgmJhiLs/i
 bPL4VVar2i4Q8HsH6AxYQGM=
X-Google-Smtp-Source: APXvYqzogvYFojqU+LiKW5qZ/iRZn2RtP8P4IXNz/56oAvGgeGNR0S8kfcjgs2G7ekuiKhVfW3tn5A==
X-Received: by 2002:adf:ea8b:: with SMTP id s11mr88132670wrm.100.1564003002083; 
 Wed, 24 Jul 2019 14:16:42 -0700 (PDT)
Received: from [192.168.1.19] (bko238.neoplus.adsl.tpnet.pl. [83.28.182.238])
 by smtp.gmail.com with ESMTPSA id
 y6sm58524363wmd.16.2019.07.24.14.16.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 14:16:41 -0700 (PDT)
Subject: Re: [PATCH] Enable backlight when trigger is activated
To: Pavel Machek <pavel@ucw.cz>
References: <20190718190849.GA11409@amd>
 <22d7eca4ad8aa2e73933c4f83c92221ce6e0945a.camel@collabora.com>
 <20190722075032.GA27524@amd> <6fc6af89-1455-7665-47e7-0568ecd87c9c@gmail.com>
 <20190724083355.GA27716@amd>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=jacek.anaszewski@gmail.com; prefer-encrypt=mutual; keydata=
 mQINBFWjfaEBEADd66EQbd6yd8YjG0kbEDT2QIkx8C7BqMXR8AdmA1OMApbfSvEZFT1D/ECR
 eWFBS8XtApKQx1xAs1j5z70k3zebk2eeNs5ahxi6vM4Qh89vBM46biSKeeX5fLcv7asmGb/a
 FnHPAfQaKFyG/Bj9V+//ef67hpjJWR3s74C6LZCFLcbZM0z/wTH+baA5Jwcnqr4h/ygosvhP
 X3gkRzJLSFYekmEv+WHieeKXLrJdsUPUvPJTZtvi3ELUxHNOZwX2oRJStWpmL2QGMwPokRNQ
 29GvnueQdQrIl2ylhul6TSrClMrKZqOajDFng7TLgvNfyVZE8WQwmrkTrdzBLfu3kScjE14Q
 Volq8OtQpTsw5570D4plVKh2ahlhrwXdneSot0STk9Dh1grEB/Jfw8dknvqkdjALUrrM45eF
 FM4FSMxIlNV8WxueHDss9vXRbCUxzGw37Ck9JWYo0EpcpcvwPf33yntYCbnt+RQRjv7vy3w5
 osVwRR4hpbL/fWt1AnZ+RvbP4kYSptOCPQ+Pp1tCw16BOaPjtlqSTcrlD2fo2IbaB5D21SUa
 IsdZ/XkD+V2S9jCrN1yyK2iKgxtDoUkWiqlfRgH2Ep1tZtb4NLF/S0oCr7rNLO7WbqLZQh1q
 ShfZR16h7YW//1/NFwnyCVaG1CP/L/io719dPWgEd/sVSKT2TwARAQABtC1KYWNlayBBbmFz
 emV3c2tpIDxqYWNlay5hbmFzemV3c2tpQGdtYWlsLmNvbT6JAj4EEwEIACgCGwMHCwkIBwMC
 AQYVCAIJCgsDFgIBAh4BAheABQJVo39tBQkJZgNMAAoJEL1qUBy3i3wmxLQQAK8QEQ0JqZEv
 5hrxiwT+Qtkx1TULYriK9sYcY9zbi18YxbKB0C4Znh5iP5o7k26WnPGLM+w4qWvTAkHjuAI7
 aBrvb4nGRvE5s14PQ9IHgL7iL3zAAHT1azIZng9dUCCSontB+vQZu1x/Un0lVlVCvsvO7QVt
 hAZUlT3iucNMO0jpCiS3raZkNfab8M+JWP/iplaV0Kn+O7LX3A/RdLmx5ZhuT+zvyHwl2c3K
 T56UHaQnjkuHB2Ytk8HtOjNXGNYnm4nLx3ok3jEN1nWDRV/DeiPn8zz4Zebsp686OH9vvX/0
 R4dk2YEjUCY/S7CbJxXzUnLjboUAGmtTVOu/uJ7y11iS9XEoJ09HEzijQwWctJXLojcTXCFw
 rbYkgqOjDRE9NTC6b68iUUVUayEADWz80qChbDJ2R2/Spm5+eojI2NVnr3AVSc7ZCBkhSDei
 TtSjQmlPflKEAR8LH67XbzvwvDwX/Lmi+/1Yxws0rxeJNYMqfOBBW/xi3QEc9hMDTl99EZwl
 NqfEN7HHh2jzAGNtIYxhHHiPUw/UZeS1fxD8vRqVZHW3ENR6lOCEYED1ChU1w8Zzm/CiT4ea
 ZakZChzFeUWVO/yFEcAzTJSiJHqLooNfP/VyFppjAlLVPISLcLBVTy+Ue76Z0IrC12fI38cm
 lJJGVY6NUbNb883pu5B7qB8huQINBFWjfaEBEADDzcpgTaAlnNd1Oqjs7V6yCgVbCxmV6v8j
 mkdp+4BWxQAg9E1O17h9lHJ8LzUfrkBcEq0amhHM19leoiMtgiE1yoOWL4Ndsp9PYE5mn7qC
 MiqFNel7wt2mUENgZ9yztrET9I/zbjA/RpTt+6RwlUaSNgz8RRN/UzJtTy2x5wxvPpWapfna
 TcFsPHQ2kYMl8di3ueNgnEwU+dlQnnlg7andjMDq+C4qGJXxnwKpsHMLnAXUxAVMZJUGjkd1
 WyUMep7SNqAzgZTRr451Q82XvokRHeZeNJfjo02olrwRl5L+jiPsMeUxT6fgTOgE1PulMxUU
 1Fm4/i6lQPyTKmB0KdOGOB+RrY2xwmvGm0bwcCChL6cE8lmZX1z7afIEZTZsWJ+oEJU8hGQF
 qHV8BOwhPisTZ6u2zx3i760p/GyzSuvNj6Exq9GNNG4LmC38rxMLg2HpNf4fWEl7R2gkdwhI
 +C1NQeetRtY+xVWnmG1/WygQKMvxsQFvCeTtZ5psOxZ5Eh7sDv0A3tAjqDtEGettAn/SAVmB
 1uJtjNsoeffNZVGojHDTNpD4LCRWJaBaNlxp+pVlPQa1oxKDQ4R2bRfsmjxLsI2aOsf9xNk7
 txOSY9FaVXBPVNWav36rg2O/ZdkSZ+RDaIDrOfj4tBo1aRGEFVn5tD0wsTTzszsxkeEAdwTR
 bwARAQABiQIlBBgBCAAPBQJVo32hAhsMBQkJZgGAAAoJEL1qUBy3i3wmahsQAJVgVlb41OsY
 +9BsHp4IqmGcJltYvIH0uEzYm0E/ykatM5AZxMICsF0W1aFt/KWFbhmucfyQ0DCQ6ywCdMKw
 jkt18W0hwljpf5NmQ/TmsVHl6ujfjphk8362Lz1L1ktR8tOKvQA9XSGjDa7mUJr50X5DpNlA
 53AyINNeuvzUx4mCNPR+ZqVhqR5/9mk+nZqVcLqDPf6x5RebOagAKPebWdEFtgbSHHhvf622
 JS+e8GkjDxePWsL8C0F+UYVqBfJj0uS7Aa11yoZosyLJ+NLS24tkbVo8w1oGWIrappqoo3gp
 w7yEjeKif5wizuA44khrOfcOR0fpdJ8Hjw4TggOEWGaktXtgpcdVUpA1xaS93oGm3CLKiuwm
 emtta/JV1aaOEZzJULJl2U50ceEmoxb1+z60YP9NgvNdXy34dq+TuYn/LCkOgSipR6broqKn
 4/8Pc9wdGkO9XuJ9czSQTtZHHc54pDywG6+4xoJAVF09ciYsKU30UK+ctlKNdiCbCsaIZzRV
 WLSvF/0ektHXij462VrwJJZYCD3B4zItlWvMsCk4/yYHKVDuSjfdOj3+8sGSEnuym3HP6pxN
 GIzz0qhTr6Hmbx3uhGQjFvfsWbGoqb5aqQckFVB51YNPSvWBb41AbAT3QvHn+mMIH0faOgJz
 5sZdKDFCF5AgguXPfX8yWP5PiQKtBBgBCAAgFiEEvx38ClaPBfeVdXCQvWpQHLeLfCYFAlsK
 ioYCGwIAgQkQvWpQHLeLfCZ2IAQZFggAHRYhBBTDHErITmX+em3wBGIQbFEb9KXbBQJbCoqG
 AAoJEGIQbFEb9KXbxC4A/1Pst/4bM9GyIzECWNCy8TP6xWPVc9S+N/pUB14y9zD7AP9ZTZub
 GopbGO2hQVScQM02vGQBlgXVWhqOigr4pgwfBu46D/48fqBjpnUaILO5hv/x/sPQ05wXz6Z3
 5HooqJBmKP/obljuVdAHPbU6mXhXP/7f2LmCZ8Fr0tEcfii9H093ofQUKOO7heMg4mSIlizY
 eAIKbqdTFElbM+DIw9JVuoIbZy3BpSIKFR1tL7T1tZvYwE2MiUjhvzAtYg63GHKfblWJ+bSn
 5BHkDbKbhuokn0tKt7Wozyp09ZycTE8VTg9kVhCBn2lfUnK6LvdlQ/3gvv/CDUbIlkvd494T
 iiAFeV0TSDRarc5GoD2AD/K+sJLI0o4dNX0kwaec8Y37CMFgw8w66oM8L/Nwr6y10VdzpRtQ
 zVA2AOdqia+O6Wh+UDFph1uUzbqAV/Km+kVvxzNw8z4E/pfq9aT4zD37y9be3Ir2VKD7jc6M
 haUEY+k71otmxhjECq8nmJLFxts4tvmrzBZy3pTsRnVGe459UiegG22uVi91a1wj/k1BOm2S
 4H8PJGGvEElz98rMnjCNLaKRxZ7QWfGtClwTbKqhQgVpkx138LH1tFYAZkbTzu3l1Qcm4ydV
 VykdkWccEqvxqDV4f8q0V0MW3KWfkD9/07bbGxXSnImeLt7bPuVMGK2tAUbr2+dUYmUdsETZ
 1HgZ11moCVU5Ru0RwTv9oyThOsK3HQjI7NCIsDzVpolaGQPd9E7xwOVHhhDcXRqqNjLzHUSe
 eGGiEQ==
Message-ID: <f00d99cb-da32-05b3-bf49-447cb8bd33e0@gmail.com>
Date: Wed, 24 Jul 2019 23:16:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724083355.GA27716@amd>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_141644_220858_6E2318FF 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jacek.anaszewski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-fbdev@vger.kernel.org, mpartap@gmx.net, b.zolnierkie@samsung.com,
 tony@atomide.com, merlijn@wizzup.org,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, linux-leds@vger.kernel.org,
 linux-omap@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/24/19 10:33 AM, Pavel Machek wrote:
> Hi!
> 
>>>>> +++ b/drivers/leds/trigger/ledtrig-backlight.c
>>>>> @@ -114,6 +114,8 @@ static int bl_trig_activate(struct led_classdev *led)
>>>>>  	n->old_status = UNBLANK;
>>>>>  	n->notifier.notifier_call = fb_notifier_callback;
>>>>>  
>>>>> +	led_set_brightness(led, LED_ON);
>>>>> +
>>>>
>>>> This looks fishy.
>>>>
>>>> Maybe you should use a default-state = "keep" instead? (and you'll have
>>>> to support it in the LED driver).
>>>>
>>>> That'll give you proper "don't touch the LED if it was turned on" behavior,
>>>> which is what you seem to want.
>>>
>>> Actually no, that's not what I want. LED should go on if the display
>>> is active, as soon as trigger is activated.
>>>
>>> Unfortunately, I have see no good way to tell if the display is
>>> active (and display is usually active when trigger is activated).
>>
>> default-state DT property can be also set to "on"
>> (see Documentation/devicetree/bindings/leds/common.txt).
> 
> Yes, except that it does not work with all drivers :-(. In particular,
> it does not work with lm3532.
> 
> We should really move more of the device tree parsing into core, so
> that there's one place to fix...

Right. We could have something similar to led_get_default_pattern().
led_get_default_state() ?

-- 
Best regards,
Jacek Anaszewski

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
