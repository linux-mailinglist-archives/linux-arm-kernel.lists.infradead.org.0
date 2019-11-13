Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3130FBA83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 22:17:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VvyLS2LPL/oQK8YKTqIEAGCunGEfEKJI5yeTtzPlFYk=; b=hk0
	jDHtBeOLjTPesw8o5zY/hhBnD+kDMEaJXoZCV+Niv1KZq4+N+Tnoob0PJjNCaT+angcZfVp7HITGu
	QcLB+tuRUKG88PzIZp6QHz6SSNb4Vh0K9QCPNy8UncQdmBKtCxu3jrWH2jKxIjTOFs2afiwHNCi9y
	XZSznD+VLpjca6dZn9iemQZlJr+c8ABnkql9FKe9ZgpqzVYdkF9INyjLSD9sPkViZJr84OAtlA3tI
	v+SyVNoxPbEnImYSGKZ313SrBD6pSF/4VT69Kttphf+XL7LFjnMrajNN9XWml+4Ta+Nwi1GmkBBzs
	N7cvGoG1m0rMML7JHeW862x6LcaBz6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV00d-0006Fg-1T; Wed, 13 Nov 2019 21:17:03 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV00V-0006Ey-BM
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 21:16:57 +0000
Received: by mail-qv1-xf41.google.com with SMTP id cv8so1302251qvb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 13:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Wr1JRcT9WnrAul0nWtOjV21cY/6/cmzPFjE2weQ7Uno=;
 b=UlxHyADmZcd6WpOD66WX+wp2ZsD1o2LEIYkdLAlafw39GfVq9TSw0L2I0Pbe4bTGVA
 qHb/srKUrLeDhHo15ndfyOMMVWspXaE1SUJ727PMz8MY4ksBEXHh/9Oq+ThnNCdkQBy2
 tkYcL2LlXXU1qiHFMFAlxu6qYqloxEinL/ysdzYoFchtfRdZNTUQNRCK5KB/dJpovMy2
 uBdCcUY0IJESK7F0QYJq+mKTFJi6oykU44cp1DvkZII9sZEgWzD+j6ZZKXKq8gdptLoa
 TF0JjxtTfho0XXP3LROZor0JXJjggCLvITVonOqohMPjTqjGG9NyIei2V3F8CJaUmC9Q
 9/fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Wr1JRcT9WnrAul0nWtOjV21cY/6/cmzPFjE2weQ7Uno=;
 b=EGHdaVy6zBNgTRPEM49tPi1jVX51Nivtx4JK0RUTZN15ukTB1F1rnUrPetLdSJONF7
 814sTjODvEGCFUnNTprO/E1mig1j7rlPrsGx5K+rT8o5mZp0j/1RBy/3HZ8/f6HiQ88J
 aM5s99pGjOz9LwssGjjLsUQl7bxo7nzPoDhQ/DqMqLL9ICm8PlFB7jWNiQZQeHmFis0U
 rxsgbjv/nr6N2Bvckx0h5Q7kIBZRrw1gLQa1jfGME8/PPu451NwkRSGxD83NUTqsWYLH
 otUNAusvgRUX7jibeV/Nx7NQqPKgufrei/F/fxoDTvYkscnBFQ0Tvh+J89woCuUkuKVz
 N5Vg==
X-Gm-Message-State: APjAAAUNmd6N5AeM5kZup8FhWNwR/+SM5LKMc/ZphbUf5mFkLaGnS+wR
 lUwTIvg31TQ1GQ8jI0DuiKzdpA==
X-Google-Smtp-Source: APXvYqyoWpq2mbkRyjn/l1JK5tRNV3aMlAIWi8OxCPh8xHc0A5ejNwCBpLOEPGXNzRqybO8pf4dQSA==
X-Received: by 2002:a0c:9374:: with SMTP id e49mr3488217qve.129.1573679813081; 
 Wed, 13 Nov 2019 13:16:53 -0800 (PST)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id q8sm2041860qta.31.2019.11.13.13.16.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 Nov 2019 13:16:52 -0800 (PST)
