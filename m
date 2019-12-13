Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB45411E5F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 15:55:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hhyxQdQTOvn+Fqxphst/gTI0CwTlBPl01Vf6Z0ksgDM=; b=KDpoDn5Iii2RwLTd4wR2KkwdM9
	UllqlJaX+ggHdtTnl5bifK+Yobk9KuCYJhoWB7efxI0ibC88KYzansdWlEKYJL2JDAqWh4Bh92vA3
	llqo+79+xVbukciT8DX8LX9/HAvT5LUllSpJ4Yb8kTJKv9dAETxY83kxnBahR454oAO2Q/b3qkaB7
	6dENRHHOqac2L6lpXsT4YIH5g8VufMzl/iQozFLn3hUWdSBRMAcj2xT7ZMDtjj8M/cPARKP5XN88W
	mi9DrZHb1Yk29/2X6i6HKId+RBFz2RRXVj+rKefoQ9ze5Nu+sjuOWEHrJXKM/T2NawR7wOEaDFlG2
	idtOdJFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmM7-00028c-92; Fri, 13 Dec 2019 14:55:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmL8-0000EC-Uj
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 14:54:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id d16so6911532wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 06:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mcjy2CEkG4vUV/6rKn0LaYo72M9aNFWzBHIkohtYboo=;
 b=wnNIGn1B5TtcrOvFBT+lw2uwRDQK0/kBwC/5nDBJDferrWsJrMexG4vPKcIyEOkbED
 KIT/I6Q3b8DxJsoVSedBdLevSlpPbgmBv/BraYXxl2sXvOYGQ3l8HlbIQgJUVWKh+r/5
 VL2nJk5lbA0QnGXR/Hh9iJE6Cbc9gxfq4OoSwrk5iyP0GW0NjWFaP3Rpm7FO+mt9QYsM
 p97KuMnfFojGVq1+nJzFIOOwq7R5lsx3jYHGpCEiNBeJf+pUN0KYZycftw3WiEn+rafc
 ZFOsT1XvG7K/RBdg8PksrVfF+OM4S+OuWNYbwkDv2oJc0f7goinDR2xOec/9Raezpkpd
 WNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mcjy2CEkG4vUV/6rKn0LaYo72M9aNFWzBHIkohtYboo=;
 b=k61ra2JB92jO4hvSg5bBPck5XakMx1KJ0n1Pume+lnsqsXh2nJkq1SXEMNG0Vx39vn
 yk83Ff5sTsBbdGndE858zHxbXlfB4eCXtQ9VscWL/LWVdD1p69jOCO11RITkBO+ZKiOk
 Gf/T1N57hkL2ygiuKLwyb/JQNlmaFnJlRqJMGwYVXNMwxyKBI6IX/ltUNcCHdJtvKKZh
 nR+4TxuETXzBX+5ZTWXp0s27LYUxJw1JVYIzNv5aiYdCXSAjOWKvLV9jfupCn1ZiCmsB
 3vBgfiZGXzk2TVJYLD5/2sUJCU3O+kWrCNvB4zdFvfWLoFq0vdaMOpw3bAQtc+za3NaT
 f2KQ==
X-Gm-Message-State: APjAAAVDNp6wLo4o3zSA3wiq0HHICHNhZtBHQJS9fG4FhhTu702hlrbK
 YteyNcHHBxqAsJE7ZLRtMXZfbJa3q0k=
X-Google-Smtp-Source: APXvYqyAJsTZzlkoo9vrJp2WXJLSdtMLg5J0zEt0TZ7uXB00KGdQ57L5DY0i5i+81w+Q+rotzTA12Q==
X-Received: by 2002:a5d:4b8f:: with SMTP id b15mr14036255wrt.100.1576248883413; 
 Fri, 13 Dec 2019 06:54:43 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:54:d457:4f7b:f42c])
 by smtp.gmail.com with ESMTPSA id n189sm10002979wme.33.2019.12.13.06.54.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 06:54:42 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v3 2/6] coresight: add return value for fixup connections
Date: Fri, 13 Dec 2019 14:54:27 +0000
Message-Id: <20191213145431.24067-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191213145431.24067-1-mike.leach@linaro.org>
References: <20191213145431.24067-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_065446_991667_F8AE2DE4 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
