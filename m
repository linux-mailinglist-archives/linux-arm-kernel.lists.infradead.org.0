Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CA1D863D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 05:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+jx4iElPFXLDUZvKeyj6qJ4KuNAH7WjpqzXJqZTVoNo=; b=XCwgjgcldrsO0d
	Lr1q6XRQmO18uI3/+ceaaEdrC5EtaNKb7vXZyGfwmj/jzaLxCqWjysNtGxS/qRdVzwKYZZ1QGbWHZ
	U/4b6t34P8MG0IUts8sxBx4ZlCw5dGDIy369dt9GxXF/WlwlqsOaEpBaiAhzSPqFiSUtlle+TSIvS
	nyIeqVgB7QBCxlj0pwfki+4XxPUoe1fG6IZnf+Z5hHYjbaIJ36wDbxxvteoEGY7RuELQW/W7zUFEQ
	XVyJ5WfuAzvWlY+D7f5cvcML+SCyub+Cx1CKY4nM4DUXMEodzv8Ico/prAx1bweqqhVtnnUiKM8zt
	A2KVhoyCKQ+5gRYJ7QtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKZly-0007Oy-K4; Wed, 16 Oct 2019 03:14:50 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKZlj-0007ON-ES
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 03:14:37 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 42AB2E5B0349644C8421;
 Wed, 16 Oct 2019 11:14:22 +0800 (CST)
Received: from huawei.com (10.175.101.78) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Wed, 16 Oct 2019
 11:14:20 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] arm64: sysreg: fix wrong PAR_EL1.F macro
Date: Wed, 16 Oct 2019 11:42:57 +0800
Message-ID: <1571197377-48650-1-git-send-email-yangyingliang@huawei.com>
X-Mailer: git-send-email 1.8.3
MIME-Version: 1.0
X-Originating-IP: [10.175.101.78]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_201435_654173_8FEAE91D 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the spec:

Field descriptions
The PAR_EL1 bit assignments are:
For all register layouts:
    F, bit [0]
               Indicates whether the conversion completed successfully.
               0 VA to PA conversion completed successfully.
               1 VA to PA conversion aborted.

PAR_EL1.F is bit0.

Fixes: e8620cff9994 ("arm64: sysreg: Add some field definitions for PAR_EL1")
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 arch/arm64/include/asm/sysreg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 972d196..6e919fa 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -212,7 +212,7 @@
 #define SYS_FAR_EL1			sys_reg(3, 0, 6, 0, 0)
 #define SYS_PAR_EL1			sys_reg(3, 0, 7, 4, 0)
 
-#define SYS_PAR_EL1_F			BIT(1)
+#define SYS_PAR_EL1_F			BIT(0)
 #define SYS_PAR_EL1_FST			GENMASK(6, 1)
 
 /*** Statistical Profiling Extension ***/
-- 
1.8.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
