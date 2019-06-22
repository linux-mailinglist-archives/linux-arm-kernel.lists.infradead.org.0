Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737AF4F92F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 01:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4yE8G/WlST8J45t+2nB8HPaTgpJqBjMAbkBMrXuFV4=; b=si1/fF+Y3yHdnc
	38VfjkJTmIHG4YDzVqZBEFOEI2tdnZjoZiWk0hLf4wL/8Vsd4vlPA/30maFd2Or4DltM++kkEb5In
	+GTunWAXtf7PgewB5xbyu0gNjr8i8MBhBx9DAwFWfyBSqPaAlI25uRcudqtT2jq5EB/FPNO66urYJ
	Pa58hQPoJPY5CArogVkIzAsqZu+K1DezVPRfqyHoh7+h72xiqWNaLVryCalLIfMS8OgQKeAz2PZAn
	5GFJLnIwaqOmYMiwa2pRjGOXL59Q/K2RykFT/7kzN5ENtcEjE9xov6LTV1A+1lqeRr6hobXnnjRsa
	4tAKhQvgSwCLtLwQSzsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hepu8-0002UD-46; Sat, 22 Jun 2019 23:58:44 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hepts-0002TT-1s; Sat, 22 Jun 2019 23:58:29 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so5108477pgj.7;
 Sat, 22 Jun 2019 16:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lZUHpH2M+Wyx1Nixzo+rxEWVRPouZAupWhJLtRBuER4=;
 b=J+Qc6kFzXV9b/IP8VxIZb1nSUz8aJcZTeIw+r3UN1METyQW9w7rkYFTtp56KtdH7lH
 dv/f1e3OsdYTzUCOYAxPRRqAjAC1WERCoOVmaNwhVLBRsK2w7s0aC2H/PgTASU1glaGb
 doSeUQo478cuImKQX8AO4FRa/K2aLaIJ0gS9Bv78EaX/zEG3Ym0uJr2cwoKXzdFFtrzU
 ZSgYf9VmyhFjW73xz4JOErU0I+RjjDjFEGbmd2VXVoBnegagFdnA0UTeT4vJ+VbVZDKs
 Z8fuUo2uN4rQp1lI+W6KG521AyDCqpM+RDjnfFau9GmlvmL1E1o0tglE0OS9MbhmQUeI
 EIsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lZUHpH2M+Wyx1Nixzo+rxEWVRPouZAupWhJLtRBuER4=;
 b=Mxpu1ZeV6OJ5CAG7nS8TwKeuHc2FDcMBMq4ZH4nkWB2bc7vW8vG57BwdAk4FCx2QCc
 VIGgZuW/a1jEIUh6ejdo3kBY0eYUsWjCB2zLSZvqLDekx1wRGRw2+mlQAMdsMyMEN0ZJ
 hkSO1Zxuo5MQ4SQUhiPlILCa0uG+MWQ2cDWH4XjmVxA8tBHJwAtWAuCrpPPKbA60dtvE
 6D5Wsj11oKIXSTC4tPBAnLnhFGtAQQWKTlJXWfWpQz79sDp9me8feL22L5oKKj0p1xka
 t+jIlIKhW4XaFHFgNk0pOd9gUFvteaWg1Oa7DRfSKWkNFpkTINnAg9zeXRGUCvUQoSZ3
 ySuw==
X-Gm-Message-State: APjAAAVs4xvJNiokvBLPi17BDsovqraEdtmWRAQ7Q9KI0+FlgOsWRyYF
 WHAN7syaLETLsKkDU07oaEjHUPnb
X-Google-Smtp-Source: APXvYqyjw3Hl7M5bTbfpARaC/m/3jkVGHllSCS84kbpa2Q8bhzRaDSNMWuamR84mgLSgh3AETTooUQ==
X-Received: by 2002:a17:90a:2224:: with SMTP id
 c33mr15573423pje.22.1561247906433; 
 Sat, 22 Jun 2019 16:58:26 -0700 (PDT)
Received: from icarus ([2001:268:c145:c721:c70:4af9:86e2:2])
 by smtp.gmail.com with ESMTPSA id o74sm10340916pfg.91.2019.06.22.16.58.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 22 Jun 2019 16:58:25 -0700 (PDT)
Date: Sun, 23 Jun 2019 08:58:03 +0900
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] watchdog: convert remaining drivers to use SPDX license
 identifier
Message-ID: <20190622235803.GA3286@icarus>
References: <1561048126-27578-1-git-send-email-linux@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561048126-27578-1-git-send-email-linux@roeck-us.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_165828_102503_C34904F9 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-watchdog@vger.kernel.org, Wan ZongShun <mcuos.com@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Jerry Hoemann <jerry.hoemann@hpe.com>, Vladimir Zapolskiy <vz@mleia.com>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 linux-mediatek@lists.infradead.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 09:28:46AM -0700, Guenter Roeck wrote:
> This gets rid of the unnecessary license boilerplate, and avoids
> having to deal with individual patches one by one.
> 
> No functional changes.
> 
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> ---
> Note: Several drivers include a paragraph such as
> 
> "Neither <name> nor <company> admit liability nor
>  provide warranty for any of this software. This material is
>  provided "AS-IS" and at no charge."
> 
> Presumably this is covered by the GPL license. However, since I am not
> an attorney, I am not sure, and I opted for leaving such paragraphs in
> place.
[...]
>  drivers/watchdog/ebc-c384_wdt.c        |  9 ---------
[...]
> diff --git a/drivers/watchdog/ebc-c384_wdt.c b/drivers/watchdog/ebc-c384_wdt.c
> index c176f59fea28..8ef4b0df3855 100644
> --- a/drivers/watchdog/ebc-c384_wdt.c
> +++ b/drivers/watchdog/ebc-c384_wdt.c
> @@ -2,15 +2,6 @@
>  /*
>   * Watchdog timer driver for the WinSystems EBC-C384
>   * Copyright (C) 2016 William Breathitt Gray
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License, version 2, as
> - * published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
>   */
>  #include <linux/device.h>
>  #include <linux/dmi.h>

Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
