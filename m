Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1595A8A4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 04:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jGP4DwH6n2zDqUms7tIdkbfuiF1DFf06iXHydRgO0GA=; b=hMu56FFRYmArYA
	C18v7PriqHDFO4Hp8ffp1asJM03lAWpuAovCC85znEQzNr3veWY81FaGXBb2PIHfMVm9rg3Q5z0sD
	ZVKlpjAyoQv+tYtWzqkkrL/2SHKL6fIzak5cpitQD8oVlpeL5XmKWnKwEfZ8mVGFUwzo8mBoDCtE7
	UfaqgP1b9KLtQENdE+DFN8IMjQGwSCfurCFqyrZb6Byl8wTYayO9uYLz+M6h/Df8JJdrNc7qMjFMm
	x6KuBJuET3/8+K1EhyDXyBh9LNINrKX3bjiwioIamhzyjikDN9tWpN0vXiT8WyCeD10s7n1A98Vfy
	k1pnqSiYZLzX4Djh5GyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh3No-0006w8-JV; Sat, 29 Jun 2019 02:46:32 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh3MG-0004qH-FI
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 02:44:59 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2F130804E4552ACA6848;
 Sat, 29 Jun 2019 10:44:51 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Sat, 29 Jun 2019 10:44:41 +0800
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
To: <rjw@rjwysocki.net>, <catalin.marinas@arm.com>, <james.morse@arm.com>
Subject: [RFC PATCH v2 0/3] Support CPU hotplug for ARM64
Date: Sat, 29 Jun 2019 10:42:32 +0800
Message-ID: <1561776155-38975-1-git-send-email-wangxiongfeng2@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_194456_838256_50DA329D 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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

Changelog:

v1 -> v2:
	rebase the thrid patch to the lastest kernel

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
