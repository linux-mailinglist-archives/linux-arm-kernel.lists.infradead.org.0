Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EA857B34
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8uCqz3WyfYyLPMa9oVyf3TEFvdcMJGTHODB7B50Cq6w=; b=LvwHvRfDKzMOCs
	/jujTue44SJIHIjIcAEQvPumW0x7R27FKpwNsZaAMU3M0Ddo3UhSWFB/50OJwG3tAVZNNQgTCCrZ3
	SiDyzCAzDxXEFVjr8qYhvszSoz3Wx/Nj8+TfiivpdchiaRC5UAxB62svSLdCffyrNRi0forx6C+9+
	JBH87yFCDcdX70pHAr1l+Z/Ow4JwBUqVM8UhOkzIiccOxH71Y0qNCCzt4WxFHKTb/8kn3Vrkap4+F
	vKCbIfYy0ua9iPxeeSBMOaVJfeZNoOLBjf6i15WiO7T2pbRIzuFoXgWe4huOrsUx39ByuQ4E/weHQ
	jgV36AjulCGPZSMZFkGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMoU-0006zB-8z; Thu, 27 Jun 2019 05:19:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMoF-0006ep-K8
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:18:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sGssLqG2aCJuDghVdcSgxEttGZQS329IWwia9WF29TU=; b=ZgkGn2lIz6zK62gSRu2+4Qfl1O
 kMsvlTfZpMPCVd5Mcq5vXlYYZmIpsrEVhfhXebcfZZy5q0GYOdURvtvySUXJY9LJiKH/Zwqn+iO4v
 7A50ObRaCF0vREnTlp8CYfD8U5DRViHwi/Q8NymA5DJZcsePfdzjDsFv4hv88uiB0oaGLcXCuqAo2
 HcOVM9znBMZyZMfnmbqxPO5cQF/i/lmlS4L6A8jjUad7/JlnxTXjLo34P1DCu7hORCU+VMO7mvMXb
 uFdRxcdsOGhV1LqMUOviqOjuL16bnCfBQJ8TjjE/pF/ZFe/gLaZnCqcFQ3FTCXir0wfawXkFm/u6P
 X0kmmwRg==;
Received: from smtp.codeaurora.org ([198.145.29.96])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMHu-0004tv-J2
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 04:45:36 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 625FA60ACA; Thu, 27 Jun 2019 04:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561610698;
 bh=xcVtg5zfJpAaPqWmKdZvrhg6l+boP2yFtIErksXuDNA=;
 h=From:To:Cc:Subject:Date:From;
 b=ESzDhR8PIE0Y3EX+uYYSluJHiIcWsjBYjt6Kl/SLDg9ogJkOHNkldqnXx0jc2JR6n
 E8gVb9Ltvf1El4HT5k+fVpXZYGsusCEz6UFZt3l5FP/S6/4WO9TYikE9VLFD195je/
 K2gUll6eU8c6/2MjHjJmZp19aZQO/8HK0OwGIIuo=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 165C260909;
 Thu, 27 Jun 2019 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561610697;
 bh=xcVtg5zfJpAaPqWmKdZvrhg6l+boP2yFtIErksXuDNA=;
 h=From:To:Cc:Subject:Date:From;
 b=al/qui08bseXmFy75eEdJMgW6kdAjL5jAVBnWBZJoT4G169Kz8CPTO1R3gU1wLBrI
 sBXILX/7mvLFxxEkWUhTwpPTz/aWGLXh2iQaVI9645HkorVk0ItKJxQJmqqurCMFdB
 kXYckg7doHfw8ffHQXTyXnORd/qUPtW3aRER4CZk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 165C260909
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
Subject: [RESEND PATCHv4 0/1] coresight: Do not default to CPU0 for missing
 CPU phandle
Date: Thu, 27 Jun 2019 10:14:41 +0530
Message-Id: <cover.1561610498.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_054534_776980_FB377EC4 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case of missing CPU phandle, the affinity is set default to
CPU0 which is not a correct assumption. Fix this in coresight
platform to set affinity to invalid and abort the probe in drivers.
Also update the dt-bindings accordingly.

Resent with Reviewed tag by Suzuki.

v4:
 * Fix return for !CONFIG_ACPI and !CONFIG_OF.

v3:
 * Addressed review comments from Suzuki and updated
   acpi_coresight_get_cpu.
 * Removed patch 2 which had invalid check for online
   cpus.

v2:
 * Addressed review comments from Suzuki and Mathieu.
 * Allows the probe of etm and cpu-debug to abort earlier
   in case of unavailability of respective cpus.

Sai Prakash Ranjan (1):
  coresight: Do not default to CPU0 for missing CPU phandle

 .../bindings/arm/coresight-cpu-debug.txt      |  4 ++--
 .../devicetree/bindings/arm/coresight.txt     |  8 +++++---
 .../hwtracing/coresight/coresight-cpu-debug.c |  3 +++
 drivers/hwtracing/coresight/coresight-etm3x.c |  3 +++
 drivers/hwtracing/coresight/coresight-etm4x.c |  3 +++
 .../hwtracing/coresight/coresight-platform.c  | 20 +++++++++----------
 6 files changed, 26 insertions(+), 15 deletions(-)

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
