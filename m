Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82CE5F611
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Ow1ajFHmvhnDBdHH9mxPsffgKS5BG/BOiOvtPSQsgE=; b=ZLxHOCGUBX9eCs
	EXwSnoB9nM2uASTU42eqMnt9bDB/+BpLn1/aYfehGT00qEaYan2f7deqwyuGRjZCllrGjEkyIy9fo
	desK2p46yLTyGhbmCPgdADtfmHhrHQmq+ugw5zZLbwkDptWFfy5X6xkPZlD9N4S3q5EtLHh36P+Sd
	rUA7fJqfluNawumQLJjRZuj6//c5YRC6w+CqduCKXPuzXWlwN+0MuoBQJ+LMnFAXG6Rp+r21h0XLM
	EP3mLDX0oqg7T6N+vLUdRSVfLJ6NbFglYo3F8fHwRhieKfNYtLiE5C7J2ntumzrCnd8quIKoINAgA
	6+ZMYKe09rZRy9rVwo0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyR7-0005QC-4a; Thu, 04 Jul 2019 09:53:53 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyQe-0005ES-Cq
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:53:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 217B560E5F; Thu,  4 Jul 2019 09:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562234004;
 bh=lSCRmpdQlCEd/Kj8Ntu2jR3/PZflhefTpXcBTNR9qDk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y4uuTthmGafAC0u/UrIeqk12SrX26Bg6zbfUaqfUNB+A/rQapXdLSOh3Semg+idZg
 m+LkjMQlXRaNlodRbxv5H6dozjMPAuUZ1RO1L6wu65nUnkhSC/7uO1LGLUWMKuV+6C
 38cTy0rkYkvVRTIuiDJA9hIgvj8iXiuNux9+pBBQ=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 414FB60A44;
 Thu,  4 Jul 2019 09:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562234001;
 bh=lSCRmpdQlCEd/Kj8Ntu2jR3/PZflhefTpXcBTNR9qDk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IDed2RoA9pvh4fkzjnfjW6cplh1uxpriqW9kZW7wY1JcEwBlX+Kf3AuiSDv0b8shZ
 aciHGwkeIZJrSFlm6YdhGA78o9Y5wrMeLIssWaKwXzYnhVaT1ajxY9N3v0nW/aGAD6
 iVD37F0EqmGjwBQbqSp3UIo4yNVH0q1fTimnZBEA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 414FB60A44
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andy Gross <andy.gross@linaro.org>, David Brown <david.brown@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [RESEND PATCHv5 1/2] dt-bindings: coresight: Change CPU phandle to
 required property
Date: Thu,  4 Jul 2019 15:23:04 +0530
Message-Id: <0f7f4105d5ffea6ca4313271f3b3fee69da2106a.1562229018.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1562229018.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1562229018.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_025324_518659_418ED2B6 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-arm-msm@vger.kernel.org,
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
Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
