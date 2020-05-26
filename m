Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 165591E33D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 01:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GM0fXJ6K1dMm7uRna33AuCjcxj75qjlR/CYdzr2xGMM=; b=S2G21styekYamw
	etA3qhN4XNrA/Xc9HZlYgNYKr8SSbRpXn2wSVhJVhpX1CLvEiomPUNesFIYnTSNdWZ1qHITrI/TXZ
	sJ5/9nG9Le+IqdAoaDQ8i2TRm93bDwBeUkR2A9oBm+AikPx6zfQDP9hbtje0CZuSXyKpnknHGvduH
	53uK4/AH1XBPno4seYfbsKJhgAS0D4gIhm7kruhVbWrco2dps25Mz37hCCwcoMB3BR7SPgVLr/BnJ
	kZZLGm89ThPnBHPW0IOP3BW2qcd/NcbpUIrwjvGrgQmHxXWchw9KyhksxEBfn0/2YhpHxLcHShaxV
	QuAg6sTPThSRhy4M752Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdjDU-0006Dn-5w; Tue, 26 May 2020 23:42:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdjD0-00060X-9z; Tue, 26 May 2020 23:42:11 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCAAA207D8;
 Tue, 26 May 2020 23:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590536530;
 bh=kaysfhs6jLjSdXgV/DhBFiTU98O8BhvPfkVzqNIwqi0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=AZgLsxRaBAP9JiatVEDDzJ1eMbvFvQJplhap5o/jhnPGuLviKhclCCuQ0OrR4hq3g
 GqPl1z0FDUAKVLn08TWP+up5J9iWNxVIIDgcEyc3rPAcxqwsOkC2NCvsv1VlFKs5k9
 2bNLE7UFR+Ctb+VJJjcXeULf44dpwbxSLdzKMTCg=
MIME-Version: 1.0
In-Reply-To: <20200516080806.1459784-2-natechancellor@gmail.com>
References: <20200516080806.1459784-1-natechancellor@gmail.com>
 <20200516080806.1459784-2-natechancellor@gmail.com>
Subject: Re: [PATCH 2/2] clk: bcm2835: Remove casting to bcm2835_clk_register
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Nathan Chancellor <natechancellor@gmail.com>
Date: Tue, 26 May 2020 16:42:09 -0700
Message-ID: <159053652927.88029.9853028696716182136@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_164210_389675_6F690FC9 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Sami Tolvanen <samitolvanen@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nathan Chancellor (2020-05-16 01:08:07)
> There are four different callback functions that are used for the
> clk_register callback that all have different second parameter types.
> 
> bcm2835_register_pll -> struct bcm2835_pll_data
> bcm2835_register_pll_divider -> struct bcm2835_pll_divider_data
> bcm2835_register_clock -> struct bcm2835_clock_data
> bcm2835_register_date -> struct bcm2835_gate_data
> 
> These callbacks are cast to bcm2835_clk_register so that there is no
> error about incompatible pointer types. Unfortunately, this is a control
> flow integrity violation, which verifies that the callback function's
> types match the prototypes exactly before jumping.
> 
> [    0.857913] CFI failure (target: 0xffffff9334a81820):
> [    0.857977] WARNING: CPU: 3 PID: 35 at kernel/cfi.c:29 __cfi_check_fail+0x50/0x58
> [    0.857985] Modules linked in:
> [    0.858007] CPU: 3 PID: 35 Comm: kworker/3:1 Not tainted 4.19.123-v8-01301-gdbb48f16956e4-dirty #1
> [    0.858015] Hardware name: Raspberry Pi 3 Model B Rev 1.2 (DT)
> [    0.858031] Workqueue: events 0xffffff9334a925c8
> [    0.858046] pstate: 60000005 (nZCv daif -PAN -UAO)
> [    0.858058] pc : __cfi_check_fail+0x50/0x58
> [    0.858070] lr : __cfi_check_fail+0x50/0x58
> [    0.858078] sp : ffffff800814ba90
> [    0.858086] x29: ffffff800814ba90 x28: 000fffffffdfff3d
> [    0.858101] x27: 00000000002000c2 x26: ffffff93355fdb18
> [    0.858116] x25: 0000000000000000 x24: ffffff9334a81820
> [    0.858131] x23: ffffff93357f3580 x22: ffffff9334af1000
> [    0.858146] x21: a79b57e88f8ebc81 x20: ffffff93357f3580
> [    0.858161] x19: ffffff9334a81820 x18: fffffff679769070
> [    0.858175] x17: 0000000000000000 x16: 0000000000000000
> [    0.858190] x15: 0000000000000004 x14: 000000000000003c
> [    0.858205] x13: 0000000000003044 x12: 0000000000000000
> [    0.858220] x11: b57e91cd641bae00 x10: b57e91cd641bae00
> [    0.858235] x9 : b57e91cd641bae00 x8 : b57e91cd641bae00
> [    0.858250] x7 : 0000000000000000 x6 : ffffff933591d4e5
> [    0.858264] x5 : 0000000000000000 x4 : 0000000000000000
> [    0.858279] x3 : ffffff800814b718 x2 : ffffff9334a84818
> [    0.858293] x1 : ffffff9334bba66c x0 : 0000000000000029
> [    0.858308] Call trace:
> [    0.858321]  __cfi_check_fail+0x50/0x58
> [    0.858337]  __cfi_check+0x3ab3c/0x4467c
> [    0.858351]  bcm2835_clk_probe+0x210/0x2dc
> [    0.858369]  platform_drv_probe+0xb0/0xfc
> [    0.858380]  really_probe+0x4a0/0x5a8
> [    0.858391]  driver_probe_device+0x68/0x104
> [    0.858403]  __device_attach_driver+0x100/0x148
> [    0.858418]  bus_for_each_drv+0xb0/0x12c
> [    0.858431]  __device_attach.llvm.17225159516306086099+0xc0/0x168
> [    0.858443]  bus_probe_device+0x44/0xfc
> [    0.858455]  deferred_probe_work_func+0xa0/0xe0
> [    0.858472]  process_one_work+0x210/0x538
> [    0.858485]  worker_thread+0x2e8/0x478
> [    0.858500]  kthread+0x154/0x164
> [    0.858515]  ret_from_fork+0x10/0x18
> 
> To fix this, change the second parameter of all functions void * and use
> a local variable with the correct type so that everything works
> properly. With this, the only use of bcm2835_clk_register is in struct
> bcm2835_clk_desc so we can just remove it and use the type directly.
> 
> Fixes: 56eb3a2ed972 ("clk: bcm2835: remove use of BCM2835_CLOCK_COUNT in driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1028
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
