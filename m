Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3827E1BEB2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 22:26:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=On78LcN8xn0gcA4HTCpWvmXvM5SsDwlX2qcNMgu6tB4=; b=ZY0Uhi5ichVQRdsY/XUnTSgRd+
	ZzztuSiDa4jSLtwxzdXPsxxJqfKkonBh/lhiva/GqShBmhyb1xkwtnBMbWA1eJZcd/aTfBILpKCMi
	JUCPhRpwv1tGN22eb7uDbQxAIbT+eLsGbd55XgEJEugpJ0wHudBgSIOlJ40ARPAyCXAi5MTyTpr7s
	6NkkKRauaA1o2pqU0m/Pv9CxO7VST5M+W5WSipUpnf+6BiEEXzhO4hXmjEQZECImGKruCLUd19pUE
	+43XU2IBPPgGzWoyNWvx3MUXbB8tvKqokVytB7mBNr8uFVVoORdJscllxRaMatuss4wNzKBcSeVAR
	MzyOEMgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHWa-0003Nb-Tt; Mon, 13 May 2019 20:26:16 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHW7-0002vP-4L
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 20:25:52 +0000
Received: by mail-ed1-x544.google.com with SMTP id g57so19366586edc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 13:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8cHvGiGICHWvlCnNFZkMnztAt4SRYlh07/8kyTvwxfI=;
 b=ifwIc5Jl9rpjlX3fhAIgxoVxIKu9jCrGdf3een5QIY1Xqo73tsIpJAYvFOijwLaxkL
 kAheog8s30qfF5jlrRapHuVCR2n+QuqW0WA8hXRG/zR5UHG+ykfa+8aknBYKkQC0qdxb
 HWQADKEP3ARn8iMOr6CnDiiAy8nxmw9KSh6w8IkSg1efZJNxgZErO2djBMSuRpJtBQUC
 6089pG1vH7QEJXD2fkErpQRPAcd3xKrXqZ+nthbQukgidqyAQmHPnvOwk01MBXE1fgqA
 tW3qrzl9fbmrFo2SjpwPIMpvIi5MJf1hA7fRWb5em4txLTIEHq5vwZGjVtN8bzxcE9MD
 v+ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8cHvGiGICHWvlCnNFZkMnztAt4SRYlh07/8kyTvwxfI=;
 b=tSfg2UebmIc5YkoDYl/O0gtJAroIHbRAuuYK+FkXFiKqa6agkNeeIXybIeEK97wCBp
 mrt18GbbTe83OiOMjJUN1aAb5PfcowcXjg4r4AoYQ6qauPXlvmqnxGjMlhBkEcgKkRCy
 JiJUaHse0TVDScrleNt+J8u/RaYRq00MvdyXRhoFrzUhi4a6zU7PANPTN8NXtMn3Vbw7
 DASFzzUdZfkCZ7MSVoxFiMhSahF61SQzOb8j3w7YFJ4YEgOwD4LVyJK8wWAR+u+Cc0F7
 PajBTiKl9mTFJlDnBY8exddi6XvfgSnbMEzL+tHpvnm82aQ+YxlaTPNdilUZsuomjUMj
 Mdkg==
X-Gm-Message-State: APjAAAWnb1A81t8/W3qYwXKG634Eu9eekKTu64PSUwi0XTB6Z+pL5l4w
 PETsPWkCpbzMunpQmIevn4ibe/kI
X-Google-Smtp-Source: APXvYqzXibiukth/hujqJJOXRBf6/xOOtpttfR+325xvztSzuRGh5snE3FdJ73UBAg0wa6NYVmSI7A==
X-Received: by 2002:a17:906:4dc7:: with SMTP id
 f7mr17120783ejw.207.1557779145347; 
 Mon, 13 May 2019 13:25:45 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id k37sm4036076edb.11.2019.05.13.13.25.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 13:25:44 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] perf vendor events arm64: Add Cortex-A57 and
 Cortex-A72 events
