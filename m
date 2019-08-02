Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A417F741
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1juaOBbORkjFVj7Xy2lQLuZym3C6p8DeF8AklMa+Ik=; b=amaz7KHSzDgy0q
	HFApJPU7z0qCLT185zJOpnpabi1ouavysFQUMAIcARcTqM3N0hr3+cIkojgxA5cYBOEiUnhi2Wu8Q
	Bo6YnnTCDiq1IPk8h+dBmTdQUFUBuzql4VuGjAjF16JyUdkJp3bCzSiNNU5sb0YmFsGgThJ9M4ufh
	E2uTtNDrVhGxCl1zRHvroHe6GVLJWvdkPYaZtXLMJQBmTSwKq+keGLIFA5zOPPQfzj7Torz0QIf1M
	Wq7pqUQ8MF++9hBaCBUAg1nPQSr9kIgxcHnWja263S12HOoMuSZWsl2WB6n/UtKiOEjjj+zp764mr
	2u3IrKaOjsm88vVj2sTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htX3G-000141-Jb; Fri, 02 Aug 2019 12:52:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htX2s-0000ck-GX
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:52:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D7CA1597;
 Fri,  2 Aug 2019 05:52:30 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ABA4F3F71F;
 Fri,  2 Aug 2019 05:52:28 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will.deacon@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 2/2] arm64: Document ICC_CTLR_EL3.PMHE setting requirements
Date: Fri,  2 Aug 2019 13:52:08 +0100
Message-Id: <20190802125208.73162-3-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190802125208.73162-1-maz@kernel.org>
References: <20190802125208.73162-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_055230_589840_2D5C568D 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, maz@kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 huawei.libin@huawei.com, guohanjun@huawei.com, liwei391@huawei.com,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It goes without saying, but better saying it: the kernel expects
ICC_CTLR_EL3.PMHE to have the same value across all CPUs, and
for that setting not to change during the lifetime of the kernel.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 Documentation/arm64/booting.rst | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/arm64/booting.rst b/Documentation/arm64/booting.rst
index d3f3a60fbf25..5d78a6f5b0ae 100644
--- a/Documentation/arm64/booting.rst
+++ b/Documentation/arm64/booting.rst
@@ -213,6 +213,9 @@ Before jumping into the kernel, the following conditions must be met:
 
       - ICC_SRE_EL3.Enable (bit 3) must be initialiased to 0b1.
       - ICC_SRE_EL3.SRE (bit 0) must be initialised to 0b1.
+      - ICC_CTLR_EL3.PMHE (bit 6) must be set to the same value across
+        all CPUs the kernel is executing on, and must stay constant
+        for the lifetime of the kernel.
 
   - If the kernel is entered at EL1:
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
