Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B891245297
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvRKfXQvmsNkub8S/ffGtHMbdFsod0bhbHsDfq7EOQs=; b=N8UBCH/J2q1vrz
	haOZn4xKsNJq+jgri41tRvm61ti72dRjQEO85PN1Zvc9YwIkwgXrHAhBYpCE9Cud3bocC4FdidZf+
	fo7gdSBkpgz3ychFreZpLAVc3NNtvGqoCRcqL+nQTlkkNH6TyqPSe8eGf3GOlBJRLW5iviRAHpDXF
	mneE/FptnrT+C5SDJmy9cFWfVbussLoqi/r5LEfJHsY2RiVfvBr9xerhQV9sdaI1HQSSHprVcGeWz
	vALdX+K5ITWa5apm2pC93zUTu+tbLwSBgnFl98FgyVuw0RjXjDzQ9u5yWP1ltsotILbLqseJxFEOs
	IdZrShEvO7bVyjdPTSAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbchY-0004Oh-Lp; Fri, 14 Jun 2019 03:16:28 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdZ-0000Gw-OQ
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:27 +0000
Received: by mail-pg1-x542.google.com with SMTP id f21so682014pgi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q/AGFfvfHGuDn+dFoAxSTyRFru9zQTVknf0DUmu2KKo=;
 b=EXoJEH537ekXX3OvBiXCvmYHnyJHpvoGxXHrkSWsLSUvuohlVgtJEa16Btv4b48dDT
 WPz9HDGvXX8/nfn9lVM72XeiB9o9Oud6n17yMvo6jFo1TBKW2w7jxU5eKNxnx/qxJwPL
 AvlDDz8H11flscmdP85UFmYZo0xJOIPPWY194dVFEKTIGoyk/pXK9Gui6nQtoZazb9Fm
 Kuuxgi5vx34eECek4Lpt0jUWDQb0csa1Q7tO8kDvWPzNqWI1rAfkYQwhqAtu1wm6Dv14
 HHIg5YEPsOZ0S8qPY/dHrduCyZN09fRXoq9Za4pf24DYyYETtGvVSyIrAHZzS+KvYQuv
 rDjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q/AGFfvfHGuDn+dFoAxSTyRFru9zQTVknf0DUmu2KKo=;
 b=DJS5wg1WmnqTwZNtr6ELWJ+iH7c9JDZmPwlghmIt6miOFyqXZUtcJ9GRw4MIsGGqYG
 nd41uU4XfwKIz1OPy4ZfDe/WqexxBRCW7hjY8KlRrnglNN1JaZkxYI6m50W6vxnaVrFM
 pVJNbA5APFHw3U5VKMEHVC6o4HwtFu2wdZ5XNUpJn/6EfLuSOLLGW4PdOjjo9zVtgDF8
 j3Tu448fK6Y8xcqz6PsI2Te3KYBi6IkqxuqAdruzHZYaFM1wsGjeh54aTyuRujiSUBBS
 fdHe/b0IydXsSOWzClelXz2lSkGY5n6r0YVFhKjixhTxT52wRTBzjCF5AKLBBiyv1tQO
 DBoA==
X-Gm-Message-State: APjAAAXPQry7M5OJ5ybxcyBXlPjNhCtOi0VH3yV8hzbMxQbc6+3RqGkQ
 WzsrQz5tPUbjemqTdoqwahErarUfGfE=
X-Google-Smtp-Source: APXvYqxADLqV+smHWmh91RQy7xN6UqYx5UMo5b+CFqcbc0DPVdnSlPrfqYQnPo4j6Vszd2MKRpyvVQ==
X-Received: by 2002:a17:90a:cf0d:: with SMTP id
 h13mr8016081pju.63.1560481940227; 
 Thu, 13 Jun 2019 20:12:20 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id r4sm1129694pjd.25.2019.06.13.20.12.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:19 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 10/45] mm/kasan: add API to check memory regions
Date: Fri, 14 Jun 2019 08:37:53 +0530
Message-Id: <0cedfc51f5941ab2c2e9a09149d34c7451efda56.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201221_948371_C7E32F0F 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
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
[ v4.4: Fixed MAINTAINERS conflict and added whole kasan entry ]
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
index b7397b459960..3ad31df33e76 100644
--- a/mm/kasan/kasan.c
+++ b/mm/kasan/kasan.c
@@ -274,6 +274,18 @@ static __always_inline void check_memory_region(unsigned long addr,
 void __asan_loadN(unsigned long addr, size_t size);
 void __asan_storeN(unsigned long addr, size_t size);
 
+void kasan_check_read(const void *p, unsigned int size)
+{
+	check_memory_region((unsigned long)p, size, false, _RET_IP_);
+}
+EXPORT_SYMBOL(kasan_check_read);
+
+void kasan_check_write(const void *p, unsigned int size)
+{
+	check_memory_region((unsigned long)p, size, true, _RET_IP_);
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
