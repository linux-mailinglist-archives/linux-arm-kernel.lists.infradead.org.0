Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E9566657
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOa6nqWhcRJzbEnozNv+6DNcRofyXjAslrxbNnFLXWE=; b=DQAN46sXpiU/uS
	NEHcN1q/QXb9ATwvD0nAPxSHtGWuqaDW6lgLs3V/8AF5jLzkeRfE+2uisCVoLeFPxCYBF9ddflRUI
	jBiwUKuUs0O3Vr1enPfb6ih102XmSuieyI0s7uv7Kf4K7mg/sdniX2nOiabNxZLxM+i1Reo9PfePz
	/JOjM4Sg8vsJVFkBsxAeVHidO+WMV3Kn6GVXirbNn0sDIxom0Ku2O9kPFu1eBkd81l2JhH52PzCA6
	hvSAJ5HHqxiIJ/I8igkMSylIwi0gn9zoWH6wjhWFYkdIETP9ETnW/A4JWciQhoXJIPKF/T7sk+g4m
	SYzch+e1X/ZVsGfykuBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloAu-0003zz-CM; Fri, 12 Jul 2019 05:32:52 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7Y-0000Xs-4I
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:26 +0000
Received: by mail-pf1-x444.google.com with SMTP id g2so3803513pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+i1PP70VM4gp+yGXoK79tVzWNeTCN5YHgyu+1fomQgA=;
 b=LtvPtrcrU4nwJykst8A48fEuE3P2blvqxFdxg8DC+CmmLab12J4Rvsuf4DNsV/4r4L
 G9sOtdUSY0tXKPqUQYw9hUhneYuPKUq95ApUFd2QFvgr/soFj9RSY3703vLrgLc/Cqrt
 M1AnQwz3IqtIKK0fKC2O7ULga6D6GzcMfhtryK7DmnSihcgVJl0/36Jrz0ikXiXUC+E6
 jSCOknmaouHblQ2fAkBIkVUObQ/zy3pt02ELF/ZGmL88Z1O6hUNpFXLNybKwctEPuQfY
 dcq/4E+tsfvBSfgCHxENCqS2nN/Ix9N7UgkgYNbOQZ6V5oXRbq4We4ZksjVKg4RvVXcd
 29Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+i1PP70VM4gp+yGXoK79tVzWNeTCN5YHgyu+1fomQgA=;
 b=VczIc0dmiWjNLrGfJgeJauajN5GBHFxhcw9kXpFA1J/bVLOPwTwOoB44zyNynQM5Sc
 DV1W9YxxeDhfoI+Os78zdm9y1kFUm07PSzbDyE8Is4gNX4C4KFQLREybEz9xnzy29m4O
 Mp8+GGOoohr/XdZN7lgCn2iJuXkdBU4aQYevQ1OCUL/R/kqPw0kWwTRqyZL2KmxzBYrI
 D/wvS+8EVNWkWH1Zt7jzJCz8q2yABkvWoih5PIiRSqEbLnqyRwmxr114f1jPLdL8dWgv
 iN+zW0J53lnKbYcd7OFN3K10nz71TKmMT9KQb6rnWf0dyuUn9Nk6qO7xPjEdOO/zOPAT
 agQg==
X-Gm-Message-State: APjAAAXvfyZVZqHP9nPqjvXVqscQJIVm3geza3f7/s/66ps/1RK4JbRq
 naYpB27+lOpNCUiigET5UdJeeA==
X-Google-Smtp-Source: APXvYqy6laduSzW4J2fHIwGuSgLVFtG+of8Xeu9hr2v3uq9ggFfUKWP4KUK0kFGztZINIO7uuxCp5w==
X-Received: by 2002:a17:90a:db44:: with SMTP id
 u4mr9411661pjx.52.1562909363505; 
 Thu, 11 Jul 2019 22:29:23 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id b26sm10186974pfo.129.2019.07.11.22.29.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:23 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 09/43] mm/kasan: add API to check memory regions
