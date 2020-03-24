Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFD4191420
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:22:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fyt5nXZ32vuVKKNtmPIou12rujXSJn5VBn1ll9FqBwo=; b=XXPa5dOqUfQcMU
	bAtTBCT1ueCZdENSIsdhy5ax2a+qY1BPN23lad3m+f3EQuLhnDexFM/sMe7IxpGaQ9+igTLsfD6pg
	/tW09tX9qHEDvX62EEXpyvgSI+LtPs7G4cuZRyJCZlBfCnm4IU9Vz/khu128D5/6C8+KX1vlcMfNf
	7BhZR+PnNq+y7hUonkLMCHsVdDM9ipV/9PyINfNhFFXUk9MFaXGIBIi3TQgF18gg9ZXBEp2kRITaN
	0iKHTrVpPC+4fGq/frEjtR2ldcmf+ylm7HpkdKvxQKs4bTmdUuHKTl2Wha9NktDJKKc/qJryIayhW
	VfA2bca3ZcMPX5Ia7erg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlNM-0000jV-Pm; Tue, 24 Mar 2020 15:21:56 +0000
Received: from james.kirk.hungrycats.org ([174.142.39.145])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlND-0000j6-Ty
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:21:49 +0000
Received: by james.kirk.hungrycats.org (Postfix, from userid 1002)
 id B124562D6A8; Tue, 24 Mar 2020 11:13:59 -0400 (EDT)
Date: Tue, 24 Mar 2020 11:13:59 -0400
From: Zygo Blaxell <uixjjji1@umail.furryterror.org>
To: Qian Cai <cai@lca.pw>
Subject: dmesg -w regression in v5.4.22, bisected, was: Re: [PATCH]
 char/random: silence a lockdep splat with printk()
Message-ID: <20200324151359.GF2693@hungrycats.org>
References: <1573679785-21068-1-git-send-email-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573679785-21068-1-git-send-email-cai@lca.pw>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_082148_124271_7E3BB5CF 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: pmladek@suse.com, tytso@mit.edu, sergey.senozhatsky.work@gmail.com,
 arnd@arndb.de, peterz@infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, linux-mm@kvack.org,
 catalin.marinas@arm.com, longman@redhat.com, dan.j.williams@intel.com,
 will@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 04:16:25PM -0500, Qian Cai wrote:
> From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
> 
> Sergey didn't like the locking order,
> 
> uart_port->lock  ->  tty_port->lock
> 
> uart_write (uart_port->lock)
>   __uart_start
>     pl011_start_tx
>       pl011_tx_chars
>         uart_write_wakeup
>           tty_port_tty_wakeup
>             tty_port_default
>               tty_port_tty_get (tty_port->lock)
> 
> but those code is so old, and I have no clue how to de-couple it after
> checking other locks in the splat. There is an onging effort to make all
> printk() as deferred, so until that happens, workaround it for now as a
> short-term fix.

Starting with v5.4.22 I noticed 'dmesg -w' stopped working on some
machines.  dmesg will follow console output for a few seconds, then it
stops.  strace indicates dmesg is blocked in read() on the /dev/kmsg fd.
If a new dmesg process starts, it gives messages for a few seconds,
then also stops.  rsyslog's kernel logging is similarly affected.

Bisection points to this patch (now known as
1b710b1b10eff9d46666064ea25f079f70bc67a8 upstream).  I can't reproduce
the problem on a test VM, and some machines are running v5.4.22..v5.4.26
with no dmesg problems.  It seems there is some magic in the startup
sequence of affected machines.  This code isn't executed after RNG is
seeded, so it would have to get its bad stuff done before that happens.

Reverting commit 1b710b1b10eff9d46666064ea25f079f70bc67a8 fixes the
dmesg regression on 5.4.26.  It might put the original lockdep bug back,
but on machines running stable kernels, I prefer randomly broken lockdep
over repeatably broken dmesg.

