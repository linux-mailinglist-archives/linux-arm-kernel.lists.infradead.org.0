Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC12F50173
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 07:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAYFio1IXoyGG3ZTJ2paDsaTFDID6fpbbp983UnozZ0=; b=WrGFYWs4nbs3xO
	YdlsHv+hMRNMPxa/19QYOqpeOPwYNkqZuLtlkG7hUIsPHRQOU5uBx0r1TfO5aDcMOzqoHQnoUxD1M
	F+ecA9AdldXCGg4xygs893Er8GrZg63izrv4kzG5kYnQz2KwmSsjEaEXO+tnTJjticS43jlpav3a6
	jHFPxlLBtG/Bhi+lgr3lQihyNzEftJ2QzKDU+n3Zc+XRAGuw1HgXXZJWNW0Rj2T+/h2HFjso8HMmJ
	PFBwsoFEKBsHufc+uVnMrUKit9ZLrZLy+pLg6bLeeV8ReOntMc445fFmX0sceu6zriYsDu34lhbi3
	Ux9SQzPOVU5E9vaF6H5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfHqh-0001TV-Cg; Mon, 24 Jun 2019 05:49:03 +0000
Received: from 213-225-6-159.nat.highway.a1.net ([213.225.6.159]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfHpQ-0000XA-54; Mon, 24 Jun 2019 05:47:44 +0000
From: Christoph Hellwig <hch@lst.de>
To: Oleg Nesterov <oleg@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 4/5] x86: don't use asm-generic/ptrace.h
Date: Mon, 24 Jun 2019 07:47:27 +0200
Message-Id: <20190624054728.30966-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624054728.30966-1-hch@lst.de>
References: <20190624054728.30966-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-arch@vger.kernel.org, linux-sh@vger.kernel.org, x86@kernel.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Doing the indirection through macros for the regs accessors just
makes them harder to read, so implement the helpers directly.

Note that only the helpers actually used are implemented now.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Ingo Molnar <mingo@kernel.org>
Acked-by: Oleg Nesterov <oleg@redhat.com>
---
 arch/x86/include/asm/ptrace.h | 30 +++++++++++++++++++++++++-----
 1 file changed, 25 insertions(+), 5 deletions(-)

diff --git a/arch/x86/include/asm/ptrace.h b/arch/x86/include/asm/ptrace.h
index 8a7fc0cca2d1..e22816e865ca 100644
--- a/arch/x86/include/asm/ptrace.h
+++ b/arch/x86/include/asm/ptrace.h
@@ -98,7 +98,6 @@ struct cpuinfo_x86;
 struct task_struct;
 
 extern unsigned long profile_pc(struct pt_regs *regs);
-#define profile_pc profile_pc
 
 extern unsigned long
 convert_ip_to_linear(struct task_struct *child, struct pt_regs *regs);
@@ -175,11 +174,32 @@ static inline unsigned long kernel_stack_pointer(struct pt_regs *regs)
 }
 #endif
 
-#define GET_IP(regs) ((regs)->ip)
-#define GET_FP(regs) ((regs)->bp)
-#define GET_USP(regs) ((regs)->sp)
+static inline unsigned long instruction_pointer(struct pt_regs *regs)
+{
+	return regs->ip;
+}
+
+static inline void instruction_pointer_set(struct pt_regs *regs,
+		unsigned long val)
+{
+	regs->ip = val;
+}
+
+static inline unsigned long frame_pointer(struct pt_regs *regs)
+{
+	return regs->bp;
+}
 
-#include <asm-generic/ptrace.h>
+static inline unsigned long user_stack_pointer(struct pt_regs *regs)
+{
+	return regs->sp;
+}
+
+static inline void user_stack_pointer_set(struct pt_regs *regs,
+		unsigned long val)
+{
+	regs->sp = val;
+}
 
 /* Query offset/name of register from its name/offset */
 extern int regs_query_register_offset(const char *name);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
