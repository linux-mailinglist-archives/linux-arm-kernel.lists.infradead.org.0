Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E57F77B952
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 07:58:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qp3yFjujLTr2jzZK30R22+or/xq4qFj0PL6Ep6XpzuY=; b=PmBo7C2WVHxgzB
	5DA3Q1tvqmZWpWVyIVkHe4RXrRi/kGQLOtc6Hv+h1UK7QXj8DIAV1Jz3E3Ytm7q7t377c+3WFWjpC
	w4P6PecPNFFRAiQk8J3XCWowF4+oCdMM6tBtrhs46AheiFsnuBlsEJmibh1H18J+5fl2OCYE8la67
	R6h/VUZBQcYQhNYynyL18OE3Bh5oI52AZgsJ2ktEsAO35ViIwKQXZFn3tSguQjtiWnsk587iGwTJB
	OZeyvomfCZ9h3OyCmno8vN9ELZLiec9m7Xqdp5ikTH4Y0lC3iR45vPJDdIETQwbtJKw0DAebEO/ut
	6Ybwmxo8/qBQLLEWj/VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hshdI-00016h-J5; Wed, 31 Jul 2019 05:58:40 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hshd5-00016L-VN
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 05:58:29 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D78BA6070D; Wed, 31 Jul 2019 05:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564552706;
 bh=TglDuzt/i/hZbxIU8sD5b+3/zua3/V5s6jwjG6xUddo=;
 h=From:To:Cc:Subject:Date:From;
 b=PQL6ESuhrcTyHiDgjpe+G6yCRJGcf6ij1VY09cEbxo7yVtWDTzq3UhTcqM15LVqSM
 cyWN9CZ5eb1n8doS5soUB1GDuCo5mmGyNW8nI0ukdeqRI7ALS0x3Go7mQ5lHKWL82n
 nGC1S/FSpLO6GT7M9kkn8mxG9C4rMPxNzSGdCFQY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C37D060247;
 Wed, 31 Jul 2019 05:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564552705;
 bh=TglDuzt/i/hZbxIU8sD5b+3/zua3/V5s6jwjG6xUddo=;
 h=From:To:Cc:Subject:Date:From;
 b=oMr+No8DfKaeJzw1M7LsqG70HqVLUxQp/Hdab+BYLRmaAhx5C/CA6txptmHL7FJ+9
 joofJ1kfCUO6VGzukEIHI2m5+Z3QHm61h4km1wHW/BDGhE0Zm93hqamg8kzZ083YKg
 478NSiQATGI0ph0ZZJpp0bI87+VexXcJMJPtu/wk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C37D060247
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Leo Yan <leo.yan@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andy Gross <agross@kernel.org>, David Brown <david.brown@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCHv9 0/3] Add coresight support for SDM845, MSM8998 and MSM8996
Date: Wed, 31 Jul 2019 11:27:59 +0530
Message-Id: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_225828_050414_866943E4 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

All the previous dependencies are now merged.

This patch series has been tested on SDM845 MTP and MSM8996
based Dragonboard 820c and MSM8998 MTP.

Test results for SDM845 and MSM8996 with scatter gather are uploaded to below github link:
 - https://github.com/saiprakash-ranjan/coresight-test-results 

v9:
 * Add test results for SDM845 and MSM8996.
 * Add missing funnel node in MSM8996.
 
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

Sai Prakash Ranjan (2):
  arm64: dts: qcom: sdm845: Add Coresight support
  arm64: dts: qcom: msm8998: Add Coresight support

Vivek Gautam (1):
  arm64: dts: qcom: msm8996: Add Coresight support

 arch/arm64/boot/dts/qcom/msm8996.dtsi | 468 ++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 435 ++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi  | 451 +++++++++++++++++++++++++
 3 files changed, 1354 insertions(+)

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
