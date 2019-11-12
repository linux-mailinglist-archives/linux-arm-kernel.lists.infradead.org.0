Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8682EF90F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:47:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=chLs22vWtsQGQ/ATpVyloTGRjPE3/OrusI3pRfs4Y1g=; b=FnSGPbALCMf2B5IuyfNVRIXw/
	dKsm3D/oZkPUpSjacnrkde4tlOrsyTGSdJBP/MMFlLy5XtwAauduJlbD9xRJstOgFyeyjAZwYo2K6
	o3QsLWOsB8wo9qBcUc/jlcp9HoZYMDomzV8eD8fOnl9rPRdhSiV98hz1Qq6gdk+t4MX/BL+QxhL1R
	XWtIEvfasKtjHAkfTdB9/ubQNrnbfBwYd2srANzutAxwkGNzPRDCcbJqW9z1D0N8CgNjAhVP+Hwpw
	X26Wv8Cu2+/6S6BL2AEsZ6n+pWkdg4Zdp1RIWE6uRsO/Az9QTd8UYGKEMf/wa4RIyE0Vh2POK25U2
	qA19WPqEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWVl-0005HZ-7L; Tue, 12 Nov 2019 13:47:13 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWVd-0005H5-R6
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:47:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id w11so11853608pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 05:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nbTKl7Y1bBMki5n9d7cr5r/s5MMepoc3ySY5hIEeh8E=;
 b=JsC3PmoMFimkZKGX3RAKlUpul6TsVS7JJG0wdvhG8MU7QtwRwvRI4w05oTUkQ9EH5+
 RT6AthZzJaskMmP4SOUbxmGJR38QaZ7K247F4eqboKdfNJ4uqqtQCm+hJyVH6sfIOA4K
 2QZrGuQD0rmKVEKon/Jurfo+D8n7/vlL0a1Fpn8Y/QtYP9RgowKc+Ig1sK1mq/CeFCPR
 eULUgJQyJih0WOe4tOzQAKV9MUUKFanZWVrso6VinWpMKNOdvpdpco3wvahP6giekQAR
 eQk6p1UyhetpVpcSOZOqSTR0RLyVkgvLGCIC7vRZIid9m6xtV3nbMQe+OuU6DJb4GGA0
 2i4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nbTKl7Y1bBMki5n9d7cr5r/s5MMepoc3ySY5hIEeh8E=;
 b=mBX5oxOcOty3KwwGoQ4r9rccm8w3i3g3H7CWce5sQ95MtMt5FcB00mA5vuI8t/7fuV
 xhvj06BcElw3r8FFquXMqNEA5Z6WbWVNK4u0MSqGXHf26NxrQ83MODmIVEdx1dqa20lG
 99PBsQVY3pSVMIQyjrBGgZd91ETE4AGLYbt2rswkJAKU2vHsTQW4a4Ho2JcwZ53FbT5O
 pAtN2YxQureo0R+woIhO1jZf3J3FFpaqq80ZFlldPa/KxWqtrHh+srz4sccubTnZIpEf
 O3q3Q+tBxlK9gnCBsaXG5jcKc3Lbib2jqoHYjRBS8+Nk14vKtergWu4utTT+ut252d4o
 Vv9w==
X-Gm-Message-State: APjAAAVMPB/iTZQJOMw4/43uluA2NJu/zj/qYRCEKVg9Nyv9KHHRgXs4
 1IbdnN0FFLiUN1sT00F3nNw=
X-Google-Smtp-Source: APXvYqwbSI8pGLvGNXDQd4tRH7lluE7SbRFxEHFU+95NxxspJ5IdxgGPzQF6M74rrnLG4YgCPPvShw==
X-Received: by 2002:a62:140d:: with SMTP id 13mr35021203pfu.79.1573566425094; 
 Tue, 12 Nov 2019 05:47:05 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 z10sm10156870pgg.39.2019.11.12.05.47.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 05:47:04 -0800 (PST)
