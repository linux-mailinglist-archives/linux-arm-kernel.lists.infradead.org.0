Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A722553EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7f28BjWbzbAQHJir19fh90KXlXUrXLn7tLiRDRIsW9A=; b=ESaZ4Dxiugvb1i
	0XB7ra2D/zG6VNF8QwR5cl+n2Quxd33ULNLNmw927BFrud0SJ9eCmGW9vPDRmaO94d6edSxrvnhI5
	zxBDh3FDXbi3rWG9d7y2VKqga21GqwQ5kzAe0AZONT9DGDpOi1/OAQDO2VXmF1hsO9axET8pejtqC
	5iPuUsq9D0WwCPTtQLcLE0yQliyNjwgqsj4M6iL1GbgUnwqxOh43fS91s9kst5Ni+S5+If/au5Eqz
	chE1R0UWNURcGx6Qpr706cSsYGXuuHzKnGEI++S3irxriPGptOmnlvxmDv0yhchd0/4HFmws58vsz
	i/+dZtcmCploNpE0EmYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnvU-00073J-KZ; Tue, 25 Jun 2019 16:04:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnvI-00072r-7G
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:03:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BA252B;
 Tue, 25 Jun 2019 09:03:55 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 AA2353F718; Tue, 25 Jun 2019 09:03:52 -0700 (PDT)
Date: Tue, 25 Jun 2019 17:03:50 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64: defconfig: update and enable CONFIG_RANDOMIZE_BASE
Message-ID: <20190625160350.GC53763@arrakis.emea.arm.com>
References: <20190620003244.261595-1-ndesaulniers@google.com>
 <20190620074640.GA27228@brain-police>
 <CAKv+Gu_KCFCVxw_zAfzUf8DjD4DmhvaJEoqBsX_SigOse_NwYw@mail.gmail.com>
 <CAKwvOdmQ+WdD8nvLz_VB_5atDi56fv485Xsn+mHJZKnyj6L-JA@mail.gmail.com>
 <20190624095749.wasjfrgcda7ygdr5@willie-the-truck>
 <CAKv+Gu8G2GQGxmcAAy1XQ5gkN-2fJSWAKCQQm9T4skYdh5cT3Q@mail.gmail.com>
 <20190625153918.GA53763@arrakis.emea.arm.com>
 <CAKv+Gu8Kz8fN-xKoEqPBiKWaEza6wUkbGxbKPPZxe14QzYLbJQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8Kz8fN-xKoEqPBiKWaEza6wUkbGxbKPPZxe14QzYLbJQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_090356_364870_E9B99B4A 
X-CRM114-Status: GOOD (  25.08  )
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

