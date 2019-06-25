Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1A055397
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 17:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IAhwWRTesIdHNQ3xqUcWF7Qew573affYRObrVlzSh1o=; b=UuTTEeZG8rcn3k
	MSP0qahMeZWPJFg0G0/llko5PoxyfLuRZlBpEuRtGC5Y0tArAiJxEFcmS9+kLvI1IAIlKlPTlNa53
	2pb9e83qsN00QmOeRIqTjNCjz5HLRUbl/vVRhjeV0brChfpZpKeAKncTccKrPBKqBVRdPhM7lMxMv
	9qhdczehLb4l7cKEv+nsyVufT7Gjcc7SkUXqry87J1VCDkyxT4qzjmXRy/XBzJvZvNya5m+BOykas
	OOHtAZk01w/JIy9knbi1wxln9OWI9kiWoBJDtVhr9uaK/aar5wgp4YVBBm8sWp/47gA7p3EfWQX1H
	ZqKGG7UPNOSh8YxT9KGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnXk-0002PX-Ri; Tue, 25 Jun 2019 15:39:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnXZ-0002P5-7p
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 15:39:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A2D62B;
 Tue, 25 Jun 2019 08:39:24 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 971F53F718; Tue, 25 Jun 2019 08:39:21 -0700 (PDT)
Date: Tue, 25 Jun 2019 16:39:19 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64: defconfig: update and enable CONFIG_RANDOMIZE_BASE
Message-ID: <20190625153918.GA53763@arrakis.emea.arm.com>
References: <20190620003244.261595-1-ndesaulniers@google.com>
 <20190620074640.GA27228@brain-police>
 <CAKv+Gu_KCFCVxw_zAfzUf8DjD4DmhvaJEoqBsX_SigOse_NwYw@mail.gmail.com>
 <CAKwvOdmQ+WdD8nvLz_VB_5atDi56fv485Xsn+mHJZKnyj6L-JA@mail.gmail.com>
 <20190624095749.wasjfrgcda7ygdr5@willie-the-truck>
 <CAKv+Gu8G2GQGxmcAAy1XQ5gkN-2fJSWAKCQQm9T4skYdh5cT3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8G2GQGxmcAAy1XQ5gkN-2fJSWAKCQQm9T4skYdh5cT3Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_083925_376178_D8C250E3 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Jeffrey Vander Stoep <jeffv@google.com>, Olof Johansson <olof@lixom.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Mark Brown <broonie@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@google.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 12:06:18PM +0200, Ard Biesheuvel wrote:
> On Mon, 24 Jun 2019 at 11:57, Will Deacon <will@kernel.org> wrote:
> > Thanks for having a look. It could be that we've fixed the issue Catalin was
> > running into in the past -- he was going to see if the problem persists with
> > mainline, since it was frequent enough that it was causing us to ignore the
> > results from our testing infrastructure when RANDOMIZE_BASE=y.
> 
> I had no idea this was the case. I can look into it if we are still
> seeing failures.