Date: Mon, 13 May 2019 13:25:22 -0700
Message-Id: <20190513202522.9050-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513202522.9050-1-f.fainelli@gmail.com>
References: <20190513202522.9050-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_132547_651451_C46D6491 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Will Deacon <will.deacon@arm.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Ganapatrao Kulkarni <ganapatrao.kulkarni@cavium.com>,
 Namhyung Kim <namhyung@kernel.org>,
 Sean V Kelley <seanvk.dev@oregontracks.org>, Jiri Olsa <jolsa@redhat.com>,
 "moderated list:ARM PMU PROFILING AND DEBUGGING"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Cortex-A57 and Cortex-A72 both support all ARMv8 recommended events
up to the RC_ST_SPEC (0x91) event with the exception of:

- L1D_CACHE_REFILL_INNER (0x44)
- L1D_CACHE_REFILL_OUTER (0x45)
- L1D_TLB_RD (0x4E)
- L1D_TLB_WR (0x4F)
- L2D_TLB_REFILL_RD (0x5C)
- L2D_TLB_REFILL_WR (0x5D)
- L2D_TLB_RD (0x5E)
- L2D_TLB_WR (0x5F)
- STREX_SPEC (0x6F)

Create an appropriate JSON file for mapping those events and update the
mapfile.csv for matching the Cortex-A57 and Cortex-A72 MIDR to that
file.

Reviewed-by: John Garry <john.garry@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../arm/cortex-a57-a72/core-imp-def.json      | 179 ++++++++++++++++++
 tools/perf/pmu-events/arch/arm64/mapfile.csv  |   2 +
 2 files changed, 181 insertions(+)
 create mode 100644 tools/perf/pmu-events/arch/arm64/arm/cortex-a57-a72/core-imp-def.json