On Tue, Jun 25, 2019 at 05:42:49PM +0200, Ard Biesheuvel wrote:
> On Tue, 25 Jun 2019 at 17:39, Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Mon, Jun 24, 2019 at 12:06:18PM +0200, Ard Biesheuvel wrote:
> > > On Mon, 24 Jun 2019 at 11:57, Will Deacon <will@kernel.org> wrote:
> > > > Thanks for having a look. It could be that we've fixed the issue Catalin was
> > > > running into in the past -- he was going to see if the problem persists with
> > > > mainline, since it was frequent enough that it was causing us to ignore the
> > > > results from our testing infrastructure when RANDOMIZE_BASE=y.
> > >
> > > I had no idea this was the case. I can look into it if we are still
> > > seeing failures.
> >
> > I've seen the panic below with 5.2-rc1, defconfig + RANDOMIZE_BASE=y in
> > a guest on TX2. It takes a few tries to trigger just with kaslr,
> > enabling lots of other DEBUG_* options makes the failures more
> > deterministic. I can't really say it's kaslr's fault here, only that I
> > used to consistently get it in this configuration. For some reason, I
> > can no longer reproduce it on arm64 for-next/core (or maybe it just
> > takes more tries and my script doesn't catch this).
> >
> > The fault is in the ip_tables module, the __this_cpu_read in
> > xt_write_recseq_begin() inlined in ipt_do_table(). The disassembled
> > sequence in my build:
> >
> > 0000000000000188 <ipt_do_table>:
> > ...
> >      258:       d538d080        mrs     x0, tpidr_el1
> >      25c:       aa1303f9        mov     x25, x19
> >      260:       b8606b34        ldr     w20, [x25, x0]
> 
> This was fixed recently by
> 
> arm64/kernel: kaslr: reduce module randomization range to 2 GB
> 
> (and arm64/module: deal with ambiguity in PRELxx relocation ranges to
> some extent)

Thanks. This explains it.

And another weird case that triggers only with 64K pages, KASan and
KASLR combination (guest on TX2). My test script modprobes all the
modules it finds installed (including some test kernel modules like lock
torture). At some point during modprobing, vmalloc trips over the
WARN_ON(!pte_none(*pte)) in vmap_pte_range():

# modprobe <some random module>
[  341.631037] WARNING: CPU: 3 PID: 737 at mm/vmalloc.c:153 vmap_page_range_noflush+0x300/0x410
[  341.632433] Modules linked in: pwm_fan altera_freeze_bridge fpga_region fpga_bridge reset_meson_audio_arb cros_ec_baro cros_ec_sensors rockchip_saradc cros_ec_light_prox industrialio_triggered_buffer kfifo_buf cros_ec_sensors_core spi_meson_spifc spi_meson_spicc spi_bcm2835 spi_
[  341.632533]  pwm_sun4i pwm_rcar aes_neon_bs chacha_neon chacha_generic sha3_generic aes_neon_blk sm3_generic sha512_arm64 test_udelay backtracetest locktorture torture br_netfilter bridge ip6table_mangle ip6table_nat nf_log_ipv6 ip6t_REJECT nf_reject_ipv6 ip6table_filter ip6_tab
[  341.661768] CPU: 3 PID: 737 Comm: modprobe Tainted: G        W         5.2.0-rc3-00015-gd1b79ba6a070 #82
[  341.663644] Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
[  341.665065] pstate: 20400005 (nzCv daif +PAN -UAO)
[  341.666027] pc : vmap_page_range_noflush+0x300/0x410
[  341.667015] lr : map_vm_area+0x8c/0xd8
[  341.667806] sp : ffffb618f4877690
[  341.668488] x29: ffffb618f4877690 x28: ffff200026cc0008
[  341.669552] x27: dfff200000000000 x26: ffff0400023f0000
[  341.670611] x25: ffff200026bea818 x24: ffffb6193fd411f8
[  341.671718] x23: ffff040002400000 x22: ffffb6193fd50000
[  341.672769] x21: ffff040002400000 x20: ffff040004d7d503
[  341.673836] x19: 0000000000000000 x18: ffffb618f11d65b0
[  341.674903] x17: 0000000000002036 x16: ffff200024320da8
[  341.675979] x15: 0000000000001000 x14: 00000000000001ba
[  341.677043] x13: 0000000000054f18 x12: ffff0ffdb0c7a6b7
[  341.678093] x11: 1fffeffdb0c7a6b6 x10: 1ffff6c327fa823f
[  341.679197] x9 : ffff0400223f0000 x8 : 000036193fd50000
[  341.680246] x7 : ffff200026bea000 x6 : 0000000000000001
[  341.681362] x5 : 00000000f2f2f200 x4 : ffff200027c236c8
[  341.682459] x3 : ffff0800023f0000 x2 : ffff7fed863d3580
[  341.683517] x1 : 000036193fd411f8 x0 : 00e000005f880f93
[  341.684582] Call trace:
[  341.685089]  vmap_page_range_noflush+0x300/0x410
[  341.686050]  map_vm_area+0x8c/0xd8
[  341.686742]  __vmalloc_node_range+0x4e4/0x718
[  341.687608]  kasan_module_alloc+0xb4/0x168
[  341.688440]  module_alloc+0xc0/0x240
[  341.689171]  load_module+0x18ac/0x65c0
[  341.689970]  __se_sys_finit_module+0x138/0x148
[  341.690849]  __arm64_sys_finit_module+0x68/0x98
[  341.691765]  el0_svc_handler+0x14c/0x360
[  341.692539]  el0_svc+0x8/0xc
[  341.693167] ---[ end trace 1e09f33962be79c8 ]---

From this point, the kernel gets into some weird state with a few other
page faults at check_memory_region+0x64/0x1c8. Eventually, during
poweroff, I get the splat below. It seems that even though vzalloc()
allocated, the memory isn't there (which is not surprising given the
above warning.

[ 1016.168708] Unable to handle kernel paging request at virtual address ffff0400021c200a
[ 1016.170104] Mem abort info:
[ 1016.170598]   ESR = 0x96000007
[ 1016.172011]   Exception class = DABT (current EL), IL = 32 bits
[ 1016.173079]   SET = 0, FnV = 0
[ 1016.173614]   EA = 0, S1PTW = 0
[ 1016.174177] Data abort info:
[ 1016.174688]   ISV = 0, ISS = 0x00000007
[ 1016.175513]   CM = 0, WnR = 0
[ 1016.176064] swapper pgtable: 64k pages, 48-bit VAs, pgdp=000000005dec0000
[ 1016.177251] [ffff0400021c200a] pgd=00000000bfd50003, pud=00000000bfd50003, pmd=00000000bfd40003, pte=0000000000000000
[ 1016.179155] Internal error: Oops: 96000007 [#4] PREEMPT SMP
[ 1016.180122] Modules linked in: ghash_generic lcd pwm_fan altera_freeze_bridge fpga_region fpga_bridge reset_meson_audio_arb cros_ec_baro cros_ec_sensors rockchip_saradc cros_ec_light_prox industrialio_triggered_buffer kfifo_buf cros_ec_sensors_core spi_meson_spifc spi_meson_spic
[ 1016.180226]  pwm_bcm2835 pwm_tegra pwm_sun4i pwm_rcar aes_neon_bs chacha_neon chacha_generic sha3_generic aes_neon_blk sm3_generic sha512_arm64 test_udelay backtracetest locktorture torture br_netfilter bridge ip6table_mangle ip6table_nat nf_log_ipv6 ip6t_REJECT nf_reject_ipv6 i
[ 1016.212762] CPU: 1 PID: 1 Comm: systemd Tainted: G      D W         5.2.0-rc3-00015-gd1b79ba6a070 #82
[ 1016.214653] Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
[ 1016.216081] pstate: 20400005 (nzCv daif +PAN -UAO)
[ 1016.217152] pc : n_tty_open+0x54/0x148
[ 1016.217931] lr : n_tty_open+0x18/0x148
[ 1016.218781] sp : ffffb618e0707660
[ 1016.219505] x29: ffffb618e0707660 x28: ffffb618e0fe7b00
[ 1016.220662] x27: 0000000000000000 x26: 0000000000020101
[ 1016.221758] x25: 1ffff6c31f6dbd68 x24: 0000000000000000
[ 1016.222866] x23: ffffb618f3069058 x22: 0000000000000000
[ 1016.223987] x21: 000000010002bb56 x20: ffff200010e10000
[ 1016.225097] x19: ffffb618f3069000 x18: 0000000000000000
[ 1016.226200] x17: 0000000000000000 x16: 0000000000000000
[ 1016.227296] x15: 0000000000000000 x14: 0000000000000000
[ 1016.228364] x13: 1ffff6c31c0e0f93 x12: ffff0ffdb0c7f1df
[ 1016.229479] x11: 1fffeffdb0c7f1de x10: 1ffff6c31c04d0e1
[ 1016.230594] x9 : ffff200030e10000 x8 : 000036193fff0000
[ 1016.231700] x7 : ffff200026bea000 x6 : 0000000000000008
[ 1016.232812] x5 : 00000000f2f2f200 x4 : ffff200027c236c8
[ 1016.233930] x3 : ffff240010e10000 x2 : 1fffe400021c200a
[ 1016.235043] x1 : dfff200000000000 x0 : ffff200010e10050
[ 1016.236149] Call trace:
[ 1016.236693]  n_tty_open+0x54/0x148
[ 1016.237409]  tty_ldisc_open.isra.1+0x94/0x128
[ 1016.238334]  tty_ldisc_setup+0x40/0xd0
[ 1016.239117]  tty_init_dev+0x180/0x3a0
[ 1016.239906]  tty_open+0x438/0x780
[ 1016.240627]  chrdev_open+0x194/0x408
[ 1016.241385]  do_dentry_open+0x2ec/0xbf0
[ 1016.242189]  vfs_open+0x8c/0xc0
[ 1016.242862]  path_openat+0x694/0x3310
[ 1016.243641]  do_filp_open+0x13c/0x200
[ 1016.244402]  do_sys_open+0x1dc/0x320
[ 1016.245181]  __arm64_sys_openat+0x88/0xc8
[ 1016.246031]  el0_svc_handler+0x14c/0x360
[ 1016.246867]  el0_svc+0x8/0xc
[ 1016.247472] Code: d2c40001 f2fbffe1 d343fc02 f944c2b5 (38e16841)
[ 1016.248794] ---[ end trace 1e09f33962be79ce ]---
[ 1016.366872] printk: systemd: 46 output lines suppressed due to ratelimiting
[ 1016.369964] Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
[ 1016.371385] SMP: stopping secondary CPUs
[ 1016.372226] Kernel Offset: 0x141d0000 from 0xffff200010000000
[ 1016.373378] PHYS_OFFSET: 0xffffc9e780000000
[ 1016.374242] CPU features: 0x0002,23800438
[ 1016.375049] Memory Limit: none
[ 1016.375702] ---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b ]---

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
