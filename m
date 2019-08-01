Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E837D798
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JG5MOn2ar6h+5Ybp6DNE/2ucuS8lf/lV9MwczrJYGw=; b=S2z24tllOvqSnb
	dgNHtxD3N4td5U9JpW7QF0NEzkERHMwFh554aD0LSTjl645kVbVwl7wD3lCWIjnnXnQisjWcjsGiE
	geuLTVM3wIGuND15q4LD2fndubwEhw/JSdIsJuKoessiD0w/kMonuLdSO4mNBL2ZknaUX3NzjQGb3
	WNlJMq4gGtJG8Qns3MXvYgIpiXyVNtjyyRhGukPvGUEwgAvokOvvaV0k37+KfGGjh0C7SIWnjLxwX
	qjReJlZfUbUMv/yt7cMfaoe+E9bsoOsUMY35Ku4V1nU0bWHM9C8NLmKvnbd7PHH2yTJvydKlky+g0
	6vlosxnaF+p7JJBPoR5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Rm-0005jM-TR; Thu, 01 Aug 2019 08:28:26 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6L1-0003kb-33
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:29 +0000
Received: by mail-pf1-x444.google.com with SMTP id m30so33618221pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q2P7nbVondTzzEiUufavLpCtXHz6lnekor7t8KaG36c=;
 b=pTRCSsFiNu8OBieM4n9EH1oBWaf9DxqQrE8qfxItoRa9cD/Spg5spSoIPphBVmAIai
 rokTXzv97smMqkOdkzzyKoEUTdP3B+H++HwiH9+qNX60puKsd6dpA61w4Dn6n2GhvmH7
 cVxFAgwWjdW1QLRyXVrIBUPaKR73xXXmvr5m7gAwvGcGLbJ39BMne+Xfj7MVv0Bh6mQj
 KcbBBnVOhhBhVRn/Ry9JiNyiQfHvZeqhXZzhDIblc8b020MRzcQ8Z+yxtBM52JqBNwYh
 HZWPgcTne1OqI6kvSgxDABJIJzN9Kahd5jeUObH6yW4QM1CbXdAxwjYLazDrslXSI564
 gDnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q2P7nbVondTzzEiUufavLpCtXHz6lnekor7t8KaG36c=;
 b=VRfkmOzHYjHaDfsz+6Vqz/HMQj6TTD40K+zk+ulxSfIp9t467pbLfzVZbtfbV2WgmF
 hbmwwX+BPCnPGNPAMWznx4A6rYDiZCfqGtYDZJeE84WoRzoq1aSIKvTs2L3L0ZROroMD
 3e73vYU2VKc7mMKhpJwDvIJDq9a3lWaXNF5SxWSsiQwgtYPcwNo2YoOvVPXgRwITUak+
 r2u8eHeFS8JSYSVOGjffLqKh1Gu9mPm53JnUoxiCxfhTdmaXto0W+ZCFZafhyqXJuUcZ
 J+2EQdi3okhkORlaAi7NDvbEbGw3+7Dkqhonub2NUkBixR2S/yh1jYwJ7X3IsHUr38NY
 VC/Q==
X-Gm-Message-State: APjAAAW/wgJh8rEkhr6wPEvEpM/jPjYOWAqXDRVYgyVC24cPVxNY7wth
 O/j5jC2ywm8fc5WoecuntBxtVQ==
X-Google-Smtp-Source: APXvYqyinL72Ad1WC23YEaPJqW0xWZohjAv/ucPmvqt5ElYyOzPq0U5gBpJHjgVmPygyojXAbQoijA==
X-Received: by 2002:a63:6206:: with SMTP id w6mr1819946pgb.428.1564647686306; 
 Thu, 01 Aug 2019 01:21:26 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id u7sm64635107pfm.96.2019.08.01.01.21.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:25 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 43/47] arch: Introduce post-init read-only memory
Date: Thu,  1 Aug 2019 13:46:27 +0530
Message-Id: <e67e17015952a4c4b1cca19756d3c5c14153b33c.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012127_155590_44440AF1 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kees Cook <keescook@chromium.org>

