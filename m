Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B9B1232E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 17:47:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTfpr7rr1DK3yp9IW150EhixeNC4gt8OxfGBc52678Q=; b=EiHwvQue7E4VyZ
	+LDGxe/D11gdRxAUNOWzeNY1mGB+mO+/GxDU2cDkIS/z7Iwy+oiJfpqiO7qZCgQ+apXN5sjE0vHzt
	3HdrcZeAfTzPJzLihQ6jNcin4NUZJAeYcZg9KN3J27/ySaWgdOHSyMimz1mnijvtJxSeqPm1UzTny
	j+NtAfgLlTyVSRNclzIxEphRAq/KYyhP8l9Il8HBg0Y6N5ydyu2HYXdJhI3P4QN+SEHnBNGfmRoeU
	HgF99yVSBGbjzkuRx20QPxceRakZZF4lqXHuwznvQYSBwb4n8Ao7ZoWejbKbU1QH3+Z2f20OwX6sd
	+BFwTdDwKywn+JmrNK0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihFzu-0002Fe-2u; Tue, 17 Dec 2019 16:46:58 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihFzk-0002DM-Cw
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 16:46:50 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 6275E8116;
 Tue, 17 Dec 2019 16:47:22 +0000 (UTC)
Date: Tue, 17 Dec 2019 08:46:40 -0800
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: TI omap compile problem in 5.5-rc1? was Re: [PATCH] ARM:
 davinci: select CONFIG_RESET_CONTROLLER
Message-ID: <20191217164640.GX35479@atomide.com>
References: <20191210195202.622734-1-arnd@arndb.de> <20191217104520.GA6812@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217104520.GA6812@amd>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_084648_477882_45221D1B 
X-CRM114-Status: UNSURE (   9.17  )
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
Cc: mpartap@gmx.net, Arnd Bergmann <arnd@arndb.de>,
 Sekhar Nori <nsekhar@ti.com>, merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 sre@kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 nekit1000@gmail.com, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 David Lechner <david@lechnology.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Pavel Machek <pavel@ucw.cz> [191217 10:46]:
> Hi!
> 
> > Selecting RESET_CONTROLLER is actually required, otherwise we
> > can get a link failure in the clock driver:
> > 
> > drivers/clk/davinci/psc.o: In function `__davinci_psc_register_clocks':
> > psc.c:(.text+0x9a0): undefined reference to `devm_reset_controller_register'
> > drivers/clk/davinci/psc-da850.o: In function `da850_psc0_init':
> > psc-da850.c:(.text+0x24): undefined reference to
> > `reset_controller_add_lookup'
> 
> Does omap need similar handing in 5.5-rc1?
> 
>   LD      .tmp_vmlinux1
>   drivers/soc/ti/omap_prm.o: In function `omap_prm_probe':
>   omap_prm.c:(.text+0x4d0): undefined reference to
>   `devm_reset_controller_register'
>   /data/fast/l/k/Makefile:1077: recipe for target 'vmlinux' failed
>   make[1]: *** [vmlinux] Error 1
> 
> Enabling reset controller seems to help::
> 
> Reset Controller Support (RESET_CONTROLLER) [Y/n/?] (NEW)
>   TI SYSCON Reset Driver (RESET_TI_SYSCON) [N/m/y/?] (NEW)

Yes see the patch Arnd recently posted to do that.

Regards,

Tony



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