Subject: Re: [PATCH v3 1/3] watchdog: sama5d4_wdt: cleanup the bit definitions
To: Eugen.Hristev@microchip.com, robh+dt@kernel.org, wim@linux-watchdog.org,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1573474383-21915-1-git-send-email-eugen.hristev@microchip.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <e34df163-60f5-35c6-05c6-845d70143fd9@roeck-us.net>
Date: Tue, 12 Nov 2019 05:47:03 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1573474383-21915-1-git-send-email-eugen.hristev@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_054705_879089_107CF8C2 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/11/19 4:13 AM, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Cleanup the macro definitions to use BIT and align with two spaces.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
> Changes in v3:
> - new patch as requested from review on ML
> 
>   drivers/watchdog/at91sam9_wdt.h | 30 +++++++++++++++---------------
>   1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
> index 390941c..2ca5fc5 100644
> --- a/drivers/watchdog/at91sam9_wdt.h
> +++ b/drivers/watchdog/at91sam9_wdt.h
> @@ -14,23 +14,23 @@
>   #define AT91_WDT_H
>   
>   #define AT91_WDT_CR		0x00			/* Watchdog Control Register */
> -#define		AT91_WDT_WDRSTT		(1    << 0)		/* Restart */
> -#define		AT91_WDT_KEY		(0xa5 << 24)		/* KEY Password */
> +#define  AT91_WDT_WDRSTT	BIT(0)			/* Restart */

Using BIT() requires including linux/bits.h.

> +#define  AT91_WDT_KEY		(0xa5 << 24)		/* KEY Password */
>   
>   #define AT91_WDT_MR		0x04			/* Watchdog Mode Register */
> -#define		AT91_WDT_WDV		(0xfff << 0)		/* Counter Value */
> -#define			AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
> -#define		AT91_WDT_WDFIEN		(1     << 12)		/* Fault Interrupt Enable */
> -#define		AT91_WDT_WDRSTEN	(1     << 13)		/* Reset Processor */
> -#define		AT91_WDT_WDRPROC	(1     << 14)		/* Timer Restart */
> -#define		AT91_WDT_WDDIS		(1     << 15)		/* Watchdog Disable */
> -#define		AT91_WDT_WDD		(0xfff << 16)		/* Delta Value */
> -#define			AT91_WDT_SET_WDD(x)	(((x) << 16) & AT91_WDT_WDD)
> -#define		AT91_WDT_WDDBGHLT	(1     << 28)		/* Debug Halt */
> -#define		AT91_WDT_WDIDLEHLT	(1     << 29)		/* Idle Halt */
> +#define  AT91_WDT_WDV		(0xfff << 0)		/* Counter Value */
> +#define  AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
> +#define  AT91_WDT_WDFIEN	BIT(12)		/* Fault Interrupt Enable */
> +#define  AT91_WDT_WDRSTEN	BIT(13)		/* Reset Processor */
> +#define  AT91_WDT_WDRPROC	BIT(14)		/* Timer Restart */
> +#define  AT91_WDT_WDDIS		BIT(15)		/* Watchdog Disable */
> +#define  AT91_WDT_WDD		(0xfff << 16)		/* Delta Value */
> +#define  AT91_WDT_SET_WDD(x)	(((x) << 16) & AT91_WDT_WDD)
> +#define  AT91_WDT_WDDBGHLT	BIT(28)		/* Debug Halt */
> +#define  AT91_WDT_WDIDLEHLT	BIT(29)		/* Idle Halt */
>   
> -#define AT91_WDT_SR		0x08			/* Watchdog Status Register */
> -#define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
> -#define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
> +#define AT91_WDT_SR		0x08		/* Watchdog Status Register */
> +#define  AT91_WDT_WDUNF		BIT(0)		/* Watchdog Underflow */
> +#define  AT91_WDT_WDERR		BIT(1)		/* Watchdog Error */
>   
>   #endif
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
