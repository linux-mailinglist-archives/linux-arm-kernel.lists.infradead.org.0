Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 443D4B5A09
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 05:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hth4Fo4vk7sHDqV0KkanzA4Ghh1BEX8aSNd1Og85K08=; b=MuJJ1iwkkHJark
	cDCLueyc/5s0BdHEtlzTPNhOuX1YCNY4O/3qjf+XGpD/mSa7fIGPSiPZK14ukm/cVaBLjBLCzb+ag
	2gA8aZU79gYFAns8YcnxVTlA+HyR7RIA0VIrpgnCVDDg1glNHxyTOAaggO2Akm/Q2APFiDEB03Fy2
	fuzlLilNCaErxPNhIAOFiPji2zEIjT32Y44rQtZppayDAqE6mEqNBlYsDHcsJ5huYQoG4Fwq4G+Gt
	ItmPVGAZwvEeGwTlcsleWvtXDVXhXDrHrr6DJJwIbj9dKM4IqGKAW9UotRTt0YBFbXIhpvLk/kzJc
	gzHeVnZrMmxj7BG0ktYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAQM6-0003lI-Ty; Wed, 18 Sep 2019 03:10:11 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAQLs-0003kH-QH
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 03:09:58 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5335DCD535D0C4A99B76;
 Wed, 18 Sep 2019 11:09:44 +0800 (CST)
Received: from use12-sp2.huawei.com (10.67.189.177) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Wed, 18 Sep 2019 11:09:36 +0800
From: chenzefeng <chenzefeng2@huawei.com>
To: <linux@armlinux.org.uk>, <matthias.schiffer@ew.tq-group.com>,
 <tglx@linutronix.de>, <info@metux.net>, <gregkh@linuxfoundation.org>
Subject: [PATCH] arm:unwind: fix incorrect backtrace with unwind_table
Date: Wed, 18 Sep 2019 11:09:34 +0800
Message-ID: <1568776174-84980-1-git-send-email-chenzefeng2@huawei.com>
X-Mailer: git-send-email 1.8.5.6
MIME-Version: 1.0
X-Originating-IP: [10.67.189.177]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_200957_025773_E076D36E 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: cj.chengjian@huawei.com, linux-kernel@vger.kernel.org,
 chenzefeng2@huawei.com, nixiaoming@huawei.com,
 linux-arm-kernel@lists.infradead.org, liucheng32@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For arm, if the CONFIG_ARM_UNWIND is open, when insmod a module,
the init section add to the unwind_table, the code path as follow:
	load_module
	--->post_relocation
	------->module_finalize
	----------->maps[ARM_SEC_INIT].txt_sec = s
	----------->unwind_table_add

Later if load_module success, the init section's memory will be
vfree, the code path as follow:
	load_module
	--->do_init_module
	------->freeinit->module_init = mod->init_layout.base
	------->schedule_work(&init_free_wq)
	----------->do_free_init
	--------------->vfree(freeinit->module_init)

But after the init section's had been vfree, but it's unwind_table
is not removed.

The issue as follow:
When insmod module A, the system alloc the "Addr1" for it's init
text section, and add it to the unwind_table list, after insmod
success, the "Addr1" would be vfreed.
Unfortunately, later insmod module B, the system alloc the "Addr1"
for it's text section, and add it to the unwind_table list, too.
And we dumpstack in module B, we may get a incorrect backtrace.

Signed-off-by: chenzefeng <chenzefeng2@huawei.com>
---
 arch/arm/kernel/module.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm/kernel/module.c b/arch/arm/kernel/module.c
index deef17f..438ed67 100644
--- a/arch/arm/kernel/module.c
+++ b/arch/arm/kernel/module.c
@@ -410,7 +410,20 @@ int module_finalize(const Elf32_Ehdr *hdr, const Elf_Shdr *sechdrs,
 	int i;
 
 	for (i = 0; i < ARM_SEC_MAX; i++)
-		if (mod->arch.unwind[i])
+		if (mod->arch.unwind[i]) {
 			unwind_table_del(mod->arch.unwind[i]);
+			mod->arch.unwind[i] = NULL;
+		}
+#endif
+}
+
+void
+module_arch_freeing_init(struct module *mod)
+{
+#ifdef CONFIG_ARM_UNWIND
+	if (mod->arch.unwind[ARM_SEC_INIT]) {
+		unwind_table_del(mod->arch.unwind[ARM_SEC_INIT]);
+		mod->arch.unwind[ARM_SEC_INIT] = NULL;
+	}
 #endif
 }
-- 
1.8.5.6


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