> LTP: starting iogen01 (export LTPROOT; rwtest -N iogen01 -i 120s -s
> read,write -Da -Dv -n 2 500b:$TMPDIR/doio.f1.$$
> 1000b:$TMPDIR/doio.f2.$$)
> WARNING: possible circular locking dependency detected
> ------------------------------------------------------
> doio/49441 is trying to acquire lock:
> ffff008b7cff7290 (&(&zone->lock)->rlock){..-.}, at: rmqueue+0x138/0x2050
> 
> but task is already holding lock:
> 60ff000822352818 (&pool->lock/1){-.-.}, at: start_flush_work+0xd8/0x3f0
> 
>   which lock already depends on the new lock.
> 
>   the existing dependency chain (in reverse order) is:
> 
>   -> #4 (&pool->lock/1){-.-.}:
>        lock_acquire+0x320/0x360
>        _raw_spin_lock+0x64/0x80
>        __queue_work+0x4b4/0xa10
>        queue_work_on+0xac/0x11c
>        tty_schedule_flip+0x84/0xbc
>        tty_flip_buffer_push+0x1c/0x28
>        pty_write+0x98/0xd0
>        n_tty_write+0x450/0x60c
>        tty_write+0x338/0x474
>        __vfs_write+0x88/0x214
>        vfs_write+0x12c/0x1a4
>        redirected_tty_write+0x90/0xdc
>        do_loop_readv_writev+0x140/0x180
>        do_iter_write+0xe0/0x10c
>        vfs_writev+0x134/0x1cc
>        do_writev+0xbc/0x130
>        __arm64_sys_writev+0x58/0x8c
>        el0_svc_handler+0x170/0x240
>        el0_sync_handler+0x150/0x250
>        el0_sync+0x164/0x180
> 
>   -> #3 (&(&port->lock)->rlock){-.-.}:
>        lock_acquire+0x320/0x360
>        _raw_spin_lock_irqsave+0x7c/0x9c
>        tty_port_tty_get+0x24/0x60
>        tty_port_default_wakeup+0x1c/0x3c
>        tty_port_tty_wakeup+0x34/0x40
>        uart_write_wakeup+0x28/0x44
>        pl011_tx_chars+0x1b8/0x270
>        pl011_start_tx+0x24/0x70
>        __uart_start+0x5c/0x68
>        uart_write+0x164/0x1c8
>        do_output_char+0x33c/0x348
>        n_tty_write+0x4bc/0x60c
>        tty_write+0x338/0x474
>        redirected_tty_write+0xc0/0xdc
>        do_loop_readv_writev+0x140/0x180
>        do_iter_write+0xe0/0x10c
>        vfs_writev+0x134/0x1cc
>        do_writev+0xbc/0x130
>        __arm64_sys_writev+0x58/0x8c
>        el0_svc_handler+0x170/0x240
>        el0_sync_handler+0x150/0x250
>        el0_sync+0x164/0x180
> 
>   -> #2 (&port_lock_key){-.-.}:
>        lock_acquire+0x320/0x360
>        _raw_spin_lock+0x64/0x80
>        pl011_console_write+0xec/0x2cc
>        console_unlock+0x794/0x96c
>        vprintk_emit+0x260/0x31c
>        vprintk_default+0x54/0x7c
>        vprintk_func+0x218/0x254
>        printk+0x7c/0xa4
>        register_console+0x734/0x7b0
>        uart_add_one_port+0x734/0x834
>        pl011_register_port+0x6c/0xac
>        sbsa_uart_probe+0x234/0x2ec
>        platform_drv_probe+0xd4/0x124
>        really_probe+0x250/0x71c
>        driver_probe_device+0xb4/0x200
>        __device_attach_driver+0xd8/0x188
>        bus_for_each_drv+0xbc/0x110
>        __device_attach+0x120/0x220
>        device_initial_probe+0x20/0x2c
>        bus_probe_device+0x54/0x100
>        device_add+0xae8/0xc2c
>        platform_device_add+0x278/0x3b8
>        platform_device_register_full+0x238/0x2ac
>        acpi_create_platform_device+0x2dc/0x3a8
>        acpi_bus_attach+0x390/0x3cc
>        acpi_bus_attach+0x108/0x3cc
>        acpi_bus_attach+0x108/0x3cc
>        acpi_bus_attach+0x108/0x3cc
>        acpi_bus_scan+0x7c/0xb0
>        acpi_scan_init+0xe4/0x304
>        acpi_init+0x100/0x114
>        do_one_initcall+0x348/0x6a0
>        do_initcall_level+0x190/0x1fc
>        do_basic_setup+0x34/0x4c
>        kernel_init_freeable+0x19c/0x260
>        kernel_init+0x18/0x338
>        ret_from_fork+0x10/0x18
> 
>   -> #1 (console_owner){-...}:
>        lock_acquire+0x320/0x360
>        console_lock_spinning_enable+0x6c/0x7c
>        console_unlock+0x4f8/0x96c
>        vprintk_emit+0x260/0x31c
>        vprintk_default+0x54/0x7c
>        vprintk_func+0x218/0x254
>        printk+0x7c/0xa4
>        get_random_u64+0x1c4/0x1dc
>        shuffle_pick_tail+0x40/0xac
>        __free_one_page+0x424/0x710
>        free_one_page+0x70/0x120
>        __free_pages_ok+0x61c/0xa94
>        __free_pages_core+0x1bc/0x294
>        memblock_free_pages+0x38/0x48
>        __free_pages_memory+0xcc/0xfc
>        __free_memory_core+0x70/0x78
>        free_low_memory_core_early+0x148/0x18c
>        memblock_free_all+0x18/0x54
>        mem_init+0xb4/0x17c
>        mm_init+0x14/0x38
>        start_kernel+0x19c/0x530
> 
>   -> #0 (&(&zone->lock)->rlock){..-.}:
>        validate_chain+0xf6c/0x2e2c
>        __lock_acquire+0x868/0xc2c
>        lock_acquire+0x320/0x360
>        _raw_spin_lock+0x64/0x80
>        rmqueue+0x138/0x2050
>        get_page_from_freelist+0x474/0x688
>        __alloc_pages_nodemask+0x3b4/0x18dc
>        alloc_pages_current+0xd0/0xe0
>        alloc_slab_page+0x2b4/0x5e0
>        new_slab+0xc8/0x6bc
>        ___slab_alloc+0x3b8/0x640
>        kmem_cache_alloc+0x4b4/0x588
>        __debug_object_init+0x778/0x8b4
>        debug_object_init_on_stack+0x40/0x50
>        start_flush_work+0x16c/0x3f0
>        __flush_work+0xb8/0x124
>        flush_work+0x20/0x30
>        xlog_cil_force_lsn+0x88/0x204 [xfs]
>        xfs_log_force_lsn+0x128/0x1b8 [xfs]
>        xfs_file_fsync+0x3c4/0x488 [xfs]
>        vfs_fsync_range+0xb0/0xd0
>        generic_write_sync+0x80/0xa0 [xfs]
>        xfs_file_buffered_aio_write+0x66c/0x6e4 [xfs]
>        xfs_file_write_iter+0x1a0/0x218 [xfs]
>        __vfs_write+0x1cc/0x214
>        vfs_write+0x12c/0x1a4
>        ksys_write+0xb0/0x120
>        __arm64_sys_write+0x54/0x88
>        el0_svc_handler+0x170/0x240
>        el0_sync_handler+0x150/0x250
>        el0_sync+0x164/0x180
> 
>        other info that might help us debug this:
> 
>  Chain exists of:
>    &(&zone->lock)->rlock --> &(&port->lock)->rlock --> &pool->lock/1
> 
>  Possible unsafe locking scenario:
> 
>        CPU0                    CPU1
>        ----                    ----
>   lock(&pool->lock/1);
>                                lock(&(&port->lock)->rlock);
>                                lock(&pool->lock/1);
>   lock(&(&zone->lock)->rlock);
> 
>                 *** DEADLOCK ***
> 
> 4 locks held by doio/49441:
>  #0: a0ff00886fc27408 (sb_writers#8){.+.+}, at: vfs_write+0x118/0x1a4
>  #1: 8fff00080810dfe0 (&xfs_nondir_ilock_class){++++}, at:
> xfs_ilock+0x2a8/0x300 [xfs]
>  #2: ffff9000129f2390 (rcu_read_lock){....}, at:
> rcu_lock_acquire+0x8/0x38
>  #3: 60ff000822352818 (&pool->lock/1){-.-.}, at:
> start_flush_work+0xd8/0x3f0
> 
>                stack backtrace:
> CPU: 48 PID: 49441 Comm: doio Tainted: G        W
> Hardware name: HPE Apollo 70             /C01_APACHE_MB         , BIOS
> L50_5.13_1.11 06/18/2019
> Call trace:
>  dump_backtrace+0x0/0x248
>  show_stack+0x20/0x2c
>  dump_stack+0xe8/0x150
>  print_circular_bug+0x368/0x380
>  check_noncircular+0x28c/0x294
>  validate_chain+0xf6c/0x2e2c
>  __lock_acquire+0x868/0xc2c
>  lock_acquire+0x320/0x360
>  _raw_spin_lock+0x64/0x80
>  rmqueue+0x138/0x2050
>  get_page_from_freelist+0x474/0x688
>  __alloc_pages_nodemask+0x3b4/0x18dc
>  alloc_pages_current+0xd0/0xe0
>  alloc_slab_page+0x2b4/0x5e0
>  new_slab+0xc8/0x6bc
>  ___slab_alloc+0x3b8/0x640
>  kmem_cache_alloc+0x4b4/0x588
>  __debug_object_init+0x778/0x8b4
>  debug_object_init_on_stack+0x40/0x50
>  start_flush_work+0x16c/0x3f0
>  __flush_work+0xb8/0x124
>  flush_work+0x20/0x30
>  xlog_cil_force_lsn+0x88/0x204 [xfs]
>  xfs_log_force_lsn+0x128/0x1b8 [xfs]
>  xfs_file_fsync+0x3c4/0x488 [xfs]
>  vfs_fsync_range+0xb0/0xd0
>  generic_write_sync+0x80/0xa0 [xfs]
>  xfs_file_buffered_aio_write+0x66c/0x6e4 [xfs]
>  xfs_file_write_iter+0x1a0/0x218 [xfs]
>  __vfs_write+0x1cc/0x214
>  vfs_write+0x12c/0x1a4
>  ksys_write+0xb0/0x120
>  __arm64_sys_write+0x54/0x88
>  el0_svc_handler+0x170/0x240
>  el0_sync_handler+0x150/0x250
>  el0_sync+0x164/0x180
> 
> [cai@lca.pw: add a commit log.]
> Signed-off-by: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
> 
> Sergey, please let us know if you are fine with the Signed-off-by.
> 
>  drivers/char/random.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/random.c b/drivers/char/random.c
> index 46afd14facb7..b90086c9836f 100644
> --- a/drivers/char/random.c
> +++ b/drivers/char/random.c
> @@ -1688,8 +1688,9 @@ static void _warn_unseeded_randomness(const char *func_name, void *caller,
>  	print_once = true;
>  #endif
>  	if (__ratelimit(&unseeded_warning))
> -		pr_notice("random: %s called from %pS with crng_init=%d\n",
> -			  func_name, caller, crng_init);
> +		printk_deferred(KERN_NOTICE "random: %s called from %pS "
> +				"with crng_init=%d\n", func_name, caller,
> +				crng_init);
>  }
>  
>  /*
> -- 
> 1.8.3.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
