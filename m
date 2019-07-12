Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0EF6712E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 16:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yLBB7JJ93F3QJ/P1jmoqtEaX76eprje2hLmzt6uDMLA=; b=aQWQY2MEfgbCpC
	LzpA9uZ/IsEggnVTfb3oJYkoGrlFf2ozAeg1X+nNEpffejM9EDF6uH3zPE9CmV6u5mIiMrq7x6sZX
	WSvhav9aj1qsdyGly81fhwJ7VrWakKcEl3LB7uunlzXVKIp25O0hxuzCQhKqeAa0L47P0Jes1S7k6
	mNSVPpS3epHjKKn/fcBc1lsjA6Zje5Xi5mquL5W8ttZFN5ZXM9hab/qnMlk7raKe60U50JBfX5N61
	RF2Jc6AVgreLs7LlY9q/B9dXpCWew4+6MGWlcvI0g6yQYmMwWfPM8aKiI1PdurIOHkO7VQP+LzuYS
	2STwDYFaMdxVXDfZlZDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlwMN-0001Ct-VH; Fri, 12 Jul 2019 14:17:16 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlwM8-0001C3-Ua
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 14:17:02 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 874B460A00; Fri, 12 Jul 2019 14:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562941017;
 bh=9GOgfiKVGcjuF4HEcJKfzwNvPBxXAN11fORk8JftR5Y=;
 h=From:To:Cc:Subject:Date:From;
 b=gD7NYayrnxeomA4thn+imJGMns8dqn+N1mg3SFvXubXEwKiDfdqqGxznxAKjl8AoK
 CGxyi+ipHf9KyWCT1UxHk21LlGZHEJCIdoPOCFnUr7fin0urAAIAmp7eOQRSbaKJNJ
 DZqbMits+RGex6E3vOzRRp/l1aIqyjLPNuNckr8Q=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CD54360A00;
 Fri, 12 Jul 2019 14:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562941016;
 bh=9GOgfiKVGcjuF4HEcJKfzwNvPBxXAN11fORk8JftR5Y=;
 h=From:To:Cc:Subject:Date:From;
 b=c2lPF0ptIrOhoOid1Jn9IqUxEzmtGxWv2biftUi+BT51IXx7mEEhDNaJTMGwpcZ4W
 DdDhudkfoY/xpsV08UisqGLL7D5DP9A5JKxGBOFYx45Dj7TubvfQX0FXJxiGoZra+L
 MJz+WApVO9eqMk3GOVRmvRkiZOmQp/AfG0t1LjhA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CD54360A00
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Mike Leach <mike.leach@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, devicetree@vger.kernel.org,
 David Brown <david.brown@linaro.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCHv8 0/5] Add coresight support for SDM845, MSM8998 and MSM8996
Date: Fri, 12 Jul 2019 19:46:22 +0530
Message-Id: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_071701_024949_531ECA5B 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This patch series adds support for coresight on SDM845, MSM8998, and MSM8996.

* Patch 1 adds device tree nodes for SDM845 coresight components.

* Patch 2 adds device tree nodes for MSM8998 coresight components.

* Patch 3 adds device tree nodes for MSM8996 coresight components.

* Patch 4 adds ETM PIDs for SDM845 and MSM8996.

* Patch 5 adds coresight CPU debug module for Qualcomm Kryo.

All the previous dependencies are now merged.

This patch series has been tested on SDM845 MTP and MSM8996
based Dragonboard 820c and MSM8998 MTP.

v8:
 * Change to clocks instead of power domain for SDM845.
 * Fix compilation with uci_id_debug struct changed to const.
 * Rebase on top of linux-next.

v7:
 * Change uci_id_debug struct to const.
 * Update the subject as suggested by Suzuki.

v6:
 * Update the UCI table with the new macro introduced by
   Mike.
 * Rebase on top of coresight-next and provide a tree with
   all the dependent patches applied.

v5:
 * Added coresight support for MSM8998.
 * Added ETM PIDs for SDM845 and MSM8996 as suggested
   by Suzuki.
 * Added UCI table for Coresight CPU debug module.

v4:
 * Mask out the minor version as suggested by Mathieu.
 * Added the dependent patch description in patch 1.

v3:
 * Added arm,scatter-gather property as suggested by Suzuki.

v2:
 * Added coresight support for msm8996 based on Vivek's patch.
   Cleaned up and added coresight cpu debug nodes for msm8996.
 * Merged coresight dtsi file into sdm845.dtsi as suggested by Bjorn
 * Addressed Mathieu's feedback about masking the minor version in
   etm4_arch_supported() and added a comment for reason to bypass
   the AMBA bus discovery method.

Sai Prakash Ranjan (4):
  arm64: dts: qcom: sdm845: Add Coresight support
  arm64: dts: qcom: msm8998: Add Coresight support
  coresight: etm4x: Add ETM PIDs for SDM845 and MSM8996
  coresight: cpu-debug: Add support for Qualcomm Kryo

Vivek Gautam (1):
  arm64: dts: qcom: msm8996: Add Coresight support

 arch/arm64/boot/dts/qcom/msm8996.dtsi         | 434 +++++++++++++++++
 arch/arm64/boot/dts/qcom/msm8998.dtsi         | 435 +++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi          | 451 ++++++++++++++++++
 .../hwtracing/coresight/coresight-cpu-debug.c |  33 +-
 drivers/hwtracing/coresight/coresight-etm4x.c |  14 +-
 drivers/hwtracing/coresight/coresight-priv.h  |  10 +-
 6 files changed, 1350 insertions(+), 27 deletions(-)

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
