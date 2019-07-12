Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C7866663
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cq0qmLXOsmhRJ/QciNM9FTRgSFDR87/jKRPuOz406+w=; b=ePRs+W/4Ow2P07
	C30gVX7eJNTmfbPiSznbbHfRVWJ0+gISwzkPrxuazW1NsaqBwm6FdzNsrIAvd6+lRsCuBteihXI8k
	2WqHmPA+i5py+j73QELANPoc5EdmIhVRDvY6nYzENSXFpQH/AjigKtquuMoocCXEur5JC6l9LEV99
	XXrQ56aDjB9EOX1oVBAqJXlT/qLSNhdkm6llkDFrt5iQxxj8i6dfUew1zXNvs57sKDBGX2UAZaUfD
	5ak6Dt/i2HBoZzNrFpWTUIqNIMvOFqvT7RjQ51k1W57hEMbMhvrJSJOdv8TzFqoFNbCmI4jkEDR25
	UTa9SNxibn+aBqmSklKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloFk-0007Y0-Vf; Fri, 12 Jul 2019 05:37:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7w-0000qM-LE
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id u14so3801187pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZUdOby9mUIJ5g7nxMiQ+DmGQefEZUa89WzEBGK5DmD0=;
 b=AboBRh8MfdxTXoZvpkpTrMwzfGFExqOWODf+W95I9f1LqpR4v4X8RaMAGhzpU6Ldgf
 2Of4QPmJ9YYALJILmxz5mvoF72Cb05nUdoAuIoQaQofPG/N0Nw+Ctfgyedb0ir8iZXSA
 4zPXQvhExq3s5lZ2QugOie5u+LJIPNowtWVI0SffAIDa0pLiaUNxABiL+D5LEdeI1kKp
 JE195sEj3U6FYu5xp+L7eP4HidL2n1RYqK53wr6NsJ+93QygtBZXR9dASgjQugtleC36
 4K5FCgyTIQATBRO7g+oeAv5Jd54b/v07lziyQEgJ+ncoW4fJ9sYkopNRz4NZ3ihrMvaQ
 JZbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZUdOby9mUIJ5g7nxMiQ+DmGQefEZUa89WzEBGK5DmD0=;
 b=eyLONVOdiuskP7oKzj/bBp0RGtKgGuNVsB9jxrV1rreGx+25KRlJX6p1gjIadYVLvK
 Wr8oNNGz35Nfqs0CD+UQ/mNmXI+FeF6t97sMHfYSGDUhDsxrKIkKPVJ4P3SN92bwN6IW
 /r3PHHkTU2xw/CWm6jUMlRmfwCVOst7TS/ctjOsqFMoEzQqlcE29HdbUSsyNm9fL3h2p
 so7nyS+wsxk1viwekoy/tZCA5PeIxbZPMfvCoTC7FLpJDlqweazIj0o4z8UM39UADx23
 AN+cXV2V9KTq4/pl2Lhi4pmmah43v0n6XtQ1uf4BH2LJ3/xVRKeWz7XOE06+dxGWcPPJ
 5D4g==
X-Gm-Message-State: APjAAAV5/lcNXWR/+pcVgVSIJNDAWy34vfm8eApxtmfEKlf6d3khUHA3
 IkmAf3YjcNNvCGJgkzgunpVq4Q==
X-Google-Smtp-Source: APXvYqwSjyqxaUdjbcdf8HLu32WhC1K/AZ7yPdKlvWPW5ICuoruk/scKndDoeJVHSUCUHFOYRicFgQ==
X-Received: by 2002:a63:ed06:: with SMTP id d6mr8600073pgi.267.1562909387463; 
 Thu, 11 Jul 2019 22:29:47 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id r2sm9904015pfl.67.2019.07.11.22.29.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:47 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 18/43] arm64: Rearrange CPU errata workaround checks
Date: Fri, 12 Jul 2019 10:58:06 +0530
Message-Id: <4c595dbb19c7b70c007b6bfa068c1b22dca4bdec.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222948_807832_FC41AFC4 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
index 752b53daac23..7a9eff0d1ebe 100644
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
@@ -360,6 +360,12 @@ void __init smp_prepare_boot_cpu(void)
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
