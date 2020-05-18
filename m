Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EEE1D7D55
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QWLDRyL5pl8NWb/ATgz1BsxmOFTGgrZ9UQftmXQTq24=; b=FOT
	DaEpKbHe9lnRT3bOSdjTCMt5fN91NeJoLR/X/Ysubq3nQZBcBCzmxaBF4KQPCTUy6iLhE+BlIP8df
	yRYdrwsojKx6I5zf71fY+4Sr7vXpGpzABkfoq3La017ONpXySlEy/9O68lXyS7XxPJ8skTFi6L2mJ
	mKUwyrPMjFfhomgmcp10s4Q0H59+UYLE4A48HSNgZtZ1K2wiBLyUWfv2yL1788Vhq8f9pbIAY3W9W
	6mz7F1pGlcqRalxOd9pC1lpauB3wlJ/ZZeYMAx26eo7AdHt5nSGVj7g1DDWkGosaPnM1UqraWE52Z
	ktO1WePDWUPTJED8DC7UUBRdR5xPfxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jai21-0002o8-3Z; Mon, 18 May 2020 15:50:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jai1c-0002nJ-RA
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:49:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ECD61101E;
 Mon, 18 May 2020 08:49:55 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B78F43F52E;
 Mon, 18 May 2020 08:49:54 -0700 (PDT)
From: Qais Yousef <qais.yousef@arm.com>
To: Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [RESEND] [PATCH v2 1/3] usb/ohci-platform: Fix a warning when
 hibernating
Date: Mon, 18 May 2020 16:49:29 +0100
Message-Id: <20200518154931.6144-1-qais.yousef@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_084956_964080_743AA56A 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Oliver Neukum <oneukum@suse.de>, Mathias Nyman <mathias.nyman@intel.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tony Prisk <linux@prisktech.co.nz>, Qais Yousef <qais.yousef@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following warning was observed when attempting to suspend to disk
using a USB flash as a swap device.

[  111.779649] ------------[ cut here ]------------
[  111.788382] URB (____ptrval____) submitted while active
[  111.796646] WARNING: CPU: 3 PID: 365 at drivers/usb/core/urb.c:363 usb_submit_urb+0x3d8/0x590
[  111.805417] Modules linked in:
[  111.808584] CPU: 3 PID: 365 Comm: kworker/3:2 Not tainted 5.6.0-rc6-00002-gdfd1731f9a3e-dirty #545
[  111.817796] Hardware name: ARM Juno development board (r2) (DT)
[  111.823896] Workqueue: usb_hub_wq hub_event
[  111.828217] pstate: 60000005 (nZCv daif -PAN -UAO)
[  111.833156] pc : usb_submit_urb+0x3d8/0x590
[  111.837471] lr : usb_submit_urb+0x3d8/0x590
[  111.841783] sp : ffff800018de38b0
[  111.845205] x29: ffff800018de38b0 x28: 0000000000000003
[  111.850682] x27: ffff000970530b20 x26: ffff8000133fd000
[  111.856159] x25: ffff8000133fd000 x24: ffff800018de3b38
[  111.861635] x23: 0000000000000004 x22: 0000000000000c00
[  111.867112] x21: 0000000000000000 x20: 00000000fffffff0
[  111.872589] x19: ffff0009704e7a00 x18: ffffffffffffffff
[  111.878065] x17: 00000000a7c8f4bc x16: 000000002af33de8
[  111.883542] x15: ffff8000133fda88 x14: 0720072007200720
[  111.889019] x13: 0720072007200720 x12: 0720072007200720
[  111.894496] x11: 0000000000000000 x10: 00000000a5286134
[  111.899973] x9 : 0000000000000002 x8 : ffff000970c837a0
[  111.905449] x7 : 0000000000000000 x6 : ffff800018de3570
[  111.910926] x5 : 0000000000000001 x4 : 0000000000000003
[  111.916401] x3 : 0000000000000000 x2 : ffff800013427118
[  111.921879] x1 : 9d4e965b4b7d7c00 x0 : 0000000000000000
[  111.927356] Call trace:
[  111.929892]  usb_submit_urb+0x3d8/0x590
[  111.933852]  hub_activate+0x108/0x7f0
[  111.937633]  hub_resume+0xac/0x148
[  111.941149]  usb_resume_interface.isra.10+0x60/0x138
[  111.946265]  usb_resume_both+0xe4/0x140
[  111.950225]  usb_runtime_resume+0x24/0x30
[  111.954365]  __rpm_callback+0xdc/0x138
[  111.958236]  rpm_callback+0x34/0x98
[  111.961841]  rpm_resume+0x4a8/0x720
[  111.965445]  rpm_resume+0x50c/0x720
[  111.969049]  __pm_runtime_resume+0x4c/0xb8
[  111.973276]  usb_autopm_get_interface+0x28/0x60
[  111.977948]  hub_event+0x80/0x16d8
[  111.981466]  process_one_work+0x2a4/0x748
[  111.985604]  worker_thread+0x48/0x498
[  111.989387]  kthread+0x13c/0x140
[  111.992725]  ret_from_fork+0x10/0x18
[  111.996415] irq event stamp: 354
[  111.999756] hardirqs last  enabled at (353): [<ffff80001019ea1c>] console_unlock+0x504/0x5b8
[  112.008441] hardirqs last disabled at (354): [<ffff8000100a95d0>] do_debug_exception+0x1a8/0x258
[  112.017479] softirqs last  enabled at (350): [<ffff8000100818a4>] __do_softirq+0x4bc/0x568
[  112.025984] softirqs last disabled at (343): [<ffff8000101145a4>] irq_exit+0x144/0x150
[  112.034129] ---[ end trace dc96030b9cf6c8a3 ]---

The problem was tracked down to a missing call to
pm_runtime_set_active() on resume in ohci-platform.

Link: https://lore.kernel.org/lkml/20200323143857.db5zphxhq4hz3hmd@e107158-lin.cambridge.arm.com/
Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Qais Yousef <qais.yousef@arm.com>
CC: Tony Prisk <linux@prisktech.co.nz>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Mathias Nyman <mathias.nyman@intel.com>
CC: Oliver Neukum <oneukum@suse.de>
CC: linux-arm-kernel@lists.infradead.org
CC: linux-usb@vger.kernel.org
CC: linux-kernel@vger.kernel.org
---
 drivers/usb/host/ohci-platform.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/host/ohci-platform.c b/drivers/usb/host/ohci-platform.c
index 7addfc2cbadc..4a8456f12a73 100644
--- a/drivers/usb/host/ohci-platform.c
+++ b/drivers/usb/host/ohci-platform.c
@@ -299,6 +299,11 @@ static int ohci_platform_resume(struct device *dev)
 	}
 
 	ohci_resume(hcd, false);
+
+	pm_runtime_disable(dev);
+	pm_runtime_set_active(dev);
+	pm_runtime_enable(dev);
+
 	return 0;
 }
 #endif /* CONFIG_PM_SLEEP */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
