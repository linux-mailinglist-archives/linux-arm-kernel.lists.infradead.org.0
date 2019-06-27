Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EF25899F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 20:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nwG8UkqDaWEUuy3KdR5r49czAn3ktYUsLmULRbDEMnA=; b=qED/JL6rqJOQ+4
	BN5i6X/bW4BkzQtdYydSMYmMmKg4KsTwwnIStqMbbfaxwtlg0CUwc/f24li1gPrKkyYKRYTC1a3MR
	vcA9xIm994Dv9gtNbrk5xhZeZAq41TnpMOjDYDjbDBGm2sL+kbXVSJvyXhOmy+kggbLhRqvwn3DGU
	WrFO4A91hryRsl6szBLKQXUQRBx2/RdAlqrl3ATUQh4onVyUtNy0jLIP1+BQstetifHXudvDwG1jQ
	QAj4ybcZ8yfRvvowQuw5ry2/79DJ6pU52QHl5p7kL5yyXNX1pLnb7kSDL35jrlFm/ZJpBjNmFvQVJ
	KUxofVwH/AK86ckjBZeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYwI-0003CY-Ot; Thu, 27 Jun 2019 18:16:06 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYw4-0003CG-Js
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 18:15:53 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 31F2060A0A; Thu, 27 Jun 2019 18:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561659352;
 bh=2sY4Ndhp5UDd/gnrxUFWqpKzyMzN+O168EA2XIgQnn0=;
 h=From:To:Cc:Subject:Date:From;
 b=Ar1knjtKw9ZglU2I04UHeJDHXz0+kJq4ya+eHG9Tx4ZTK8DgRnEVlFrbiXn2LzdWT
 1u/VCDhQvdt4xcmta9kud0qq23DcnFyNa4SvWf+cb7mqTdx4nDUa5vSAUSWTn4vPfJ
 0J+HjbTJZoiathc+Cyxcjmsr0+UY706tdR72iMEM=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BE2EB6021C;
 Thu, 27 Jun 2019 18:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561659351;
 bh=2sY4Ndhp5UDd/gnrxUFWqpKzyMzN+O168EA2XIgQnn0=;
 h=From:To:Cc:Subject:Date:From;
 b=Y2Q6a7ukyFoqnsbbSWsVTQxVHC2bzJTRnq5E/dcawYHH0vPBEE2f7RWRc9oVmkz52
 tfGwfHTNRGYUe9ILBsATJrR/r7FX/xfVtS2ESK/ZPxpnpPb6vT3yzOvbCHdZMRPNr8
 vY9TzM02eXaeOmfD1IPGuCfSYJuYes1EFhL2xFJs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BE2EB6021C
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
Subject: [PATCHv5 0/2] coresight: Do not default to CPU0 for missing CPU
 phandle
Date: Thu, 27 Jun 2019 23:45:27 +0530
Message-Id: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_111552_685694_B7BD0127 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
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

In case of missing CPU phandle, the affinity is set default to
CPU0 which is not a correct assumption. Fix this in coresight
platform to set affinity to invalid and abort the probe in drivers.
Also update the dt-bindings accordingly.

v5:
 * Separate out the dt-bindings patch.

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

Sai Prakash Ranjan (2):
  dt-bindings: coresight: Change CPU phandle to required property
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
