Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 995096665D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OESTivtWnYGo1P5r1OAULCaXhXEFoNv2ovqjUi0hLU=; b=hevrffcEuVkBsf
	KScqEc9192cRfk4awRznE5pPpSb95RIuavv/mKsNBzQOJ/SOG4UHfC4VeFVnLH9MY1CyvNFdcreHY
	2avzbwaCee3qvt2Zbj7cXjMmmcuLrIFvqtkFaqUhgAAsTvoiVDeYlPCcBWEo/IQpZVRhWsBe++Iil
	3fLzllco+NmXxDP4Io03wYGJmJ3fhS5NgbOPP6YQMEf9GCGRGRLgTni838hYtqIYlmdfXe7Qmmw0f
	IMdN3YIQ8vlq0dERIT/HB+HohoUuqUhoL86JkV4SSZcaH/BB2qU3b1BqGFAIOQrLY/kA2fQQeyTXG
	jHs+KJdbZUV5/Pc00amQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloDo-00066S-2L; Fri, 12 Jul 2019 05:35:52 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7l-0000gx-Bu
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:38 +0000
Received: by mail-pl1-x642.google.com with SMTP id i2so4215091plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZERHer/S6V7v3IyXGHBRQXsjn5NA4nSXv7B2aoThKNw=;
 b=LTGjy4RbPjl9R3s4FBJE7KxiWqlXV2Jf5Pd7wO0KzlxPr4SUYEcUciTXuVXj7usHms
 PBQ0GacQJxLledV6d0cVnlYP7EdoN0ibucpvd5Ox2iDnM4lDcvrfAwBw9U3rins3V+uC
 C8hekJ0VKJ136OK57vbzVb/TQ2PkcO7zGjqhj+zavYVK/VEoiPLQXx5n5kxQm+P2TCHu
 QhCYjQR9YE9M+lQtk+SbouEYzEG5+J9vd5nBHptbGKNBegltTaQCKUt7YlzFwAelFi3i
 qFYfmRpohadOUJwGsZgQSyedLaAGEjxeLe/Fn5VrzZ0NCbgkUnncJO0AbbF5RRNRniql
 Ok3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZERHer/S6V7v3IyXGHBRQXsjn5NA4nSXv7B2aoThKNw=;
 b=PAskQtA+zJTAOliZllV/PaIUAGxO//83NWtBBte5+k28n1NGN6WCHnseVsGlhoJnOU
 hsvw8MjVQX6qVgkYJZfzkwtgDYVApL1S1Wfh+bO0ZTzlGQu3DKGJAU5vFjjbkqqo0Lwc
 7Da6US6km29A6/ioXcssNbo4dVQ567ji2rIZYiegKudTf6f+UP8LvYWOmqkFWLR2XKE6
 SvkJOQmA2M3iHSJUpvtgfSxVeoVunfqcXvkLv3xVaw4dBm7xVKaWRF2wrVA5dzZitBnI
 KCKcmirxOl8S6/5mMbcCQGqNlYdtCiJ6h6kRC0V9DHH4ZTB3J6Aa6ZavsYvFCVCYgwAI
 e9dQ==
X-Gm-Message-State: APjAAAXLZyR/GSRG+rURHc/khrmvCx5t53bDqggtJIUnXQEo3fAam7hh
 VdW0d8rb4ojk80eu2oVgdcFVUQ==
X-Google-Smtp-Source: APXvYqzkQsNGjcvFC1dsQGwJlq+DhpGSy6v41hr8up7BSid1MOh4Os1JsA+bK4AX8YSqfYHgABj3Mg==
X-Received: by 2002:a17:902:8b88:: with SMTP id
 ay8mr8861169plb.139.1562909376770; 
 Thu, 11 Jul 2019 22:29:36 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id n98sm6937170pjc.26.2019.07.11.22.29.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:36 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 14/43] arm64: Introduce cpu_die_early
Date: Fri, 12 Jul 2019 10:58:02 +0530
Message-Id: <f6930181f7a0cfb8e126fcbd086e3b093d89136c.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222937_460691_E7B51321 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

commit ee02a15919cf86c004142edaa05b43f7ff10edf0 upstream.

Or in other words, make fail_incapable_cpu() reusable.

We use fail_incapable_cpu() to kill a secondary CPU early during the
bringup, which doesn't have the system advertised capabilities.
This patch makes the routine more generic, to kill a secondary
booting CPU, getting rid of the dependency on capability struct.
This can be used by checks which are not necessarily attached to
a capability struct (e.g, cpu ASIDBits).

In that process, renames the function to cpu_die_early() to better
match its functionality. This will be moved to arch/arm64/kernel/smp.c
later.

Cc: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/cpufeature.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index d0c82bc02de4..b7f01bf47988 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -853,15 +853,15 @@ static inline void set_sys_caps_initialised(void)
 }
 
 /*
- * Park the CPU which doesn't have the capability as advertised
- * by the system.
+ * Kill the calling secondary CPU, early in bringup before it is turned
+ * online.
  */
-static void fail_incapable_cpu(char *cap_type,
-				 const struct arm64_cpu_capabilities *cap)
+void cpu_die_early(void)
 {
 	int cpu = smp_processor_id();
 
-	pr_crit("CPU%d: missing %s : %s\n", cpu, cap_type, cap->desc);
+	pr_crit("CPU%d: will not boot\n", cpu);
+
 	/* Mark this CPU absent */
 	set_cpu_present(cpu, 0);
 
@@ -902,8 +902,11 @@ void verify_local_cpu_capabilities(void)
 		 * If the new CPU misses an advertised feature, we cannot proceed
 		 * further, park the cpu.
 		 */
-		if (!feature_matches(__raw_read_system_reg(caps[i].sys_reg), &caps[i]))
-			fail_incapable_cpu("arm64_features", &caps[i]);
+		if (!feature_matches(__raw_read_system_reg(caps[i].sys_reg), &caps[i])) {
+			pr_crit("CPU%d: missing feature: %s\n",
+					smp_processor_id(), caps[i].desc);
+			cpu_die_early();
+		}
 		if (caps[i].enable)
 			caps[i].enable(NULL);
 	}
@@ -911,8 +914,11 @@ void verify_local_cpu_capabilities(void)
 	for (i = 0, caps = arm64_hwcaps; caps[i].matches; i++) {
 		if (!cpus_have_hwcap(&caps[i]))
 			continue;
-		if (!feature_matches(__raw_read_system_reg(caps[i].sys_reg), &caps[i]))
-			fail_incapable_cpu("arm64_hwcaps", &caps[i]);
+		if (!feature_matches(__raw_read_system_reg(caps[i].sys_reg), &caps[i])) {
+			pr_crit("CPU%d: missing HWCAP: %s\n",
+					smp_processor_id(), caps[i].desc);
+			cpu_die_early();
+		}
 	}
 }
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
