Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41622295CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wJ3brOUq59n3zkdjeSSmf0iBAmSI537iR4ax4nlbDJM=; b=g22JAva0ZMDg8dcuqSFtLjL1ET
	0m95FBL9HZGLdkOT5d3Z+7Wc84+W7SiqAGISHlEwqCBvI1Lc8xc+I2DYVxrmRKp6lgvmCfMFZoxcv
	7P3PQ6SnogMX/KvWalN/0mJwAzrLDgORqfs2bvkmjVg75wEO51e7zWOLO4J2CmEmCdIpGe+nxC0Xt
	afn6aR96j4CzNe3Xs7vD/vglt0o6txqyZZttQ+12Zj7pdDOadaNZxrZ5LA4a4tmfEB6LnWyGmaL8k
	efqAXL3KIBwTKJt5al5X0EV2Ql2rMyxPVsKDEGg8VA2L6f9o8nYiX6wCIYtJ3UIMmgKLZiyePu+og
	hguVaJzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7R2-0002hH-5M; Fri, 24 May 2019 10:28:24 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7PN-00017v-L2
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:26:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 867CFA78;
 Fri, 24 May 2019 03:26:41 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4DEF03F703;
 Fri, 24 May 2019 03:26:39 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 8/8] arm64: BTI: Decode BYTPE bits when printing PSTATE
Date: Fri, 24 May 2019 11:25:33 +0100
Message-Id: <1558693533-13465-9-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_032641_709643_919EEB13 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Andrew Jones <drjones@redhat.com>,
 Paul Elliott <paul.elliott@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sudakshina Das <sudi.das@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current code to print PSTATE symbolically when generating
backtraces etc., does not include the BYTPE field used by Branch
Target Identification.

So, decode BYTPE and print it too.

In the interests of human-readability, print the classes of BTI
matched.  The symbolic motation, BYTPE (PSTATE[11:10]) and
permitted classes of subsequent instruction are:

    -- (BTYPE=0b00): any insn
    jc (BTYPE=0b01): BTI jc, BTI j, BTI c, PACIxSP
    -c (BYTPE=0b10): BTI jc, BTI c, PACIxSP
    j- (BTYPE=0b11): BTI jc, BTI j

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 arch/arm64/include/asm/ptrace.h | 4 +++-
 arch/arm64/kernel/process.c     | 9 +++++++--
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
index b868ef11..f91e51c 100644
--- a/arch/arm64/include/asm/ptrace.h
+++ b/arch/arm64/include/asm/ptrace.h
@@ -40,8 +40,10 @@
 #define GIC_PRIO_IRQOFF		(GIC_PRIO_IRQON & ~0x80)
 
 /* Additional SPSR bits not exposed in the UABI */
+#define PSR_BTYPE_SHIFT		10
+
 #define PSR_IL_BIT		(1 << 20)
-#define PSR_BTYPE_CALL		(2 << 10)
+#define PSR_BTYPE_CALL		(2 << PSR_BTYPE_SHIFT)
 
 /* AArch32-specific ptrace requests */
 #define COMPAT_PTRACE_GETREGS		12
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 104b0d8..dde5c40 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -236,7 +236,11 @@ static void print_pstate(struct pt_regs *regs)
 			pstate & PSR_AA32_I_BIT ? 'I' : 'i',
 			pstate & PSR_AA32_F_BIT ? 'F' : 'f');
 	} else {
-		printk("pstate: %08llx (%c%c%c%c %c%c%c%c %cPAN %cUAO)\n",
+		static const char *const btypes[] = { "--", "jc", "-c", "j-" };
+		const char *btype_str = btypes[(pstate & PSR_BTYPE_MASK) >>
+					       PSR_BTYPE_SHIFT];
+
+		printk("pstate: %08llx (%c%c%c%c %c%c%c%c %cPAN %cUAO BTYPE=%s)\n",
 			pstate,
 			pstate & PSR_N_BIT ? 'N' : 'n',
 			pstate & PSR_Z_BIT ? 'Z' : 'z',
@@ -247,7 +251,8 @@ static void print_pstate(struct pt_regs *regs)
 			pstate & PSR_I_BIT ? 'I' : 'i',
 			pstate & PSR_F_BIT ? 'F' : 'f',
 			pstate & PSR_PAN_BIT ? '+' : '-',
-			pstate & PSR_UAO_BIT ? '+' : '-');
+			pstate & PSR_UAO_BIT ? '+' : '-',
+			btype_str);
 	}
 }
 
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
