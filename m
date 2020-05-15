Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 426EA1D55D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZqJT3P1i7Ome6dD2p8sC6Wlw9x08ud522JxuhXuG/M=; b=N98cWq9ad3vctf
	2zXopSy65lL4sv68Y2g2uEvonEwsVRUTxCqQ8fADo/LjACwPTY7PE6LKsO3lqVXnHx3Nuk26vgKNG
	Pjnl3jfVopLhGSmExfE0r3h60BPMkNSil9dsuKchkRs8G2wb8rXGxi631T3OqAMbfYyRrPEi2/K2h
	LGW7j83eqji5TzW2g5DzSk1y/ujT1c2UJ9GbjStXV5eDPR5uknndWhaFj65bb+ANygdHmtoQQkD/W
	zpyu9VwTiNs9AMpkKORYZ5fmJPJ1lbflmcEYxr4KDFlTksW89RhsYqspe1gJyOcHeLWTeC5/Varx0
	bvBa5903nBsHDOg+wUzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZd7W-00028k-RQ; Fri, 15 May 2020 16:23:34 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZd7A-0001xI-5N
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 16:23:17 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589559793; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=/cjiKMtWjyQDHb/fWlonhViUa3h5d5yJ+6+0Knzjss0=;
 b=EDmdIyZ0g0lAE76x/mV3+tmoI1Un6/WUqlx77IZjmuLIQh3qTB6Ng3ugx2hOOx49A656eVjy
 qiNKpb2gflf0+3hifsY1bMb4yyyJZL+LIx4rec7enzQWdkZjneRtblCPBeb42jb/ErkF2DxO
 4EFvwtk6dyGnT2GwdVUqIEpuqxQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ebec1de.7fe69ca64e68-smtp-out-n01;
 Fri, 15 May 2020 16:22:54 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7019AC43636; Fri, 15 May 2020 16:22:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B0B23C433F2;
 Fri, 15 May 2020 16:22:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B0B23C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCHv3 1/2] coresight: etm4x: Add support to skip trace unit power
 up
Date: Fri, 15 May 2020 21:52:32 +0530
Message-Id: <d29a1d5a29541d216f4a6f184f2db27dfe7232b1.1589558615.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1589558615.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1589558615.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_092313_726598_CE814167 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
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
 Tingwei Zhang <tingwei@codeaurora.org>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tingwei Zhang <tingwei@codeaurora.org>

On some Qualcomm Technologies Inc. SoCs like SC7180, there
exists a hardware errata where the APSS (Application Processor
SubSystem)/CPU watchdog counter is stopped when the trace unit
power up ETM register is set (TRCPDCR.PU = 1). Since the ETMs
share the same power domain as that of respective CPU cores,
they are powered on when the CPU core is powered on. So we can
skip powering up of trace unit after checking for this errata
via new property called "qcom,skip-power-up".

Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 27 ++++++++++++-------
 drivers/hwtracing/coresight/coresight-etm4x.h |  3 +++
 2 files changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index fb0f5f4f3a91..c16532e1e968 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -196,12 +196,14 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
 	writel_relaxed(config->vmid_mask0, drvdata->base + TRCVMIDCCTLR0);
 	writel_relaxed(config->vmid_mask1, drvdata->base + TRCVMIDCCTLR1);
 
-	/*
-	 * Request to keep the trace unit powered and also
-	 * emulation of powerdown
-	 */
-	writel_relaxed(readl_relaxed(drvdata->base + TRCPDCR) | TRCPDCR_PU,
-		       drvdata->base + TRCPDCR);
+	if (!drvdata->skip_power_up) {
+		/*
+		 * Request to keep the trace unit powered and also
+		 * emulation of powerdown
+		 */
+		writel_relaxed(readl_relaxed(drvdata->base + TRCPDCR) |
+			       TRCPDCR_PU, drvdata->base + TRCPDCR);
+	}
 
 	/* Enable the trace unit */
 	writel_relaxed(1, drvdata->base + TRCPRGCTLR);
@@ -476,10 +478,12 @@ static void etm4_disable_hw(void *info)
 
 	CS_UNLOCK(drvdata->base);
 
-	/* power can be removed from the trace unit now */
-	control = readl_relaxed(drvdata->base + TRCPDCR);
-	control &= ~TRCPDCR_PU;
-	writel_relaxed(control, drvdata->base + TRCPDCR);
+	if (!drvdata->skip_power_up) {
+		/* power can be removed from the trace unit now */
+		control = readl_relaxed(drvdata->base + TRCPDCR);
+		control &= ~TRCPDCR_PU;
+		writel_relaxed(control, drvdata->base + TRCPDCR);
+	}
 
 	control = readl_relaxed(drvdata->base + TRCPRGCTLR);
 
@@ -1429,6 +1433,9 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 			return -ENOMEM;
 	}
 
+	if (fwnode_property_present(dev_fwnode(dev), "qcom,skip-power-up"))
+		drvdata->skip_power_up = true;
+
 	/* Validity for the resource is already checked by the AMBA core */
 	base = devm_ioremap_resource(dev, res);
 	if (IS_ERR(base))
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
index 4a695bf90582..72c9a55e67df 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.h
+++ b/drivers/hwtracing/coresight/coresight-etm4x.h
@@ -407,6 +407,8 @@ struct etmv4_save_state {
  * @config:	structure holding configuration parameters.
  * @save_state:	State to be preserved across power loss
  * @state_needs_restore: True when there is context to restore after PM exit
+ * @skip_power_up: Indicates if an implementation can skip powering up
+ *		   the trace unit.
  */
 struct etmv4_drvdata {
 	void __iomem			*base;
@@ -454,6 +456,7 @@ struct etmv4_drvdata {
 	struct etmv4_config		config;
 	struct etmv4_save_state		*save_state;
 	bool				state_needs_restore;
+	bool				skip_power_up;
 };
 
 /* Address comparator access types */
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
