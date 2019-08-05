Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F146817FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CwanYugNXGhOvDxsJJOG2QJKXndin1aF3VhvV/LC4iE=; b=qqhWvNH/iZKzG9
	7E55tqPwKlZHsg0dvf3B6OUkq+I8tilpjdnXHz/SsN3Kn9nMP7Vumtm79csC66o4EyX+vYBzk4Log
	FhSqg/Ek+0MsrtXRBNqSMXsVQoMGz3zHzcqgK2IFrEG/2UqXs7wr3srNVOxeSQ9t+VDJb/F1EuaTs
	ADBLsSeYvIDU7Ndwh73YjcemcXr9Y0n/4aTd0DF2C1yq9/xbKfSpe2GWcInZ9oogergZ8qUoIqvuR
	eN5B7Svy/doZYtzZ7BpkDX1yam5xzhi75XJyz0zdOFn+Xawv0z8ICU7VQHKifgKm/28AE+aZBJyKp
	Ly4L1ffMYF0+uHW4OGKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huay0-0007gF-FK; Mon, 05 Aug 2019 11:15:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huaxo-0007fI-7N
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:15:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 58FFD337;
 Mon,  5 Aug 2019 04:15:37 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A1D293F694;
 Mon,  5 Aug 2019 04:15:35 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] usb: yurex: Fix use-after-free in yurex_delete
Date: Mon,  5 Aug 2019 12:15:28 +0100
Message-Id: <20190805111528.6758-1-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_041540_359156_AAD2B76F 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Oliver Neukum <oneukum@suse.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jiri Kosina <jkosina@suse.cz>, linux-usb@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, gregkh@linuxfoundation.org,
 syzbot+d1fedb1c1fdb07fca507@syzkaller.appspotmail.com,
 Alan Stern <stern@rowland.harvard.edu>, andreyknvl@google.com,
 Tomoki Sekiyama <tomoki.sekiyama@gmail.com>, dtor@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

syzbot reported the following crash [0]:

BUG: KASAN: use-after-free in usb_free_coherent+0x79/0x80
drivers/usb/core/usb.c:928
Read of size 8 at addr ffff8881b18599c8 by task syz-executor.4/16007

CPU: 0 PID: 16007 Comm: syz-executor.4 Not tainted 5.3.0-rc2+ #23
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0xca/0x13e lib/dump_stack.c:113
  print_address_description+0x6a/0x32c mm/kasan/report.c:351
  __kasan_report.cold+0x1a/0x33 mm/kasan/report.c:482
  kasan_report+0xe/0x12 mm/kasan/common.c:612
  usb_free_coherent+0x79/0x80 drivers/usb/core/usb.c:928
  yurex_delete+0x138/0x330 drivers/usb/misc/yurex.c:100
  kref_put include/linux/kref.h:65 [inline]
  yurex_release+0x66/0x90 drivers/usb/misc/yurex.c:392
  __fput+0x2d7/0x840 fs/file_table.c:280
  task_work_run+0x13f/0x1c0 kernel/task_work.c:113
  tracehook_notify_resume include/linux/tracehook.h:188 [inline]
  exit_to_usermode_loop+0x1d2/0x200 arch/x86/entry/common.c:163
  prepare_exit_to_usermode arch/x86/entry/common.c:194 [inline]
  syscall_return_slowpath arch/x86/entry/common.c:274 [inline]
  do_syscall_64+0x45f/0x580 arch/x86/entry/common.c:299
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x413511
Code: 75 14 b8 03 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 04 1b 00 00 c3 48
83 ec 08 e8 0a fc ff ff 48 89 04 24 b8 03 00 00 00 0f 05 <48> 8b 3c 24 48
89 c2 e8 53 fc ff ff 48 89 d0 48 83 c4 08 48 3d 01
RSP: 002b:00007ffc424ea2e0 EFLAGS: 00000293 ORIG_RAX: 0000000000000003
RAX: 0000000000000000 RBX: 0000000000000007 RCX: 0000000000413511
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000006
RBP: 0000000000000001 R08: 0000000029a2fc22 R09: 0000000029a2fc26
R10: 00007ffc424ea3c0 R11: 0000000000000293 R12: 000000000075c9a0
R13: 000000000075c9a0 R14: 0000000000761938 R15: ffffffffffffffff

Allocated by task 2776:
  save_stack+0x1b/0x80 mm/kasan/common.c:69
  set_track mm/kasan/common.c:77 [inline]
  __kasan_kmalloc mm/kasan/common.c:487 [inline]
  __kasan_kmalloc.constprop.0+0xbf/0xd0 mm/kasan/common.c:460
  kmalloc include/linux/slab.h:552 [inline]
  kzalloc include/linux/slab.h:748 [inline]
  usb_alloc_dev+0x51/0xf95 drivers/usb/core/usb.c:583
  hub_port_connect drivers/usb/core/hub.c:5004 [inline]
  hub_port_connect_change drivers/usb/core/hub.c:5213 [inline]
  port_event drivers/usb/core/hub.c:5359 [inline]
  hub_event+0x15c0/0x3640 drivers/usb/core/hub.c:5441
  process_one_work+0x92b/0x1530 kernel/workqueue.c:2269
  worker_thread+0x96/0xe20 kernel/workqueue.c:2415
  kthread+0x318/0x420 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352