From: Qian Cai <cai@lca.pw>
To: tytso@mit.edu
Subject: [PATCH] char/random: silence a lockdep splat with printk()
Date: Wed, 13 Nov 2019 16:16:25 -0500
Message-Id: <1573679785-21068-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_131655_415864_8DB1590A 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: pmladek@suse.com, sergey.senozhatsky.work@gmail.com, arnd@arndb.de,
 peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, linux-mm@kvack.org, Qian Cai <cai@lca.pw>,
 gregkh@linuxfoundation.org, longman@redhat.com, dan.j.williams@intel.com,
 will@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>

Sergey didn't like the locking order,

uart_port->lock  ->  tty_port->lock

uart_write (uart_port->lock)
  __uart_start
    pl011_start_tx
      pl011_tx_chars
        uart_write_wakeup
          tty_port_tty_wakeup
            tty_port_default
              tty_port_tty_get (tty_port->lock)

but those code is so old, and I have no clue how to de-couple it after
checking other locks in the splat. There is an onging effort to make all
printk() as deferred, so until that happens, workaround it for now as a
short-term fix.

LTP: starting iogen01 (export LTPROOT; rwtest -N iogen01 -i 120s -s
read,write -Da -Dv -n 2 500b:$TMPDIR/doio.f1.$$
1000b:$TMPDIR/doio.f2.$$)
WARNING: possible circular locking dependency detected
------------------------------------------------------
doio/49441 is trying to acquire lock:
ffff008b7cff7290 (&(&zone->lock)->rlock){..-.}, at: rmqueue+0x138/0x2050

