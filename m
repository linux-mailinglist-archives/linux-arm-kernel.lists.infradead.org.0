Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525321D3E4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 21:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEGLYijhGnkeVS7OWR/bhXtWYlW5FkQAMpB46MyLepY=; b=kai9H+3y8tertO
	A/EChzbKicN8zXvcfZ+c679IlAoaMA77K26PJ7nbOB9iCtR65f3XnrRQ7Paxly141ikQO1xLNGxvS
	euHIPpF8iIs/mjpAaFC470r+S+4V4b2abnPXRUQad4FYUrFpvVOWFcwwL+yp0Xa/0oSNjUug6S4t3
	Z7OFTs/hsQnbSbEI2NzlAZSDg6wE5TQUDtrWScj83dfelNavwrIQDPuu12dRpkX6I0UyyTp1t2l29
	1I+/ICBySUskKsp68/28ihlM2MzF91UhlLKveWMIjVwgp9OBtwo45+5Di00imBPKBeOV4MGoaCrst
	eFJpg+Cwrpy7OpDoX28g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZK0v-0001Zb-OM; Thu, 14 May 2020 19:59:29 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZK0O-0001Am-4J
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 19:59:00 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589486338; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=4BMhupYJpODeOQiXNtxQqXSXYewQj0c5zkqBomiKNvA=;
 b=WN+wby/zsNJ+Q3yG39l1mwDHXg6mROayWYOb6g5/wNOFmkslJes9qfpOnUBjrR03q2SCXndK
 6QnYtuaGeT+DFyl7W2Mk/x60f5SqQJmwzBmUmMZAdkZ/iCb5VleSmYF+kJWzwp7y7c+NvqK7
 N2/QQwAtxwpBCfDnci3OqBq7G9A=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 5ebda2e98ebbf95ecbdb4f23 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 14 May 2020 19:58:33
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DCB41C43636; Thu, 14 May 2020 19:58:32 +0000 (UTC)
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5FE4AC433F2;
 Thu, 14 May 2020 19:58:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5FE4AC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCHv2 1/2] coresight: etm4x: Add support to skip trace unit power
 up
Date: Fri, 15 May 2020 01:27:55 +0530
Message-Id: <7f2aeb36979ebfef30ea8356e6aa3111a611d6b5.1589485594.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1589485594.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1589485594.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_125858_843694_A2BEA02D 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
index fb0f5f4f3a91..b38214326fa4 100644
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
+		writel_relaxed(readl_relaxed(drvdata->base + TRCPDCR) | TRCPDCR_PU,
+			       drvdata->base + TRCPDCR);
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
