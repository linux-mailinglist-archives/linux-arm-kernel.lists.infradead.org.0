Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BEAF4E0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:25:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zu10YS7tEQw+zFho5QVrx96zMgxwwxE5tJYvhsZfMgo=; b=njNYbDSekN7KvOqdR8uys5H9A
	5mWkJMWmS4pwXoziw5ll3tyh/jnOaxK29/8hb2wVzF1hxRkaDlwNFp2aVAeUrgj5nuIO++dcFTf1P
	SVcOUTPZP90Ffk5Z4QYZuo3xhZzW0liMw9MTmftpL3Hg/xG47zIHFBg0JZDflc+BJH1fGMztPcbVo
	DGTAtZZEBTYDA3sSdleuc17LRZmjpk+v8rhJrvbo1YIYKBmqmPwprWxlm6hCSQgXa1JFStU2jeiJD
	7svPJVXzcahNrb65MYVNkPOUk94oL+QN+xYVVwHty/0ParOwLnj5Ihy3YBw/V70CXi+xfir7TxuF9
	lPXyWvEBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5Cd-0000Hb-OH; Fri, 08 Nov 2019 14:25:31 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5CG-0007op-2V
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:25:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id c184so4708178pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 06:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2QPC8QnLvdDe0xE5A31AT6LtAT7sdxDY8gfcrh4eodY=;
 b=MeMYs8yFEuniNnvauAknagNHFZeN4tBHxXi5NvT/F5Mm+4ANQO0gLGN36OijIBL4U0
 VgWur1KJ1tkOzo15JLqCylVrw/VcOOocPxhGPvJ76blM+SUdL7QYTN4LkK1VAF9I1hUb
 zXtRTdBZkUPMQISS5tJW155CDGXvUnJlKOV4MYXk4VMVuqcBVfh6kYmsnt963S16tuSj
 J99keTacAUtKqeqVvGK0jXjXg38lQAJ0chytk8U1/0xgWu+OSXFdga4/+9uX6xaS99GV
 B07/MfD8pHf4wOqypNtrufgvu+EnqrZXj65MNYwr+iqMjKnRqjN0wQYt+gUT4iXkz8ly
 08GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2QPC8QnLvdDe0xE5A31AT6LtAT7sdxDY8gfcrh4eodY=;
 b=aLkVCMwC8ElUQjbeCDOCM5CpSC3Hg/VtnKVgpHFiyQZJ/zESKKNjIuqle6UKPSDGND
 V51cO8e/dGSlAGlMpbuwFwhXZ9FWoiNliLkAs1fvpn0Cgip7xmFIn8hxlUPU6QSEYjRM
 Jc8aFclrziIv2j5OCH41cf40GDv6SqUC8tEfmagg9M0zsTgneM/A3+pHn4f6g4UqnnFU
 UtSJQ1YkdVkEo7ynRJy5WTExVEpJtSOQr2XohEWfl9eZYKPHhQh/toLnloB/Tl8O8+a3
 HQh14kaOGFhSbhEkwR/L7RgLQVuTQLXMi1KHyf1UOT6WX1kq0D3xHfOS92TALKGftdyX
 DSNg==
X-Gm-Message-State: APjAAAUVJciafZpWLHHH+qGOe/ACKQfMSseZjr0sXpQR7A+efjQWpyin
 JhtJMt/RSZVWUx1TZyrEq/hwSCV9
X-Google-Smtp-Source: APXvYqw6YWG2/tHoaCVNv0mQYgzPu7Ea3OvB1jHTE/F/Zp5kt8YcYZKCCuxIwv66sDmc5Zu5WBaKbA==
X-Received: by 2002:a65:41c5:: with SMTP id b5mr12021246pgq.78.1573223106517; 
 Fri, 08 Nov 2019 06:25:06 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 q199sm6075664pfq.147.2019.11.08.06.25.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 Nov 2019 06:25:05 -0800 (PST)
Subject: Re: [PATCH] watchdog: aspeed: Fix clock behaviour for ast2600
To: Joel Stanley <joel@jms.id.au>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
 linux-watchdog@vger.kernel.org
References: <20191108032905.22463-1-joel@jms.id.au>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <74f32d61-856d-623f-2f37-965d9331aba0@roeck-us.net>
Date: Fri, 8 Nov 2019 06:25:04 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108032905.22463-1-joel@jms.id.au>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_062508_179709_9AD43A48 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/7/19 7:29 PM, Joel Stanley wrote:
> The ast2600 no longer uses bit 4 in the control register to indicate a
> 1MHz clock (It now controls weather this watchdog is reset by a SOC
> reset). This means we do not want to set it. It also does not need to be
> set for the ast2500, as it is read-only on that SoC.
> 
> The comment next to the clock rate selection wandered away from where it
> was set, so put it back next to the register setting it's describing.
> 
> Fixes: b3528b487448 ("watchdog: aspeed: Add support for AST2600")
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   drivers/watchdog/aspeed_wdt.c | 16 ++++++++++------
>   1 file changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/watchdog/aspeed_wdt.c b/drivers/watchdog/aspeed_wdt.c
> index 4ec0906bf12c..7e00960651fa 100644
> --- a/drivers/watchdog/aspeed_wdt.c
> +++ b/drivers/watchdog/aspeed_wdt.c
> @@ -258,11 +258,6 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
>   	if (IS_ERR(wdt->base))
>   		return PTR_ERR(wdt->base);
>   
> -	/*
> -	 * The ast2400 wdt can run at PCLK, or 1MHz. The ast2500 only
> -	 * runs at 1MHz. We chose to always run at 1MHz, as there's no
> -	 * good reason to have a faster watchdog counter.
> -	 */
>   	wdt->wdd.info = &aspeed_wdt_info;
>   	wdt->wdd.ops = &aspeed_wdt_ops;
>   	wdt->wdd.max_hw_heartbeat_ms = WDT_MAX_TIMEOUT_MS;
> @@ -278,7 +273,16 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
>   		return -EINVAL;
>   	config = ofdid->data;
>   
> -	wdt->ctrl = WDT_CTRL_1MHZ_CLK;
> +	/*
> +	 * On clock rates:
> +	 *  - ast2400 wdt can run at PCLK, or 1MHz
> +	 *  - ast2500 only runs at 1MHz, hard coding bit 4 to 1
> +	 *  - ast2600 always runs at 1MHz
> +	 *
> +	 * Set the ast2400 to run at 1MHz as it simplifies the driver.
> +	 */
> +	if (of_device_is_compatible(np, "aspeed,ast2400-wdt"))
> +		wdt->ctrl = WDT_CTRL_1MHZ_CLK;
>   
>   	/*
>   	 * Control reset on a per-device basis to ensure the
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