diff --git a/tools/perf/pmu-events/arch/arm64/arm/cortex-a57-a72/core-imp-def.json b/tools/perf/pmu-events/arch/arm64/arm/cortex-a57-a72/core-imp-def.json
new file mode 100644
index 000000000000..0ac9b7927450
--- /dev/null
+++ b/tools/perf/pmu-events/arch/arm64/arm/cortex-a57-a72/core-imp-def.json
@@ -0,0 +1,179 @@
+[
+    {
+        "ArchStdEvent": "L1D_CACHE_RD",
+    },
+    {
+        "ArchStdEvent": "L1D_CACHE_WR",
+    },
+    {
+        "ArchStdEvent": "L1D_CACHE_REFILL_RD",
+    },
+    {
+        "ArchStdEvent": "L1D_CACHE_REFILL_WR",
+    },
+    {
+        "ArchStdEvent": "L1D_CACHE_WB_VICTIM",
+    },
+    {
+        "ArchStdEvent": "L1D_CACHE_WB_CLEAN",
+    },
+    {
+        "ArchStdEvent": "L1D_CACHE_INVAL",
+    },
+    {
+        "ArchStdEvent": "L1D_TLB_REFILL_RD",
+    },
+    {
+        "ArchStdEvent": "L1D_TLB_REFILL_WR",
+    },
+    {
+        "ArchStdEvent": "L2D_CACHE_RD",
+    },
+    {
+        "ArchStdEvent": "L2D_CACHE_WR",
+    },
+    {
+        "ArchStdEvent": "L2D_CACHE_REFILL_RD",
+    },
+    {
+        "ArchStdEvent": "L2D_CACHE_REFILL_WR",
+    },
+    {
+        "ArchStdEvent": "L2D_CACHE_WB_VICTIM",
+    },
+    {
+        "ArchStdEvent": "L2D_CACHE_WB_CLEAN",
+    },
+    {
+        "ArchStdEvent": "L2D_CACHE_INVAL",
+    },
+    {
+        "ArchStdEvent": "BUS_ACCESS_RD",
+    },
+    {
+        "ArchStdEvent": "BUS_ACCESS_WR",
+    },
+    {
+        "ArchStdEvent": "BUS_ACCESS_SHARED",
+    },
+    {
+        "ArchStdEvent": "BUS_ACCESS_NOT_SHARED",
+    },
+    {
+        "ArchStdEvent": "BUS_ACCESS_NORMAL",
+    },
+    {
+        "ArchStdEvent": "BUS_ACCESS_PERIPH",
+    },
+    {
+        "ArchStdEvent": "MEM_ACCESS_RD",
+    },
+    {
+        "ArchStdEvent": "MEM_ACCESS_WR",
+    },
+    {
+        "ArchStdEvent": "UNALIGNED_LD_SPEC",
+    },
+    {
+        "ArchStdEvent": "UNALIGNED_ST_SPEC",
+    },
+    {
+        "ArchStdEvent": "UNALIGNED_LDST_SPEC",
+    },
+    {
+        "ArchStdEvent": "LDREX_SPEC",
+    },
+    {
+        "ArchStdEvent": "STREX_PASS_SPEC",
+    },
+    {
+        "ArchStdEvent": "STREX_FAIL_SPEC",
+    },
+    {
+        "ArchStdEvent": "LD_SPEC",
+    },
+    {
+        "ArchStdEvent": "ST_SPEC",
+    },
+    {
+        "ArchStdEvent": "LDST_SPEC",
+    },
+    {
+        "ArchStdEvent": "DP_SPEC",
+    },
+    {
+        "ArchStdEvent": "ASE_SPEC",
+    },
+    {
+        "ArchStdEvent": "VFP_SPEC",
+    },
+    {
+        "ArchStdEvent": "PC_WRITE_SPEC",
+    },
+    {
+        "ArchStdEvent": "CRYPTO_SPEC",
+    },
+    {
+        "ArchStdEvent": "BR_IMMED_SPEC",
+    },
+    {
+        "ArchStdEvent": "BR_RETURN_SPEC",
+    },
+    {
+        "ArchStdEvent": "BR_INDIRECT_SPEC",
+    },
+    {
+        "ArchStdEvent": "ISB_SPEC",
+    },
+    {
+        "ArchStdEvent": "DSB_SPEC",
+    },
+    {
+        "ArchStdEvent": "DMB_SPEC",
+    },
+    {
+        "ArchStdEvent": "EXC_UNDEF",
+    },
+    {
+        "ArchStdEvent": "EXC_SVC",
+    },
+    {
+        "ArchStdEvent": "EXC_PABORT",
+    },
+    {
+        "ArchStdEvent": "EXC_DABORT",
+    },
+    {
+        "ArchStdEvent": "EXC_IRQ",
+    },
+    {
+        "ArchStdEvent": "EXC_FIQ",
+    },
+    {
+        "ArchStdEvent": "EXC_SMC",
+    },
+    {
+        "ArchStdEvent": "EXC_HVC",
+    },
+    {
+        "ArchStdEvent": "EXC_TRAP_PABORT",
+    },
+    {
+        "ArchStdEvent": "EXC_TRAP_DABORT",
+    },
+    {
+        "ArchStdEvent": "EXC_TRAP_OTHER",
+    },
+    {
+        "ArchStdEvent": "EXC_TRAP_IRQ",
+    },
+    {
+        "ArchStdEvent": "EXC_TRAP_FIQ",
+    },
+    {
+        "ArchStdEvent": "RC_LD_SPEC",
+    },
+    {
+        "ArchStdEvent": "RC_ST_SPEC",
+    },
+]
diff --git a/tools/perf/pmu-events/arch/arm64/mapfile.csv b/tools/perf/pmu-events/arch/arm64/mapfile.csv
index 013155f1eb58..927fcddcb4aa 100644
--- a/tools/perf/pmu-events/arch/arm64/mapfile.csv
+++ b/tools/perf/pmu-events/arch/arm64/mapfile.csv
@@ -14,6 +14,8 @@
 #Family-model,Version,Filename,EventType
 0x00000000410fd030,v1,arm/cortex-a53,core
 0x00000000420f1000,v1,arm/cortex-a53,core
+0x00000000410fd070,v1,arm/cortex-a57-a72,core
+0x00000000410fd080,v1,arm/cortex-a57-a72,core
 0x00000000420f5160,v1,cavium/thunderx2,core
 0x00000000430f0af0,v1,cavium/thunderx2,core
 0x00000000480fd010,v1,hisilicon/hip08,core
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
