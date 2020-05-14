Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BABBD1D30A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 15:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4KjsLBw/DmRqdabsNqLxbg6KEpVGogLZH8NsJeHsa0=; b=o0Vv8r43o/7KSd
	PYkh+p7NozRer13kLzUXrACTpJ5USVwlc8xdfEGASRTVZYJiPHAwtXIYfEbZFrQzwPlJtv2N4YlAl
	YGpfDGdBP4daHQ18c84Ds/Es5K2HmUkh7mjt1YkaNDbchmwtUJbyFRqtZEZ+2dADH02jXKRp2X//k
	7hYCe7WNXmtKidmF6ik23cUOUg0a7XdUoYwE970dfHpkH+sYQU/xD5kMGATNhq5vnd9v3jcMS76eW
	msdpRmD5KoxZ5cq3OE8TidXLgpkkHhTCQvoe5qG5ZE05BN28f99fCFCGzD5yoKBbWcN8yRG6JJeAU
	Qqq1A2hg2YQou6GFl62Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDXJ-0007Pl-7N; Thu, 14 May 2020 13:04:29 +0000
Received: from mail.baikalelectronics.com ([87.245.175.226]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDX9-0007N4-DP
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 13:04:22 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 4DA46803087B;
 Thu, 14 May 2020 13:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1H7tDBhNpUNg; Thu, 14 May 2020 16:04:08 +0300 (MSK)
Date: Thu, 14 May 2020 16:04:07 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 01/10] spi: dw: Add support for polled operation via no
 IRQ specified in DT
Message-ID: <20200514130407.guyk3r4ltjvszy5s@mobilestation>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-2-lars.povlsen@microchip.com>
 <20200513142050.GH4803@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513142050.GH4803@sirena.org.uk>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_060419_628516_09688614 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org, Serge Semin <fancer.lancer@gmail.com>,
 linux-spi@vger.kernel.org, SoC Team <soc@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark

On Wed, May 13, 2020 at 03:20:50PM +0100, Mark Brown wrote:
> On Wed, May 13, 2020 at 04:00:22PM +0200, Lars Povlsen wrote:
> > With this change a SPI controller can be added without having a IRQ
> > associated, and causing all transfers to be polled. For SPI controllers
> > without DMA, this can significantly improve performance by less
> > interrupt handling overhead.
> 
> This overlaps substantially with some work that Serge Semin (CCed) has
> in progress, please coordinate with him.

Thanks for copying me these mails. I haven't been Cc'ed in the series and
hasn't been subscribed to the SPI mailing list, so I would have definitely
missed that.

I would like to coordinate my efforts with Lars. I'll have the patchset reviewed
soon in addition providing my comments/suggestions of how to make it useful for
both mine and Lars solution.

One thing I can tell about the mem_ops he implemented, is that they aren't
mem_ops, but dirmap (as you remember it's also implemented in my code, but with
alignment specific), and the exec_mem_op partly consists of a code, which belong
to the supports_op() callback. The rest of my comments will be inlined in the
patches.

-Sergey

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
