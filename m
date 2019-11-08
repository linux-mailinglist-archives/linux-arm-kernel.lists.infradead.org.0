Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A25F5240
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vT44nTT6Sqi3K2uJ3WC9IT5/mYttAwC2so1yDT6hpfI=; b=cYYuQRhVYB+6mG
	lzUFT5CvRbflqQNPPU/e4gnNI3xXXAEvMZh3PstylJ0QqFszZXUkk+Y7JMg2tfe7YJ05ZX4v4AuyY
	6bQeqTFtOPIHnGY00vg3F3m7fE6BBfdLzqaxExBlEWo4yhCi4oEmfwMBcjexuJ3kiOpAHQiIuj31q
	izAXkMy8YYVdf9h//L3J1nY7JzE2ZXmx67KcEHAXvo+Bs6XNwUz/mn00TP1VApPg7UyP6dK1r43XW
	aji+9njMERjJwcuV+EFgF3k4joRmkzmko29JKfdUui06zv7xba9EN/q3AVlYdpR8mvgYZbb2YWZcg
	gu4Yor9g+8ooDMkn0S5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7mB-0002ZD-1Y; Fri, 08 Nov 2019 17:10:23 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7m3-0002YQ-0w
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:10:16 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 012E380D4;
 Fri,  8 Nov 2019 17:10:47 +0000 (UTC)
Date: Fri, 8 Nov 2019 09:10:08 -0800
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v3 03/12] ARM: dts: pandora-common: define wl1251 as
 child node of mmc3
Message-ID: <20191108171008.GJ5610@atomide.com>
References: <cover.1573122644.git.hns@goldelico.com>
 <bd14b481105b21a0c1882a1ea34281893233db31.1573122644.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd14b481105b21a0c1882a1ea34281893233db31.1573122644.git.hns@goldelico.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_091015_107806_D4D11050 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 devicetree@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-wireless@vger.kernel.org, Kefeng Wang <wangkefeng.wang@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, netdev@vger.kernel.org,
 linux-omap@vger.kernel.org, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Kalle Valo <kvalo@codeaurora.org>, Petr Mladek <pmladek@suse.com>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Rob Herring <robh+dt@kernel.org>,
 John Stultz <john.stultz@linaro.org>, David Sterba <dsterba@suse.com>,
 Thomas Gleixner <tglx@linutronix.de>, letux-kernel@openphoenux.org,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* H. Nikolaus Schaller <hns@goldelico.com> [191107 10:33]:
> Since v4.7 the dma initialization requires that there is a
> device tree property for "rx" and "tx" channels which is
> not provided by the pdata-quirks initialization.
> 
> By conversion of the mmc3 setup to device tree this will
> finally allows to remove the OpenPandora wlan specific omap3
> data-quirks.
> 
> Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")

Probably best to queue this all via the mmc tree when no more comments:

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
