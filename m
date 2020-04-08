Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3A21A2C79
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 01:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h5x09LuBw/fGPsMEMlRxChuZTPE5QyEp/QPmdwwwPb8=; b=FzG7IUQ6A8ay+jXO5h3jfPnrcz
	xkwhL44sc0Q++l4rtSMy/EjDlNlzjFBnKdEQJCCgvSoP2hNSqYFMf6b4kOexYcMtnXgjsKBxx/TtU
	+q36V1g6x2bkcwJoaMngcUtvy/KFxMjYD1g4+Y5/tuwuBEcWlrMu1fD42UF+CVc7iTMqqBe0MGmN3
	cJpeK4SLAxL0ggd3gJ86yop7JJwlYKoU4FEkZbDblzuMGGyvUFuRXkebxztxpFm365PIgsOoV4an5
	IGkRGuFk6eaZwlofsch4wJIMCUqWKCnQoYApAvVUKfnR/dcXxvCIUBXkK5MbmLOav74XtWWxVBj01
	5BkzaNjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMKGg-0007ws-FF; Wed, 08 Apr 2020 23:38:02 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMKFr-00076r-4S
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 23:37:15 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586389034; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=CKqAD+S3Af/npJ/Tpw6OWygjoWc1na7g3PguX7Jr2Ng=;
 b=m6hon/D0AsitrDlw0CKVouML5mElK7GGajs9nvkHNL56Ss/wkPYPlSKdjmmm4W4to7y+Cn99
 Usi1HDhXA72Sa0x4tYr87kDWVeqp1aWfl6PZve1BnSNKTAXQPqI8yJF8PbBFu863e3xPjfnT
 m9qDlMU+o+OiaF5JHtmrJ+A5EzQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8e601e.7f90cff6aca8-smtp-out-n04;
 Wed, 08 Apr 2020 23:37:02 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CEF4CC433D2; Wed,  8 Apr 2020 23:37:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from sidgup-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sidgup)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A9D20C44792;
 Wed,  8 Apr 2020 23:37:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A9D20C44792
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sidgup@codeaurora.org
From: Siddharth Gupta <sidgup@codeaurora.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	ohad@wizery.com
Subject: [PATCH v2 3/6] remoteproc: sysmon: Inform current rproc about all
 active rprocs
Date: Wed,  8 Apr 2020 16:36:40 -0700
Message-Id: <1586389003-26675-4-git-send-email-sidgup@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_163714_226651_D8CA3349 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 rishabhb@codeaurora.org, Siddharth Gupta <sidgup@codeaurora.org>,
 psodagud@codeaurora.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clients/services running on a remoteproc that booted up might need to be
aware of the state of already running remoteprocs. When a remoteproc boots
up (fresh or after recovery) it is not aware of the remoteprocs that booted
before it, i.e., the system state is incomplete. So to keep track of it we
send sysmon on behalf of all 'ONLINE' remoteprocs.

Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
---
 drivers/remoteproc/qcom_sysmon.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/remoteproc/qcom_sysmon.c b/drivers/remoteproc/qcom_sysmon.c
index 851664e..8d8996d 100644
--- a/drivers/remoteproc/qcom_sysmon.c
+++ b/drivers/remoteproc/qcom_sysmon.c
@@ -453,10 +453,20 @@ static int sysmon_prepare(struct rproc_subdev *subdev)
 	return 0;
 }
 
+/**
+ * sysmon_start() - start callback for the sysmon remoteproc subdevice
+ * @subdev:	instance of the sysmon subdevice
+ *
+ * Inform all the listners of sysmon notifications that the rproc associated
+ * to @subdev has booted up. The rproc that booted up also needs to know
+ * which rprocs are already up and running, so send start notifications
+ * on behalf of all the online rprocs.
+ */
 static int sysmon_start(struct rproc_subdev *subdev)
 {
 	struct qcom_sysmon *sysmon = container_of(subdev, struct qcom_sysmon,
 						  subdev);
+	struct qcom_sysmon *target;
 	struct sysmon_event event = {
 		.subsys_name = sysmon->name,
 		.ssr_event = SSCTL_SSR_EVENT_AFTER_POWERUP
@@ -464,6 +474,21 @@ static int sysmon_start(struct rproc_subdev *subdev)
 
 	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)&event);
 
+	mutex_lock(&sysmon_lock);
+	list_for_each_entry(target, &sysmon_list, node) {
+		if (target == sysmon ||
+		    target->rproc->state != RPROC_RUNNING)
+			continue;
+
+		event.subsys_name = target->name;
+
+		if (sysmon->ssctl_version == 2)
+			ssctl_send_event(sysmon, &event);
+		else if (sysmon->ept)
+			sysmon_send_event(sysmon, &event);
+	}
+	mutex_unlock(&sysmon_lock);
+
 	return 0;
 }
 
-- 
Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
