Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9356C1185A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 11:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/x2YVmv5O+T+fRFGcqt3JGaa4Y/VX8wUH68fJah3flQ=; b=IJFGNwUjwaOBy/
	EmY57sv5pIuncjEnU9RTgoCy3sLgXDJPowR53ojMQVZZ9AegsWCcFhfqe++xHCAEuVM5hoRh2yzon
	fadsQdLfsMnwXH4mTD1iLOz/tFtCowRif402z24NUH9+o2UhnwhBakF4pmEO/WKEJcnCg+S8b7Ksm
	rD1iI97pPp9hxTbfpS/AOs2/G6I9zN3FYNKWqYZsljZtdpNOGUpNvZBfsqK7ibGlTgPg0YhmIyJ8u
	zPM+H3zyzmqI1J2flzZN6UMYTPJyoQAbLmNuK3yibMKR3AKh4lqvsjoJ/2S0mUnfDWpPRt6K8DE+K
	JOvhYWX1FU0vA2wWlQ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedD8-0000RA-Mz; Tue, 10 Dec 2019 10:57:46 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedCz-0000Pc-9p
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 10:57:39 +0000
Received: from localhost (136.112.broadband15.iol.cz [90.182.112.136])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id EF415100016;
 Tue, 10 Dec 2019 10:57:21 +0000 (UTC)
Date: Tue, 10 Dec 2019 11:57:19 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Ingo van Lil <inguin@gmx.de>
Subject: Re: [PATCH] ARM: dts: at91: Reenable UART TX pull-ups
Message-ID: <20191210105719.GF1463890@piout.net>
References: <20191203142147.875227-1-inguin@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203142147.875227-1-inguin@gmx.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_025737_478008_E5D105A6 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/12/2019 15:21:47+0100, Ingo van Lil wrote:
> Pull-ups for SAM9 UART/USART TX lines were disabled in a previous
> commit. However, several chips in the SAM9 family require pull-ups to
> prevent the TX lines from falling (and causing an endless break
> condition) when the transceiver is disabled.
> 
> From the SAM9G20 datasheet, 32.5.1: "To prevent the TXD line from
> falling when the USART is disabled, the use of an internal pull up
> is mandatory.". This commit reenables the pull-ups for all chips having
> that sentence in their datasheets.
> 
> Fixes: 5e04822f7db5 ("ARM: dts: at91: fixes uart pinctrl, set pullup on rx, clear pullup on tx")
> Signed-off-by: Ingo van Lil <inguin@gmx.de>
> Cc: Peter Rosin <peda@axentia.se>
> ---
>  arch/arm/boot/dts/at91sam9260.dtsi | 12 ++++++------
>  arch/arm/boot/dts/at91sam9261.dtsi |  6 +++---
>  arch/arm/boot/dts/at91sam9263.dtsi |  6 +++---
>  arch/arm/boot/dts/at91sam9g45.dtsi |  8 ++++----
>  arch/arm/boot/dts/at91sam9rl.dtsi  |  8 ++++----
>  5 files changed, 20 insertions(+), 20 deletions(-)
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
