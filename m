Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD47110474
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 19:46:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVglIJMn9hKEIdn4/NeaJcOK9axx3nfJZX1VPy08VAw=; b=WDRP9TgjAB/VWi
	us6vuOC3a+5XP6QbJVGHazPAnlD+pL8krH/xQxRdVGnNMNYTgaCapOCoTxNk6GkAtylZG7A7rQm1V
	Y62k57XVMg3wPTyRovcqsLDhPtJHdDvaPrCE4z29D1H2Fbq22joZkeOv5qwpmmbsaPPWWkfvl5ZY7
	uIcymtn0ty3exSIwiI1CPnn2PCfbN1YRZlKOqHJfrYvA+JM0pFiQsAbEYjjLBDcMWViAGgGz4QFmt
	p0Mn3psSX9T24JZ4Bo/5Q6mgMX1lT9670Z8/K8OIGbpUvLUlLkL7RanVkg3IIcJdGYWDlmMU1UvJe
	Mf317Z5/CAgX0n8mycDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDBi-0001g5-KE; Tue, 03 Dec 2019 18:46:18 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDBV-0001WF-DK
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 18:46:07 +0000
Received: by mail-qk1-x742.google.com with SMTP id a137so4480043qkc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 10:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ZxhFMEShM8jh67Lp633UJO9JyQTNyfmyIx3th3IgO2E=;
 b=DDcMeDEschtyWx/kYAOn0FUoZJ4QzmBohvw6N8/bd8A9B2qnCm/CYktZhSfe2kUSTH
 LrAuS+4qZYgveY8U8UltVC93hU0r1UdObE7BDihjZWmuAuH4TeLGC41V5k2xilRSy1km
 cAFfRUgNZ8C9Op2n3c1Ryat410q1K+cF6lPcCBm34XOlE9f7tfJWJKk4/euIm5xIUd/M
 f1WqsuQ+5yXMLsX1ISSF1VcZwW0jowfXfuNLpYJPOkZs12UV8NDu8A9/R9Ub1Uay6ySJ
 gPN6rQByz3G6bSyJIwrtWSI93P8Lx0Gl1MID058rWZXTK4Qy0WSNGIhadyUXbyaTOIkV
 Hk0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ZxhFMEShM8jh67Lp633UJO9JyQTNyfmyIx3th3IgO2E=;
 b=rCuzcLgi7kSS1WgGu6Yq6KFpSbiwxdXZD0aHHfWTK2SyzQ2ou/2qsK2yFbPvbBUQio
 +mvA8ztKvrpjGPE8uKWWlcMblNnenzj+xSRQusiL3r9bQHrZ/NBbs+D4NKvvu6dxR+7J
 C9BPu4jSwsXkX9PvVExLl4b6e/iqgIaBh014vrRX6IVR6xauu25VUcgMLx5RR2XvF4uW
 mYfxDQPGtOVDP9Rn/nzqDysWsW4k6lgiIuzoAEa7fPwagql47iLwY7vBfhQCtPRzHgxE
 AxbYjRNdPdsUrjs6NJN7Vlw5Z6NP8uv3cXlPxOOo4KxdAPd6+eqiy4fzlzwdB6Hhcpzx
 +eUQ==
X-Gm-Message-State: APjAAAWrNRWwsPannkmAmWCNW64sIL1o+vO7N7hUA1cv1Yud2VJfLv5F
 1IX1oI/KBYfsfd+uQRynzPp/Tw==
X-Google-Smtp-Source: APXvYqzAiVxXQc7+lRS+BSs6APg/0I+Uz5F9GNXBs7iNsde7RAG5lIxVmyFHwpv9ERA8mJvJ3A2QOQ==
X-Received: by 2002:a37:7005:: with SMTP id l5mr6480962qkc.334.1575398763693; 
 Tue, 03 Dec 2019 10:46:03 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id c20sm2328828qtc.13.2019.12.03.10.46.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Dec 2019 10:46:02 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: [PATCH] char/random: silence a lockdep splat with printk()
