Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20375A1911
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOnqjTwgd43Fv6iWbHTr/iS0qnkDSR8wWpBFdh2Zxdo=; b=Vxu5eSKL8+i0r8
	+fhhEmo51IQHABlfIGdS95dMLSNMGnKna/ziLjvQwIpSMuX36RYG62ZT58m8u5oxnljwv94JAkuuf
	vwnj0XlpDXFl4lZHvl8rp6CxUJP4EFyPINJgRKqF4h7+1E8LZKGx65pvYlUN1YXAzUIWbBIYyBRmc
	OBD0aLscjZRsqsfWRgHPTfCsSd6TD0xhbROr+1LMrRFZIq9ejr6aoduUlicwR+IAMb3KkDeeuV54d
	zcM8jAhHgb/uEvQRyJ0DmgvUjhKaAydbCmcSsMK3jG7YCgBVqU3ABYFxcrWJ+z2uLYQ23+lK5uF5S
	UIVWWbz4eXzcZksQYtzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Inf-0003WO-IE; Thu, 29 Aug 2019 11:41:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IiO-0006ZE-Go
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id w26so1846247pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fkxeJKseCGMXAXIlAcnMLE13XsHo9zOa4aO4yBF3DzQ=;
 b=zujYWfHMa9zxuzfY/LQcJwmlrlpW6+RGRN39kKnJidiaUBoJD2N8W1guUFysCGBzJl
 JFT0avWA0hY3U2TiEmz24gW3sMQbukbVSS4GhboNaxVU9XZSjoKu0XF2up2i4dQOnthl
 7CxB3ITtZxylDXoZ6EOr0kcS2SB6ZjbPjKbm5svxLfKJXoFDYvjSEN89/JIlpK6vYmoT
 G3/tEEIrxx/o9bgCbZdCdKDGk9KEUQ6cqlpYUWXBNo9bX2YYizM0aTYeyzWbVCnB7KCD
 w8CUlC1bGmrjssa3WvBm4llSytGeqmtW3UI9IETOn5Nj5nCfrz3uepgysxFLqdtQIQ6D
 QCRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fkxeJKseCGMXAXIlAcnMLE13XsHo9zOa4aO4yBF3DzQ=;
 b=Tb2Tmqr84iy/WHePgJkzRRVrReFKwIUsITrkKNgaYDInI6fYB+U+LyzbhNlPIKS3ng
 E3eNZwTcDRV0y0UVc2r6BLvlw/JyDp/u3IsS8dl6smKwJ5jfV9iQwmMdVRAiByGjucn6
 GRD7dU35VGohfoThR7AVdgspzoc73Lv2foJjlqXMXu+nELfLjlbfHHXW/+E3069fI6vg
 y5yWysoOpLpBpyPcULw2bIna/6PaEJAXOu29TouqxJxky/MCZzaMhHH7eDLuu1rMnjIJ
 c/9t6nqRHcpMq6WyrTJQK+nJlby8fNF5q0xiPPbDhS4TV5/WSa0EpHbVMAPxnUwybszG
 KXMg==
X-Gm-Message-State: APjAAAUpmQQfVQAN7deDVI0Jh7gejEPkvGTbpqdD0nv+G2owGsCsSy5I
 ykzvB61hxBYH6S+TAHB1pueyjg==
X-Google-Smtp-Source: APXvYqxe+8QX9yX8fdiQ5U4RTEZHX7kLARSc+TXaWsHD1QCjdjtb/93ErL/u3tIHlrpyw7YMpv8fSw==
X-Received: by 2002:a62:87c8:: with SMTP id
 i191mr10806160pfe.133.1567078543262; 
 Thu, 29 Aug 2019 04:35:43 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id e13sm6731082pfl.130.2019.08.29.04.35.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:42 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 19/44] arm64: Rearrange CPU errata workaround
 checks
Date: Thu, 29 Aug 2019 17:04:04 +0530
Message-Id: <3d271452ae3c6ffe3c6ab1085d0dadb20f86a81e.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043544_842306_15838997 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

From: Suzuki K Poulose <suzuki.poulose@arm.com>

commit c47a1900ad710fd2c97127e2ba19da1df79cf733 upstream.

Right now we run through the work around checks on a CPU
from __cpuinfo_store_cpu. There are some problems with that:

1) We initialise the system wide CPU feature registers only after the
Boot CPU updates its cpuinfo. Now, if a work around depends on the
variance of a CPU ID feature (e.g, check for Cache Line size mismatch),
we have no way of performing it cleanly for the boot CPU.