but task is already holding lock:
60ff000822352818 (&pool->lock/1){-.-.}, at: start_flush_work+0xd8/0x3f0

  which lock already depends on the new lock.

  the existing dependency chain (in reverse order) is:

  -> #4 (&pool->lock/1){-.-.}:
       lock_acquire+0x320/0x360
       _raw_spin_lock+0x64/0x80
       __queue_work+0x4b4/0xa10
       queue_work_on+0xac/0x11c
       tty_schedule_flip+0x84/0xbc
       tty_flip_buffer_push+0x1c/0x28
       pty_write+0x98/0xd0
       n_tty_write+0x450/0x60c
       tty_write+0x338/0x474
       __vfs_write+0x88/0x214
       vfs_write+0x12c/0x1a4
       redirected_tty_write+0x90/0xdc
       do_loop_readv_writev+0x140/0x180
       do_iter_write+0xe0/0x10c
       vfs_writev+0x134/0x1cc
       do_writev+0xbc/0x130
       __arm64_sys_writev+0x58/0x8c
       el0_svc_handler+0x170/0x240
       el0_sync_handler+0x150/0x250
       el0_sync+0x164/0x180

  -> #3 (&(&port->lock)->rlock){-.-.}:
       lock_acquire+0x320/0x360
       _raw_spin_lock_irqsave+0x7c/0x9c
       tty_port_tty_get+0x24/0x60
       tty_port_default_wakeup+0x1c/0x3c
       tty_port_tty_wakeup+0x34/0x40
       uart_write_wakeup+0x28/0x44
       pl011_tx_chars+0x1b8/0x270
       pl011_start_tx+0x24/0x70
       __uart_start+0x5c/0x68
       uart_write+0x164/0x1c8
       do_output_char+0x33c/0x348
       n_tty_write+0x4bc/0x60c
       tty_write+0x338/0x474
       redirected_tty_write+0xc0/0xdc
       do_loop_readv_writev+0x140/0x180
       do_iter_write+0xe0/0x10c
       vfs_writev+0x134/0x1cc
       do_writev+0xbc/0x130
       __arm64_sys_writev+0x58/0x8c
       el0_svc_handler+0x170/0x240
       el0_sync_handler+0x150/0x250
       el0_sync+0x164/0x180

  -> #2 (&port_lock_key){-.-.}:
       lock_acquire+0x320/0x360
       _raw_spin_lock+0x64/0x80
       pl011_console_write+0xec/0x2cc
       console_unlock+0x794/0x96c
       vprintk_emit+0x260/0x31c
       vprintk_default+0x54/0x7c
       vprintk_func+0x218/0x254
       printk+0x7c/0xa4
       register_console+0x734/0x7b0
       uart_add_one_port+0x734/0x834
       pl011_register_port+0x6c/0xac
       sbsa_uart_probe+0x234/0x2ec
       platform_drv_probe+0xd4/0x124
       really_probe+0x250/0x71c
       driver_probe_device+0xb4/0x200
       __device_attach_driver+0xd8/0x188
       bus_for_each_drv+0xbc/0x110
       __device_attach+0x120/0x220
       device_initial_probe+0x20/0x2c
       bus_probe_device+0x54/0x100
       device_add+0xae8/0xc2c
       platform_device_add+0x278/0x3b8
       platform_device_register_full+0x238/0x2ac
       acpi_create_platform_device+0x2dc/0x3a8
       acpi_bus_attach+0x390/0x3cc
       acpi_bus_attach+0x108/0x3cc
       acpi_bus_attach+0x108/0x3cc
       acpi_bus_attach+0x108/0x3cc
       acpi_bus_scan+0x7c/0xb0
       acpi_scan_init+0xe4/0x304
       acpi_init+0x100/0x114
       do_one_initcall+0x348/0x6a0
       do_initcall_level+0x190/0x1fc
       do_basic_setup+0x34/0x4c
       kernel_init_freeable+0x19c/0x260
       kernel_init+0x18/0x338
       ret_from_fork+0x10/0x18

  -> #1 (console_owner){-...}:
       lock_acquire+0x320/0x360
       console_lock_spinning_enable+0x6c/0x7c
       console_unlock+0x4f8/0x96c
       vprintk_emit+0x260/0x31c
       vprintk_default+0x54/0x7c
       vprintk_func+0x218/0x254
       printk+0x7c/0xa4
       get_random_u64+0x1c4/0x1dc
       shuffle_pick_tail+0x40/0xac
       __free_one_page+0x424/0x710
       free_one_page+0x70/0x120
       __free_pages_ok+0x61c/0xa94
       __free_pages_core+0x1bc/0x294
       memblock_free_pages+0x38/0x48
       __free_pages_memory+0xcc/0xfc
       __free_memory_core+0x70/0x78
       free_low_memory_core_early+0x148/0x18c
       memblock_free_all+0x18/0x54
       mem_init+0xb4/0x17c
       mm_init+0x14/0x38
       start_kernel+0x19c/0x530

  -> #0 (&(&zone->lock)->rlock){..-.}:
       validate_chain+0xf6c/0x2e2c
       __lock_acquire+0x868/0xc2c
       lock_acquire+0x320/0x360
       _raw_spin_lock+0x64/0x80
       rmqueue+0x138/0x2050
       get_page_from_freelist+0x474/0x688
       __alloc_pages_nodemask+0x3b4/0x18dc
       alloc_pages_current+0xd0/0xe0
       alloc_slab_page+0x2b4/0x5e0
       new_slab+0xc8/0x6bc
       ___slab_alloc+0x3b8/0x640
       kmem_cache_alloc+0x4b4/0x588
       __debug_object_init+0x778/0x8b4
       debug_object_init_on_stack+0x40/0x50
       start_flush_work+0x16c/0x3f0
       __flush_work+0xb8/0x124
       flush_work+0x20/0x30
       xlog_cil_force_lsn+0x88/0x204 [xfs]
       xfs_log_force_lsn+0x128/0x1b8 [xfs]
       xfs_file_fsync+0x3c4/0x488 [xfs]
       vfs_fsync_range+0xb0/0xd0
       generic_write_sync+0x80/0xa0 [xfs]
       xfs_file_buffered_aio_write+0x66c/0x6e4 [xfs]
       xfs_file_write_iter+0x1a0/0x218 [xfs]
       __vfs_write+0x1cc/0x214
       vfs_write+0x12c/0x1a4
       ksys_write+0xb0/0x120
       __arm64_sys_write+0x54/0x88
       el0_svc_handler+0x170/0x240
       el0_sync_handler+0x150/0x250
       el0_sync+0x164/0x180

       other info that might help us debug this:

 Chain exists of:
   &(&zone->lock)->rlock --> &(&port->lock)->rlock --> &pool->lock/1

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(&pool->lock/1);
                               lock(&(&port->lock)->rlock);
                               lock(&pool->lock/1);
  lock(&(&zone->lock)->rlock);

                *** DEADLOCK ***