From: Qian Cai <cai@lca.pw>
In-Reply-To: <1573679785-21068-1-git-send-email-cai@lca.pw>
Date: Tue, 3 Dec 2019 13:46:01 -0500
Message-Id: <637027D4-BBDD-4AA6-B03C-556060988957@lca.pw>
References: <1573679785-21068-1-git-send-email-cai@lca.pw>
To: tytso@mit.edu
X-Mailer: Apple Mail (2.3601.0.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_104605_456668_C1C40503 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: pmladek@suse.com, sergey.senozhatsky.work@gmail.com,
 Arnd Bergmann <arnd@arndb.de>, peterz@infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, linux-mm@kvack.org, gregkh@linuxfoundation.org,
 longman@redhat.com, dan.j.williams@intel.com, will@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Nov 13, 2019, at 4:16 PM, Qian Cai <cai@lca.pw> wrote:
> 
> From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
> 
> Sergey didn't like the locking order,
> 
> uart_port->lock  ->  tty_port->lock
> 
> uart_write (uart_port->lock)
>  __uart_start
>    pl011_start_tx
>      pl011_tx_chars
>        uart_write_wakeup
>          tty_port_tty_wakeup
>            tty_port_default
>              tty_port_tty_get (tty_port->lock)
> 
> but those code is so old, and I have no clue how to de-couple it after
> checking other locks in the splat. There is an onging effort to make all
> printk() as deferred, so until that happens, workaround it for now as a
> short-term fix.

Sergey, could we have a ACK from you so Ted might be able to merge?

> 
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
>  which lock already depends on the new lock.
> 
>  the existing dependency chain (in reverse order) is:
> 
>  -> #4 (&pool->lock/1){-.-.}:
>       lock_acquire+0x320/0x360
>       _raw_spin_lock+0x64/0x80
>       __queue_work+0x4b4/0xa10
>       queue_work_on+0xac/0x11c
>       tty_schedule_flip+0x84/0xbc
>       tty_flip_buffer_push+0x1c/0x28
>       pty_write+0x98/0xd0
>       n_tty_write+0x450/0x60c
>       tty_write+0x338/0x474
>       __vfs_write+0x88/0x214
>       vfs_write+0x12c/0x1a4
>       redirected_tty_write+0x90/0xdc
>       do_loop_readv_writev+0x140/0x180
>       do_iter_write+0xe0/0x10c
>       vfs_writev+0x134/0x1cc
>       do_writev+0xbc/0x130
>       __arm64_sys_writev+0x58/0x8c
>       el0_svc_handler+0x170/0x240
>       el0_sync_handler+0x150/0x250
>       el0_sync+0x164/0x180
> 
>  -> #3 (&(&port->lock)->rlock){-.-.}:
>       lock_acquire+0x320/0x360
>       _raw_spin_lock_irqsave+0x7c/0x9c
>       tty_port_tty_get+0x24/0x60
>       tty_port_default_wakeup+0x1c/0x3c
>       tty_port_tty_wakeup+0x34/0x40
>       uart_write_wakeup+0x28/0x44
>       pl011_tx_chars+0x1b8/0x270
>       pl011_start_tx+0x24/0x70
>       __uart_start+0x5c/0x68
>       uart_write+0x164/0x1c8
>       do_output_char+0x33c/0x348
>       n_tty_write+0x4bc/0x60c
>       tty_write+0x338/0x474
>       redirected_tty_write+0xc0/0xdc
>       do_loop_readv_writev+0x140/0x180
>       do_iter_write+0xe0/0x10c
>       vfs_writev+0x134/0x1cc
>       do_writev+0xbc/0x130
>       __arm64_sys_writev+0x58/0x8c
>       el0_svc_handler+0x170/0x240
>       el0_sync_handler+0x150/0x250
>       el0_sync+0x164/0x180
> 
>  -> #2 (&port_lock_key){-.-.}:
>       lock_acquire+0x320/0x360
>       _raw_spin_lock+0x64/0x80
>       pl011_console_write+0xec/0x2cc
>       console_unlock+0x794/0x96c
>       vprintk_emit+0x260/0x31c
>       vprintk_default+0x54/0x7c
>       vprintk_func+0x218/0x254
>       printk+0x7c/0xa4
>       register_console+0x734/0x7b0
>       uart_add_one_port+0x734/0x834
>       pl011_register_port+0x6c/0xac
>       sbsa_uart_probe+0x234/0x2ec
>       platform_drv_probe+0xd4/0x124
>       really_probe+0x250/0x71c
>       driver_probe_device+0xb4/0x200
>       __device_attach_driver+0xd8/0x188
>       bus_for_each_drv+0xbc/0x110
>       __device_attach+0x120/0x220
>       device_initial_probe+0x20/0x2c
>       bus_probe_device+0x54/0x100
>       device_add+0xae8/0xc2c
>       platform_device_add+0x278/0x3b8
>       platform_device_register_full+0x238/0x2ac
>       acpi_create_platform_device+0x2dc/0x3a8
>       acpi_bus_attach+0x390/0x3cc
>       acpi_bus_attach+0x108/0x3cc
>       acpi_bus_attach+0x108/0x3cc
>       acpi_bus_attach+0x108/0x3cc
>       acpi_bus_scan+0x7c/0xb0
>       acpi_scan_init+0xe4/0x304
>       acpi_init+0x100/0x114
>       do_one_initcall+0x348/0x6a0
>       do_initcall_level+0x190/0x1fc
>       do_basic_setup+0x34/0x4c
>       kernel_init_freeable+0x19c/0x260
>       kernel_init+0x18/0x338
>       ret_from_fork+0x10/0x18
> 
>  -> #1 (console_owner){-...}:
>       lock_acquire+0x320/0x360
>       console_lock_spinning_enable+0x6c/0x7c
>       console_unlock+0x4f8/0x96c
>       vprintk_emit+0x260/0x31c
>       vprintk_default+0x54/0x7c
>       vprintk_func+0x218/0x254
>       printk+0x7c/0xa4
>       get_random_u64+0x1c4/0x1dc
>       shuffle_pick_tail+0x40/0xac
>       __free_one_page+0x424/0x710
>       free_one_page+0x70/0x120
>       __free_pages_ok+0x61c/0xa94
>       __free_pages_core+0x1bc/0x294
>       memblock_free_pages+0x38/0x48
>       __free_pages_memory+0xcc/0xfc
>       __free_memory_core+0x70/0x78
>       free_low_memory_core_early+0x148/0x18c
>       memblock_free_all+0x18/0x54
>       mem_init+0xb4/0x17c
>       mm_init+0x14/0x38
>       start_kernel+0x19c/0x530
> 
>  -> #0 (&(&zone->lock)->rlock){..-.}:
>       validate_chain+0xf6c/0x2e2c
>       __lock_acquire+0x868/0xc2c
>       lock_acquire+0x320/0x360
>       _raw_spin_lock+0x64/0x80
>       rmqueue+0x138/0x2050
>       get_page_from_freelist+0x474/0x688
>       __alloc_pages_nodemask+0x3b4/0x18dc
>       alloc_pages_current+0xd0/0xe0
>       alloc_slab_page+0x2b4/0x5e0
>       new_slab+0xc8/0x6bc
>       ___slab_alloc+0x3b8/0x640
>       kmem_cache_alloc+0x4b4/0x588
>       __debug_object_init+0x778/0x8b4
>       debug_object_init_on_stack+0x40/0x50
>       start_flush_work+0x16c/0x3f0
>       __flush_work+0xb8/0x124
>       flush_work+0x20/0x30
>       xlog_cil_force_lsn+0x88/0x204 [xfs]
>       xfs_log_force_lsn+0x128/0x1b8 [xfs]
>       xfs_file_fsync+0x3c4/0x488 [xfs]
>       vfs_fsync_range+0xb0/0xd0
>       generic_write_sync+0x80/0xa0 [xfs]
>       xfs_file_buffered_aio_write+0x66c/0x6e4 [xfs]
>       xfs_file_write_iter+0x1a0/0x218 [xfs]
>       __vfs_write+0x1cc/0x214
>       vfs_write+0x12c/0x1a4
>       ksys_write+0xb0/0x120
>       __arm64_sys_write+0x54/0x88
>       el0_svc_handler+0x170/0x240
>       el0_sync_handler+0x150/0x250
>       el0_sync+0x164/0x180
> 
>       other info that might help us debug this:
> 
> Chain exists of:
>   &(&zone->lock)->rlock --> &(&port->lock)->rlock --> &pool->lock/1
> 
> Possible unsafe locking scenario:
> 
>       CPU0                    CPU1
>       ----                    ----
>  lock(&pool->lock/1);
>                               lock(&(&port->lock)->rlock);
>                               lock(&pool->lock/1);
>  lock(&(&zone->lock)->rlock);
> 
>                *** DEADLOCK ***
> 
> 4 locks held by doio/49441:
> #0: a0ff00886fc27408 (sb_writers#8){.+.+}, at: vfs_write+0x118/0x1a4
> #1: 8fff00080810dfe0 (&xfs_nondir_ilock_class){++++}, at:
> xfs_ilock+0x2a8/0x300 [xfs]
> #2: ffff9000129f2390 (rcu_read_lock){....}, at:
> rcu_lock_acquire+0x8/0x38
> #3: 60ff000822352818 (&pool->lock/1){-.-.}, at:
> start_flush_work+0xd8/0x3f0
> 
>               stack backtrace:
> CPU: 48 PID: 49441 Comm: doio Tainted: G        W
> Hardware name: HPE Apollo 70             /C01_APACHE_MB         , BIOS
> L50_5.13_1.11 06/18/2019
> Call trace:
> dump_backtrace+0x0/0x248
> show_stack+0x20/0x2c
> dump_stack+0xe8/0x150
> print_circular_bug+0x368/0x380
> check_noncircular+0x28c/0x294
> validate_chain+0xf6c/0x2e2c
> __lock_acquire+0x868/0xc2c
> lock_acquire+0x320/0x360
> _raw_spin_lock+0x64/0x80
> rmqueue+0x138/0x2050
> get_page_from_freelist+0x474/0x688
> __alloc_pages_nodemask+0x3b4/0x18dc
> alloc_pages_current+0xd0/0xe0
> alloc_slab_page+0x2b4/0x5e0
> new_slab+0xc8/0x6bc
> ___slab_alloc+0x3b8/0x640
> kmem_cache_alloc+0x4b4/0x588
> __debug_object_init+0x778/0x8b4
> debug_object_init_on_stack+0x40/0x50
> start_flush_work+0x16c/0x3f0
> __flush_work+0xb8/0x124
> flush_work+0x20/0x30
> xlog_cil_force_lsn+0x88/0x204 [xfs]
> xfs_log_force_lsn+0x128/0x1b8 [xfs]
> xfs_file_fsync+0x3c4/0x488 [xfs]
> vfs_fsync_range+0xb0/0xd0
> generic_write_sync+0x80/0xa0 [xfs]
> xfs_file_buffered_aio_write+0x66c/0x6e4 [xfs]
> xfs_file_write_iter+0x1a0/0x218 [xfs]
> __vfs_write+0x1cc/0x214
> vfs_write+0x12c/0x1a4
> ksys_write+0xb0/0x120
> __arm64_sys_write+0x54/0x88
> el0_svc_handler+0x170/0x240
> el0_sync_handler+0x150/0x250
> el0_sync+0x164/0x180
> 
> [cai@lca.pw: add a commit log.]
> Signed-off-by: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
> 
> Sergey, please let us know if you are fine with the Signed-off-by.
> 
> drivers/char/random.c | 5 +++--
> 1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/random.c b/drivers/char/random.c
> index 46afd14facb7..b90086c9836f 100644
> --- a/drivers/char/random.c
> +++ b/drivers/char/random.c
> @@ -1688,8 +1688,9 @@ static void _warn_unseeded_randomness(const char *func_name, void *caller,
> 	print_once = true;
> #endif
> 	if (__ratelimit(&unseeded_warning))
> -		pr_notice("random: %s called from %pS with crng_init=%d\n",
> -			  func_name, caller, crng_init);
> +		printk_deferred(KERN_NOTICE "random: %s called from %pS "
> +				"with crng_init=%d\n", func_name, caller,
> +				crng_init);
> }
> 
> /*
> -- 
> 1.8.3.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
