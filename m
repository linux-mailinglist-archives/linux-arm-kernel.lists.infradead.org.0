Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160794C1E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fDharwS7tki/TQ0tKAXnHg96qh/+gDn45wp/zx/C2as=; b=jWivodnf1opeyBSl33BfVDhGzw
	8mTZQZQ5N8W26L9u4o10BlnfB4eV+kH924pNbmzpKJhpA9b6r3CPuPw+/w47OferTxsw8OrLUBmIa
	O4nSFKSC5hdU5f4yLOHemYYfgMmqWVVfupq0GuHnhJKtEqZ74Cc9WUwL728zfs2CVzAu/upf5j2gv
	4g2EucyKDQ5TyxlSajD1OZ0UtN/wEwLA6cd2CPgzEpc2m1Xt+n8dRq5EzE5FKaf+uhvQV8HyYm/OB
	b5EyLx+cKFIqtsOaGTIB/EnJNUeLwltwzw26J/5LefhmXwjfCMFQ1eG1+pQj8hLVcDX0bRz1Xs5Mj
	6+Swb7Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgiY-0002eg-K4; Wed, 19 Jun 2019 19:58:02 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeC-0006Um-5d
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:34 +0000
Received: by mail-pf1-x444.google.com with SMTP id d126so220210pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ErY5wp85e3XhtR5Z0E4YUaVt5Ce9QaUAmTEfjZRCKV8=;
 b=BNfMdxifym8r3u6Fi8UK5/lZqA5200mtttYJhChCUB52n+vLiVmM9PEC7BJTxIpYYS
 y3heflhVW3vvzYyvNMDIR7qoDCSJvyj8XO4ALkzYl+kWFQL6MqaiXVLF6C9LIl5WB8xq
 x1Dm6/iaqlGnnqC0V3R5YBwkk2syqOnKBLqqMkfNris9nG1v/DU1aFNUo4RNmbGKfYep
 4vpSXoVp9FHIKIPi8g0yeSct7ubQqyO0J0+fR5fVMDg63/usfJGSCAudBoizTSvELuY8
 QXRh2XzyeSeCTQ8tHp/6CqVz1ZnkYyzeXqSc+SlUZP/lhM4f90lA9C6/OcdJFyjZZv1c
 gzug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ErY5wp85e3XhtR5Z0E4YUaVt5Ce9QaUAmTEfjZRCKV8=;
 b=gW1NSFGVLe+ZfZRoluIse5Iy+HzDu9Sa6ZYX8yhctSY5w/biA95wqK0kZu6el8vte3
 WnVPobl/gYkvfY1cil9/kOaPWneLtP62g3ap9G2GyVsCtgR/qb1TIIF/AGhSvnbvBSU2
 DPrI/Ql+1qG3AGAyGtO1WZROj1+9/SYAhR8mYfC4IicHDu3zOKkJU/6NZiVeASPuvyxM
 SjLylSU1OrdP2WwvKPV11YTWHqQEugAdXDIxnnlvgiRhUn+oea+quEg9MH20vS2Sbcvr
 eixAbwNzP4G7TOMEb/oJyWnS8eoZsaCil43yG541D36i3njbUP6E4cBJ3ZEIcTYCL5YF
 RZCA==
X-Gm-Message-State: APjAAAXVYY8KuLt5DGBrycuFNlFNUIwhpai2NBJG8D/b6pwhF9wquikF
 bXJNzsgc+OOp4WESZNv7WnyR/w==
X-Google-Smtp-Source: APXvYqx2j1DW8lsgf/BBoFN4LD24Be8kwDwoRGvmqmH0ev+GM8yS5duvfC499gbsOVE2fmzb1fY2ow==
X-Received: by 2002:a65:4383:: with SMTP id m3mr9047185pgp.435.1560974011051; 
 Wed, 19 Jun 2019 12:53:31 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:30 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 11/28] coresight: Add support for releasing platform specific
 data
Date: Wed, 19 Jun 2019 13:53:01 -0600
Message-Id: <20190619195318.19254-12-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125332_477217_2A62B336 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Add a helper to clean up the platform specific data provided
by the firmware. This will be later used for dropping the necessary
references when we switch to the fwnode handles for tracking
connections.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-platform.c | 6 +++++-
 drivers/hwtracing/coresight/coresight-priv.h     | 4 ++++
 drivers/hwtracing/coresight/coresight.c          | 3 +++
 3 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index f500de61e7f9..53d6eed44a20 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -17,6 +17,7 @@
 #include <linux/cpumask.h>
 #include <asm/smp_plat.h>
 
+#include "coresight-priv.h"
 /*
  * coresight_alloc_conns: Allocate connections record for each output
  * port from the device.
@@ -311,7 +312,7 @@ struct coresight_platform_data *
 coresight_get_platform_data(struct device *dev)
 {
 	int ret = -ENOENT;
-	struct coresight_platform_data *pdata;
+	struct coresight_platform_data *pdata = NULL;
 	struct fwnode_handle *fwnode = dev_fwnode(dev);
 
 	if (IS_ERR_OR_NULL(fwnode))
@@ -329,6 +330,9 @@ coresight_get_platform_data(struct device *dev)
 	if (!ret)
 		return pdata;
 error:
+	if (!IS_ERR_OR_NULL(pdata))
+		/* Cleanup the connection information */
+		coresight_release_platform_data(pdata);
 	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL_GPL(coresight_get_platform_data);
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index e0684d06e9ee..c21642114fc3 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -200,4 +200,8 @@ static inline void *coresight_get_uci_data(const struct amba_id *id)
 	return 0;
 }
 
+static inline void
+coresight_release_platform_data(struct coresight_platform_data *pdata)
+{}
+
 #endif
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 96e15154a566..526141c2f876 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1250,6 +1250,8 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 err_free_csdev:
 	kfree(csdev);
 err_out:
+	/* Cleanup the connection information */
+	coresight_release_platform_data(desc->pdata);
 	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL_GPL(coresight_register);
@@ -1259,6 +1261,7 @@ void coresight_unregister(struct coresight_device *csdev)
 	etm_perf_del_symlink_sink(csdev);
 	/* Remove references of that device in the topology */
 	coresight_remove_conns(csdev);
+	coresight_release_platform_data(csdev->pdata);
 	device_unregister(&csdev->dev);
 }
 EXPORT_SYMBOL_GPL(coresight_unregister);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
