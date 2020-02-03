Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360B4150765
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 14:37:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AqIbviWh9/3nchOn7KP+kyxa+6/WO8c2GDMuOHeGh9M=; b=pty
	K5nVt4tsG3w/JpiepM7mdHF6yV039+g6zQACgzEqeVVHwpGD6jmr9YHM1AyCZpwUsrAwP8FV829vL
	f0Pdz9xspOMr89dAwSCA1ZuHnrE21lX9oLnlyvfODaazAnfB9eoifF0FMb90H+r5VZAkz68taIGr/
	nDyfGcPkWBS4KXOkU9+zRZnY+oST3Vv3qjOiWTwyX+By7NyHp+xGvzLTb4GKO2M1FZQSMD4ErHQCm
	EW15SJtph3tuw2POX/+uOp6CBwLB1yQkke+hrOTDtGYK9MYaU7v8LIGny1bugMOLXMeTZqPuJkPkC
	IgDDAb+vnOe+rcsIlT/VWbV120pszKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iybuN-000464-V5; Mon, 03 Feb 2020 13:36:59 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iybuF-00045X-SN
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 13:36:53 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580737012; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=TI7++YyK03sKgcFbSkBWtvsKpSvZvojFEGq67S9YhVg=;
 b=DdWTImzF7P7Kc4Lvw9/TMx1+m8Ffsu38tI2wcRmVj9qcIXRiANscJeZpP3jkygCoDjJhaOzc
 nHdkebymNLT9yLuRci6oIVhfFnOtHvmKS1xU4aXIv7xGlgCGbS7dv9QOEIYPJLkJ3LYaI5Mb
 waHKwYfTlhQOxgY7EyQMlYBARjU=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3821f1.7f4ec4a95c70-smtp-out-n02;
 Mon, 03 Feb 2020 13:36:49 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C6719C447A2; Mon,  3 Feb 2020 13:36:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mkshah-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: mkshah)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AE292C433A2;
 Mon,  3 Feb 2020 13:36:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AE292C433A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=mkshah@codeaurora.org
From: Maulik Shah <mkshah@codeaurora.org>
To: swboyd@chromium.org, agross@kernel.org, david.brown@linaro.org,
 sudeep.holla@arm.com, Lorenzo.Pieralisi@arm.com
Subject: [PATCH v3 0/7] Add RSC power domain support
Date: Mon,  3 Feb 2020 19:05:33 +0530
Message-Id: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_053652_254944_76625CFC 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 dianders@chromium.org, rnayak@codeaurora.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, bjorn.andersson@linaro.org, ilina@codeaurora.org,
 ulf.hansson@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v3:
- Address Rob's comment on dt property value
- Address Stephen's comments on rpmh-rsc driver change
- Include sc7180 cpuidle low power mode changes from [1]
- Include hierarchical domain idle states converter change from [2]

Changes in v2:
- Add Stephen's Reviewed-By to the first three patches
- Addressed Stephen's comments on fourth patch
- Include changes to connect rpmh domain to cpuidle and genpds

Resource State Coordinator (RSC) is responsible for powering off/lowering
the requirements from CPU subsystem for the associated hardware like buses,
clocks, and regulators when all CPUs and cluster is powered down.

RSC power domain uses last-man activities provided by genpd framework based on
Ulf Hansoon's patch series[3], when the cluster of CPUs enter deepest idle
states. As a part of domain poweroff, RSC can lower resource state requirements
by flushing the cached sleep and wake state votes for resources.

[1] https://patchwork.kernel.org/patch/11218965
[2] https://patchwork.kernel.org/patch/10941671
[3] https://patchwork.kernel.org/project/linux-arm-msm/list/?series=222355

Maulik Shah (6):
  drivers: qcom: rpmh: fix macro to accept NULL argument
  drivers: qcom: rpmh: remove rpmh_flush export
  dt-bindings: soc: qcom: Add RSC power domain specifier
  drivers: qcom: rpmh-rsc: Add RSC power domain support
  arm64: dts: qcom: sc7180: Add cpuidle low power states
  arm64: dts: qcom: sc7180: Convert to the hierarchical CPU topology
    layout

Ulf Hansson (1):
  drivers: firmware: psci: Add hierarchical domain idle states converter

 .../devicetree/bindings/soc/qcom/rpmh-rsc.txt      |   9 ++
 arch/arm64/boot/dts/qcom/sc7180.dtsi               | 133 ++++++++++++++++++++
 drivers/cpuidle/cpuidle-psci-domain.c              | 137 ++++++++++++++++++---
 drivers/cpuidle/cpuidle-psci.c                     |  41 +++---
 drivers/cpuidle/cpuidle-psci.h                     |  11 ++
 drivers/soc/qcom/rpmh-internal.h                   |   3 +
 drivers/soc/qcom/rpmh-rsc.c                        |  81 ++++++++++++
 drivers/soc/qcom/rpmh.c                            |  22 ++--
 include/soc/qcom/rpmh.h                            |   5 -
 9 files changed, 389 insertions(+), 53 deletions(-)

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
