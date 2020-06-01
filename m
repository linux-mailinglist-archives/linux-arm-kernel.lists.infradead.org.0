Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729481E9FB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y38n46nD4EeYNjawutmJ5VkdxEhJQnCq1UOt94Qr9IM=; b=f+Hz1Wmy7bDkej
	1Bf2ZqbR81lW5BaU0zTn0rmLtAxvltFQCvTHKj/A2NP9TYFp+SFLtTM8AFYhC0v7RCMZe5ndjZCfo
	sDr+ABLQKGGU0Fp3dSszqoB/C5g/0LiObhf8nSPRF1K1rpHr2o3gdlXTMtCyh3Tl7WNlYzrPWnoLQ
	iaO34305AkLtBH6hoO+6uAtP74PmiVlRKkYCZydwNMzt9v5cRDIU9hoYsBDl5BoyoyLPGMkMLMBI3
	0y0d5vjCTG/RzChYiP1H+VXCZEbxv4CrrveIuTpX+ENVcDNQZubBFHhthUfbf/7Uyt6FtUyX9eDzC
	wvHFL7eAou8wq1mpQUmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffPD-0007rQ-9u; Mon, 01 Jun 2020 08:02:47 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffP7-0007qs-Av
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:02:42 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590998560; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=QypYSAs8Ta9l+Bx4xqnzKMKsvyZ+pwykAsRMDRfZK+A=;
 b=j/9UfkfLV/QucgdAlnKBmbENpnxzmk2iCXEagieodD70HW5oGUvD182RdInuzxeJ2cfn7heC
 6s2t6CVhRvJ0kJjuV7FTDFuL5Fa0oiy/JO+9TTm4w+apaIO9dKq9UXk3KopRGf7sfOoKaUoM
 TZ4lWD9IhLnJxT6afuEOI+2sdtg=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-east-1.postgun.com with SMTP id
 5ed4b61f76fccbb4c8d66481 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 01 Jun 2020 08:02:39
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9599DC43395; Mon,  1 Jun 2020 08:02:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 620CEC43387;
 Mon,  1 Jun 2020 08:02:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 620CEC43387
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH 0/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
Date: Mon,  1 Jun 2020 13:32:24 +0530
Message-Id: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_010241_435894_DE1A2062 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds a shutdown callback to TMC ETR/ETF to ensure that
it is properly shutdown in reboot/shutdown path. This is required
for ETR/ETF which has SMMU address translation enabled like on SC7180
SoC and few others. If the hardware is still accessing memory after
SMMU translation is disabled as part of SMMU shutdown callback in
system reboot or shutdown path, then IOVAs(I/O virtual address)
which it was using will go on the bus as the physical addresses which
might result in unknown crashes (NoC/interconnect errors). So we make
sure from this shutdown callback that the ETR/ETF is shutdown before
SMMU translation is disabled and device_link in SMMU driver will take
care of ordering of shutdown callbacks such that SMMU shutdown callback
is not called before any of its consumer shutdown callbacks.

Sai Prakash Ranjan (2):
  coresight: tmc: Add enable flag to indicate the status of ETR/ETF
  coresight: tmc: Add shutdown callback for TMC ETR/ETF

 .../hwtracing/coresight/coresight-tmc-etf.c   |  4 +--
 .../hwtracing/coresight/coresight-tmc-etr.c   |  2 +-
 drivers/hwtracing/coresight/coresight-tmc.c   | 31 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  5 +++
 4 files changed, 39 insertions(+), 3 deletions(-)


base-commit: 059e38815950dbec65beafe03757bce9436e89a4
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
