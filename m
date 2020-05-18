Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1563D1D8321
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TvpO7vTDhoe5TyfJXEQ4cHDtgVUF37uxHH7GZJ10TXE=; b=Ru+Jn4J0cMEeZT
	2460n1ej+tKMu8zCCuWUiDh+ncchI2poywFdW8BRsw/dRbz2lgMfPsIPL1EKMSC708Si6STd0A9PL
	/blWEj+X9mx5kgs97/4GhvieVXtHcqcswkPux02MVRVFbuRi5G0yWwZGyYa5J1GYqgTILNnEQjiS2
	TefkOWk9xz8eQDdrx0qHHvEwifR/GkZUioOX1qJxbHt1JwIxK4NvRKTYsZVpFxjSFu4V7oGCssVEj
	sjzGcQJ9nn+1a9FdKFaAS7oaB1EzaRQFETa+NHJrFYpc8d5UaIZ3lzLbaRowkfakNNuOiEkwvytET
	42LB87NNLBJf3lZIAq+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak6U-0003Gq-Fz; Mon, 18 May 2020 18:03:06 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6B-0003El-85
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id b8so5183185pgi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K1J3bl2/S1TagYTUln5luOODCiYzQtzA3RJkuY15cVw=;
 b=zEHVE8gbH8thYWx+pig8yyp26b0ohOf1r26gDa6sricXW4JLRO4SFpCKm5WeWLEcCD
 bygQhMA5x9VfSZU3j7ihk+VcSq3V5gXoOZpgCf3/kXNFWwYPhn6cql8QKKK3O6kmhxdY
 ZpmEyVRfoZH1w97QT71UfJXxDC8KbxzV+rtjxvXi4FrPUHfpYBEVAXkGD7WS/oqGOjVb
 CEbJGqacehlNf2Tb5QgWJA7jsyYiw2SVsEnL3X9jXgoMgZE6d1F/I+drHkKCW0yNhS74
 YVLuGugGCkpaFdy2HwMnkkOHDXqOqDp38O5uY10s8nA1XOweJiid2azPzX4TS8K+jy92
 7ovA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K1J3bl2/S1TagYTUln5luOODCiYzQtzA3RJkuY15cVw=;
 b=aX+c6LOrXlbaXDV/OD2rPX+EtD25SRQpJdepOcWWuPpc6Nnf+ONwE3/KlgLentcPkg
 44GSOYWqfuc678XfJg0uAGcoqtZVTsHo3XO+xbDHn55rbkPcZsxWJ6UBJqVm+L6lP+Cp
 UIvGJ6F/J87vGehT4Ncw8X9FM/Gc4Ch9YIm9qlX899vbNOjYtvu7lmC7nIn9LZxxqr8+
 6f7LqZ5kcLQJF+TzLfdoJHbzJTM0M4YUsHmmqzGwXYAJ8G1BFbvsRE4a93JgwEeGfWkg
 YnyXjA98ARmBpiCvwWHU/2JEZ8j4U78TTMwjnvJqSHifrZKxROa0JqMcGyObNCxQjE5n
 moUw==
X-Gm-Message-State: AOAM530QFYXO3CI43b0sbYJjSDTHWuibwnBBDLx4/UUFCh9EKZI+ApTy
 +ij6sC7TDjoneEE3v1AtOFCtgmoqOgI=
X-Google-Smtp-Source: ABdhPJyo04Y2tm296mzmgWVhjyXswqDwndJUMwFmbWN0qHq6OI8Dpt8pGdcpvRKVg3Pw3I9zdVgcBQ==
X-Received: by 2002:a63:af5c:: with SMTP id s28mr15001127pgo.380.1589824965008; 
 Mon, 18 May 2020 11:02:45 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:44 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 01/23] coresight: Pass coresight_device for
 coresight_release_platform_data
Date: Mon, 18 May 2020 12:02:20 -0600
Message-Id: <20200518180242.7916-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110247_323950_1DAF4298 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
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

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
