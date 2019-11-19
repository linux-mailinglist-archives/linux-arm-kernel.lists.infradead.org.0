Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D999A102BAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 19:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXF+boKy1TaNA93X+we0nGDU3LE6xgW4nKQ+Usyo7Gw=; b=YIs72d772lHjTU
	jUwM5cOYlEyNEJMzq45a45m54aaudLWLiGDfsVccoNCYCWMu+1zgyWaPNScgVRa6suy7tFb3LUXhg
	1bJEbnI3TicA9LkBPl8raIZKJnnK5U/tF4aR7xnnJGLiKYQEfB0vg21PaEaWhP7Lc0JEsC30YjaXr
	QGv4ljeO0CXXk8QAwRiN0fmxPLWrd9tSvjrZLwhlMQUzs4uq67CiUkLUyU0PBb2s4YhNxKST9SpvL
	bGQawkK9dIIVQRjbVBXuzTR4J9WWH67KsrBH1a4xpSGHXU2fx755KeRCSq2IDrA4tbrybcSa/C7HE
	kZSGyyLJx70hs1/4L8qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX8EO-0004yg-R0; Tue, 19 Nov 2019 18:28:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX8EE-0004xo-PM
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 18:27:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60938223B0;
 Tue, 19 Nov 2019 18:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574188071;
 bh=ZX0qREYxvXYiQU0o4IOxrUDjzoY9t93bO4CzRpKKWv4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CVXg25ql5giAFD67wekUOE9ljOR+5XPNF7MMcO8Ke4qnK7EOOzQdrL97/s8E5nEI6
 YV72COid3kWI2hwSmlOqH1wj3gdW6bpOhum8eFan6j4LyjbaWH1Y/eRgNpapuKlwwD
 TAszxgfWdD8sPHySkV2btUg3GC0FjbF+BjR97m0o=
Date: Tue, 19 Nov 2019 18:27:45 +0000
From: Will Deacon <will@kernel.org>
To: kernel test robot <rong.a.chen@intel.com>, ocfs2-devel@oss.oracle.com
Subject: Re: [refcount] 84b21d1291:
 WARNING:at_lib/refcount.c:#refcount_warn_saturate
Message-ID: <20191119182745.GA11397@willie-the-truck>
References: <20191113030749.GC6910@shao2-debian>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113030749.GC6910@shao2-debian>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_102754_868844_20EC8012 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, lkp@lists.01.org,
 linux-arm-kernel@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 11:07:49AM +0800, kernel test robot wrote:
> FYI, we noticed the following commit (built with gcc-7):
> 
> commit: 84b21d1291c67ac216f8106783609007a51baa78 ("refcount: Consolidate implementations of refcount_t")
> https://git.kernel.org/cgit/linux/kernel/git/arm64/linux.git for-kernelci
> 
> in testcase: ocfs2test

Looks like the same issue I previously reported here:

https://lore.kernel.org/lkml/20190912105640.2l6mtdjmcyyhmyun@willie-the-truck/

Will

