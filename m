Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E674129262
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 08:44:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ow7w6B3MtHK+I7FECozY3wCPgohCRxye4dvrCybF1+w=; b=eyUs5HF2+P97FB
	+wDJsAVDWRt2a9F7YJ7TQ1df6ZgEUKmYfUzTMh/wywLJdp6Ot/vNfWPD5dUONzJFm7IxyRpIeUqgA
	CTPxaPbSXMM5/8y7ANFfkm8OrkfvM8M9KYxfSb6erTGjH6fhtyyEuq59ZBAEjuX46QL3qKpkAn/mr
	7fYytm60gS64+J8/DxBEmKZROIDalSuTHO3WKtQhdB61efSRUR2req67JwPuZ9RkrveA9u4FalRmU
	3uexhxkXNp+iAK5v5wglfFM5alj79EJWrddPq7wZ+lAW2ipY1X6clpEPd4Emc04M2B0kYfWZwm9Uh
	trMXkko8EF7gd6t6Wciw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijIO6-00030p-TO; Mon, 23 Dec 2019 07:44:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijINn-0002qw-42
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 07:44:04 +0000
Received: from localhost (unknown [223.226.34.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E26DA206CB;
 Mon, 23 Dec 2019 07:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577087042;
 bh=1fLYrfmnbwD9b8lNPzTWF67ECI0Gh5tx3/rYZlRUoiQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k6YTi1DRmTzx4s/t1aBzQNsLmbb9Clp9CfMtLV3f/6wxZ8HgfQV8BhAErXZQvElG7
 RMmpHcDXyK0Y9aDXIDI1utUKAW58TVX8gwaHX9IyM48m8K9fqpTHROslXVqeR3SJxQ
 pUcphECEjTwE/6LCDdyrG1BHahNvanIwv1gUsKIQ=
Date: Mon, 23 Dec 2019 13:13:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 08/14] dmaengine: ti: omap-dma: Add device tree match
 data and use it for cpu_pm
Message-ID: <20191223074358.GX2536@vkoul-mobl>
References: <20191217001925.44558-1-tony@atomide.com>
 <20191217001925.44558-9-tony@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217001925.44558-9-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_234403_235550_564B4C28 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Vinod Koul <vinod.koul@intel.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, dmaengine@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16-12-19, 16:19, Tony Lindgren wrote:
> With old DMA code disabled for handling DMA requests for device tree based
> SoCs, we can move omap3 specific context save and restore to the dmaengine
> driver.
> 
> Let's do this by adding cpu_pm notifier handling to save and restore context,
> and enable it based on device tree match data. This way we can use the match
> data later to configure more SoC specific features later on too.
> 
> Note that we only clear the channels in use while the platform code also
> clears reserved channels 0 and 1 on high-security SoCs. Based on testing
> on n900, this is not needed though and the system idles just fine.
> 
> With the dmaengine driver handling context save and restore, we must now
> remove the old custom calls for context save and restore.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