Freed by task 16007:
  save_stack+0x1b/0x80 mm/kasan/common.c:69
  set_track mm/kasan/common.c:77 [inline]
  __kasan_slab_free+0x130/0x180 mm/kasan/common.c:449
  slab_free_hook mm/slub.c:1423 [inline]
  slab_free_freelist_hook mm/slub.c:1470 [inline]
  slab_free mm/slub.c:3012 [inline]
  kfree+0xe4/0x2f0 mm/slub.c:3953
  device_release+0x71/0x200 drivers/base/core.c:1064
  kobject_cleanup lib/kobject.c:693 [inline]
  kobject_release lib/kobject.c:722 [inline]
  kref_put include/linux/kref.h:65 [inline]
  kobject_put+0x171/0x280 lib/kobject.c:739
  put_device+0x1b/0x30 drivers/base/core.c:2213
  usb_put_dev+0x1f/0x30 drivers/usb/core/usb.c:725
  yurex_delete+0x40/0x330 drivers/usb/misc/yurex.c:95
  kref_put include/linux/kref.h:65 [inline]
  yurex_release+0x66/0x90 drivers/usb/misc/yurex.c:392
  __fput+0x2d7/0x840 fs/file_table.c:280
  task_work_run+0x13f/0x1c0 kernel/task_work.c:113
  tracehook_notify_resume include/linux/tracehook.h:188 [inline]
  exit_to_usermode_loop+0x1d2/0x200 arch/x86/entry/common.c:163
  prepare_exit_to_usermode arch/x86/entry/common.c:194 [inline]
  syscall_return_slowpath arch/x86/entry/common.c:274 [inline]
  do_syscall_64+0x45f/0x580 arch/x86/entry/common.c:299
  entry_SYSCALL_64_after_hwframe+0x49/0xbe

The buggy address belongs to the object at ffff8881b1859980
  which belongs to the cache kmalloc-2k of size 2048
The buggy address is located 72 bytes inside of
  2048-byte region [ffff8881b1859980, ffff8881b185a180)
The buggy address belongs to the page:
page:ffffea0006c61600 refcount:1 mapcount:0 mapping:ffff8881da00c000
index:0x0 compound_mapcount: 0
flags: 0x200000000010200(slab|head)
raw: 0200000000010200 0000000000000000 0000000100000001 ffff8881da00c000
raw: 0000000000000000 00000000000f000f 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
  ffff8881b1859880: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
  ffff8881b1859900: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
> ffff8881b1859980: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                               ^
  ffff8881b1859a00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
  ffff8881b1859a80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================

A quick look at the yurex_delete() shows that we drop the reference
to the usb_device before releasing any buffers associated with the
device. Delay the reference drop until we have finished the cleanup.

[0] https://lore.kernel.org/lkml/0000000000003f86d8058f0bd671@google.com/

Fixes: 6bc235a2e24a5e ("USB: add driver for Meywa-Denki & Kayac YUREX")
Cc: Jiri Kosina <jkosina@suse.cz>
Cc: Tomoki Sekiyama <tomoki.sekiyama@gmail.com>
Cc: Oliver Neukum <oneukum@suse.com>
Cc: andreyknvl@google.com
Cc: gregkh@linuxfoundation.org
Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: syzkaller-bugs@googlegroups.com
Cc: dtor@chromium.org
Reported-by: syzbot+d1fedb1c1fdb07fca507@syzkaller.appspotmail.com
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/usb/misc/yurex.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/misc/yurex.c b/drivers/usb/misc/yurex.c
index 7b306aa22d25..6715a128e6c8 100644
--- a/drivers/usb/misc/yurex.c
+++ b/drivers/usb/misc/yurex.c
@@ -92,7 +92,6 @@ static void yurex_delete(struct kref *kref)
 
 	dev_dbg(&dev->interface->dev, "%s\n", __func__);
 
-	usb_put_dev(dev->udev);
 	if (dev->cntl_urb) {
 		usb_kill_urb(dev->cntl_urb);
 		kfree(dev->cntl_req);
@@ -108,6 +107,7 @@ static void yurex_delete(struct kref *kref)
 				dev->int_buffer, dev->urb->transfer_dma);
 		usb_free_urb(dev->urb);
 	}
+	usb_put_dev(dev->udev);
 	kfree(dev);
 }
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
