Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAA0172200
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:15:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=48rMaWS/c6Oudw+0oxJwr8ZxxD0jYXLfoVPo64csQWM=; b=Sle44k0AxyoWLcP9FtZaetW6Aa
	frces/5onOS20546fW9GrTPb8dU9pWOIG+FJZX6Oc5Sqwvz6lGJeG0mHVgytA21mLKksuZAiu/qo0
	9ZMyl5JZUqWfrozIL3TgCKPZlIYcxXfPftOeo7rkD7TH3ZR8UMbRO9JAJ+p2P1QLTBSuE9xKSUDAG
	9GztyiKQS9/le6UbwbkPJaA8bepJ39uHvYCKWlyG3cuLynbVxPUOVnR8o270NG3I75xOxPPz7PlGL
	Es0JdlP5VSqZx3BCpsJ1+fpSxmFk/q478yBN5w2vIQ6yS4ZPTqCAP5WK21sn3iT8TTSglCsGhnkpb
	TAUTTIsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7KsL-0000HL-W1; Thu, 27 Feb 2020 15:14:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Krq-0008TC-6r
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:14:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id j7so3752234wrp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 07:14:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CBZqYhjGCYlEVl1hQyBcSruJxPzTWglj+OLo8vtBQ4s=;
 b=khdIi3v/WjWtTLD5Gano2VoTVsWvfrsrViJoqnSP7ucDvWWlvJfPVTdsh6WzjW/67Y
 FMhrsAtmF//Jtd4nZiPfZ1XGAauf3b9lftjE4rrN5zpU1ZJpFpVQExVTExi0e/kkHyZK
 hIZv98mNye2Xef5K6Dxdy1zrCGjz2FhGK/okh1oUBizbUXBLqLQ8o4okxtjLIQWAGdKK
 wkgHo+zLHv8gj494YvjJLNEjolfDrv0If/EENA/lnihKJ1fuoe8c6rXfNQQhqckqsdF8
 V45rEEg+r+4nVfBktesRE7LDXBU60Od3QmY97wrun3Nk5X7xuoO/zfKM94v4bx2Y65ix
 fmqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CBZqYhjGCYlEVl1hQyBcSruJxPzTWglj+OLo8vtBQ4s=;
 b=TsNcz+Nt6AmWsbr8OHa7eoRJZOmoOllKJUTbtFLKDznlEYSmAjeINMFCzTqQ+KXZ5o
 HYuEx4h+fjKrdeE4IWvij6zbLH9OJx8mZ5wOSND2sW7Plvp7nx/mhBh381rsdi4vjPHf
 keAekYjXn7zc3tVdt00+xNqWyOy8q24zo9LBZEGNSh76mwfPOBvgIErhPysHn3QQ6hWS
 ySCtJ+iZn0S7YNz9R6XfUInUDVEMjLPpDaWNAHjP2mUbtFTohdXsmyfMNnCaJ7JMjnRR
 TFWLyx9FEmtPp75Ax0Pq5cqEQPiVQKtKwQT9XmImPCTh/mkFVTbMTNvUt9eQ31lwKlIv
 gdfg==
X-Gm-Message-State: APjAAAVHGuSYkldFwQOE+5uXYtTTyH5g4K4nh2tRG7zRK31DX3TaTZuL
 I7bAODyybzEAw1Mas9ExKttrap3QODA=
X-Google-Smtp-Source: APXvYqw7G49lXA2P4gxjfJf21ybocdc6APkNBAj0GT3OLB8Eq60JRqJWPL/PhU0SAkkIgTe2i/coYA==
X-Received: by 2002:a5d:628e:: with SMTP id k14mr5095633wru.425.1582816464072; 
 Thu, 27 Feb 2020 07:14:24 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6801:1801:2dc1:e60d:4b1c:70e0])
 by smtp.gmail.com with ESMTPSA id q12sm8973079wrg.71.2020.02.27.07.14.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 07:14:22 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v5 1/6] coresight: Pass coresight_device for
 coresight_release_platform_data
Date: Thu, 27 Feb 2020 15:14:11 +0000
Message-Id: <20200227151416.14271-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227151416.14271-1-mike.leach@linaro.org>
References: <20200227151416.14271-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_071426_249017_BA358401 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
