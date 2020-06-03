Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1854B1EC7D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 05:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gKEDV/QpcSZieZ41d8CWI8GjCaUurxzuWECKPdo23pM=; b=iN1
	TGG/IbDDmUKxTCc+Z/nt6IfNCYhDwoZQvVqQckhz8puJ7Xf3trsqVTdXYkIYJiIIyYNjDdvTwjg6u
	AXHGuQrWpyQ2f3t9kcI6Ce/4nkHLGVUllZYS98Q0Vs+mar3vTjxfRbLXOw4vMN+sL4/DY+J7N1fLI
	bsX+BxWARhDCFr6PNdCiXCq3+QJnNOgkGldBJkbj98yPW3Ns+GdHtlR15p7Wp6oYFuRm82Lfm4BSh
	lEUTjXhZZcNqCdA3TzuMAAKJS1HVVKns6ii3er3JmKmNNW4VUSLWe9acsJABUfPlnyD00X48vRgxR
	tWvHgGE+IKHW3vnQKSENh80I6pIPhIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgKDv-00087B-8o; Wed, 03 Jun 2020 03:37:51 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgKDn-00086f-7a
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 03:37:44 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591155463; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=/bVnFV5V+H9IHRWbu8rDBXg4KkhS3ShA7XcdSKExHnk=;
 b=TGDMP5oNvTlrMS28p+rmZgtrV51wiZ0MbCCRKFc0qsIsJEY8aPUQ39hMzNGi/xphKhHm9Zoz
 /Tt5ZS16VKZWUS/12AyVHQacys6a/Sep50ya8K7kQnBIsyCOwQ0NRyl3CI7Ls7sooieuBRuB
 0drKkcDnENL3tvK0UzufTLgf7nQ=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n09.prod.us-west-2.postgun.com with SMTP id
 5ed71b034db551abdeea2ddc (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 03 Jun 2020 03:37:39
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 06CE5C43387; Wed,  3 Jun 2020 03:37:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jeykumar-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jsanka)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 17862C433C6;
 Wed,  3 Jun 2020 03:37:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 17862C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jsanka@codeaurora.org
From: Jeykumar Sankaran <jsanka@codeaurora.org>
To: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] drm/connector: notify userspace on hotplug after register
 complete
Date: Tue,  2 Jun 2020 20:37:31 -0700
Message-Id: <1591155451-10393-1-git-send-email-jsanka@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_203743_641398_6AA2F99B 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
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
Cc: Steve Cohen <cohens@codeaurora.org>,
 Jeykumar Sankaran <jsanka@codeaurora.org>, seanpaul@chromium.org,
 robdclark@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

drm connector notifies userspace on hotplug event prematurely before
late_register and mode_object register completes. This leads to a race
between userspace and kernel on updating the IDR list. So, move the
notification to end of connector register.

Signed-off-by: Jeykumar Sankaran <jsanka@codeaurora.org>
Signed-off-by: Steve Cohen <cohens@codeaurora.org>
---
 drivers/gpu/drm/drm_connector.c | 5 +++++
 drivers/gpu/drm/drm_sysfs.c     | 3 ---
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index b1099e1..d877ddc 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -27,6 +27,7 @@
 #include <drm/drm_print.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
+#include <drm/drm_sysfs.h>
 
 #include <linux/uaccess.h>
 
@@ -523,6 +524,10 @@ int drm_connector_register(struct drm_connector *connector)
 	drm_mode_object_register(connector->dev, &connector->base);
 
 	connector->registration_state = DRM_CONNECTOR_REGISTERED;
+
+	/* Let userspace know we have a new connector */
+	drm_sysfs_hotplug_event(connector->dev);
+
 	goto unlock;
 
 err_debugfs:
diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
index 939f003..f0336c8 100644
--- a/drivers/gpu/drm/drm_sysfs.c
+++ b/drivers/gpu/drm/drm_sysfs.c
@@ -291,9 +291,6 @@ int drm_sysfs_connector_add(struct drm_connector *connector)
 		return PTR_ERR(connector->kdev);
 	}
 
-	/* Let userspace know we have a new connector */
-	drm_sysfs_hotplug_event(dev);
-
 	if (connector->ddc)
 		return sysfs_create_link(&connector->kdev->kobj,
 				 &connector->ddc->dev.kobj, "ddc");
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
