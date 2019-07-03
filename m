Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A85A5DCF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 05:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ElmKNbDIVOEthB9ieiQMr4tfO2gTy8+YBSUE62MIurs=; b=m2Z5mcql56FF24
	Cc4cXhBDctvHv6AqrSDtmMw1ZN9yuUuYogOMhAEL1duLdXKhclrOOQaSAZlAxRTlYRfyeqaI6c3t4
	bpLoSpOaUlK7aQ1R3EQml8a6aBoWshDY3rUy/lFux7bDRgPQTLIgDC4r1i81zCzgoQkqGBos0Ir1H
	pCOPzhH0RCvNRJOwZ2zQ985YCwewnJ2nN0vVJ//h7WMK1cJZRc1xnnnAfnEz46hnVWmN6nAu1Y9HS
	34FKNFcqwavGYgx4REHPQUBHakyh2fMSar1ULsfcTKnSvflwjEVo5HSOTqJnyT9eH+/WqFjxAoWaW
	/tyug9ZGDP5rSKZipIUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiVxB-000173-ND; Wed, 03 Jul 2019 03:29:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiVwj-0000yz-0b
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 03:28:39 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9332B2189F;
 Wed,  3 Jul 2019 03:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562124516;
 bh=kh1htbmle8QuNO8L1oukcK+e54dA3anpyPlbs9vBagc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bkDsVs7CLtHxFfDemD59Sy0dhp9T1MQ93UXpPypJNEvqbhu36B4fpCp1/Xx3MYApm
 KTyq7lqvvqilYS8BNCp/rVox0+JKA3ltmhkfHQR0Yac3xsL9aA6uBhj4ZrZkri2FZO
 RI7/km5S2b4Wn9/Dov9J/AV/WPbPgTJBdQDud23E=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 10/18] perf jevents: Add support for Hisi hip08 DDRC PMU
 aliasing
Date: Wed,  3 Jul 2019 00:27:38 -0300
Message-Id: <20190703032746.21692-11-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703032746.21692-1-acme@kernel.org>
References: <20190703032746.21692-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_202837_325497_F0E1B3C7 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Shaokun Zhang <zhangshaokun@hisilicon.com>, Andi Kleen <ak@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Thomas Richter <tmricht@linux.ibm.com>, Clark Williams <williams@redhat.com>,
 John Garry <john.garry@huawei.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Hendrik Brueckner <brueckner@linux.ibm.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Ben Hutchings <ben@decadent.org.uk>,
 linux-arm-kernel@lists.infradead.org, Kan Liang <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: John Garry <john.garry@huawei.com>

Add support for Hisi hip08 DDRC PMU aliasing. We can now do something like
this:

$perf list

[snip]

uncore ddrc:
  uncore_hisi_ddrc.act_cmd
       [DDRC active commands. Unit: hisi_sccl,ddrc]
  uncore_hisi_ddrc.flux_rcmd
       [DDRC read commands. Unit: hisi_sccl,ddrc]
  uncore_hisi_ddrc.flux_wcmd
       [DDRC write commands. Unit: hisi_sccl,ddrc]
  uncore_hisi_ddrc.flux_wr
       [DDRC precharge commands. Unit: hisi_sccl,ddrc]
  uncore_hisi_ddrc.rnk_chg
       [DDRC rank commands. Unit: hisi_sccl,ddrc]
  uncore_hisi_ddrc.rw_chg
       [DDRC read and write changes. Unit: hisi_sccl,ddrc]

Performance counter stats for 'system wide':

                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl1_ddrc0]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl3_ddrc1]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl5_ddrc2]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl7_ddrc3]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl5_ddrc0]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl7_ddrc1]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl1_ddrc3]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl1_ddrc1]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl3_ddrc2]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl5_ddrc3]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl3_ddrc0]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl5_ddrc1]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl7_ddrc2]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl7_ddrc0]
            20,421      uncore_hisi_ddrc.flux_rcmd [hisi_sccl1_ddrc2]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl3_ddrc3]

       1.001559011 seconds time elapsed

The kernel driver is in drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c

Signed-off-by: John Garry <john.garry@huawei.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Ben Hutchings <ben@decadent.org.uk>
Cc: Hendrik Brueckner <brueckner@linux.ibm.com>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>
Cc: Thomas Richter <tmricht@linux.ibm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linuxarm@huawei.com
Link: http://lkml.kernel.org/r/1561732552-143038-3-git-send-email-john.garry@huawei.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 .../arm64/hisilicon/hip08/uncore-ddrc.json    | 44 +++++++++++++++++++
 tools/perf/pmu-events/jevents.c               |  1 +
 2 files changed, 45 insertions(+)
 create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json

diff --git a/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json
new file mode 100644
index 000000000000..0d1556fcdffe
--- /dev/null
+++ b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json
@@ -0,0 +1,44 @@
+[
+   {
+	    "EventCode": "0x02",
+	    "EventName": "uncore_hisi_ddrc.flux_wcmd",
+	    "BriefDescription": "DDRC write commands",
+	    "PublicDescription": "DDRC write commands",
+	    "Unit": "hisi_sccl,ddrc",
+   },
+   {
+	    "EventCode": "0x03",
+	    "EventName": "uncore_hisi_ddrc.flux_rcmd",
+	    "BriefDescription": "DDRC read commands",
+	    "PublicDescription": "DDRC read commands",
+	    "Unit": "hisi_sccl,ddrc",
+   },
+   {
+	    "EventCode": "0x04",
+	    "EventName": "uncore_hisi_ddrc.flux_wr",
+	    "BriefDescription": "DDRC precharge commands",
+	    "PublicDescription": "DDRC precharge commands",
+	    "Unit": "hisi_sccl,ddrc",
+   },
+   {
+	    "EventCode": "0x05",
+	    "EventName": "uncore_hisi_ddrc.act_cmd",
+	    "BriefDescription": "DDRC active commands",
+	    "PublicDescription": "DDRC active commands",
+	    "Unit": "hisi_sccl,ddrc",
+   },
+   {
+	    "EventCode": "0x06",
+	    "EventName": "uncore_hisi_ddrc.rnk_chg",
+	    "BriefDescription": "DDRC rank commands",
+	    "PublicDescription": "DDRC rank commands",
+	    "Unit": "hisi_sccl,ddrc",
+   },
+   {
+	    "EventCode": "0x07",
+	    "EventName": "uncore_hisi_ddrc.rw_chg",
+	    "BriefDescription": "DDRC read and write changes",
+	    "PublicDescription": "DDRC read and write changes",
+	    "Unit": "hisi_sccl,ddrc",
+   },
+]
diff --git a/tools/perf/pmu-events/jevents.c b/tools/perf/pmu-events/jevents.c
index a1184ea64cc6..d5997741f1d8 100644
--- a/tools/perf/pmu-events/jevents.c
+++ b/tools/perf/pmu-events/jevents.c
@@ -236,6 +236,7 @@ static struct map {
 	{ "CPU-M-CF", "cpum_cf" },
 	{ "CPU-M-SF", "cpum_sf" },
 	{ "UPI LL", "uncore_upi" },
+	{ "hisi_sccl,ddrc", "hisi_sccl,ddrc" },
 	{}
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
