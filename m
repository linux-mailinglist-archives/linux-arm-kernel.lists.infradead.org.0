Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBD9C218F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RsUDq26vJv1XdU+rUv0vJ7TweqvGcmZICCabWU/AYsI=; b=Q40didePr1Pnlwe6384eRMVgn
	xRIktLlufaeHKLPTXCaKjyLx6BMwUz8Hk8fAu/8UWIgrcvFrhGvjsfFYkgWvKGGa6J+OspSKexZbm
	Y0WM+YzjUIrCm+KPXb4uWsBP1JLmk96hqhuOsYD2z1DF38Y2TJG4l7Dwpl/RMkeWL+u9iWCQHFZsB
	Clh23CsOm+XLrl2mwu2Me7otX7gZGXusVzj9gaWOgttb7ry7cqnBX9WnR5UDBjNPKiX20LVD04IBg
	UXw1Mbupeq49xFSs5CD0apc1GLu2JW6cvuJB9NaEedXZlvR0yF1AuRSLlo4jcKJDtS+6Ek5cyGNJV
	jaBTQGQlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvUB-00065u-Hl; Mon, 30 Sep 2019 13:13:07 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvU0-00064S-82; Mon, 30 Sep 2019 13:12:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id q12so5589444pff.9;
 Mon, 30 Sep 2019 06:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FaFmGKrNxd9v1HavpyQ+K8DRicz4HO/nLLTmLpS4H/4=;
 b=dC3y8N+1mXAuru6Y7UPSIGS8R6/VwIKIpmGCelirODQGRZ+RUPCF4Mu7vOlrpIg8vg
 2NoWxqvY/Dy62pNz8CuzpjYeMVTRr00oTFykazjoNnjbJGwp/w2u4x8ChSz2OBbeZ8I2
 NqQMgilrDgO68KGnkuAEkSC4ei1qR+M0azgmrmmKuXMD/QA+oR91W/JLOGZV3MX3gu3i
 2dVvXIExzrGArJc7CjLOIASm65VLHAaTz0z1u5MQkfhlNgFD1hg88yOZSBPngSEcMrWF
 ce0eHEk+waH/GG7RERph9lkAJ9h/rlV30ENivlYSgMS8DSom4ysIyHcxQPTRAu18xD4n
 E/3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FaFmGKrNxd9v1HavpyQ+K8DRicz4HO/nLLTmLpS4H/4=;
 b=YT+lR9wmWe4fZ4Khfa/mtfWJ/7QRncsJy3Sg4YI3DM/kkQd125Swqd4gnUjhgwVwwg
 ctpJC6XnUy3iSoA8NRc8nAdaIXFCB4KnzlQcQyFU7hPaPvn0jSkqDuqALgxGd//QLmyy
 3PcVC1H0RH1quhFpvC+akMLRJkoQbznMoaRwdSBQ35xuCpXsQz+1nTh80iooGuQfTDnd
 rLRgPBfl2AFdAz7zzbNlko2n9M0IRFz8TOQbG4P88esSQ03VPDvMNJ3ZrWW1FE4H/WVa
 5lI7pOlTgI0Z3DCg4tLY2wUjJsGaPfqwlf9/Q7qDnF7z2rkcs9rNj5qSi8B8okifPXCX
 PXPg==
X-Gm-Message-State: APjAAAW4C86PY4ZCdXCoY6duDDlFY24KHLcLj3bycsk1R/Ze8q/qy3zM
 /MVwm7tSspWQBGnVVu/8CLY=
X-Google-Smtp-Source: APXvYqxPCJQaSlD8tvpwexKP7Vny6q6AkehhbKvjtfBpyahKcJFUkAysjZ0I+oWKDziZ3JCkzYmqMA==
X-Received: by 2002:a17:90a:17c5:: with SMTP id
 q63mr26614556pja.106.1569849175310; 
 Mon, 30 Sep 2019 06:12:55 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 y15sm15404983pfp.111.2019.09.30.06.12.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Sep 2019 06:12:53 -0700 (PDT)
Subject: Re: [PATCH] watchdog: meson: Fix the wrong value of left time
To: Xingyu Chen <xingyu.chen@amlogic.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Kevin Hilman <khilman@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>
References: <1569754429-17287-1-git-send-email-xingyu.chen@amlogic.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <ee3ea7d5-1adf-c718-4533-70b04bb23ecc@roeck-us.net>
Date: Mon, 30 Sep 2019 06:12:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1569754429-17287-1-git-send-email-xingyu.chen@amlogic.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_061256_285310_CA802624 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, linux-watchdog@vger.kernel.org,
 Jianxin Pan <jianxin.pan@amlogic.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/29/19 3:53 AM, Xingyu Chen wrote:
> The left time value is wrong when we get it by sysfs. The left time value
> should be equal to preset timeout value minus elapsed time value. According
> to the Meson-GXB/GXL datasheets which can be found at [0], the timeout value
> is saved to BIT[0-15] of the WATCHDOG_TCNT, and elapsed time value is saved
> to BIT[16-31] of the WATCHDOG_TCNT.
> 
> [0]: http://linux-meson.com
> 
> Fixes: 683fa50f0e18 ("watchdog: Add Meson GXBB Watchdog Driver")
> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   drivers/watchdog/meson_gxbb_wdt.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/watchdog/meson_gxbb_wdt.c b/drivers/watchdog/meson_gxbb_wdt.c
> index d17c1a6..5a9ca10 100644
> --- a/drivers/watchdog/meson_gxbb_wdt.c
> +++ b/drivers/watchdog/meson_gxbb_wdt.c
> @@ -89,8 +89,8 @@ static unsigned int meson_gxbb_wdt_get_timeleft(struct watchdog_device *wdt_dev)
>   
>   	reg = readl(data->reg_base + GXBB_WDT_TCNT_REG);
>   
> -	return ((reg >> GXBB_WDT_TCNT_CNT_SHIFT) -
> -		(reg & GXBB_WDT_TCNT_SETUP_MASK)) / 1000;
> +	return ((reg & GXBB_WDT_TCNT_SETUP_MASK) -
> +		(reg >> GXBB_WDT_TCNT_CNT_SHIFT)) / 1000;
>   }
>   
>   static const struct watchdog_ops meson_gxbb_wdt_ops = {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