Date: Fri, 12 Jul 2019 10:57:57 +0530
Message-Id: <45ff1598be62861928069f5907f6b41d3eb05c68.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222924_227282_C53617A7 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Ryabinin <aryabinin@virtuozzo.com>

commit 64f8ebaf115bcddc4aaa902f981c57ba6506bc42 upstream.

Memory access coded in an assembly won't be seen by KASAN as a compiler
can instrument only C code.  Add kasan_check_[read,write]() API which is
going to be used to check a certain memory range.

Link: http://lkml.kernel.org/r/1462538722-1574-3-git-send-email-aryabinin@virtuozzo.com
Signed-off-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
Acked-by: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Ingo Molnar <mingo@elte.hu>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
[ v4.4: Fixed MAINTAINERS conflict and added whole kasan entry. Drop 4th
	argument to check_memory_region(). ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 MAINTAINERS                  | 14 ++++++++++++++
 include/linux/kasan-checks.h | 12 ++++++++++++
 mm/kasan/kasan.c             | 12 ++++++++++++
 3 files changed, 38 insertions(+)
 create mode 100644 include/linux/kasan-checks.h

diff --git a/MAINTAINERS b/MAINTAINERS
index f4d4a5544dc1..2a8826732967 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5982,6 +5982,20 @@ S:	Maintained
 F:	Documentation/hwmon/k8temp
 F:	drivers/hwmon/k8temp.c
 
+KASAN
+M:	Andrey Ryabinin <aryabinin@virtuozzo.com>
+R:	Alexander Potapenko <glider@google.com>
+R:	Dmitry Vyukov <dvyukov@google.com>
+L:	kasan-dev@googlegroups.com
+S:	Maintained
+F:	arch/*/include/asm/kasan.h
+F:	arch/*/mm/kasan_init*
+F:	Documentation/kasan.txt
+F:	include/linux/kasan*.h
+F:	lib/test_kasan.c
+F:	mm/kasan/
+F:	scripts/Makefile.kasan
+
 KCONFIG
 M:	"Yann E. MORIN" <yann.morin.1998@free.fr>
 L:	linux-kbuild@vger.kernel.org
diff --git a/include/linux/kasan-checks.h b/include/linux/kasan-checks.h
new file mode 100644
index 000000000000..b7f8aced7870
--- /dev/null
+++ b/include/linux/kasan-checks.h
@@ -0,0 +1,12 @@
+#ifndef _LINUX_KASAN_CHECKS_H
+#define _LINUX_KASAN_CHECKS_H
+
+#ifdef CONFIG_KASAN
+void kasan_check_read(const void *p, unsigned int size);
+void kasan_check_write(const void *p, unsigned int size);
+#else
+static inline void kasan_check_read(const void *p, unsigned int size) { }
+static inline void kasan_check_write(const void *p, unsigned int size) { }
+#endif
+
+#endif
diff --git a/mm/kasan/kasan.c b/mm/kasan/kasan.c
index b7397b459960..1cdcab0c976a 100644
--- a/mm/kasan/kasan.c
+++ b/mm/kasan/kasan.c
@@ -274,6 +274,18 @@ static __always_inline void check_memory_region(unsigned long addr,
 void __asan_loadN(unsigned long addr, size_t size);
 void __asan_storeN(unsigned long addr, size_t size);
 
+void kasan_check_read(const void *p, unsigned int size)
+{
+	check_memory_region((unsigned long)p, size, false);
+}
+EXPORT_SYMBOL(kasan_check_read);
+
+void kasan_check_write(const void *p, unsigned int size)
+{
+	check_memory_region((unsigned long)p, size, true);
+}
+EXPORT_SYMBOL(kasan_check_write);
+
 #undef memset
 void *memset(void *addr, int c, size_t len)
 {
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
