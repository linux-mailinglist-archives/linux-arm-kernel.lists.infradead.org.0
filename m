Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB5263631
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hkvALYjscTUuSBwyyyzTlwjwMyRKGsiD6wnrgoxpJOE=; b=qpW0Mozde4jT1zrvnLzVXK7HD
	KiVC3LHM2BpSxQ+oY6aMw+gidIgtqb6VPdiX/T3ZemzQ4I0mR4NsgCEcmmNjB2rdzeQFwy4964DrT
	k9F4nChb3Z4xbk3wqRq+F6PRQP+oG7hQcyXhXqeIU9gkER29aUa508dGglnV1m5aQTydBFDNOXlBD
	sL5A2nEqaYHL4GX156crVz6E7StvwqaWOgAVoRJFYOBqozprUeuwWAYv4IfFt1AAyx/Cg5zilzRH6
	2cLNvIOZ1ZnG9LLsfTVCIM21zxvYxgP2qINuhGTnkWbsayojizP29CwefmrCBtgyaxVulvBeu+3QF
	bau3HnwCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpYE-00022R-5Y; Tue, 09 Jul 2019 12:48:54 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpY1-00021T-Fk
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:48:42 +0000
Received: by mail-pl1-x642.google.com with SMTP id c14so10033320plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 05:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5AE4o0U/WCGbvWc0ylfbuwo1RhJ3ZUZDX9TulUF132o=;
 b=HlzabFAZ7RAV6zC/psU8mNfrzsaY0Hgc2bjCY2TQO0PhVLZdpVkJjOD+L3zPuHxa4z
 aoipGLXVHXbgY8kNaTZg7VlRaodW/q/UeCerGapgxq7DFYTwXqHM/nOeHimMkf0v5NUw
 5Gf5I2wuxSADjxzFXzEcM4tE0rTJZE6fsHBbw7yu5/PX39UAerBpE7ckHgYQH0qe0c6w
 9WnCQLyT9569mKuY60+xQkgy4i5+kPqWTPX+qxobiE9NFCE3pME3GUlKU7TvFonIgZK1
 h76C0tBPqQaSHnDajKVjJqEcf8iJVI7rMIWRM4spmUlIGsBFyX7O9bwes5Dctb7/TdU/
 EYXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5AE4o0U/WCGbvWc0ylfbuwo1RhJ3ZUZDX9TulUF132o=;
 b=i20v/ew+RRgAcAo4IzrLBg62xD4if7GXtgGS0S59Um8Wn5o24O9L/YbA7GB5Vygxw5
 LBsPXiNpiBejhLH4rK4YFswN29FqrEEETbeapzX1xwC+c5F8dkpWI6WkWsazOo/tpaMa
 YO/Wg97gnMPANhHvbTkhb5I/cmQpcUIJinaU7Eg6AA28XdesPxt2Nevt32BTF7TPNJJd
 HgOdm1gCpvgXRq6xDc/CEjI5G+w2Xn8QEJW+qfxSD8eAnP5B/uvCWQFBn2YEo1QJZkgG
 gTps8HNtCideyH1dSX3ZSRTvPct+q35f9Thdk60OnDhGAjxrf7tuGCEJLPbphpIJ1Pve
 kX0g==
X-Gm-Message-State: APjAAAVUn+sTnfr12tKM60UzDGp24jTkAKQZyw4NaI77eKGmCOSBdS9N
 5jiuUafqLjmPrf7Q3t58TAc=
X-Google-Smtp-Source: APXvYqw+X9GQ5WKiX1/kY2sZRv7+EwXLGKwjSCu7B2+7p4IAAS8HYIwI7HKW4PaKGNYQ5CzGeq/H8Q==
X-Received: by 2002:a17:902:9a85:: with SMTP id
 w5mr31966607plp.221.1562676520575; 
 Tue, 09 Jul 2019 05:48:40 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 t10sm2715448pjr.13.2019.07.09.05.48.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 05:48:39 -0700 (PDT)
Subject: Re: [PATCH RESEND] watchdog: sama5d4: fix WDD value to be always set
 to max
To: Eugen.Hristev@microchip.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, wim@linux-watchdog.org,
 linux-watchdog@vger.kernel.org
References: <1562656725-21468-1-git-send-email-eugen.hristev@microchip.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <f24f8ea9-86ba-adbd-2ba8-9fe9de56593d@roeck-us.net>
Date: Tue, 9 Jul 2019 05:48:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562656725-21468-1-git-send-email-eugen.hristev@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_054841_558632_D810D08C 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/9/19 12:26 AM, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> WDD value must be always set to max (0xFFF) otherwise the hardware
> block will reset the board on the first ping of the watchdog.
> 
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

This patch is already in -next as of today.

Guenter

> ---
>   drivers/watchdog/sama5d4_wdt.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
> index b8da1bf..5afe10c 100644
> --- a/drivers/watchdog/sama5d4_wdt.c
> +++ b/drivers/watchdog/sama5d4_wdt.c
> @@ -110,9 +110,7 @@ static int sama5d4_wdt_set_timeout(struct watchdog_device *wdd,
>   	u32 value = WDT_SEC2TICKS(timeout);
>   
>   	wdt->mr &= ~AT91_WDT_WDV;
> -	wdt->mr &= ~AT91_WDT_WDD;
>   	wdt->mr |= AT91_WDT_SET_WDV(value);
> -	wdt->mr |= AT91_WDT_SET_WDD(value);
>   
>   	/*
>   	 * WDDIS has to be 0 when updating WDD/WDV. The datasheet states: When
> @@ -248,7 +246,7 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>   
>   	timeout = WDT_SEC2TICKS(wdd->timeout);
>   
> -	wdt->mr |= AT91_WDT_SET_WDD(timeout);
> +	wdt->mr |= AT91_WDT_SET_WDD(WDT_SEC2TICKS(MAX_WDT_TIMEOUT));
>   	wdt->mr |= AT91_WDT_SET_WDV(timeout);
>   
>   	ret = sama5d4_wdt_init(wdt);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
