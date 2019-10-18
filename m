Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7FDDC2A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5J9ZBRRWOy5ykp2b9at3Vk6LBZt2yxOEDyU2uMj+dE=; b=dVrDVltou/+Kij
	4LDUH1CEjSN6SG1sj65TKZMfdcSd5YHyLDw1f3wSIjmzgF4JkUAVclvlzJ9x8xSFRWe9HQhnIO1tK
	df1rlTldtv2QX1+6gVHMY5SwCTL48OtSWcVABnIJxg3S50RXi+2CdDBVMdU9t1EeqSZ8GM5wzMPdE
	m5l6fy3MfbBNu17OBByyme+nfPSOlZpauWl4px9LJJuiEMu/ZGQQ9II7UkoBIXCwqsqze0NlZZr9k
	j53bFp71sSbmP7WZld8xOknILDMqmTS3oscuXHTGuFHvsstamKZUjiw6rqY3PpRp7clVRi+nlA7Cj
	AkgTYpsJF6HctzAQkiEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPMj-0007NG-6k; Fri, 18 Oct 2019 10:20:13 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPGn-0000Jl-It
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:14:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3BD66A64;
 Fri, 18 Oct 2019 03:14:05 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A70733F6C4;
 Fri, 18 Oct 2019 03:14:02 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH v12 22/22] arm64: mm: Display non-present entries in ptdump
Date: Fri, 18 Oct 2019 11:12:48 +0100
Message-Id: <20191018101248.33727-23-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191018101248.33727-1-steven.price@arm.com>
References: <20191018101248.33727-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_031405_706643_9BC00CEE 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Previously the /sys/kernel/debug/kernel_page_tables file would only show
lines for entries present in the page tables. However it is useful to
also show non-present entries as this makes the size and level of the
holes more visible. This aligns the behaviour with x86 which also shows
holes.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm64/mm/dump.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index 9d9b740a86d2..3203dd8e6d0a 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -269,21 +269,22 @@ static void note_page(struct ptdump_state *pt_st, unsigned long addr, int level,
 		if (st->current_prot) {
 			note_prot_uxn(st, addr);
 			note_prot_wx(st, addr);
-			pt_dump_seq_printf(st->seq, "0x%016lx-0x%016lx   ",
+		}
+
+		pt_dump_seq_printf(st->seq, "0x%016lx-0x%016lx   ",
 				   st->start_address, addr);
 
-			delta = (addr - st->start_address) >> 10;
-			while (!(delta & 1023) && unit[1]) {
-				delta >>= 10;
-				unit++;
-			}
-			pt_dump_seq_printf(st->seq, "%9lu%c %s", delta, *unit,
-				   pg_level[st->level].name);
-			if (pg_level[st->level].bits)
-				dump_prot(st, pg_level[st->level].bits,
-					  pg_level[st->level].num);
-			pt_dump_seq_puts(st->seq, "\n");
+		delta = (addr - st->start_address) >> 10;
+		while (!(delta & 1023) && unit[1]) {
+			delta >>= 10;
+			unit++;
 		}
+		pt_dump_seq_printf(st->seq, "%9lu%c %s", delta, *unit,
+				   pg_level[st->level].name);
+		if (st->current_prot && pg_level[st->level].bits)
+			dump_prot(st, pg_level[st->level].bits,
+				  pg_level[st->level].num);
+		pt_dump_seq_puts(st->seq, "\n");
 
 		if (addr >= st->marker[1].start_address) {
 			st->marker++;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
