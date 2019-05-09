Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5DA18CC7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 17:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1ntQB63YKzG8H0uSw9VssgqrHO/I6GjeZOTP32f1o7c=; b=Detl5mZyj4qzNR
	P398T/NYP+U1yOJ9+uuf2clfKdJ9vhXL1hB1wwWo+SIdZfwkkKDJCarQIwNyzaJ19VgX7O9f5zbee
	Hr77Ee2AvtZGfWCIuQTy6bIQXiyFYmnbInB/NU/XxOn3wZrs07MLltDkpcemiNplPf0tYgzfJNxYQ
	r3Vw95ovLg5SKbQSeNNmHg0ABUTxoctOrGTjmOF1nSx6GUw7GMamrpaG1zoEgmiVAV+ESe8C4cqTo
	4zyv/dUe4ZdSOYq8r2QuZ2G79je1NdGittEwxf1n8PBwt3PS/1air4Fal7ZflWoU0y7s14WHQqEHq
	2xd6HsbFUkS3VJqX+m4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOkmi-0000WB-C0; Thu, 09 May 2019 15:16:36 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkmb-0000J9-3h
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 15:16:31 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id F276B41CE563CF9AD641;
 Thu,  9 May 2019 23:16:08 +0800 (CST)
Received: from huawei.com (10.184.227.228) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Thu, 9 May 2019
 23:16:01 +0800
From: Wang Hai <wanghai26@huawei.com>
To: <alexander.shishkin@linux.intel.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>
Subject: [PATCH] stm class: fix possible double-free in
 stm_source_register_device()
Date: Thu, 9 May 2019 23:14:24 +0800
Message-ID: <20190509151424.31612-1-wanghai26@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.184.227.228]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_081629_908241_C9C0A81F 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: wanghai26@huawei.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Syzkaller report this:

BUG: KASAN: double-free or invalid-free in stm_source_register_device+0x137/0x2b0 [stm_core]

CPU: 1 PID: 6763 Comm: syz-executor.0 Tainted: G         C        5.0.0+ #5
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.10.2-1ubuntu1 04/01/2014
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0xa9/0x10e lib/dump_stack.c:113
 print_address_description+0x65/0x270 mm/kasan/report.c:187
 kasan_report_invalid_free+0x60/0xa0 mm/kasan/report.c:278
 __kasan_slab_free+0x159/0x180 mm/kasan/common.c:438
 slab_free_hook mm/slub.c:1429 [inline]
 slab_free_freelist_hook mm/slub.c:1456 [inline]
 slab_free mm/slub.c:3003 [inline]
 kfree+0xe1/0x270 mm/slub.c:3955
 stm_source_register_device+0x137/0x2b0 [stm_core]
 do_one_initcall+0xbc/0x47d init/main.c:887
 do_init_module+0x1b5/0x547 kernel/module.c:3456
 load_module+0x6405/0x8c10 kernel/module.c:3804
 __do_sys_finit_module+0x162/0x190 kernel/module.c:3898
 do_syscall_64+0x9f/0x450 arch/x86/entry/common.c:290
 entry_SYSCALL_64_after_hwframe+0x49/0xbe

Allocated by task 6763:
 set_track mm/kasan/common.c:87 [inline]
 __kasan_kmalloc.constprop.3+0xa0/0xd0 mm/kasan/common.c:497
 stm_source_register_device+0x5c/0x2b0 [stm_core]
 do_one_initcall+0xbc/0x47d init/main.c:887
 do_init_module+0x1b5/0x547 kernel/module.c:3456
 load_module+0x6405/0x8c10 kernel/module.c:3804
 __do_sys_finit_module+0x162/0x190 kernel/module.c:3898
 do_syscall_64+0x9f/0x450 arch/x86/entry/common.c:290
 entry_SYSCALL_64_after_hwframe+0x49/0xbe

Freed by task 6763:
 set_track mm/kasan/common.c:87 [inline]
 __kasan_slab_free+0x130/0x180 mm/kasan/common.c:459
 slab_free_hook mm/slub.c:1429 [inline]
 slab_free_freelist_hook mm/slub.c:1456 [inline]
 slab_free mm/slub.c:3003 [inline]
 kfree+0xe1/0x270 mm/slub.c:3955
 device_release+0x78/0x200 drivers/base/core.c:1064
 kobject_cleanup lib/kobject.c:662 [inline]
 kobject_release lib/kobject.c:691 [inline]
 kref_put include/linux/kref.h:67 [inline]
 kobject_put+0x2a8/0x400 lib/kobject.c:708
 put_device+0x1c/0x30 drivers/base/core.c:2205
 stm_source_register_device+0x12f/0x2b0 [stm_core]
 do_one_initcall+0xbc/0x47d init/main.c:887
 do_init_module+0x1b5/0x547 kernel/module.c:3456
 load_module+0x6405/0x8c10 kernel/module.c:3804
 __do_sys_finit_module+0x162/0x190 kernel/module.c:3898
 do_syscall_64+0x9f/0x450 arch/x86/entry/common.c:290
 entry_SYSCALL_64_after_hwframe+0x49/0xbe

int stm_source_register_device(){
	...
    src->dev.release = stm_source_device_release;
	...
    err:
         put_device(&src->dev);
         kfree(src);

         return err;
}
In the error handling path of stm_source_register_device
Put_device() causes stm_source_device_release->kfree(src) to be
called. So calling kfree(src) again will cause double free

Fixes: 7bd1d4093c2f ("stm class: Introduce an abstraction for System Trace Module devices")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wang Hai <wanghai26@huawei.com>
---
 drivers/hwtracing/stm/core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/hwtracing/stm/core.c b/drivers/hwtracing/stm/core.c
index e55b902560de..181e7ff1ec4f 100644
--- a/drivers/hwtracing/stm/core.c
+++ b/drivers/hwtracing/stm/core.c
@@ -1276,7 +1276,6 @@ int stm_source_register_device(struct device *parent,
 
 err:
 	put_device(&src->dev);
-	kfree(src);
 
 	return err;
 }
-- 
2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
