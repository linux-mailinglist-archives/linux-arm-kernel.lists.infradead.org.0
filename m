Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFE059914
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PCIItv0OVohBF2l8CrekYuSUBXRtChfP4xZaBEs2hew=; b=IrLSAR/t+a1sTi
	8POvOfS+ouBfzlzuVANJfz1l+/BUNS2RevU4UkEIicbFEDBmYxmVS18e1ZpEKjOKPKkhIBfjbD7ul
	JZxhOtmdWXS/bENYp0oQ2EgEy9icfNBwzD56i79DAt8uDkho1stpZ7KldyEFzaUotUloGW/U/7MyA
	y8v03STkyLBHyIZm/xj2k9Njcq51M6w4acxXpULED3M9IqEZEPja7NU0I+5lIxOkbvOh+3BMyKwxV
	ZOgn6Y/38ZZoeFjcoSyXywjugPxtpdEllp8kQ2R0Jesr/oYJAO0iVmZzHsN+Oc72Qma6Gx/HGaY8K
	O4aFrRA8zDcrHrtQZQpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgorf-0007XO-Gs; Fri, 28 Jun 2019 11:16:23 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgorN-0007Un-Ow
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:16:07 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 061F98E3C0FF2DE709F3;
 Fri, 28 Jun 2019 19:15:56 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Fri, 28 Jun 2019 19:15:49 +0800
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
To: <rjw@rjwysocki.net>, <catalin.marinas@arm.com>, <james.morse@arm.com>
Subject: [PATCH RFC 0/3] Support CPU hotplug for ARM64
Date: Fri, 28 Jun 2019 19:13:09 +0800
Message-ID: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_041606_040860_94957B39 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: xiexiuqi@huawei.com, jonathan.cameron@huawei.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, guohanjun@huawei.com, wangxiongfeng2@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset mark all the GICC node in MADT as possible CPUs even though it
is disabled. But only those enabled GICC node are marked as present CPUs.
So that kernel will initialize some CPU related data structure in advance before
the CPU is actually hot added into the system. This patchset also implement 
'acpi_(un)map_cpu()' and 'arch_(un)register_cpu()' for ARM64. These functions are
needed to enable CPU hotplug.

To support CPU hotplug, we need to add all the possible GICC node in MADT
including those CPUs that are not present but may be hot added later. Those
CPUs are marked as disabled in GICC nodes.

Xiongfeng Wang (3):
  ACPI / scan: evaluate _STA for processors declared via ASL Device
    statement
  arm64: mark all the GICC nodes in MADT as possible cpu
  arm64: Add CPU hotplug support

 arch/arm64/kernel/acpi.c  | 22 ++++++++++++++++++++++
 arch/arm64/kernel/setup.c | 19 ++++++++++++++++++-
 arch/arm64/kernel/smp.c   | 11 +++++------
 drivers/acpi/scan.c       | 12 ++++++++++++
 4 files changed, 57 insertions(+), 7 deletions(-)

-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