2) It is out of place, invoked from __cpuinfo_store_cpu() in cpuinfo.c. It
is not an obvious place for that.

This patch rearranges the CPU specific capability(aka work around) checks.

1) At the moment we use verify_local_cpu_capabilities() to check if a new
CPU has all the system advertised features. Use this for the secondary CPUs
to perform the work around check. For that we rename
  verify_local_cpu_capabilities() => check_local_cpu_capabilities()
which:

   If the system wide capabilities haven't been initialised (i.e, the CPU
   is activated at the boot), update the system wide detected work arounds.

   Otherwise (i.e a CPU hotplugged in later) verify that this CPU conforms to the
   system wide capabilities.

2) Boot CPU updates the work arounds from smp_prepare_boot_cpu() after we have
initialised the system wide CPU feature values.

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/cpufeature.h |  8 +-------
 arch/arm64/kernel/cpufeature.c      | 23 +++++++++++++++--------
 arch/arm64/kernel/cpuinfo.c         |  2 --
 arch/arm64/kernel/smp.c             |  8 +++++++-
 4 files changed, 23 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 0267bab6ac18..1bc51f8835e5 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -177,13 +177,7 @@ void __init enable_errata_workarounds(void);
 
 void verify_local_cpu_errata(void);
 
-#ifdef CONFIG_HOTPLUG_CPU
-void verify_local_cpu_capabilities(void);
-#else
-static inline void verify_local_cpu_capabilities(void)
-{
-}
-#endif
+void check_local_cpu_capabilities(void);
 
 u64 read_system_reg(u32 id);
 
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 7773bea6927e..c74df3ca000e 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -860,18 +860,11 @@ static inline void set_sys_caps_initialised(void)
  * cannot do anything to fix it up and could cause unexpected failures. So
  * we park the CPU.
  */
-void verify_local_cpu_capabilities(void)
+static void verify_local_cpu_capabilities(void)
 {
 	int i;
 	const struct arm64_cpu_capabilities *caps;
 
-	/*
-	 * If we haven't computed the system capabilities, there is nothing
-	 * to verify.
-	 */
-	if (!sys_caps_initialised)
-		return;
-
 	verify_local_cpu_errata();
 
 	caps = arm64_features;
@@ -902,6 +895,20 @@ void verify_local_cpu_capabilities(void)
 	}
 }
 
+void check_local_cpu_capabilities(void)
+{
+	/*
+	 * If we haven't finalised the system capabilities, this CPU gets
+	 * a chance to update the errata work arounds.
+	 * Otherwise, this CPU should verify that it has all the system
+	 * advertised capabilities.
+	 */
+	if (!sys_caps_initialised)
+		check_local_cpu_errata();
+	else
+		verify_local_cpu_capabilities();
+}
+
 #else	/* !CONFIG_HOTPLUG_CPU */
 
 static inline void set_sys_caps_initialised(void)
diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 0166cfbc866c..13e659fda04a 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -239,8 +239,6 @@ static void __cpuinfo_store_cpu(struct cpuinfo_arm64 *info)
 	info->reg_mvfr2 = read_cpuid(MVFR2_EL1);
 
 	cpuinfo_detect_icache_policy(info);
-
-	check_local_cpu_errata();
 }
 
 void cpuinfo_store_cpu(void)
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 23e8ae0c6305..02b76bb78d59 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -161,7 +161,7 @@ asmlinkage notrace void secondary_start_kernel(void)
 	 * this CPU ticks all of those. If it doesn't, the CPU will
 	 * fail to come online.
 	 */
-	verify_local_cpu_capabilities();
+	check_local_cpu_capabilities();
 
 	if (cpu_ops[cpu]->cpu_postboot)
 		cpu_ops[cpu]->cpu_postboot();
@@ -357,6 +357,12 @@ void __init smp_prepare_boot_cpu(void)
 {
 	set_my_cpu_offset(per_cpu_offset(smp_processor_id()));
 	cpuinfo_store_boot_cpu();
+	/*
+	 * Run the errata work around checks on the boot CPU, once we have
+	 * initialised the cpu feature infrastructure from
+	 * cpuinfo_store_boot_cpu() above.
+	 */
+	check_local_cpu_errata();
 }
 
 static u64 __init of_get_cpu_mpidr(struct device_node *dn)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
