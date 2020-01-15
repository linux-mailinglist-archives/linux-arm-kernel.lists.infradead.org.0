Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6719513C61F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:34:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/AVEZWuPmtNxAH3sNXRRIwB2PreOHt0koIx/UfO4kI=; b=JcJrWlHZORUmlk
	EhguW73P7X0Cnw6Kox+YXGaza0lz4n1HTltTuqwVQkVzxFxJF5GXyvvhFVLd8jwT26O3MWTeOFDCm
	NU+9W+fOX4D7PqkaYyJmb+/sm25lYgjXdMSBMGdWZeL9sIlEynkaHHWO37BlM9ta9uxPEsaRzezdK
	XOM0X4OZgYZQef28SMw5NrLDx651tyon7DWJrEbvEAqBouipASWbVsiuD3c2fM56o+kkuGQFX97jv
	sz+wVYnrKjRJVSk/DGGPzQ/8D4DoZcpBW8TiQw8RvA/d1OImPFPnGO792JdBIQuiFhen3+CCdWlRK
	xhprxiv5awMmGHlcn37w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjkC-0001gE-0c; Wed, 15 Jan 2020 14:34:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjji-0001Si-Bq
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:33:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BBD71007;
 Wed, 15 Jan 2020 06:33:33 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1F5C3F68E;
 Wed, 15 Jan 2020 06:33:32 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: [RFC PATCH 1/3] arm64: mm: Always update TCR_EL1 from
 __cpu_set_tcr_t0sz()
Date: Wed, 15 Jan 2020 14:33:20 +0000
Message-Id: <20200115143322.214247-2-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115143322.214247-1-james.morse@arm.com>
References: <20200115143322.214247-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_063334_441662_B72E311F 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Because only the idmap sets a non-standard T0SZ, __cpu_set_tcr_t0sz()
can check for platforms that need to do this using
__cpu_uses_extended_idmap() before doing its work.

The idmap is only built with enough levels, (and T0SZ bits) to map
its single page.

To allow hibernate, and then kexec to idmap their single page copy
routines, __cpu_set_tcr_t0sz() needs to consider additional users,
who may need a different number of levels/T0SZ-bits to the idmap.
(i.e. VA_BITS may be enough for the idmap, but not hibernate/kexec)

Always read TCR_EL1, and check whether any work needs doing for
this request. __cpu_uses_extended_idmap() remains as it is used
by KVM, whose idmap is also part of the kernel image.

This mostly affects the cpuidle path, where we now get an extra
system register read .

CC: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>
CC: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/mmu_context.h | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 3827ff4040a3..09ecbfd0ad2e 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -79,16 +79,15 @@ static inline bool __cpu_uses_extended_idmap_level(void)
 }
 
 /*
- * Set TCR.T0SZ to its default value (based on VA_BITS)
+ * Ensure TCR.T0SZ is set to the provided value.
  */
 static inline void __cpu_set_tcr_t0sz(unsigned long t0sz)
 {
-	unsigned long tcr;
+	unsigned long tcr = read_sysreg(tcr_el1);
 
-	if (!__cpu_uses_extended_idmap())
+	if ((tcr & TCR_T0SZ_MASK) >> TCR_T0SZ_OFFSET == t0sz)
 		return;
 
-	tcr = read_sysreg(tcr_el1);
 	tcr &= ~TCR_T0SZ_MASK;
 	tcr |= t0sz << TCR_T0SZ_OFFSET;
 	write_sysreg(tcr, tcr_el1);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