Commit c74ba8b3480da6ddaea17df2263ec09b869ac496 upstream.

One of the easiest ways to protect the kernel from attack is to reduce
the internal attack surface exposed when a "write" flaw is available. By
making as much of the kernel read-only as possible, we reduce the
attack surface.

Many things are written to only during __init, and never changed
again. These cannot be made "const" since the compiler will do the wrong
thing (we do actually need to write to them). Instead, move these items
into a memory region that will be made read-only during mark_rodata_ro()
which happens after all kernel __init code has finished.

This introduces __ro_after_init as a way to mark such memory, and adds
some documentation about the existing __read_mostly marking.

This improves the security of the Linux kernel by marking formerly
read-write memory regions as read-only on a fully booted up system.

Based on work by PaX Team and Brad Spengler.

Signed-off-by: Kees Cook <keescook@chromium.org>
Cc: Andy Lutomirski <luto@amacapital.net>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Brad Spengler <spender@grsecurity.net>
Cc: Brian Gerst <brgerst@gmail.com>
Cc: David Brown <david.brown@linaro.org>
Cc: Denys Vlasenko <dvlasenk@redhat.com>
Cc: Emese Revfy <re.emese@gmail.com>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Mathias Krause <minipli@googlemail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: PaX Team <pageexec@freemail.hu>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: kernel-hardening@lists.openwall.com
Cc: linux-arch <linux-arch@vger.kernel.org>
Link: http://lkml.kernel.org/r/1455748879-21872-5-git-send-email-keescook@chromium.org
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/parisc/include/asm/cache.h   |  3 +++
 include/asm-generic/vmlinux.lds.h |  1 +
 include/linux/cache.h             | 14 ++++++++++++++
 3 files changed, 18 insertions(+)

diff --git a/arch/parisc/include/asm/cache.h b/arch/parisc/include/asm/cache.h
index 3d0e17bcc8e9..df0f52bd18b4 100644
--- a/arch/parisc/include/asm/cache.h
+++ b/arch/parisc/include/asm/cache.h
@@ -22,6 +22,9 @@
 
 #define __read_mostly __attribute__((__section__(".data..read_mostly")))
 
+/* Read-only memory is marked before mark_rodata_ro() is called. */
+#define __ro_after_init	__read_mostly
+
 void parisc_cache_init(void);	/* initializes cache-flushing */
 void disable_sr_hashing_asm(int); /* low level support for above */
 void disable_sr_hashing(void);   /* turns off space register hashing */
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index a461b6604fd9..c63f92150eda 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -256,6 +256,7 @@
 	.rodata           : AT(ADDR(.rodata) - LOAD_OFFSET) {		\
 		VMLINUX_SYMBOL(__start_rodata) = .;			\
 		*(.rodata) *(.rodata.*)					\
+		*(.data..ro_after_init)	/* Read only after init */	\
 		*(__vermagic)		/* Kernel version magic */	\
 		. = ALIGN(8);						\
 		VMLINUX_SYMBOL(__start___tracepoints_ptrs) = .;		\
diff --git a/include/linux/cache.h b/include/linux/cache.h
index 17e7e82d2aa7..1be04f8c563a 100644
--- a/include/linux/cache.h
+++ b/include/linux/cache.h
@@ -12,10 +12,24 @@
 #define SMP_CACHE_BYTES L1_CACHE_BYTES
 #endif
 
+/*
+ * __read_mostly is used to keep rarely changing variables out of frequently
+ * updated cachelines. If an architecture doesn't support it, ignore the
+ * hint.
+ */
 #ifndef __read_mostly
 #define __read_mostly
 #endif
 
+/*
+ * __ro_after_init is used to mark things that are read-only after init (i.e.
+ * after mark_rodata_ro() has been called). These are effectively read-only,
+ * but may get written to during init, so can't live in .rodata (via "const").
+ */
+#ifndef __ro_after_init
+#define __ro_after_init __attribute__((__section__(".data..ro_after_init")))
+#endif
+
 #ifndef ____cacheline_aligned
 #define ____cacheline_aligned __attribute__((__aligned__(SMP_CACHE_BYTES)))
 #endif
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
