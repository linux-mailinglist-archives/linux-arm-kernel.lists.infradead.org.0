Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EA93CE4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9LQoLLBXUZY2d8e2Vj6tC2Jsapv+hVo18GOT4A09LNs=; b=NjbYx4ra1oyQBp
	fMk85Xtp9dhO7HH5vqM7py3cjMHopWrwavBKdv5SWKFRt3MNYe6xyB3U0oJlzXOGBfSZAlDcm86gL
	sN/YGTvilrio7p8yB3aBYiQXrL+o81APMD5tIi/WZttvnIBI6e5mW9YoN2TGogoMllwlN8rH/D8Zw
	1r6QFoghFeApBCKlV0mTrpokI+jwn8QrXJvgZ6+Sv55wL6ZT+EMg5/a3uy4RUQWIVNiEwCKbErys4
	l74TB8rnJTx2dzqAxrcVsb1sq3E2/7kMsdJw3uUXVxXsZByLxYw8onHE035ZF+B2QQ8Z624kXmFyc
	+TKUI3/zyNXd3sXvq12Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahZQ-00085f-C1; Tue, 11 Jun 2019 14:16:16 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahXa-000573-6e
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:14:24 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 50806A18E011A450749A;
 Tue, 11 Jun 2019 22:14:12 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Tue, 11 Jun 2019 22:14:06 +0800
From: John Garry <john.garry@huawei.com>
To: <bhelgaas@google.com>, <lorenzo.pieralisi@arm.com>, <arnd@arndb.de>
Subject: [PATCH v4 0/3] Fix ARM64 crash for accessing unmapped IO port regions
Date: Tue, 11 Jun 2019 22:12:51 +0800
Message-ID: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_071422_482532_B18E40A9 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: rjw@rjwysocki.net, wangkefeng.wang@huawei.com, linux-pci@vger.kernel.org,
 John Garry <john.garry@huawei.com>, will.deacon@arm.com, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It was reported some time ago that arm64 systems will crash if a driver
attempts to access IO port addresses when the PCI IO port region has not
been mapped [1].

More recently, a similar crash is where the system PCI host probe fails,
and the IPMI driver crashes the system while attempting to do some IO port
accesses [2].

This patchset attempts to keep the kernel alive in such situations by
rejecting logical PIO access to PCI IO regions until PCI IO port regions
have been mapped. Accesses to unmapped regions fail silently, mimicking
x86 behaviour.

The previous versions of this patchset also included a patch to reject IO
port resource requests until PCI IO port regions have been mapped
(in a pci_remap_iospace() call). However I decided to drop it since the
validity of the patch was strongly in doubt - [3].

1. https://lore.kernel.org/linux-pci/56F209A9.4040304@huawei.com
2. https://lore.kernel.org/linux-arm-kernel/e6995b4a-184a-d8d4-f4d4-9ce75d8f47c0@huawei.com/
3. https://lore.kernel.org/linux-pci/20190326224810.GY24180@google.com/

Differences to v3 patchset:
https://lkml.org/lkml/2019/4/4/1294
- Drop patch to reject IO port requests
- Make unmapped IO port accesses silent, mimicking x86

Differences to v2 patchset:
https://lkml.org/lkml/2019/3/20/788
- Add a patch to use logical PIO accessors for !CONFIG_INDIRECT_PIO
- Some tidy-up according to Andy's review

Differences to v1 patchset:
https://lkml.org/lkml/2019/3/14/630
- Drop f71805f fix - it can be done in a separate patchset
- Change implementation in resource.c patch to check if parent of region
  is ioport_resource
- Add patch to fix some logic_pio.c prints

John Garry (3):
  lib: logic_pio: Use logical PIO low-level accessors for
    !CONFIG_INDIRECT_PIO
  lib: logic_pio: Reject accesses to unregistered CPU MMIO regions
  lib: logic_pio: Fix up a print

 include/linux/logic_pio.h |   7 ++-
 lib/logic_pio.c           | 116 ++++++++++++++++++++++++++++----------
 2 files changed, 90 insertions(+), 33 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
