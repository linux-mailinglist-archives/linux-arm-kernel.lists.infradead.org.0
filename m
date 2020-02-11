Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A71158D19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 11:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=48rMaWS/c6Oudw+0oxJwr8ZxxD0jYXLfoVPo64csQWM=; b=iOEaiWOWGOQuPvUzCP3bmw3ul0
	5IVurCp/FvsP3KXBucedcGoTiOis4cugnu0TUkhqM+UrsiEUNJIzHt67EocfmfZ5giENQ2Bg6ra7u
	WdR2lhlZNJANpjaykUqy1r90COQt15JjcEw2zBnAcpdJ8pn+Buiy2Ac55UNORRDmaS0wVZCA9WwYS
	5/l8O1/WJGTI8FutR2DScSE5/obsM6wBTyVHkxOrD4U1Ofc7QuGW6RTgErcmQ0DuMJUhJAhIjyFDW
	faLWo6e7XTjTjEf2ac8BjcW1Q3TwH7A8z8IsbNQJHLjgnK4h3sVhu2LPMgs4dtspfH615zZJJA9ZQ
	TqNlQtdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1TFZ-0001Tm-6R; Tue, 11 Feb 2020 10:58:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1TFD-0001IN-0m
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 10:58:20 +0000
Received: by mail-wm1-x342.google.com with SMTP id s10so2887395wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 02:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CBZqYhjGCYlEVl1hQyBcSruJxPzTWglj+OLo8vtBQ4s=;
 b=RLLCq1mSrfgnKsO81lzrre53LWaEKOBe8rxJhLoMjI1859JUEAsQIDLeKYRE7qG4YW
 ETAMXpnvb7HGMNh7s3c7ZzC+AcOpYnezRABvTmn84mQor2gpFp9QAZgwdtqcGI8XKEgD
 fTloWnjpn5RtxHaBb0Zf2fefFRw3j1PmLr7g1m7tirkWslBW0PqVBPNVupY4eTnFndKK
 xuxk6hT5hCOKQ9avKC/qs+3Hh+8Lm7sZaSBEuPFy683EQ7aVI7QA4XuhRCwZc9pnyq/p
 /3PkFVRVfQwvW/C44eAAenKIQ0q66vA5eOYLZLgr8z+8emeNKUYzw9vIAUYYIyXl02h8
 wIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CBZqYhjGCYlEVl1hQyBcSruJxPzTWglj+OLo8vtBQ4s=;
 b=LfErcw2Z2FxJoeD6nl96+0ISvHGO545UtlDfYzHtqWg/8zP136pbDxr+rN1YdSvufJ
 Es2ZOn8yI4DdUYHMgq/z85fhWSCe1pGM8Yv9G7A68+tDdKh16Nrwi0cDQY7VXsSAQnYu
 x8YzSNi8/9K2/F4kP11USyeEsnjK/TPvxWZy3wCnnqb+y5njHaDn0YOcRDDsj8ehMoYr
 lYeYP6eFEtTOpFPiG3VZ2ZP9oVWPrW/9239Zx2mq1zT0VG/1v/kfLujjofjm3/FMKNPZ
 CRCrcG9DZ92BeFzoKSLvc1yljdXwNUWkeRxd3pDPE1J7at8bFPbyzzWtzQ0rVdewbfpL
 Ezqg==
X-Gm-Message-State: APjAAAXJsKiLxatZfSCkBZ6+reg3/HdanNsxTT8XPg1GKkH1bdLmdgab
 Ai1j9QaTSaDPGyhNunL1EPPvsUVLPUg=
X-Google-Smtp-Source: APXvYqwF6Z1MQGBMp/cv9I8o/B835/lRMiwSMvhMpXTc6WBkbl3mu2ydwjsUIpp5SIZ0T1en65oY6g==
X-Received: by 2002:a05:600c:2c53:: with SMTP id
 r19mr5008569wmg.39.1581418697095; 
 Tue, 11 Feb 2020 02:58:17 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id g21sm3171291wmh.17.2020.02.11.02.58.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 02:58:16 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v4 1/6] coresight: Pass coresight_device for
 coresight_release_platform_data
Date: Tue, 11 Feb 2020 10:58:03 +0000
Message-Id: <20200211105808.27884-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211105808.27884-1-mike.leach@linaro.org>
References: <20200211105808.27884-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_025819_060380_9673D7BD 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

As we prepare to expose the links between the devices in
sysfs, pass the coresight_device instance to the
coresight_release_platform_data in order to free up the connections
when the device is removed.

No functional changes as such in this patch.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-platform.c | 2 +-
 drivers/hwtracing/coresight/coresight-priv.h     | 3 ++-
 drivers/hwtracing/coresight/coresight.c          | 7 ++++---
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 43418a2126ff..4b78e1ac5285 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -822,7 +822,7 @@ coresight_get_platform_data(struct device *dev)
 error:
 	if (!IS_ERR_OR_NULL(pdata))
 		/* Cleanup the connection information */
-		coresight_release_platform_data(pdata);
+		coresight_release_platform_data(NULL, pdata);
 	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL_GPL(coresight_get_platform_data);
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 890f9a5c97c6..1cad642f27aa 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -211,7 +211,8 @@ static inline void *coresight_get_uci_data(const struct amba_id *id)
 	return 0;
 }
 
-void coresight_release_platform_data(struct coresight_platform_data *pdata);
+void coresight_release_platform_data(struct coresight_device *csdev,
+				     struct coresight_platform_data *pdata);
 struct coresight_device *
 coresight_find_csdev_by_fwnode(struct fwnode_handle *r_fwnode);
 void coresight_set_assoc_ectdev_mutex(struct coresight_device *csdev,
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index c71553c09f8e..10e756410d3c 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1213,7 +1213,8 @@ postcore_initcall(coresight_init);
  * coresight_release_platform_data: Release references to the devices connected
  * to the output port of this device.
  */
-void coresight_release_platform_data(struct coresight_platform_data *pdata)
+void coresight_release_platform_data(struct coresight_device *csdev,
+				     struct coresight_platform_data *pdata)
 {
 	int i;
 
@@ -1316,7 +1317,7 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 	kfree(csdev);
 err_out:
 	/* Cleanup the connection information */
-	coresight_release_platform_data(desc->pdata);
+	coresight_release_platform_data(NULL, desc->pdata);
 	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL_GPL(coresight_register);
@@ -1326,7 +1327,7 @@ void coresight_unregister(struct coresight_device *csdev)
 	etm_perf_del_symlink_sink(csdev);
 	/* Remove references of that device in the topology */
 	coresight_remove_conns(csdev);
-	coresight_release_platform_data(csdev->pdata);
+	coresight_release_platform_data(csdev, csdev->pdata);
 	device_unregister(&csdev->dev);
 }
 EXPORT_SYMBOL_GPL(coresight_unregister);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
