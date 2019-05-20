Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0699123FD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J6oMyZouZxriWqjDFlVOahnsOlKKAQVzYNtXFNiykg4=; b=Xu6Ms/qvbWsXud
	G/j8C1ikjuAIZDr6IgOmu0S9BgY/um2srLwBlfgGxdFzn2eoMNnZW7Icw/5nGMdFAiy3zNUHdta71
	/nij91OuoZOTYlH3hzQA/vPz0eOhNP7cm2uXjZy1BNBoZXitGAOeqZi/KrVovolGTZSJ9Mai8AiUg
	5Ot/lvIdIeKHT7zqmEtEYDUlTQ+s0sIuT0uzUDtO5LlI9V08oCW4FreFQOlt9LEd7VYRw+AYTOc5M
	DQlIZBgd/yXSwLqtulGWPto84eiMJOsHp2YEALL1hu9HQQ/ir9uOxWL12Fu0cfsjhIQHVWtfsV8Y4
	P4JSoENDWSWleqAJ5EJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmcL-0003wb-5C; Mon, 20 May 2019 18:02:33 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmcC-0003u6-3v; Mon, 20 May 2019 18:02:26 +0000
Received: from [2a01:598:8989:90c3:fc90:b8ff:fed0:1fb6] (helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hSmc4-00078F-Rs; Mon, 20 May 2019 20:02:17 +0200
Date: Mon, 20 May 2019 20:02:10 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] irqchip: irq-meson-gpio: update with SPDX Licence
 identifier
In-Reply-To: <20190520140310.29635-1-narmstrong@baylibre.com>
Message-ID: <alpine.DEB.2.21.1905202001270.1635@nanos.tec.linutronix.de>
References: <20190520140310.29635-1-narmstrong@baylibre.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_110224_303508_AA3DDAF8 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: marc.zyngier@arm.com, linux-amlogic@lists.infradead.org,
 jason@lakedaemon.net, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 May 2019, Neil Armstrong wrote:

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/irqchip/irq-meson-gpio.c | 15 +--------------
>  1 file changed, 1 insertion(+), 14 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-meson-gpio.c b/drivers/irqchip/irq-meson-gpio.c
> index 7b531fd075b8..d83244ea0959 100644
> --- a/drivers/irqchip/irq-meson-gpio.c
> +++ b/drivers/irqchip/irq-meson-gpio.c
> @@ -1,22 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0+

+ ????

>  /*
>   * Copyright (c) 2015 Endless Mobile, Inc.
>   * Author: Carlo Caione <carlo@endlessm.com>
>   * Copyright (c) 2016 BayLibre, SAS.
>   * Author: Jerome Brunet <jbrunet@baylibre.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of version 2 of the GNU General Public License as
> - * published by the Free Software Foundation.

I really can't spot a 'or any later version' text here ....

> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, see <http://www.gnu.org/licenses/>.
> - * The full GNU General Public License is included in this distribution
> - * in the file called COPYING.
>   */
>  
>  #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> -- 
> 2.21.0
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
