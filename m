Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8EB86AC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 21:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BHBL+O3prieH/fYdoWDcTEGtsdjYTW4pF3C3XFLmV4c=; b=K4oYPVoQImC1T8
	WJMNiKiIxZ8P6m9VUFWI06vD4yvkpQgTMt8AgrEQlWyfKRu7QHvWZNH4GIphqPqYzDuQ9BB2wiam6
	F9UbVkyTcEImQclj4p/0ztSEFHVdkzfjbh9hr+2V+xf3ZtKcTf7VR4FwL7K2LLE+OV6tYhuha3KoK
	VX69WbX3zQ4PSUqFQRH9Q9yt+ENYoVaqnaB6BaCAGhVqd7al9Z1yrMFQ/GjpUXItW1eLzLdA8DjrE
	a8sqdgk4X6ln4oEiWx3qlzMvs7uujZP2sROm2+Hdttd00Un/dD9K2QWbNlUXQDem4aZNVfWuVjzi4
	iY0kbw67JH+1aEGH2LNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvoOl-0003Eo-M5; Thu, 08 Aug 2019 19:48:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvoOb-0003EW-Tj
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 19:48:23 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 825AD21743;
 Thu,  8 Aug 2019 19:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565293701;
 bh=4WUS76RX+FiZef2BNrBwnS2eID3LAJlXHfM9bsTyhPQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=IJRA09PfOX3V5eyUEyDGjC/OBcbfWcmDQ0XQ7L9wIKQ6+RMXlYQT1VNCPahIjZiIi
 VCvxME+Pc3SgOsNZigL4EP3OhHEWfhzbRurqqROrMBmZP1n5IWGvAWwcX8gmwejK04
 FyAGBCHl2mmJUkTNA8xOOdYNjTyzcQwixsPszDQg=
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1908081809160.2995@hadrien>
References: <alpine.DEB.2.21.1908081809160.2995@hadrien>
Subject: Re: [PATCH] clk: fix devm_platform_ioremap_resource.cocci warnings
From: Stephen Boyd <sboyd@kernel.org>
To: Jonas Gorski <jonas.gorski@gmail.com>, Julia Lawall <julia.lawall@lip6.fr>
User-Agent: alot/0.8.1
Date: Thu, 08 Aug 2019 12:48:20 -0700
Message-Id: <20190808194821.825AD21743@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_124821_973868_B7B3EACB 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Philippe Mathieu-Daud?? <f4bug@amsat.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, kbuild-all@01.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Julia Lawall (2019-08-08 09:10:53)
> From: kbuild test robot <lkp@intel.com>
> 
> drivers/clk/bcm/clk-bcm63xx-gate.c:174:1-9: WARNING: Use devm_platform_ioremap_resource for hw -> regs
> 
>  Use devm_platform_ioremap_resource helper which wraps
>  platform_get_resource() and devm_ioremap_resource() together.
> 
> Generated by: scripts/coccinelle/api/devm_platform_ioremap_resource.cocci
> 
> Fixes: 1c099779c1e2 ("clk: add BCM63XX gated clock controller driver")

Is it fixing anything? As far as I can tell it's reducing lines of code
with another function.

> CC: Jonas Gorski <jonas.gorski@gmail.com>
> Signed-off-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Julia Lawall <julia.lawall@lip6.fr>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