> [   69.895894] BUG: sleeping function called from invalid context at kernel/locking/rwsem.c:1533
> [   69.898664] in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 2462, name: mount.ocfs2
> [   69.900964] CPU: 1 PID: 2462 Comm: mount.ocfs2 Not tainted 5.4.0-rc2-00008-g84b21d1291c67 #1
> [   69.904287] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.10.2-1 04/01/2014
> [   69.907871] Call Trace:
> [   69.909860]  dump_stack+0x5c/0x7b
> [   69.911534]  ___might_sleep+0x102/0x120
> [   69.913579]  down_write+0x1c/0x50
> [   69.915478]  configfs_depend_item+0x3a/0xb0
> [   69.917386]  o2hb_region_pin+0xf9/0x180 [ocfs2_nodemanager]
> [   69.919990]  ? inode_doinit_with_dentry+0x250/0x4e0
> [   69.922010]  o2hb_register_callback+0xc6/0x2a0 [ocfs2_nodemanager]
> [   69.924758]  dlm_join_domain+0xbd/0x790 [ocfs2_dlm]
> [   69.927195]  ? debugfs_create_dir+0xc4/0x100
> [   69.928725]  ? dlm_alloc_ctxt+0x42f/0x560 [ocfs2_dlm]
> [   69.930592]  dlm_register_domain+0x31f/0x440 [ocfs2_dlm]
> [   69.932605]  ? _cond_resched+0x19/0x30
> [   69.934177]  o2cb_cluster_connect+0x132/0x2c0 [ocfs2_stack_o2cb]
> [   69.936181]  ocfs2_cluster_connect+0x14b/0x220 [ocfs2_stackglue]
> [   69.938109]  ocfs2_dlm_init+0x2e9/0x4b0 [ocfs2]
> [   69.939740]  ? ocfs2_init_node_maps+0x50/0x50 [ocfs2]
> [   69.941364]  ocfs2_fill_super+0xcf4/0x12a0 [ocfs2]
> [   69.943471]  ? ocfs2_initialize_super+0x1030/0x1030 [ocfs2]
> [   69.945609]  mount_bdev+0x173/0x1b0
> [   69.947146]  legacy_get_tree+0x27/0x40
> [   69.948647]  vfs_get_tree+0x25/0xc0
> [   69.950164]  do_mount+0x715/0x9a0
> [   69.951543]  ksys_mount+0x80/0xd0
> [   69.952573]  __x64_sys_mount+0x21/0x30
> [   69.953894]  do_syscall_64+0x5b/0x1d0
> [   69.955682]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [   69.957023] RIP: 0033:0x7f5f35af548a
> [   69.958086] Code: 48 8b 0d 11 fa 2a 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d de f9 2a 00 f7 d8 64 89 01 48
> [   69.962124] RSP: 002b:00007ffdf0bdd3a8 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
> [   69.963869] RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f5f35af548a
> [   69.965508] RDX: 000055a529b593ee RSI: 000055a52b7e20b0 RDI: 000055a52b7e2310
> [   69.967187] RBP: 00007ffdf0bdd550 R08: 000055a52b7e22b0 R09: 0000000000000020
> [   69.968831] R10: 0000000000000000 R11: 0000000000000202 R12: 00007ffdf0bdd440
> [   69.970483] R13: 0000000000000000 R14: 000055a52b7e3000 R15: 00007ffdf0bdd3c0
> [   69.980629] o2dlm: Joining domain B7CA1824044F4C99924CDC31E1E40968 
> [   69.980630] ( 
> [   69.982192] 1 
> [   69.983075] ) 1 nodes
> [   69.990740] JBD2: Ignoring recovery information on journal
> [   70.000782] ocfs2: Mounting device (8,0) on (node 1, slot 0) with ordered data mode.
> [   70.020367] mount /dev/sda /mnt/ocfs2 /dev/sda          16515072      243712    16271360   2% /mnt/ocfs2
> [   70.020369] 
> [   70.026416] OK
> [   70.026418] 
> [   70.031238] create testdir /mnt/ocfs2/20191113_002600
> [   70.031240] 
> [   70.043257] create 15890 files .
> [   70.043259] 
> [   70.046469] 
> [   74.089735] o2dlm: Leaving domain B7CA1824044F4C99924CDC31E1E40968
> [   74.155669] blk_update_request: I/O error, dev fd0, sector 0 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0
> [   74.157766] floppy: error 10 while reading block 0
> [   76.034283] ocfs2: Unmounting device (8,0) on (node 1)
> [   76.036255] ------------[ cut here ]------------
> [   76.037559] refcount_t: underflow; use-after-free.
> [   76.039312] WARNING: CPU: 1 PID: 2523 at lib/refcount.c:28 refcount_warn_saturate+0x8d/0xf0
> [   76.042310] Modules linked in: ocfs2_stack_o2cb ocfs2_dlm ocfs2 ocfs2_nodemanager ocfs2_stackglue jbd2 intel_rapl_msr intel_rapl_common crct10dif_pclmul crc32_pclmul crc32c_intel ghash_clmulni_intel sr_mod cdrom ata_generic pata_acpi sd_mod sg ppdev bochs_drm drm_vram_helper ttm aesni_intel drm_kms_helper crypto_simd syscopyarea sysfillrect sysimgblt fb_sys_fops cryptd drm glue_helper snd_pcm ata_piix snd_timer libata snd joydev serio_raw soundcore pcspkr virtio_scsi i2c_piix4 parport_pc parport floppy ip_tables
> [   76.056817] CPU: 1 PID: 2523 Comm: umount Tainted: G        W         5.4.0-rc2-00008-g84b21d1291c67 #1
> [   76.058930] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.10.2-1 04/01/2014
> [   76.060887] RIP: 0010:refcount_warn_saturate+0x8d/0xf0
> [   76.062346] Code: 05 ae 76 37 01 01 e8 62 a7 c1 ff 0f 0b c3 80 3d a1 76 37 01 00 75 ad 48 c7 c7 10 9a 93 b4 c6 05 91 76 37 01 01 e8 43 a7 c1 ff <0f> 0b c3 80 3d 85 76 37 01 00 75 8e 48 c7 c7 90 99 93 b4 c6 05 75
> [   76.066602] RSP: 0018:ffffb13780483e20 EFLAGS: 00010282
> [   76.068139] RAX: 0000000000000000 RBX: ffff9858997d9000 RCX: 0000000000000000
> [   76.069951] RDX: ffff9858ffd27640 RSI: ffff9858ffd17778 RDI: ffff9858ffd17778
> [   76.071781] RBP: ffff9858a0009800 R08: 0000000000000506 R09: 0000000000aaaaaa
> [   76.073606] R10: ffff985899777900 R11: ffff9858d79ccd10 R12: ffffb13780483e34
> [   76.075447] R13: ffff9858997d9240 R14: ffff9858997d90c8 R15: 0000000000000000
> [   76.077285] FS:  00007f139509ee40(0000) GS:ffff9858ffd00000(0000) knlGS:0000000000000000
> [   76.079283] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   76.080899] CR2: 00000000004216d0 CR3: 00000001d5e56000 CR4: 00000000000406e0
> [   76.082717] Call Trace:
> [   76.083876]  ocfs2_dismount_volume+0x32a/0x3e0 [ocfs2]
> [   76.085389]  generic_shutdown_super+0x6c/0x120
> [   76.086812]  kill_block_super+0x21/0x50
> [   76.088112]  deactivate_locked_super+0x3f/0x70
> [   76.089502]  cleanup_mnt+0xb8/0x150
> [   76.090748]  task_work_run+0xa3/0xe0
> [   76.092005]  exit_to_usermode_loop+0xeb/0xf0
> [   76.093357]  do_syscall_64+0x1a7/0x1d0
> [   76.094637]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [   76.096130] RIP: 0033:0x7f1394982d77
> [   76.097386] Code: 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d f1 00 2b 00 f7 d8 64 89 01 48
> [   76.101690] RSP: 002b:00007ffd3220b638 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
> [   76.103605] RAX: 0000000000000000 RBX: 000056324cf1f080 RCX: 00007f1394982d77
> [   76.105430] RDX: 0000000000000001 RSI: 0000000000000000 RDI: 000056324cf1f260
> [   76.107277] RBP: 000056324cf1f260 R08: 000056324cf20600 R09: 0000000000000015
> [   76.109125] R10: 00000000000006b4 R11: 0000000000000246 R12: 00007f1394e84e64
> [   76.110980] R13: 0000000000000000 R14: 0000000000000000 R15: 00007ffd3220b8c0
> [   76.112828] ---[ end trace 60d2f00fc8257cff ]---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
