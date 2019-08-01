Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1727D793
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1mnnclUdgbgwUpmHvZMPA19laXFU6oU9v445hClwxM=; b=ZUwCaGEtE5oXyk
	WUOWI1RJXHAWUuGOdJ0Ov8gQt2Wg0OktWojc7jGaMJ43oUrYxGxpt1ZxkXLLAkePKzZcYSVxCmQjI
	eaasJ7KlxUACyZ1zuptzN36TvLm7EDrWg7DKP4auaFiCfHx4xSiqmA+vuQGmZLu14gSzwHeAAmOBl
	zQOGAAKI6J2MOERVEOwmgSwFsIqd0x+Jv1t3ccqEuA4qFOoyZVOpBjiYOHLxq+msqHkOMLshgDosb
	TOwslke8GHquRGt3Tjnreg0q7k+n7CrLjpew8yc9j4/z16vBa3DtvGtcpsMHcjB6DvMEvYu0dYj3q
	eKDS07rExQGRJdQbGuiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6RG-0004o9-OE; Thu, 01 Aug 2019 08:27:54 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Kt-0003Y9-E7
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:21 +0000
Received: by mail-pg1-x541.google.com with SMTP id x15so23387712pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ea6sM+FtbjaUvKE8XTo8IrkOgZbBdosuDWN0NMu3JEA=;
 b=IqgMWC+doqxZ/x9SW9opxGfpwlsiAyQDTKWOiIlR0W4chV0hNWekn8EH67WIsJo7r7
 tGHL37Y5GWbCA74ReUFqeSKAAs8gOSdGslZ0rY5riXYyM+Nmr7hjPiEr5XuQQuRdFNss
 rZr3eZ6x8gRF1jdGXT+WJo+5N1MHeZqMl25r6qJEsR1nFISh2pFEC/F29TkrwoJZ4mgU
 X4WGLXr6pcnpr/EmZWFfQORxn2Mr8rd0LF6yeeo0iQdI8GbACrwZkzeOP1Ffk6fQ+6xF
 U+0mJeTXirqYQdR0a7U1BQV/SOPMFILzWfKSe3nJbln8rg+OJDsEKuAZVfiORH1yci53
 OmcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ea6sM+FtbjaUvKE8XTo8IrkOgZbBdosuDWN0NMu3JEA=;
 b=Wm2Ak6c3cesm5GCS/C02WYsd1749BHY3TVFJMjdSiASet5ztA1ooYQqLO5J5DvxiB4
 HWlxnXzMZ8bhE2Mwa5ahlOU3DpQXIn/D9tWTE3VabqRkpkUguMyy3USr6HxvDKgtqupd
 kcFg4STYOiBJ18jrE+vRtD3Pq4jCuOIJNiUR1z2gdb6eeIgh4IHyj2iB6xcM971q7agm
 iZEEsg60k1gmjAdSDXs7S4ujvIQ7sWjZj9Vh9i7RbOPfTh3QqOVn6+p6NRyRF4gNQBnr
 p3NR2tNupKXrvT1BBv7dA2wZsSMRsQt8JElZnuzK4oZFBnpFhLy7k4QYueWisRuy2kyt
 tw4w==
X-Gm-Message-State: APjAAAWyQGFeomqipbeCWSGbiNn8Ilcngy+lLb7K/V1RR/Q4qD+LSDLz
 WD1dD2qT/BA+3NYiUNM49ChXer+ZuuE=
X-Google-Smtp-Source: APXvYqw0PAqPaGk4hWjyFbvlyejncVcUiQTq3n7cbWPXrKNvQoJaFsq4FxSG/OTM180Q3cX7bL1lpw==
X-Received: by 2002:a17:90a:9905:: with SMTP id
 b5mr7468850pjp.70.1564647678567; 
 Thu, 01 Aug 2019 01:21:18 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id y194sm47245954pfg.116.2019.08.01.01.21.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:18 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 40/47] ARM: split out processor lookup
Date: Thu,  1 Aug 2019 13:46:24 +0530
Message-Id: <d3607e643b719b26753e3a70ea33d5914367f50e.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012119_518157_7C30DB9C 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 65987a8553061515b5851b472081aedb9837a391 upstream.

Split out the lookup of the processor type and associated error handling
from the rest of setup_processor() - we will need to use this in the
secondary CPU bringup path for big.Little Spectre variant 2 mitigation.

Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/cputype.h |  1 +
 arch/arm/kernel/setup.c        | 31 +++++++++++++++++++------------
 2 files changed, 20 insertions(+), 12 deletions(-)

diff --git a/arch/arm/include/asm/cputype.h b/arch/arm/include/asm/cputype.h
index 76bb3bd060d1..53125dad6edd 100644
--- a/arch/arm/include/asm/cputype.h
+++ b/arch/arm/include/asm/cputype.h
@@ -93,6 +93,7 @@
 #define ARM_CPU_PART_SCORPION		0x510002d0
 
 extern unsigned int processor_id;
+struct proc_info_list *lookup_processor(u32 midr);
 
 #ifdef CONFIG_CPU_CP15
 #define read_cpuid(reg)							\
diff --git a/arch/arm/kernel/setup.c b/arch/arm/kernel/setup.c
index 20edd349d379..5aa9c08de410 100644
--- a/arch/arm/kernel/setup.c
+++ b/arch/arm/kernel/setup.c
@@ -599,22 +599,29 @@ static void __init smp_build_mpidr_hash(void)
 }
 #endif
 
-static void __init setup_processor(void)
+/*
+ * locate processor in the list of supported processor types.  The linker
+ * builds this table for us from the entries in arch/arm/mm/proc-*.S
+ */
+struct proc_info_list *lookup_processor(u32 midr)
 {
-	struct proc_info_list *list;
+	struct proc_info_list *list = lookup_processor_type(midr);
 
-	/*
-	 * locate processor in the list of supported processor
-	 * types.  The linker builds this table for us from the
-	 * entries in arch/arm/mm/proc-*.S
-	 */
-	list = lookup_processor_type(read_cpuid_id());
 	if (!list) {
-		pr_err("CPU configuration botched (ID %08x), unable to continue.\n",
-		       read_cpuid_id());
-		while (1);
+		pr_err("CPU%u: configuration botched (ID %08x), CPU halted\n",
+		       smp_processor_id(), midr);
+		while (1)
+		/* can't use cpu_relax() here as it may require MMU setup */;
 	}
 
+	return list;
+}
+
+static void __init setup_processor(void)
+{
+	unsigned int midr = read_cpuid_id();
+	struct proc_info_list *list = lookup_processor(midr);
+
 	cpu_name = list->cpu_name;
 	__cpu_architecture = __get_cpu_architecture();
 
@@ -632,7 +639,7 @@ static void __init setup_processor(void)
 #endif
 
 	pr_info("CPU: %s [%08x] revision %d (ARMv%s), cr=%08lx\n",
-		cpu_name, read_cpuid_id(), read_cpuid_id() & 15,
+		list->cpu_name, midr, midr & 15,
 		proc_arch[cpu_architecture()], get_cr());
 
 	snprintf(init_utsname()->machine, __NEW_UTS_LEN + 1, "%s%c",
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
