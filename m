Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38608A7FC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+76XKz9ZJ7ZbUdPhZGLB751pKiGE9n+UHlxROm2ax/o=; b=CSAFudQzCYaacG
	NWQBE42mBtIUKgts+NqMXehYR5vZXN2ERP4dg1XBhxFrPwccV4oMNGQfm4Chi8XcS06J/HU3bQP5c
	DFwOIu6u4KVoPCvRWfWGv+A3FgHsTVF19SCzbkUEwL9sYGa9cdi3BKEO8J6HU0jr4lEUvAZ6S2vR9
	URSgfQwVhx+efNDu6zyE+NJ/r3ernLrkTk9aQ9d9NxMqLuJLdwJb22trJ4Ax7eCPZDOCJnyXwpPmS
	zC+GCykBqy5XnZqvBWiVVqC4xnwAJeIUqEq5feu96b8rVuFVZ1hzrt50DzE8NdURkxy7b3bFFzueG
	J3fN0JvaoDHUCZ+S3B7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Rwc-0005fC-Cm; Wed, 04 Sep 2019 09:51:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RwP-0005eL-Im
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 09:51:07 +0000
Received: from localhost (unknown [122.182.201.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3ACF22CF7;
 Wed,  4 Sep 2019 09:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567590664;
 bh=cWumTrUCWby2RFMQQ87i5+/dEWefDyNawluwiyL0n3s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Gq05tX4MsH75NEnfoomECduDUpW2wgJt/to/w0nCfJX3GyJx2fdZxyrIs6XDUmTRO
 bVrzmOsP03hofoZ+aKx8Ta7FWzNVpvjjjj//h1N2YrnyBho2cog9/jYfuefO4489kL
 TESY896jfACtG/BoceM+AOuwziakfG1yMbHS1yGI=
Date: Wed, 4 Sep 2019 15:19:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 0/5] dmaengine: ti: edma: Multicore usage related fixes
Message-ID: <20190904094956.GT2672@vkoul-mobl>
References: <20190823125618.8133-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823125618.8133-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_025105_660710_B49D460B 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23-08-19, 15:56, Peter Ujfalusi wrote:
> Hi,
> 
> When other cores want to use EDMA for their use cases Linux was not playing
> nicely.
> By design EDMA is supporting shared use with shadow regions. Linux is using
> region0, others can be used by other cores.
> 
> In order to not break multicore shared usage of EDMA:
> - do not reset paRAM slots which is not allocated for Linux (reserved paRAM
>   slots)
> - Only reset region0 access registers, do not touch other regions
> - Add option for reserved channels which should not be used by Linux in a similar
>   fashion as we already have for reserved paRAM slots.

Applied 1 to 3, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
