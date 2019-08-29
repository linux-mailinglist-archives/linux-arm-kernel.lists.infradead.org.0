Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5685A18F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOa6nqWhcRJzbEnozNv+6DNcRofyXjAslrxbNnFLXWE=; b=pTiBrL7euvHoRU
	64BAoOVksui+wZYj7MUysYPk+LkAe9ERcvc66xTMXUyXNUr0mEeolySfJeJEoOUQqTEF7g5y4BVqh
	eX3JFm4uMYhrGdhUqX81PF/07HWX0S+nhcem7/zkxi1+5oVTccdqVm5wWdH4gLckw5TdqW9yjk9vy
	AccZqM4sKJRpWotV4fVkE0ZAhTvgZInIFjMRloalUYg4qjuL6FDCeKgF96RhIalZjqx2QMTHBLzWx
	9BxG0pZZN42VvN50SM7eOlG4B0LHTUpGp1m6HXmJe30bgtpDqpiJirlofP2XTQuSzlGcVuourbA5n
	ZVDzcBRmFpNwCggmv1qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IkV-0008EV-1P; Thu, 29 Aug 2019 11:37:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ihx-000686-1r
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id i30so1854182pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+i1PP70VM4gp+yGXoK79tVzWNeTCN5YHgyu+1fomQgA=;
 b=VUGv1GtX697HgH14HXO402w5rt/hVrHKuxPDrzMYrHA9MNrwKcBeVp5QmFZ0Yn2bIe
 8wm3Gp/vNV/ttw6PDnQWJFwtjUuU7B9ReAuSsbzGHUNGuIB2f5QtbRHwEQ+AMqq/Flyw
 yFaYeLpOJ7nVVGHUDfoh2DV4TWHaKHT43C2xbhddaZgP3nk65dlOe3PMRz9dzfoVlYaK
 j7gyfJzh095YjY0vpih0lyQ75vA9+CzVnxR4U6CUyt7b6Y80gckwZnDAIzSsvP6v8//f
 Rv9wcWgH7Pcrh/MtZItqr3LmAOxBd/IVCOc1edVYJ5ouX+L8qxo0AQAkO7tP2yOagYMJ
 /5bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+i1PP70VM4gp+yGXoK79tVzWNeTCN5YHgyu+1fomQgA=;
 b=KUimzO+G+x+Mq1cBLfG/NSqZg/ezi6YOssf34i2iietcw+BMexa+k3MrV0cgzu8Mer
 FgC5td19ZcwECMeBL63j51EXcz3VhfCKmKZo4/n7A2a6UeCa5gfk8YG6t9Lx2o9L75gW
 FrL/CxavS+pMXwq87cWf9n+5VStYcHePC4TLBz1gXp7Ytzxqa3pqy2C6cy4KNZWXnni0
 D/8WUgQJXsNHPWFykluExcC47Hx5OSUScBzMKyjCkRVCw1fB5NNksr3Pjtkj1O+1oAEe
 LhM00XuVM3xg34Z696bl4jTtyT1/BtHbbjnZfE6JT/81bp3TCRZYlza10ZsCwaHcJK8b
 RkIw==
X-Gm-Message-State: APjAAAVUmkCjAwi/gJK/Z7EBOu7o8uv8dJNWVJIy4ZBhyN2OpID4y46b
 oV+960hCBBwRQIRLZD9ypV9lLg==
X-Google-Smtp-Source: APXvYqy6FKu6fTFxt/X3FC1r+EO8AUYEeqE0ZffTU6mDy/jwg68UlVIQksgaJl20dvMY1UgMrEq0VQ==
X-Received: by 2002:aa7:8d42:: with SMTP id s2mr10851725pfe.185.1567078516102; 
 Thu, 29 Aug 2019 04:35:16 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id f12sm2154596pgo.85.2019.08.29.04.35.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:15 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 09/44] mm/kasan: add API to check memory regions
Date: Thu, 29 Aug 2019 17:03:54 +0530
Message-Id: <ea16af1feddcaa85dc5369c79f78c00256c698cd.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043517_148948_33A569BB 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
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
