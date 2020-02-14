Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2116F15D63F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 12:05:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rwCRMTAAPYdzLjg4KF9ZJ67f9FrVtzKxi7JjcYkaKY=; b=mz7AmCrYRG+qsO
	JqiASQ4YfhnH+POsJYZ196PoXwVXLZsHLJ2ZXfYMopR1Nd3tq1pfeEGLslxQ8ivG/wDN97IbpNnHI
	Mqh8Bb2Nk/lI6U8eNgzSj4XAgwaw5FHbo0td0N3ItliCEOM/mYzTqHo04eqc/W1MfHgeeliOo4Ia9
	/NgvnChDxyUQVtH8ySG8baCAc7ANp9x7tlvX40zZ5XZ5cnpUxSUYslWmmLnZz+5K7VPyZpExLetgz
	pJwxtLYKMcmGSbToHABqEAZg/ZVBN3Bv81BOkv4EBjGuB0VtmbULs+P/JLqKAUxxft+XRUPUkv45C
	prkj+VdZsFsEwC78QSMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Ymj-0002lD-FM; Fri, 14 Feb 2020 11:05:25 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Ymb-0002kC-UD
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 11:05:19 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id A4821E0016;
 Fri, 14 Feb 2020 11:04:58 +0000 (UTC)
Date: Fri, 14 Feb 2020 12:04:58 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 0/8] PM fixes and improvements for SAM9X60
Message-ID: <20200214110458.GE3578@piout.net>
References: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_030518_106451_A3E476C4 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: sboyd@kernel.org, linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 linux@armlinux.org.uk, ludovic.desroches@microchip.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/01/2020 14:10:00+0200, Claudiu Beznea wrote:
> Hi,
> 
> This series adds fixes and improvements for SAM9X60 as follows:
> - fix master clock register offset in pm_suspend.S
> - add support for disable/enable PLL for SAM9X60
> - minor fix in pm_suspend.S: s/sfr/sfrbu
> - move SAM9X60's macros for PLL in include/linux/clk/at91_pmc.h
> 
> Thank you,
> Claudiu Beznea
> 
> Claudiu Beznea (8):
>   ARM: at91: pm: use proper master clock register offset
>   Revert "ARM: at91: pm: do not disable/enable PLLA for ULP modes"
>   ARM: at91: pm: add macros for plla disable/enable
>   ARM: at91: pm: add pmc_version member to at91_pm_data
>   ARM: at91: pm: s/sfr/sfrbu in pm_suspend.S
>   clk: at91: move sam9x60's PLL register offsets to PMC header
>   ARM: at91: pm: add plla disable/enable support for sam9x60
>   ARM: at91: pm: add quirk for sam9x60's ulp1
> 
>  arch/arm/mach-at91/pm.c              |  35 ++++++-
>  arch/arm/mach-at91/pm.h              |   2 +
>  arch/arm/mach-at91/pm_data-offsets.c |   4 +
>  arch/arm/mach-at91/pm_suspend.S      | 189 ++++++++++++++++++++++++++++++++---
>  drivers/clk/at91/clk-sam9x60-pll.c   |  91 +++++++----------
>  include/linux/clk/at91_pmc.h         |  23 +++++
>  6 files changed, 270 insertions(+), 74 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
