Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CF6172203
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hhyxQdQTOvn+Fqxphst/gTI0CwTlBPl01Vf6Z0ksgDM=; b=YDG9IIG4nLNaxfAO+I+v0oXTHu
	UWlkFLyNr/KjvgQZTvJydIQu/KwcFsFCzWbhsRiiFzd66zUSk4PEcDgGRLdBA694MpNvDM2aTcnja
	HY2bmTbqMRsfY9VL9KPveYioZX8XvYv6ButsvmMLyLZnFGtuJ/fdonVJs8diCA7jxmiNEsyZDahCs
	ezM/xHY9qELMhrAgkpNMemiL7fRDNI6PacxoaWmiyVhLdiLWF5vvQQ22eJW2FDQmG1Aa1NmF9sTVA
	7kfvCYLqyWg++iao4QEJYTmJLoWk2sTzKGAIrn0b7UStQsFF5xvytTkutYXu17QgZ7ZBDMEEnZ3sY
	mQmA6vQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ksi-0000UW-9I; Thu, 27 Feb 2020 15:15:20 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Krs-0008Tz-FJ
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:14:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id a5so4009235wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 07:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mcjy2CEkG4vUV/6rKn0LaYo72M9aNFWzBHIkohtYboo=;
 b=lGOGYjWvFOg5M7k/ms9JmHqQgpQVC7X0oYBJEB//CU9OsCJN4upV5cCx1JyNlYNmoK
 +2/VWclnq2fLHGSksfR/kk1si2RuNqpN4MSlKHY+S3YGG6Wtt7wBOHoGz4x+sV0+peNA
 68IkLY9eVo9OO72IpECg5g7C3kgB2suzsDZj3W7m8z40sLrqEnQt3Heg5dnhRznvyDYf
 ZE3v2GJcrfkvvcLLbG++nDePiS0GN3NuRMuCReW0IkYSWaY0diAP1t6bYCjOcR+HC/4n
 lHwRagy9/WbFVYPRJZ3Y7D1zMqayfIscWQ94wsZdbSog2vGFoc6CXQPt7waz1OVeVL6Q
 SmDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mcjy2CEkG4vUV/6rKn0LaYo72M9aNFWzBHIkohtYboo=;
 b=hZxshl4GQW8MNMXJrzotj3ekrDHACb2EJKeE7FF6/HzLtKZOhrm+fnTWbzCu9apEB/
 W+2bZog2ldBg6tFofbq2GVTODn0eW8ZM//VM8870TfIoJCT4lOkN0IrLgSNdpHC4uroN
 XkyR7mrVP8E8uEDKkMeZu4eqaa9LIl2tAnX2NpM2avQueA6Ad2PUcL6HPd4k6nmLoxg0
 0Imbq+HB36frJppg0WlGqYnqPPUy+1En7dnCYkl1qFOUKF+QH9QLXNgYPKOUbbesJcSa
 akbmmrIfcB2mYvzj0ZfCJP2UiSVn4vKiGvfaXDu6c6rANrVMaXANFRqBw/zquIQNK5iW
 YvPQ==
X-Gm-Message-State: APjAAAVMM3Q8ZPgC0eWEZdAwMcZfvnwXAQ2gSdGwGehJPs7BW5fMgiwl
 rumK1kwsKK6TzQESb+kFfA2K94kti9s=
X-Google-Smtp-Source: APXvYqwYNvy4x4HObXIRykQWd9hrfXmoR5SHd1J2lIy8mUwfXFz0d5C40E8G9rnmVv6gED5f0qfCzA==
X-Received: by 2002:a1c:dd87:: with SMTP id u129mr5846805wmg.111.1582816465696; 
 Thu, 27 Feb 2020 07:14:25 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6801:1801:2dc1:e60d:4b1c:70e0])
 by smtp.gmail.com with ESMTPSA id q12sm8973079wrg.71.2020.02.27.07.14.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 07:14:24 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v5 2/6] coresight: add return value for fixup connections
Date: Thu, 27 Feb 2020 15:14:12 +0000
Message-Id: <20200227151416.14271-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227151416.14271-1-mike.leach@linaro.org>
References: <20200227151416.14271-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_071428_547948_2557B841 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mike Leach <mike.leach@linaro.org>, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Handle failures in fixing up connections for a newly registered
device. This will be useful to handle cases where we fail to expose
the links via sysfs for the connections.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 10e756410d3c..07f66a3968f1 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1073,18 +1073,14 @@ static int coresight_orphan_match(struct device *dev, void *data)
 	return 0;
 }
 
-static void coresight_fixup_orphan_conns(struct coresight_device *csdev)
+static int coresight_fixup_orphan_conns(struct coresight_device *csdev)
 {
-	/*
-	 * No need to check for a return value as orphan connection(s)
-	 * are hooked-up with each newly added component.
-	 */
-	bus_for_each_dev(&coresight_bustype, NULL,
+	return bus_for_each_dev(&coresight_bustype, NULL,
 			 csdev, coresight_orphan_match);
 }
 
 
-static void coresight_fixup_device_conns(struct coresight_device *csdev)
+static int coresight_fixup_device_conns(struct coresight_device *csdev)
 {
 	int i;
 
@@ -1096,6 +1092,8 @@ static void coresight_fixup_device_conns(struct coresight_device *csdev)
 		if (!conn->child_dev)
 			csdev->orphan = true;
 	}
+
+	return 0;
 }
 
 static int coresight_remove_match(struct device *dev, void *data)
@@ -1305,11 +1303,17 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 
 	mutex_lock(&coresight_mutex);
 
-	coresight_fixup_device_conns(csdev);
-	coresight_fixup_orphan_conns(csdev);
-	cti_add_assoc_to_csdev(csdev);
+	ret = coresight_fixup_device_conns(csdev);
+	if (!ret)
+		ret = coresight_fixup_orphan_conns(csdev);
+	if (!ret)
+		cti_add_assoc_to_csdev(csdev);
 
 	mutex_unlock(&coresight_mutex);
+	if (ret) {
+		coresight_unregister(csdev);
+		return ERR_PTR(ret);
+	}
 
 	return csdev;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
