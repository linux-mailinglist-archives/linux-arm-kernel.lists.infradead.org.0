Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F4A33B7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 00:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4z161OUllh2F4nRq0av9MsahrdCSCSoG1QiVr5L8Dd8=; b=S2Lnrw826hXDMh
	IP2E8hVEMcyDsjfSPYG6sVAVBZlCjXJQstlFNfNM4wM7SoxL50WXr/I60bB8/9ji5D+JixI/ZfH91
	YrnPE6QWszeaX7qyYXcIk7bbaUzCJMelhHOpUd3ZitzXiIfjUthNuqQuD5AWb2OOfqpkTCaRlzYGg
	6N0/e+9jum371FrzE+GrSHGpQ8ca2/og0TuMNpZDDzaXqagZlpwYOBe1zqoStQoaXW74VkDF2m06p
	w8YptbgsG/RYgMOz6yLsmhe6JwV7ZcALbb6p+n0g3EaEmk5lRSv2sHYFpHHEZHKn/tV+3xVe7KkLw
	Y0xkf2Zk7wvhqzxgEjjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvcX-0007vc-7E; Mon, 03 Jun 2019 22:40:01 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvcP-0007up-NX
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 22:39:55 +0000
Received: by mail-pl1-x641.google.com with SMTP id d21so7529706plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 15:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=d0pHGkFAzud1LXVO2y8qggIx+lZyQUhfT9A6e9r7pVo=;
 b=FgCBDPY6CRCXcPfk8fTafoSLnOLpuZSDUFRvAWxACU0zQWMF3HJ7nn6TkRRcn0oixU
 Yko0WDBIyDpE/d1snVSEuha+BomUaa+tnm8tbvNOMhhAmF0GCeqqJ32D5nJTkNxwZz+z
 brMiHfKbm88zFuyU7H97WwSZbpI1x1r0yFw7PisVxJm5Z8oIuRu/a3zbsjgotxcktI0e
 cqAHx9nLyf4QC/CpWQafjMf/+xNq7n9G4FScYwN5xpRtE8p7bIyP0I+6lk0xFOkSDaKm
 AG6X3oEgcDW55aCXpS181mxbF1IgPy6WMNlk5KAC7fDrOBSYg0NUOztcKNkac6oP3DcG
 aa+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=d0pHGkFAzud1LXVO2y8qggIx+lZyQUhfT9A6e9r7pVo=;
 b=IvNXuMYeoqHSE0nIwR97Q6Jtw1puoh81dooRbv6xEaANLtkvgXMkpnDlL8PiAKFBuw
 /VYJgo3Gva9EI/JQ2lRTInJmitAxBI8vOhXV4JjRwfyGOK0/wm74PbOjAZGiTHHtVbJY
 OAQkXjNET2MXOdTSQfTGmJUDYGDhU0rQoMjD/OKBxe3xI6CHLBYM4dey97jVcDxW7BAb
 wiJwmuEcqSzu1tC/o+S9xaBv5vxyPj2y5cehi2wt7MCkmLnvifd0hyGH2DYqWCyXPDFZ
 XFqfTndX+eC6KYZ2OI8IzSCHaC7Hx5T/PNq+tMxPhj6JkCsolynED6Jr2kVMdhEFGm65
 EYNg==
X-Gm-Message-State: APjAAAVtW6rS4QHizOw8O9+OkiPl3c68C/JeyYOGsoDhq4elvyLiLA0i
 wcJvpn0CdFW/GTzX/9x79LhQ9A==
X-Google-Smtp-Source: APXvYqwudy03I5p10WfbvIimwqVrr2QjqJjMVmggzEI1EiREVUvMw5spyMDtTF/kgJ3WUmnjkQt/rQ==
X-Received: by 2002:a17:902:163:: with SMTP id
 90mr33158196plb.212.1559601592730; 
 Mon, 03 Jun 2019 15:39:52 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id j97sm15138949pje.5.2019.06.03.15.39.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 15:39:52 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 10/10] ARM: mach-meson: update with SPDX Licence
 identifier
In-Reply-To: <20190527133857.30108-11-narmstrong@baylibre.com>
References: <20190527133857.30108-1-narmstrong@baylibre.com>
 <20190527133857.30108-11-narmstrong@baylibre.com>
Date: Mon, 03 Jun 2019 15:39:51 -0700
Message-ID: <7h8suii98o.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_153953_764656_177D0E17 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  arch/arm/mach-meson/meson.c | 12 +-----------
>  1 file changed, 1 insertion(+), 11 deletions(-)
>
> diff --git a/arch/arm/mach-meson/meson.c b/arch/arm/mach-meson/meson.c
> index c8d99df32f9b..04ae414d88c9 100644
> --- a/arch/arm/mach-meson/meson.c
> +++ b/arch/arm/mach-meson/meson.c
> @@ -1,16 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
>  /*
>   * Copyright (C) 2014 Carlo Caione <carlo@caione.org>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful, but WITHOUT
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> - * more details.
> - *
>   */

I dropped this one since it conflicts with one that was already applied
to mainline in the treewide cleanup of SPDX headers.

The rest of the series is queued for v5.3,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
