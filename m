Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F39D0DD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 13:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4hKN7e2RpoZw2TjpTLNFoUWY5zxe3Ak6sluydXQ7Li0=; b=VVWuBIa3UjJ2aY
	U/JN+SlecLeJM85csQtAyYCa4xER0AJN311VZUaYBhDywzOlImWs+lpv1YX2ziOCcyHfV3migVyx9
	l6ELngHQMhTTDYuSFE4D133NmzqOmaCITxAIxfIO3K3OaY5UQLS1xEDvUftUa2blpwpiHOLHlnwFh
	TdbHQouBAIqeZZVYBLAMSLpCxGwIZkTPtYTqB2X4UfiFFzRGL0nRXPd83b4hShSJX9qbTv+RHqVl+
	gPaLQafMmflGVr1OIKm/oFk3dpsV3FoLJxB/6RS6aly/yYUQ/yQFFW9ax11lp4R70M3uDWTzIACuT
	qSRkzhJ3vVozCxagVedg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAKU-000642-Hp; Wed, 09 Oct 2019 11:40:30 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAKK-00062h-3Y
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 11:40:21 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iIAJZ-0004IN-3h; Wed, 09 Oct 2019 12:39:33 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iIAJY-0003WT-8z; Wed, 09 Oct 2019 12:39:32 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] proc: centralise declaration of cpuinfo_op
Date: Wed,  9 Oct 2019 12:39:30 +0100
Message-Id: <20191009113930.13236-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_044020_300333_BF3591AB 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
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
Cc: linux-s390@vger.kernel.org, Rich Felker <dalias@libc.org>,
 linux-c6x-dev@linux-c6x.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-sh@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 x86@kernel.org, Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Ben Dooks <ben.dooks@codethink.co.uk>, Borislav Petkov <bp@alien8.de>,
 linux-arm-kernel@lists.infradead.org, Mark Salter <msalter@redhat.com>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building for arm, cpuinfo_op generates a warning due
to no declaration. Since this is used in fs/proc/cpuinfo.c
and inconsitently declared across archiectures move the
declaration info <linux/seq_file.h>. This means that the
cpuinfo_op will have a declaration any place it is used.

Removes the following sparse warning:

arch/arm/kernel/setup.c:1320:29: warning: symbol 'cpuinfo_op' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Mark Salter <msalter@redhat.com>
Cc: Aurelien Jacquiot <jacquiot.aurelien@gmail.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: Rich Felker <dalias@libc.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: x86@kernel.org
Cc: linux-c6x-dev@linux-c6x.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-s390@vger.kernel.org
Cc: linux-sh@vger.kernel.org
Cc: sparclinux@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/c6x/include/asm/processor.h        | 2 --
 arch/microblaze/include/asm/processor.h | 3 ---
 arch/s390/include/asm/processor.h       | 1 -
 arch/sh/include/asm/processor.h         | 1 -
 arch/sparc/include/asm/cpudata.h        | 2 --
 arch/x86/include/asm/processor.h        | 2 --
 include/linux/seq_file.h                | 2 ++
 7 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/arch/c6x/include/asm/processor.h b/arch/c6x/include/asm/processor.h
index 1456f5e11de3..ecc906854b6a 100644
--- a/arch/c6x/include/asm/processor.h
+++ b/arch/c6x/include/asm/processor.h
@@ -100,8 +100,6 @@ extern unsigned long get_wchan(struct task_struct *p);
 
 #define cpu_relax()		do { } while (0)
 
-extern const struct seq_operations cpuinfo_op;
-
 /* Reset the board */
 #define HARD_RESET_NOW()
 
diff --git a/arch/microblaze/include/asm/processor.h b/arch/microblaze/include/asm/processor.h
index 66b537b8d138..8ab09e94b8ae 100644
--- a/arch/microblaze/include/asm/processor.h
+++ b/arch/microblaze/include/asm/processor.h
@@ -18,9 +18,6 @@
 #include <asm/current.h>
 
 # ifndef __ASSEMBLY__
-/* from kernel/cpu/mb.c */
-extern const struct seq_operations cpuinfo_op;
-
 # define cpu_relax()		barrier()
 
 #define task_pt_regs(tsk) \
diff --git a/arch/s390/include/asm/processor.h b/arch/s390/include/asm/processor.h
index 51a0e4a2dc96..813d2bfc63ac 100644
--- a/arch/s390/include/asm/processor.h
+++ b/arch/s390/include/asm/processor.h
@@ -83,7 +83,6 @@ void s390_adjust_jiffies(void);
 void s390_update_cpu_mhz(void);
 void cpu_detect_mhz_feature(void);
 
-extern const struct seq_operations cpuinfo_op;
 extern int sysctl_ieee_emulation_warnings;
 extern void execve_tail(void);
 extern void __bpon(void);
diff --git a/arch/sh/include/asm/processor.h b/arch/sh/include/asm/processor.h
index 6fbf8c80e498..25ddb34f31d9 100644
--- a/arch/sh/include/asm/processor.h
+++ b/arch/sh/include/asm/processor.h
@@ -128,7 +128,6 @@ extern unsigned int mem_init_done;
 
 /* arch/sh/kernel/setup.c */
 const char *get_cpu_subtype(struct sh_cpuinfo *c);
-extern const struct seq_operations cpuinfo_op;
 
 /* thread_struct flags */
 #define SH_THREAD_UAC_NOPRINT	(1 << 0)
diff --git a/arch/sparc/include/asm/cpudata.h b/arch/sparc/include/asm/cpudata.h
index d213165ee713..f7e690a7860b 100644
--- a/arch/sparc/include/asm/cpudata.h
+++ b/arch/sparc/include/asm/cpudata.h
@@ -7,8 +7,6 @@
 #include <linux/threads.h>
 #include <linux/percpu.h>
 
-extern const struct seq_operations cpuinfo_op;
-
 #endif /* !(__ASSEMBLY__) */
 
 #if defined(__sparc__) && defined(__arch64__)
diff --git a/arch/x86/include/asm/processor.h b/arch/x86/include/asm/processor.h
index 6e0a3b43d027..6f22daf892ea 100644
--- a/arch/x86/include/asm/processor.h
+++ b/arch/x86/include/asm/processor.h
@@ -169,8 +169,6 @@ DECLARE_PER_CPU_READ_MOSTLY(struct cpuinfo_x86, cpu_info);
 #define cpu_data(cpu)		boot_cpu_data
 #endif
 
-extern const struct seq_operations cpuinfo_op;
-
 #define cache_line_size()	(boot_cpu_data.x86_cache_alignment)
 
 extern void cpu_detect(struct cpuinfo_x86 *c);
diff --git a/include/linux/seq_file.h b/include/linux/seq_file.h
index 5998e1f4ff06..629b0d8302e8 100644
--- a/include/linux/seq_file.h
+++ b/include/linux/seq_file.h
@@ -36,6 +36,8 @@ struct seq_operations {
 	int (*show) (struct seq_file *m, void *v);
 };
 
+extern const struct seq_operations cpuinfo_op;
+
 #define SEQ_SKIP 1
 
 /**
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
