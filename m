Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9E5DADE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 15:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yyyfEmBLPmrwwl20LEBFCsHg8LuCUKgmHtHefVLBc0=; b=RfPGJY1nxg6irJ
	NalyVNQNlwLUe8moJ3CUbXI32aRa9DSxDSCX7iDUHXIsIeT9SRMSYu9+Uvx5Ch5GNM/pVKzg7i88W
	WuKgMFJnlNb/JPCkR5aO0eaCTuUkAimtyzIYukkzKlrs8DdBUwLXss0nSxHaksf63QuEjX4LGoLVL
	eSz/ggyI0MFz8hP7RiifcQDpf+3m+w1bhLsZiCaS78Vd1uH1OCHuAj3I7Xiv2QOYxqbc31bep1Ciz
	kheCMlDwmsbHyv2Du9iEuwDe3/6dcY+0qL9meGU3iu89Uv0WmgfWbS3MgGXi9Ba5OCdTslMq6THnt
	8ngCLSTVMkYAz2Bf2kpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5Wp-0004At-Ox; Thu, 17 Oct 2019 13:09:19 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5We-0004AI-Gs
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 13:09:10 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 8A42E100018;
 Thu, 17 Oct 2019 13:09:02 +0000 (UTC)
Date: Thu, 17 Oct 2019 15:09:02 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 00/30] pinctrl: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20191017130902.GE3125@piout.net>
References: <20191017122640.22976-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017122640.22976-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_060908_701940_293110CA 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: baruch@tkos.co.il, geert+renesas@glider.be, narmstrong@baylibre.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 thierry.reding@gmail.com, manivannan.sadhasivam@linaro.org,
 jesper.nilsson@axis.com, f.fainelli@gmail.com, wens@csie.org,
 linux-arm-kernel@axis.com, jonathanh@nvidia.com,
 ludovic.desroches@microchip.com, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-msm@vger.kernel.org,
 rjui@broadcom.com, haojian.zhuang@gmail.com, vz@mleia.com,
 linux-gpio@vger.kernel.org, lars.persson@axis.com, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 linux-renesas-soc@vger.kernel.org, linux-oxnas@groups.io, afaerber@suse.de,
 daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 17/10/2019 20:26:10+0800, YueHaibing wrote:
> devm_platform_ioremap_resource() internally have platform_get_resource()
> and devm_ioremap_resource() in it. So instead of calling them separately
> use devm_platform_ioremap_resource() directly.
> 

Shouldn't we stop with this insanity? The net gain is exactly 2 lines
per driver and this puts the full review load on the maintainers.

We end up with crap like:

https://lore.kernel.org/lkml/9bbcce19c777583815c92ce3c2ff2586@www.loen.fr/

What is the end goal here ?

platform_get_resource and devm_ioremap_resource will have to stay even
after you have done the conversion.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
