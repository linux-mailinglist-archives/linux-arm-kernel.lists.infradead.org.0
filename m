Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AECF18AE8A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 09:45:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bYupnHTxW8D0MgNpYhAP34wXz2jv7DiQwsKfKYC4reQ=; b=PCfRYAVTkB0psICWYyfF2xqUy
	L19D4xo0GnrSMuKRsMpORW+D7VsTBFySonAtx9JVsobSuC/wF9oflB5tY2KJSuUxMTRlfmGFEb8YG
	bkjghKrmYfJNeN7B9S+soNJZDqsOB0KE4IxaEwRLk/dgYSjBEKdsZNBvqbPzQ5O1E4U849oltWpc+
	TtVGnod4dqCMEKowwcz/+WdXb0mfIp8PxTx1GxqXNbzuTM3QGVE+4zjGIO007NEfKvoTiZpCq68SB
	CrDJmtg8qolaXOn1oQfyXrm0oMsoh6aOdmgPjHrkdnK708uGkJkDFQEABtdWhd0KMCs9B+Y29ahz7
	vFszmxAVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEqnk-0004DC-55; Thu, 19 Mar 2020 08:45:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEqnV-000411-3P
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 08:45:02 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48F9120724;
 Thu, 19 Mar 2020 08:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584607500;
 bh=nsLp4Rn/WbNgg5c0efrndSO2d36JwaT+wQJoqmu5/SA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rf6u2PFmQqWvwY1WKpZe255t6/NQBguN0WrcCWUMycs3Keq2eiQSpMPlRJ9m4wGPW
 D9gF1iZzqBJ9KxJhaOg3VrMZxn58ybEA/Cq8b+OX/He/2rZLpAfZrQWm+Co8RbTj+6
 QHy5OK5sHF9g1b0Fp66Nsw3p+Qi+iWNLXSMYaxO8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jEqnS-00Dsyj-Cb; Thu, 19 Mar 2020 08:44:58 +0000
MIME-Version: 1.0
Date: Thu, 19 Mar 2020 08:44:58 +0000
From: Marc Zyngier <maz@kernel.org>
To: Sungbo Eo <mans0n@gorani.run>
Subject: Re: [PATCH v2] irqchip/versatile-fpga: Handle chained IRQs properly
In-Reply-To: <20200319023448.1479701-1-mans0n@gorani.run>
References: <002b72cab9896fa5ac76a52e0cb503ff@kernel.org>
 <20200319023448.1479701-1-mans0n@gorani.run>
Message-ID: <f0a4acfaf5da72cbfc2670fcb5b71fc6@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: mans0n@gorani.run, linus.walleij@linaro.org,
 tglx@linutronix.de, jason@lakedaemon.net, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-oxnas@groups.io, narmstrong@baylibre.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_014501_184315_94F09B36 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-oxnas@groups.io,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-19 02:34, Sungbo Eo wrote:
> Enclose the chained handler with chained_irq_{enter,exit}(), so that 
> the
> muxed interrupts get properly acked.
> 
> This patch also fixes a reboot bug on OX820 SoC, where the jiffies 
> timer
> interrupt is never acked. The kernel waits a clock tick forever in
> calibrate_delay_converge(), which leads to a boot hang.
> 
> Fixes: c41b16f8c9d9 ("ARM: integrator/versatile: consolidate FPGA IRQ
> handling code")
> Signed-off-by: Sungbo Eo <mans0n@gorani.run>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> ---
> v2: moved readl below chained_irq_enter()
>     added Fixes tag
> 
>  drivers/irqchip/irq-versatile-fpga.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)

Queued for 5.7.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