I've seen the panic below with 5.2-rc1, defconfig + RANDOMIZE_BASE=y in
a guest on TX2. It takes a few tries to trigger just with kaslr,
enabling lots of other DEBUG_* options makes the failures more
deterministic. I can't really say it's kaslr's fault here, only that I
used to consistently get it in this configuration. For some reason, I
can no longer reproduce it on arm64 for-next/core (or maybe it just
takes more tries and my script doesn't catch this).

The fault is in the ip_tables module, the __this_cpu_read in
xt_write_recseq_begin() inlined in ipt_do_table(). The disassembled
sequence in my build:

0000000000000188 <ipt_do_table>:
...
     258:       d538d080        mrs     x0, tpidr_el1
     25c:       aa1303f9        mov     x25, x19
     260:       b8606b34        ldr     w20, [x25, x0]

# modprobe iptable_filter
[   45.618896] Unable to handle kernel paging request at virtual address ffffeda0ffbe1388
[   45.620545] Mem abort info:
[   45.621035]   ESR = 0x96000005
[   45.621559]   Exception class = DABT (current EL), IL = 32 bits
[   45.622527]   SET = 0, FnV = 0
[   45.623032]   EA = 0, S1PTW = 0
[   45.623684] Data abort info:
[   45.624192]   ISV = 0, ISS = 0x00000005
[   45.624849]   CM = 0, WnR = 0
[   45.625361] swapper pgtable: 4k pages, 48-bit VAs, pgdp = 0000000026cb760e
[   45.626537] [ffffeda0ffbe1388] pgd=00000000bfffa003, pud=0000000000000000
[   45.627864] Internal error: Oops: 96000005 [#1] PREEMPT SMP
[   45.628844] Modules linked in: iptable_filter cfg80211 rfkill 8021q garp crct10dif_ce stp mrp llc ip_tables x_tables ipv6
[   45.630700] Process kworker/u8:5 (pid: 173, stack limit = 0x0000000047fc7e17)
[   45.632056] CPU: 3 PID: 173 Comm: kworker/u8:5 Not tainted 5.2.0-rc1 #1
[   45.633377] Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
[   45.634752] Workqueue: rpciod rpc_async_schedule
[   45.635684] pstate: 80400005 (Nzcv daif +PAN -UAO)
[   45.636674] pc : ipt_do_table+0xd8/0x4b8 [ip_tables]
[   45.637686] lr : ipt_do_table+0xc4/0x4b8 [ip_tables]
[   45.638685] sp : ffff000010aa35a0
[   45.639358] x29: ffff000010aa35a0 x28: ffffeda1f7eb0ce8
[   45.640424] x27: ffffeda1e69f1380 x26: ffff5d2c2314a288
[   45.641493] x25: ffff5d2c0cfbf388 x24: ffffeda1fb5a9000
[   45.642556] x23: ffff5d2c2314a220 x22: 0000000000000003
[   45.643636] x21: ffffeda1f79c15d8 x20: ffffeda1e69f1780
[   45.644727] x19: ffff5d2c0cfbf388 x18: 0000000000000000
[   45.645814] x17: 0000000000000000 x16: ffff5d2d0bc16d78
[   45.646908] x15: 0000000000000000 x14: 0900000017ea6502
[   45.647994] x13: 014a023b4751727f x12: 0000000000002238
[   45.649060] x11: ffff5d2d0e0de000 x10: 0000000000004000
[   45.650117] x9 : 000000000000000e x8 : ffffeda1fb5a9000
[   45.651178] x7 : ffffeda1f7eb0c00 x6 : 00000000000000e8
[   45.652263] x5 : 0000000000000080 x4 : 00009074f2c22000
[   45.653286] x3 : 0000000000000200 x2 : ffffeda1fc41c440
[   45.654314] x1 : ffff5d2c2314a000 x0 : 00009074f2c22000
[   45.655382] Call trace:
[   45.655896]  ipt_do_table+0xd8/0x4b8 [ip_tables]
[   45.656825]  iptable_filter_hook+0x1c/0x28 [iptable_filter]
[   45.657938]  nf_hook_slow+0x44/0xe8
[   45.658647]  __ip_local_out+0x150/0x250
[   45.659421]  ip_local_out+0x20/0x80
[   45.660142]  __ip_queue_xmit+0x1b0/0x540
[   45.660937]  ip_queue_xmit+0x10/0x18
[   45.661661]  __tcp_transmit_skb+0x50c/0xad8
[   45.662494]  tcp_write_xmit+0x6cc/0x1010
[   45.663294]  __tcp_push_pending_frames+0x38/0xc0
[   45.664236]  tcp_push+0x150/0x170
[   45.664912]  tcp_sendmsg_locked+0xaa0/0xc40
[   45.665754]  tcp_sendmsg+0x34/0x58
[   45.666442]  inet_sendmsg+0x48/0x210
[   45.667175]  sock_sendmsg+0x18/0x30
[   45.667889]  xs_sendpages+0xfc/0x2d8
[   45.668610]  xs_tcp_send_request+0x9c/0x1b0
[   45.669454]  xprt_transmit+0x100/0x5b8
[   45.670210]  call_transmit+0x8c/0xa0
[   45.670938]  __rpc_execute+0xbc/0x580
[   45.671687]  rpc_async_schedule+0x28/0x48
[   45.672493]  process_one_work+0x244/0x680
[   45.673306]  worker_thread+0x40/0x3f0
[   45.674053]  kthread+0x128/0x130
[   45.674710]  ret_from_fork+0x10/0x18
[   45.675436] Code: b0f4f3d3 910e2273 d538d080 aa1303f9 (b8606b34)
[   45.676665] ---[ end trace 9d1f75fe6e41c0d7 ]---
[   45.677590] Kernel panic - not syncing: Fatal exception in interrupt
[   45.678851] SMP: stopping secondary CPUs
[   45.679670] Kernel Offset: 0x5d2cfb600000 from 0xffff000010000000
[   45.680882] PHYS_OFFSET: 0xffff925ec0000000
[   45.681727] CPU features: 0x002,23800438
[   45.682518] Memory Limit: none
[   45.683143] ---[ end Kernel panic - not syncing: Fatal exception in interrupt ]---

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
