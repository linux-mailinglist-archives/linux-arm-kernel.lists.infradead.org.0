Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4CF82CDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 09:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eBuABrPbFE5ss2DPvyoUBPgcwO3RlxVs2Bc3Bqft318=; b=nQIuivYjAaWePP
	W5TJLJ3rKMf09gG8IO1zMU31+toCqTExtsPIolt4cHc8ZoB7iqMn3t1Dv+UZ2pMBuUzLmPDwswMvU
	yG9qfYWu/yjVQ66rfQJ5ieEf+kkq7bT57LNA80HbSBmxi27opIGsScxr4hapQ7IzfzpM5Q1gRid2n
	5E928/g2vTrEjM9LNpcHom788sQ9CkWvWgGYgQQieNFTXm0kd6Of0MP78FUYqJ3OVAkPiw7ydsxNi
	fYpV/msg0Nr9ZW+MleQ7FtpZD/6kZQm+K169UAE/SRY95Cwxkfuvomap/bfnAShCne/rTEjy/m5UK
	Ol0xxaePwyC/XOuzujag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hutxu-0006xy-Im; Tue, 06 Aug 2019 07:33:02 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hutxf-0006xE-Ok
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 07:32:49 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 803F17FA8FB05895B325;
 Tue,  6 Aug 2019 15:32:44 +0800 (CST)
Received: from use12-sp2.huawei.com (10.67.189.177) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Tue, 6 Aug 2019 15:32:38 +0800
From: chenzefeng <chenzefeng2@huawei.com>
To: <linux@armlinux.org.uk>, <kstewart@linuxfoundation.org>,
 <tglx@linutronix.de>, <allison@lohutok.net>, <jeyu@kernel.org>,
 <gregkh@linuxfoundation.org>, <matthias.schiffer@ew.tq-group.com>
Subject: [PATCH] arm:unwind: fix backtrace error with unwind_table
Date: Tue, 6 Aug 2019 15:32:36 +0800
Message-ID: <1565076756-71682-1-git-send-email-chenzefeng2@huawei.com>
X-Mailer: git-send-email 1.8.5.6
MIME-Version: 1.0
X-Originating-IP: [10.67.189.177]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_003247_995167_00675338 
X-CRM114-Status: UNSURE (   9.55  )
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
Cc: stable@vger.kernel.org, chenzefeng2@huawei.com, nixiaoming@huawei.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For arm, when load_module success, the mod->init_layout.base would
be free in function do_free_init, but do not remove it's unwind table
from the unwind_tables' list. And later the above mod->init_layout.base
would alloc for another module's text section, and add to the
unwind_tables which cause one address can found more than two unwind table
in the unwind_tables' list, therefore may get to errror unwind table to
backtrace, and get an error backtrace.

Signed-off-by: chenzefeng <chenzefeng2@huawei.com>
---
 arch/arm/kernel/module.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/arch/arm/kernel/module.c b/arch/arm/kernel/module.c
index deef17f..a4eb5f4 100644
--- a/arch/arm/kernel/module.c
+++ b/arch/arm/kernel/module.c
@@ -403,14 +403,24 @@ int module_finalize(const Elf32_Ehdr *hdr, const Elf_Shdr *sechdrs,
 	return 0;
 }
 
-void
-module_arch_cleanup(struct module *mod)
-{
+
 #ifdef CONFIG_ARM_UNWIND
+void module_arch_cleanup(struct module *mod)
+{
 	int i;
 
 	for (i = 0; i < ARM_SEC_MAX; i++)
-		if (mod->arch.unwind[i])
+		if (mod->arch.unwind[i]) {
 			unwind_table_del(mod->arch.unwind[i]);
-#endif
+			mod->arch.unwind[i] = NULL;
+		}
 }
+
+void module_arch_freeing_init(struct module *mod)
+{
+	if (mod->arch.unwind[ARM_SEC_INIT]) {
+		unwind_table_del(mod->arch.unwind[ARM_SEC_INIT]);
+		mod->arch.unwind[ARM_SEC_INIT] = NULL;
+	}
+}
+#endif
-- 
1.8.5.6


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
