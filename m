Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C1A37F7C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 23:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UbbiHr/cjAiI+N42IY4cT55kH3gokWYWi5WzlgwxNw=; b=pnglaUwdF9yTr8
	1rgEPjVBdRUUyN9bVbTg7OA84bCiif1+uMfELzMwVl9NquwZ2ffwnjtGVa8Wgt1KEpkq+YGdZxVk2
	UzAW2iCkkvsPQsWcU/ng4mRV5S+Bwlx0qnqbWk6ysUOCyt6RsqilqH9QJ7XZBinoZv3VI3CxS4mbH
	gtCqM3ZiW9U6h5MauYcX+mu7wziUCB83C4hjv/kOBBP5CHng6A2gd0AF2ClT0/uWikk9uDOVN/2zd
	0ZiQR51XhBIJ9gFc9NMrbGXjlyhvS2mzBUVaJWfCIm36ZOn2KBieZJg4fXOiZUzzue+iWwNGV86TO
	j1ty5a5pHK9zzB+tWN7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYzqA-0004ak-FK; Thu, 06 Jun 2019 21:22:30 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYzq1-0004ZP-3R; Thu, 06 Jun 2019 21:22:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id x7so1406460plr.12;
 Thu, 06 Jun 2019 14:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RBQnY16OoiSU9x2fTbRylbra8bvQfhJHveZ7KsLfXLE=;
 b=r8XX0OP59OQafz2qMA3prFHhtITzIOlZ9tRNin1PaPA5CRz3/Rmq6Gp1R0CCilbiQ5
 9ah41993Yr8w0VBOaqbMcaz5gZrghaXz7dd9TfCi2k0ctANR7Vl7VwL/QtH8BoZL0Ojf
 gAcrDEb4VAuNbzVkL0jjpJzoTmWhj5x4WywG7yijizhplmGQFUkxWAIWZib+N1nvF4C+
 Oks7Dnca+eP8AhqzRHkpXPdFTIEOvRncvW1kFuJrqwUlC86oBSFN1oSRlYashgjYO3AD
 DsFuIRvZzlRrlXmDCjqkNCYlTAAMpmoYRWH5rkTSO+dji/GWII3FLXGZ8+9FtDs3XmbF
 AuOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=RBQnY16OoiSU9x2fTbRylbra8bvQfhJHveZ7KsLfXLE=;
 b=rE2hUWKupvQrxW5tQ0/2EJ12351kiJRtYWp1WMl0HjSUuXI498gJNyHQkWtr2jHwEm
 7wAciSaRcrSiJx9CpV3WOECKuBW0InHkFb6r95e7yOf1IUngwwrtSR5KLX8FSd7wAYDQ
 qklzIfOGZPPriKfP2O3xkqvgF3p+BIUrHpSzCvZ4780KOSgLqoIjLCr0+ejbnLcpPbMx
 iXIv+aD0c4b4wWx+M3tWqR4QvXGjeHPJUzWrMU5xRf8PHr06aoVK0VEeTYJtuF36E+MV
 BjB2xF3GfUBLjEoKb7ziJkcmO+o0a1XqhLPsJXEMMDLAm/FNXD+j5DmG0wCX6DlDTHgH
 WjNw==
X-Gm-Message-State: APjAAAV9eZp7fgqf4XFgrmKr5GJNeS4g+Q4eZXZMlDkQ9jnXeyGNVHYN
 +Bpuys8T3MBfOSaPJx1jBk2kUZe+
X-Google-Smtp-Source: APXvYqxBi6parEcN6dotMYwWVEm/YadS+PaoRNAtjRDPTr29165cicwhTFOnicMr2GAtIb9XE0WQNA==
X-Received: by 2002:a17:902:2a69:: with SMTP id
 i96mr43521459plb.108.1559856140254; 
 Thu, 06 Jun 2019 14:22:20 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id k3sm88985pgo.81.2019.06.06.14.22.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 14:22:19 -0700 (PDT)
Date: Thu, 6 Jun 2019 14:22:18 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] watchdog: meson_wdt: update with SPDX Licence identifier
Message-ID: <20190606212218.GA1578@roeck-us.net>
References: <20190520142847.442-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520142847.442-1-narmstrong@baylibre.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_142221_140660_6CE154B9 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, wim@linux-watchdog.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 04:28:47PM +0200, Neil Armstrong wrote:
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

This change has been applied system-wide.

Guenter

> ---
>  drivers/watchdog/meson_wdt.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/watchdog/meson_wdt.c b/drivers/watchdog/meson_wdt.c
> index 01889cef81e1..3389f4c02603 100644
> --- a/drivers/watchdog/meson_wdt.c
> +++ b/drivers/watchdog/meson_wdt.c
> @@ -1,12 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+
>  /*
>   *      Meson Watchdog Driver
>   *
>   *      Copyright (c) 2014 Carlo Caione
> - *
> - *      This program is free software; you can redistribute it and/or
> - *      modify it under the terms of the GNU General Public License
> - *      as published by the Free Software Foundation; either version
> - *      2 of the License, or (at your option) any later version.
>   */
>  
>  #include <linux/clk.h>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
