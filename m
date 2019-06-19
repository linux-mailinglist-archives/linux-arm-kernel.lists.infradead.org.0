Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CB84BFD4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fDharwS7tki/TQ0tKAXnHg96qh/+gDn45wp/zx/C2as=; b=Uurfn1PgCYSbN99TvDIJL15D4/
	i0OLiq1WhMuNZwTx8+hyOWTPPqZHNWvZbmQEtE+9NlOGlZ1A+cIWu1FsKF7YkBmlFYgzc28LBTdNx
	qa+HZ/f7K+9YhlTgs2NC8o2RgSpjv7P0yJq/X9LrxPGCJbXndZT+iPDPyEeQyVDZKUtnJHApcHbTD
	fGGnKq7g6eLQ+G8hgPUSagOueDrx9V6NR6Vp3D7JRHbrdYIPJGqZ+hPUHlWwH7IkTzgYiEOOiKX3X
	fkX4TzoK6nRHEiGMdERyrFZF6ACQxUhcb6xK1uyPHPRk1BbpRCRNzKTuI+ecEBUc9pD9rltZ42B8C
	f/lcp52w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeXo-0007lx-1i; Wed, 19 Jun 2019 17:38:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePa-0008W7-KP
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id s21so30152pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ErY5wp85e3XhtR5Z0E4YUaVt5Ce9QaUAmTEfjZRCKV8=;
 b=UjHafWEoDz3DZuhMTjFRQGMVsWF4ASFIIsUiNhOCH0FiJIs84orobVrzd8u6cQ5PUZ
 NOtRf5jIBZBbO1kgmlTYCcLSRIHbS7A/PF1oAqOD2T6GR1fHtgJVBds0zah/5gnk+g7P
 RoN2t/4nakViDcy0jwaZepoMvitP/2xNZteGzHA9Mpacw+Muk+b8q5RCinmYdq1jsUSR
 8RrQYkkt6JKX6vpuPIk2AJX51Fx6d1Y41b60lu2BEVfHudFzkfUKEjGWprsDDmedcfk3
 8TTo316WqUH3B185uwZLVGFTKrtV03PueHzNwDfXTcxAEIkJu3UK1MI+EM4u2s0HPioO
 CpzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ErY5wp85e3XhtR5Z0E4YUaVt5Ce9QaUAmTEfjZRCKV8=;
 b=ibw1UILrOdi2OjiBZ7s9q9vLmgPZLxDnwLHtUnnj61MkliGYs0QIWmsmzTOXbnMG2O
 hwMIqO/gWmyugaMNeZsCcOGPTlGWUNuHl48SKlb2tEofVw5PzjrAQpeW1Jf3kD0IV6A/
 89yXxOaqyJWepmsPPzV1p+1nZIMoYzFGOEZtoF3dRyAr+rrc0lNSw/XVKg8DkUhTCZ/5
 Xz1H9d1jJDg38Ogg3CPRVdOFMEDTWk5dJdmsDfE/gjuqP/VTVsrMz9J7pPZ8/tsMD5Uh
 nBgfO8IixNOEzb4idjYktq5Ji1J7r9ZM66tcnc6JCc2JQb/EzsLVw5mfXG9d4ZpJcsYl
 HeQg==
X-Gm-Message-State: APjAAAWMh2wDQHnuFdKT9JObsdQVwD7MmNGM//XAQdI+Ie+C7axnb3oi
 i4rP9akfkj+BNBvQoyLYwnqUi/G9Q/2Qwg==
X-Google-Smtp-Source: APXvYqwrWE9534EWG72q0SdzBYBO1JOdODGm3LNjNiTDTSi8b/SIehox14914DN8m0c0M06HTw7snw==
X-Received: by 2002:a17:90a:9b8a:: with SMTP id
 g10mr12067319pjp.66.1560965417481; 
 Wed, 19 Jun 2019 10:30:17 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:16 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 28/45] coresight: Add support for releasing platform specific
 data
Date: Wed, 19 Jun 2019 11:29:32 -0600
Message-Id: <20190619172949.4522-29-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103018_791796_43429B4D 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
