Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F01FA589AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 20:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NzZ0d4qDahosgp9JWrLBJaC6HdQziFj7aZxr7z9VGAQ=; b=pCY5pstqzFc7f5
	5KeQvGcwKuBVWEVGqmLrdcy1jRoefB4wh8pOfHV295MxJ2qmrE2cFVCtcR5TviwWAqO6KkR6pWfe5
	ID/vBFG0aay8q3cbm1GzxcojFWOxihL8lDwtASarFMeSN4CbTMU9R3kq+1U56RI1Uv1lHjAnFSi0c
	05e5uvKC9Y7j7GmP0zx1RecwwdSG01geGMywi2IMsfR4GeMlLj2Vz5KrA8kxNte0rnwj+04Sfr9ws
	0zPd9Rmv8EHfu/PMufl70RvaHRob9m0ju9awE6D/4l+tbm1zsLFSuKPTvwEaMwxeu4ZzmhF0zYSMX
	sTSA4wPNOjmQ4CvByxJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYx0-0003UP-7i; Thu, 27 Jun 2019 18:16:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYwA-0003Fk-Ti
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 18:16:00 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9C35D60E75; Thu, 27 Jun 2019 18:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561659358;
 bh=Lz3k/LZ0eJkEWfeJA4dvwqIvzmvYo86ur1JDk9IAS94=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Lzkd05cadR+VcLtDFKmWEYTQr+Z/FWNMayfa1lp2IBpnHx2sogvA6WDtkLSHn4xJ/
 Xg5SaKZXkLGVErGTHZ2nGVijSvYYfeUpZXw3ALAZrgsLNcDD4sknz5QtpY7CPB0OFQ
 29foyOZHT/oJMontSvlBDyuZh0gWE57U0JlSdC80=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AA74760AA8;
 Thu, 27 Jun 2019 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561659357;
 bh=Lz3k/LZ0eJkEWfeJA4dvwqIvzmvYo86ur1JDk9IAS94=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iOVrGKe0a3g9isQq9B0nO6PQcASg/n9Duxk7VJzhena/RHnH11geeWn9cixyk2mki
 gr0L+hMPDb463HmPsrkuYeK50k9kJ43BcWBLPNMckfYJTgmSQI2hbgrPnjpStVb/80
 g4rODFOAi6S8WYjrtQU02g8lHsQ/kB3a4RedpHKw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AA74760AA8
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 Leo Yan <leo.yan@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 David Brown <david.brown@linaro.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCHv5 1/2] dt-bindings: coresight: Change CPU phandle to required
 property
Date: Thu, 27 Jun 2019 23:45:28 +0530
Message-Id: <2afedb941294af7ba0658496b4aca3759a4e43ff.1561659046.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_111559_078923_53C98134 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Do not assume the affinity to CPU0 if cpu phandle is omitted.
Update the DT binding rules to reflect the same by changing it
to a required property.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 .../devicetree/bindings/arm/coresight-cpu-debug.txt       | 4 ++--
 Documentation/devicetree/bindings/arm/coresight.txt       | 8 +++++---
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt b/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
index 298291211ea4..f1de3247c1b7 100644
--- a/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
+++ b/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
@@ -26,8 +26,8 @@ Required properties:
 		processor core is clocked by the internal CPU clock, so it
 		is enabled with CPU clock by default.
 
-- cpu : the CPU phandle the debug module is affined to. When omitted
-	the module is considered to belong to CPU0.
+- cpu : the CPU phandle the debug module is affined to. Do not assume it
+        to default to CPU0 if omitted.
 
 Optional properties:
 
diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
index 8a88ddebc1a2..fcc3bacfd8bc 100644
--- a/Documentation/devicetree/bindings/arm/coresight.txt
+++ b/Documentation/devicetree/bindings/arm/coresight.txt
@@ -59,6 +59,11 @@ its hardware characteristcs.
 
 	* port or ports: see "Graph bindings for Coresight" below.
 
+* Additional required property for Embedded Trace Macrocell (version 3.x and
+  version 4.x):
+	* cpu: the cpu phandle this ETM/PTM is affined to. Do not
+	  assume it to default to CPU0 if omitted.
+
 * Additional required properties for System Trace Macrocells (STM):
 	* reg: along with the physical base address and length of the register
 	  set as described above, another entry is required to describe the
@@ -87,9 +92,6 @@ its hardware characteristcs.
 	* arm,cp14: must be present if the system accesses ETM/PTM management
 	  registers via co-processor 14.
 
-	* cpu: the cpu phandle this ETM/PTM is affined to. When omitted the
-	  source is considered to belong to CPU0.
-
 * Optional property for TMC:
 
 	* arm,buffer-size: size of contiguous buffer space for TMC ETR
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
