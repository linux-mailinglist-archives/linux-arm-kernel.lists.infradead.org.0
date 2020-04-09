Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E109D1A3363
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 13:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oK3/two1kRYGOJTjtAfsMk2BSvbpGLLKZqpN3Oaatf8=; b=ZmBd+AxkHbmYOX
	s3zPrfr5hcdItDLVj1UMn0a6uRclOuCpzctIUuMiR8GsfTyx9rkFvJwDB4EMFDXRcKTNIItSWU78j
	JlwhBnNxd9f02jKZvJLBVlWYp4xAz1giGf85W132ebi26t0so3NSImVnw6jRhO14VQnvCGBIFqOpQ
	JL7byOPIfR5KyzrDSSPcgZrITkFxUSlY5CN+u0wE2g/dcJeW4b8FdZLgSN7qbENl4wJ7cLhdSdwea
	ZrTbJTAzyuQ8jt7Jf/miqUkp8lKuMFNvx4o1lFqtgwjODV3Agiq4S2FmF8EbZDcXre3BTKyWeu+H0
	lLexXeMyga3Oz8lrJ3Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMVbn-00027L-Mq; Thu, 09 Apr 2020 11:44:35 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMVbL-0001l9-D6
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 11:44:10 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586432648; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=TXEhcyucuYKWLJsGT3T9vXlvyVf4FPT2niPKR6PH99s=;
 b=EA4AfruyWoUSVDE3tSgwkB3RnW535GO2XAjvP5jNU3RVftOGrCupNZFuxyE/PjIDERymlc9N
 9MLVCpHPse2R+6KdxHJOBibhJkzU0vEmHDY4c33UGFV7czC+ZIefV/Xzhsd7oCYz6EsMMPzR
 93r/wB2qKYtc/LOfl2f6RBVyT2Q=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8f0a77.7f3e13be5ea0-smtp-out-n01;
 Thu, 09 Apr 2020 11:43:51 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2A262C43636; Thu,  9 Apr 2020 11:43:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0766BC433D2;
 Thu,  9 Apr 2020 11:43:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0766BC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, mike.leach@linaro.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>
Subject: [PATCHv2 0/3] Add coresight support for QCOM SC7180 SoC
Date: Thu,  9 Apr 2020 17:13:35 +0530
Message-Id: <cover.1586263250.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_044409_036370_EF579418 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-msm@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Patch 1 adds the ETM UCI IDs for Kryo 4XX CPU cores.
Patch 2 adds the DT nodes for coresight components on SC7180.
Patch 3 replaces ETM PIDs with UCI IDs for Kryo385 CPUs on SDM845.

v2:
 * Placed the DT properties for ports in one line as suggested by Stephen.
 * Add UCI IDs for SC7180 and SDM845(Kryo385 CPUs) as suggested by Suzuki.

Sai Prakash Ranjan (3):
  coresight: etm4x: Add support for Qualcomm SC7180 SoC
  arm64: dts: qcom: sc7180: Add Coresight support
  coresight: etm4x: Replace ETM PIDs with UCI IDs for Kryo385

 arch/arm64/boot/dts/qcom/sc7180.dtsi          | 471 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight-etm4x.c |   6 +-
 2 files changed, 475 insertions(+), 2 deletions(-)

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