4 locks held by doio/49441:
 #0: a0ff00886fc27408 (sb_writers#8){.+.+}, at: vfs_write+0x118/0x1a4
 #1: 8fff00080810dfe0 (&xfs_nondir_ilock_class){++++}, at:
xfs_ilock+0x2a8/0x300 [xfs]
 #2: ffff9000129f2390 (rcu_read_lock){....}, at:
rcu_lock_acquire+0x8/0x38
 #3: 60ff000822352818 (&pool->lock/1){-.-.}, at:
start_flush_work+0xd8/0x3f0

               stack backtrace:
CPU: 48 PID: 49441 Comm: doio Tainted: G        W
Hardware name: HPE Apollo 70             /C01_APACHE_MB         , BIOS
L50_5.13_1.11 06/18/2019
Call trace:
 dump_backtrace+0x0/0x248
 show_stack+0x20/0x2c
 dump_stack+0xe8/0x150
 print_circular_bug+0x368/0x380
 check_noncircular+0x28c/0x294
 validate_chain+0xf6c/0x2e2c
 __lock_acquire+0x868/0xc2c
 lock_acquire+0x320/0x360
 _raw_spin_lock+0x64/0x80
 rmqueue+0x138/0x2050
 get_page_from_freelist+0x474/0x688
 __alloc_pages_nodemask+0x3b4/0x18dc
 alloc_pages_current+0xd0/0xe0
 alloc_slab_page+0x2b4/0x5e0
 new_slab+0xc8/0x6bc
 ___slab_alloc+0x3b8/0x640
 kmem_cache_alloc+0x4b4/0x588
 __debug_object_init+0x778/0x8b4
 debug_object_init_on_stack+0x40/0x50
 start_flush_work+0x16c/0x3f0
 __flush_work+0xb8/0x124
 flush_work+0x20/0x30
 xlog_cil_force_lsn+0x88/0x204 [xfs]
 xfs_log_force_lsn+0x128/0x1b8 [xfs]
 xfs_file_fsync+0x3c4/0x488 [xfs]
 vfs_fsync_range+0xb0/0xd0
 generic_write_sync+0x80/0xa0 [xfs]
 xfs_file_buffered_aio_write+0x66c/0x6e4 [xfs]
 xfs_file_write_iter+0x1a0/0x218 [xfs]
 __vfs_write+0x1cc/0x214
 vfs_write+0x12c/0x1a4
 ksys_write+0xb0/0x120
 __arm64_sys_write+0x54/0x88
 el0_svc_handler+0x170/0x240
 el0_sync_handler+0x150/0x250
 el0_sync+0x164/0x180

[cai@lca.pw: add a commit log.]
Signed-off-by: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Signed-off-by: Qian Cai <cai@lca.pw>
---

Sergey, please let us know if you are fine with the Signed-off-by.

 drivers/char/random.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/char/random.c b/drivers/char/random.c
index 46afd14facb7..b90086c9836f 100644
--- a/drivers/char/random.c
+++ b/drivers/char/random.c
@@ -1688,8 +1688,9 @@ static void _warn_unseeded_randomness(const char *func_name, void *caller,
 	print_once = true;
 #endif
 	if (__ratelimit(&unseeded_warning))
-		pr_notice("random: %s called from %pS with crng_init=%d\n",
-			  func_name, caller, crng_init);
+		printk_deferred(KERN_NOTICE "random: %s called from %pS "
+				"with crng_init=%d\n", func_name, caller,
+				crng_init);
 }
 
 /*
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
