Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AD817D409
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 15:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AgG9KtbgnsNBZN2vE00zV8Zu/CaxUkNAq1rC0f5wMao=; b=aPAQwC1VkLI9sc
	fith5f62ViMdwwYOaROu7A4GgQCgWnURvgb462CgADH0y9erT+zJgXOl401TdHmW80DEN3E5qO1NY
	1+T5ixtb1Ej8Fu6lOnZutn+HSurbJdn7U8Xxkm/NMpA+FZz7cGof7TjWDCHx6NRV8++16+eGCYhAo
	fvHN4XIdwok8MHgvTDE6mbtQssiag7IUYI9ATfxeuc5km6PVzoGdA0MJPG0E6pG0jVMlPv2WB3Ema
	zNuBNTweWNNqTCVrIEQXQq10EBFYzPwcKZvpxJvj5BLjCLvzSfgg5riqAUxKZyPMEB8wx8Uo0TT1V
	CK7emm1ffzc2hd27AXdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAwUt-0002xF-HQ; Sun, 08 Mar 2020 14:01:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAwUk-0002wr-5v
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 14:01:31 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B948F206D7;
 Sun,  8 Mar 2020 14:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583676089;
 bh=X3YvXzX7p6Ena+DgRT3/4dg6a/xcfDnFXVT37QOa1t0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=0+C0xjMF5e5x/1FyYpy5P875i3pPVeznQWDKtAAldnctqZQn8BO/DgTmPci/Mxt+N
 xfv5rS0GoWgeRbwzxNKf9pQ670cNSbzEP/7DOpbfLKO+RNg9tBelLbBJZw8cUwn2rt
 4cuDghu5elNBeuXkHvfCtHbK/rCRysRRtUDXAUgA=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jAwUi-00B2ko-1R; Sun, 08 Mar 2020 14:01:28 +0000
Date: Sun, 8 Mar 2020 14:01:26 +0000
From: Marc Zyngier <maz@kernel.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH v2 0/2] irqchip: xilinx: Switch to generic domain handler
Message-ID: <20200308140126.51eeebc4@why>
In-Reply-To: <cover.1582545908.git.michal.simek@xilinx.com>
References: <cover.1582545908.git.michal.simek@xilinx.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, git@xilinx.com, jason@lakedaemon.net, mubinusm@xilinx.com,
 stefan.asserhall@xilinx.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_070130_241023_415B1B72 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Asserhall <stefan.asserhall@xilinx.com>, monstr@monstr.eu,
 Jason Cooper <jason@lakedaemon.net>, linux-kernel@vger.kernel.org,
 git@xilinx.com, Thomas Gleixner <tglx@linutronix.de>,
 Mubin Sayyed <mubinusm@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Feb 2020 13:05:12 +0100
Michal Simek <michal.simek@xilinx.com> wrote:

> Hi,
> 
> this series is based on cascade mode patch sent by Mubin
> (https://lkml.org/lkml/2020/2/11/888 - v3 series).
> 
> The first patch is just fixing error patch. The second is converting microblaze
> do_IRQ() to generic IRQ handler with appropriate changes in xilinx intc driver.
> 
> Also removes concurrent_irq global variable which wasn't wired
> anywhere but it stores number of concurrent IRQs handled by one call. There
> is option to get it back if needed but I haven't seen it in other archs
> that's why I have removed it too.

Queued for 5.7.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
