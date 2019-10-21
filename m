Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AE1DEF9D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4XR3anqSAWAly1yISHMKuZv65sH3u7JUyJgFzjyCuM=; b=a/TIPpUITgsCZ+
	+PVaZYKQ72HPoRZQI+b+wsw0+4f7DCtLfVvL8LWtgV1LWcHecZNrVtqB52PfczVs/rLydHuPUwSm1
	MlIBC+V751i/J01YSf/kNtpPQZx/1QbohFBRAVaRQomomOLD6TC+FJJ0kgca83f2k2zBlE/vLrZq7
	3YydDOEupyd3rcfDpFn1sgSrsNN/Z5GT/3Fcta8KE1b38tP0ls6o2RROSKoZGY3uoutwONX0jB78+
	P0pb+pyGl89nwaAM8jcQ6tGNGSY5jgqicCSZ9SWQhz5ypLF0mX1ZkS3SK5Ltf6lwUOdVdegl8OacB
	5TSdlkOS06l93DGia5Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYir-0002CN-82; Mon, 21 Oct 2019 14:31:49 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYhO-0000nT-Rk
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:30:20 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id A43AE80CC;
 Mon, 21 Oct 2019 14:30:46 +0000 (UTC)
Date: Mon, 21 Oct 2019 07:30:08 -0700
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v2 07/11] omap: remove old hsmmc.[ch] and in Makefile
Message-ID: <20191021143008.GS5610@atomide.com>
References: <cover.1571510481.git.hns@goldelico.com>
 <9bd4c0bb0df26523d7f5265cdb06d86d63dafba8.1571510481.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9bd4c0bb0df26523d7f5265cdb06d86d63dafba8.1571510481.git.hns@goldelico.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_073019_082890_969ECD2A 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
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
 Bjorn Helgaas <bhelgaas@google.com>, letux-kernel@openphoenux.org,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Kalle Valo <kvalo@codeaurora.org>, Petr Mladek <pmladek@suse.com>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 David Sterba <dsterba@suse.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* H. Nikolaus Schaller <hns@goldelico.com> [191019 18:43]:
> --- a/arch/arm/mach-omap2/Makefile
> +++ b/arch/arm/mach-omap2/Makefile
> @@ -216,7 +216,6 @@ obj-$(CONFIG_MACH_NOKIA_N8X0)		+= board-n8x0.o
>  
>  # Platform specific device init code
>  
> -omap-hsmmc-$(CONFIG_MMC_OMAP_HS)	:= hsmmc.o
>  obj-y					+= $(omap-hsmmc-m) $(omap-hsmmc-y)

The related obj-y line can go now too, right?

And looks like common.h also has struct omap2_hsmmc_info
so maybe check by grepping for hsmmc_info to see it's gone.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
