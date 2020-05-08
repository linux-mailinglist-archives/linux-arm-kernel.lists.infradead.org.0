Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABCC1CA858
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 12:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dy59kU7/fvB97qwx7sYObvapzJ4tqG3mJ82unB5q13U=; b=Wcm
	/AjEq3HDF73xC+kywpSfo6aHVgGiaMlbUlR4AJMGulqdfQGv300J9RBLvcTKx6UdL2mzkj96+VU60
	h4fK1NRBKLD/wDF8ifrXNU27Y9R1zylouZW353SWSaQ93J7Fj9MXjFrKq9LtnMAu6rEMKdkf4zIBB
	Sj5ItuT/hoz7mIdOlePMFnNAs+TBGyTjh5hmB+9Em21Idzut2+znteeGSg64lqjh+GU92VnyVXsgS
	t5lwjRh1LBVoaTzDvnnLnl7pN60eL7fYUM67X7TU7YIgq9eUryZDNY0/o+46Q/jNKLaYeJ5YHaR6H
	J0FKqmIg7Zy7LOwCfMmHGmS6rL/OcQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX0Fy-0003Cz-Ge; Fri, 08 May 2020 10:29:26 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX0Fo-0003Bl-V9
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 10:29:20 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588933758; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=ELjWYl2rDY4OEsO5E0EnrFKtBC0Z0iB83Va1Wzta/3E=;
 b=B5Oc8wf+PecrwKwLcrDnZRaXmfeRRmWA+yxjtfq8PcsJgSLy89x+c6bYLTlBICjvfSd6RqeU
 gy+BbKbZh1DyA6r0egWKeaBKDTJStPpL6VVV4S4Ved1IEzbqHSjgdlBUghtDQTIDzVEQARYb
 ELo4QSlyj3k2lU9uVOUHpZpZx1U=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb53475.7fa7c3d5a768-smtp-out-n03;
 Fri, 08 May 2020 10:29:09 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A37BFC433F2; Fri,  8 May 2020 10:29:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from kathirav-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kathirav)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6D0F3C433D2;
 Fri,  8 May 2020 10:29:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6D0F3C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kathirav@codeaurora.org
From: Kathiravan T <kathirav@codeaurora.org>
To: mathieu.poirier@linaro.org, suzuki.poulose@arm.com, mike.leach@linaro.org,
 alexander.shishkin@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] coresight: platform: use dev_warn instead of dev_warn_once
Date: Fri,  8 May 2020 15:58:41 +0530
Message-Id: <1588933721-18700-1-git-send-email-kathirav@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_032918_325726_9F815E83 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: Kathiravan T <kathirav@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When more than one coresight components uses the obsolete DT bindings,
warning is displayed for only one component and not for the others.
Lets warn it for all components by replacing dev_warn_once with dev_warn.

Signed-off-by: Kathiravan T <kathirav@codeaurora.org>
---
 drivers/hwtracing/coresight/coresight-platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 43418a2..b7d9a02 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -284,7 +284,7 @@ static int of_get_coresight_platform_data(struct device *dev,
 	if (!parent) {
 		legacy_binding = true;
 		parent = node;
-		dev_warn_once(dev, "Uses obsolete Coresight DT bindings\n");
+		dev_warn(dev, "Uses obsolete Coresight DT bindings\n");
 	}
 
 	conn = pdata->conns;
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
