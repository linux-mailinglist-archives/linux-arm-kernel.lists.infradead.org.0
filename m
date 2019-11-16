Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEABFF2A0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 17:21:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v20Oin+SUtg2ehDEZ7SciqVwHSTBbN4ieNK5Gfun5zo=; b=aEO23NcyClX4yf
	dHJ+bvdQpFqbJ3KapXQIGe/eAjGjtq3df7/sIq+shLQVIsraFcP/ffv12M5LJPxlLrISjYNClYtxl
	bScimI1wV/oAkiJevoiy0apl3/kyyxCjERh8//pwycqxe3EO1RZ5HkhYHJ9kSO+VL+Ychh/vVzlmb
	qCb9lXaXThqMQ9iHUCQvjm6+fy/Gz/WqROvDtKZmRVRvqm+o/+hNVwL1WYne/Z1lQ66+PpbbOlz4Y
	LXTGY6eZbvy63SJjCYqiBU7DKhlpbYEMP/hjoJV3vFXpz4oVenhPJAhpvfbteJhekuhKfprJjyGnu
	kK29noxFq3jh+vrQivtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0on-0002Gl-UI; Sat, 16 Nov 2019 16:21:01 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0of-0002Fm-S9
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 16:20:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id q13so8143770pff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 Nov 2019 08:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3ThCOn+QwgspJ3kxAATKe5mgdC4dFBHT7/R2+FrM5uE=;
 b=Ydq+ryFHXyCcCndRf0G9/AN0hFrn0rS9hynpb848hB82abgjXFz2z4BqEgRkNB9xXP
 Ob7eqFO/Xq8K6kEL6fRe6Hc1dPEmOsQRmAby1ZRPGsNckUFgRusxiNKgizyKLm02Yxjq
 iQwbo5HmHuT/iIlj/nGvHRgATRwG8PzwQpp0yT0WfqBlMhOiEclEC/gpEKQr52HlAJZ3
 +Hq9I4na89H0lpGnirkHvAUIEole4l1UnFUE12jNCVFWEulvMT1wPRyjvOOacmaPnuwd
 DXyYCwz/a9FToDYFTJJODt3VvIsxakpbROqhhyc3I4RJph+XpkV7wfGv1JhfTbzdFX/j
 GidA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=3ThCOn+QwgspJ3kxAATKe5mgdC4dFBHT7/R2+FrM5uE=;
 b=e4Svp7gNBxPQc1Z2S2jdJe3yXr1ig1mYF4l5JS2nA8bkNHYNDtVZRnMLk6FmbeEkr6
 GYFUF7hiCFUKnuSBjY1BYEd6xIjnPIz3PH7ZJbN7d+udV+ODlbRMFCaZGiWARxMGpvRF
 P4X8SU60SO24UFZn3i2XzGa0dlTxO+5itdY8Aa/cZTSNJOqWoI93fbIDfAAg2x7/ZR49
 UDppl8I93HZmfg4uqMcuGJFRPbdhfUnS7n707y01GTi1uT9Wt25JBeTrpAXOjuiOQ5e+
 JtCXRCv3rCD0/o0gIVqwQz3q4vNIg2VWzoxey164B9lcazXTSvji+vexaUtympEvBDFy
 aXzA==
X-Gm-Message-State: APjAAAWxpmplLg4JIND2obKB0gHUf2PKDqm15rgZflAb4Iijx2ecMr6u
 JH6tT7PHJJwDShMlOY5OYqA=
X-Google-Smtp-Source: APXvYqw8+YtA13X+2DcbFCm2WNiq/03l8qtmNPUJkbuUIVpNhKs1oVxFoW7yPNZWmSTRPhkaZHB4YA==
X-Received: by 2002:a63:e70f:: with SMTP id b15mr22797805pgi.116.1573921252799; 
 Sat, 16 Nov 2019 08:20:52 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id em16sm12577766pjb.21.2019.11.16.08.20.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 16 Nov 2019 08:20:52 -0800 (PST)
Date: Sat, 16 Nov 2019 08:20:51 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v4 3/3] watchdog: sama5d4_wdt: addition of sam9x60
 compatible watchdog
Message-ID: <20191116162051.GA23056@roeck-us.net>
References: <1573806579-7981-1-git-send-email-eugen.hristev@microchip.com>
 <1573806579-7981-3-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573806579-7981-3-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_082053_911386_860F20AA 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 08:30:18AM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add support for SAM9X60 WDT into sama5d4_wdt.
> This means that this driver gets a flag inside the data struct
> that represents the sam9x60 support.
> This flag differentiates between the two hardware blocks, and is set
> according to the compatible of the driver instantiation.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
> Changes in v4:
> - check compatible with different of_ function
> - call irq parse and map only if need_irq
> - changed tabbing in struct defintion
> 
> Changes in v3:
> - changed need_irq to bool, instead of a single bit variable.
> - the platform data config struct is gone now, changed to a pointer to a bool
> to have the sam9x60_support as 'true', pointing to a static bool with true value.
> Can have a better solution than this ?
> - the specific sam9x60_support flag is assigned at probe time, corresponding
> to the flag value in .data
> 
>  drivers/watchdog/at91sam9_wdt.h |  14 ++++++
>  drivers/watchdog/sama5d4_wdt.c  | 109 +++++++++++++++++++++++++++++++---------
>  2 files changed, 98 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
> index abfe34d..4b3bd1d 100644
> --- a/drivers/watchdog/at91sam9_wdt.h
> +++ b/drivers/watchdog/at91sam9_wdt.h
> @@ -24,7 +24,10 @@
>  #define AT91_WDT_MR		0x04			/* Watchdog Mode Register */
>  #define  AT91_WDT_WDV		(0xfffUL << 0)		/* Counter Value */
>  #define  AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
> +#define  AT91_SAM9X60_PERIODRST	BIT(4)		/* Period Reset */
> +#define  AT91_SAM9X60_RPTHRST	BIT(5)		/* Minimum Restart Period */
>  #define  AT91_WDT_WDFIEN	BIT(12)		/* Fault Interrupt Enable */
> +#define  AT91_SAM9X60_WDDIS	BIT(12)		/* Watchdog Disable */
>  #define  AT91_WDT_WDRSTEN	BIT(13)		/* Reset Processor */
>  #define  AT91_WDT_WDRPROC	BIT(14)		/* Timer Restart */
>  #define  AT91_WDT_WDDIS		BIT(15)		/* Watchdog Disable */
> @@ -37,4 +40,15 @@
>  #define  AT91_WDT_WDUNF		BIT(0)		/* Watchdog Underflow */
>  #define  AT91_WDT_WDERR		BIT(1)		/* Watchdog Error */
>  
> +#define AT91_SAM9X60_VR		0x08			/* Watchdog Timer Value Register */
> +
> +#define AT91_SAM9X60_WLR		0x0c
> +#define  AT91_SAM9X60_COUNTER	(0xfffUL << 0)		/* Watchdog Period Value */
> +#define  AT91_SAM9X60_SET_COUNTER(x)	((x) & AT91_SAM9X60_COUNTER)
> +
> +#define AT91_SAM9X60_IER		0x14		/* Interrupt Enable Register */
> +#define  AT91_SAM9X60_PERINT		BIT(0)		/* Period Interrupt Enable */
> +#define AT91_SAM9X60_IDR		0x18		/* Interrupt Disable Register */
> +#define AT91_SAM9X60_ISR		0x1c		/* Interrupt Status Register */
> +

Lots of line-too-long checkpatch warnings. Please avoid.

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
