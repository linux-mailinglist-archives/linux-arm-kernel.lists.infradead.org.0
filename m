Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054F71B516B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 02:39:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=faOftMQgT/l4hKckn5NCwy8fyfUaWfaTvU0XmML9Gwo=; b=IoSh7qCXftpL9j
	2hDZkDqM2V0Jzmr2zGJah9YpRRSHiHvIzExOvmnrUtJYgMyG8raK+DHkPZfwFdxREDch9saqubPrx
	qad6y/XnQQBfeESyknvv7DFAcguKiNaMGuFzMUhXYhVRxHjma8oSy54seNIiFZmapBJLWiSnHHkHC
	5Iq6zvM3DCtkweMCP88eUq7G4MAv13d6RWQYTxQSv6vJZxNip+vlk3hTYGThyAILENtgW2nGmk2XX
	2bOB23gU5admxKbi2APY/R9RB5KEaTbPoCi/4OhLkjtBZEVrJEUnxNqF/Uj3t350ZbJHrEm/GM2A0
	OClpoyDpwjSHG+1TZ4KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRPtp-0000vg-IT; Thu, 23 Apr 2020 00:39:29 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRPsa-0008K5-HT
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 00:38:15 +0000
Received: by mail-pl1-x644.google.com with SMTP id w3so1640632plz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 17:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GDaDftx9pwi4EUSlY8qCL60KLlRRULo9j/JV/6pOzBs=;
 b=JY/6N9ogUg3Na7E4o/Gs1J+yR3hYo68G3PI+t2xqfgW+VV3KHBxOCsiHJaNpN9idK8
 Itw8dlcqSBGk46ICsTQ0XXZQEwB4Tq0+5ZTedUDTCgSqaVp8tFtvF08s3fz1EV/UB06G
 7i4/xovxmrJaqOB9fHaHCkM1cn+h/8dQHC/cCIQCE5fzlDVuIPGhSJrDwE2DXyxWD5ga
 ybvYRxC7mdUv/F2B6XpahQRZujOp/WAbgF7fTxmEWi9l4SQnhnfyG2I8v7FxX+s4Qcmr
 rDtevFhHIl+wP1RCJJ4ddSXSg6nT99tzrB5cAgVbrcpAxZPLvvZIYStZZNlQffSAW24u
 CTWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GDaDftx9pwi4EUSlY8qCL60KLlRRULo9j/JV/6pOzBs=;
 b=q3xBBMoWGbEc6svOGq+pcNTz8xmCveWhxhGbYHK8vUG/b5q2ktIwRlW30b4ttlRfwz
 09svNU6qRw95PnikL95r/CPB8WFqrQdfntwwI4D5tFQ2mH/nhCQ4KuMPU2/JYuoEEzkm
 PgKyh54RoMXaWtuiBwbWsxUSS5+bdP5+82opZCuT5TNFdq5w3fDp+TfnKFWBy5odsYLq
 BTpaB9jUZxvOiOkeYmFL6HDhRIyFyfTpPY1tqK1nUwSvk+48w9+xXzEVN2mH11Yf3g7s
 w3qUPgUF9ZG9rMCNEo99GXQ4H1LXjp5TRdt6AdriB9iGVjMXRSd296Ek9viiVH4oT6mX
 1phg==
X-Gm-Message-State: AGi0PuYV8zcyRUQ5BMd8iJgYIoZKAsgXvhKJvTroy3Akml0J+7XV6xbo
 aR6LsjeKSIHY0SeElRL7XN+3Ug==
X-Google-Smtp-Source: APiQypK74j+wjl3/96ICF/g8NdVM3oydSs/h3oqULxaq3T8Q0f62TIbNZAmkn3UyYXZIFoRYP/wGFg==
X-Received: by 2002:a17:902:b186:: with SMTP id
 s6mr1405856plr.16.1587602289841; 
 Wed, 22 Apr 2020 17:38:09 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 6sm432225pgz.0.2020.04.22.17.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 17:38:09 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ohad Ben-Cohen <ohad@wizery.com>
Subject: [PATCH 2/4] soc: qcom: glink_ssr: Internalize ssr_notifiers
Date: Wed, 22 Apr 2020 17:37:34 -0700
Message-Id: <20200423003736.2027371-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
References: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_173812_577846_161D6724 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Lew <clew@codeaurora.org>,
 Sibi <sibis@codeaurora.org>, Siddharth Gupta <sidgup@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rather than carrying a special purpose blocking notifier for glink_ssr
in remoteproc's qcom_common.c, move it into glink_ssr so allow wider
reuse of the common one.

The rpmsg glink header file is used in preparation for the next patch.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/remoteproc/qcom_common.c |  8 ++++++++
 drivers/soc/qcom/glink_ssr.c     | 24 +++++++++++++++++++-----
 include/linux/rpmsg/qcom_glink.h |  6 ++++++
 3 files changed, 33 insertions(+), 5 deletions(-)

diff --git a/drivers/remoteproc/qcom_common.c b/drivers/remoteproc/qcom_common.c
index ff26f2b68752..9028cea2d81e 100644
--- a/drivers/remoteproc/qcom_common.c
+++ b/drivers/remoteproc/qcom_common.c
@@ -42,6 +42,13 @@ static void glink_subdev_stop(struct rproc_subdev *subdev, bool crashed)
 	glink->edge = NULL;
 }
 
+static void glink_subdev_unprepare(struct rproc_subdev *subdev)
+{
+	struct qcom_rproc_glink *glink = to_glink_subdev(subdev);
+
+	qcom_glink_ssr_notify(glink->ssr_name);
+}
+
 /**
  * qcom_add_glink_subdev() - try to add a GLINK subdevice to rproc
  * @rproc:	rproc handle to parent the subdevice
@@ -64,6 +71,7 @@ void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink,
 	glink->dev = dev;
 	glink->subdev.start = glink_subdev_start;
 	glink->subdev.stop = glink_subdev_stop;
+	glink->subdev.unprepare = glink_subdev_unprepare;
 
 	rproc_add_subdev(rproc, &glink->subdev);
 }
diff --git a/drivers/soc/qcom/glink_ssr.c b/drivers/soc/qcom/glink_ssr.c
index d7babe3d67bc..847d79c935f1 100644
--- a/drivers/soc/qcom/glink_ssr.c
+++ b/drivers/soc/qcom/glink_ssr.c
@@ -54,6 +54,19 @@ struct glink_ssr {
 	struct completion completion;
 };
 
+/* Notifier list for all registered glink_ssr instances */
+static BLOCKING_NOTIFIER_HEAD(ssr_notifiers);
+
+/**
+ * qcom_glink_ssr_notify() - notify GLINK SSR about stopped remoteproc
+ * @ssr_name:	name of the remoteproc that has been stopped
+ */
+void qcom_glink_ssr_notify(const char *ssr_name)
+{
+	blocking_notifier_call_chain(&ssr_notifiers, 0, (void *)ssr_name);
+}
+EXPORT_SYMBOL_GPL(qcom_glink_ssr_notify);
+
 static int qcom_glink_ssr_callback(struct rpmsg_device *rpdev,
 				   void *data, int len, void *priv, u32 addr)
 {
@@ -81,8 +94,9 @@ static int qcom_glink_ssr_callback(struct rpmsg_device *rpdev,
 	return 0;
 }
 
-static int qcom_glink_ssr_notify(struct notifier_block *nb, unsigned long event,
-				 void *data)
+static int qcom_glink_ssr_notifier_call(struct notifier_block *nb,
+					unsigned long event,
+					void *data)
 {
 	struct glink_ssr *ssr = container_of(nb, struct glink_ssr, nb);
 	struct do_cleanup_msg msg;
@@ -121,18 +135,18 @@ static int qcom_glink_ssr_probe(struct rpmsg_device *rpdev)
 
 	ssr->dev = &rpdev->dev;
 	ssr->ept = rpdev->ept;
-	ssr->nb.notifier_call = qcom_glink_ssr_notify;
+	ssr->nb.notifier_call = qcom_glink_ssr_notifier_call;
 
 	dev_set_drvdata(&rpdev->dev, ssr);
 
-	return qcom_register_ssr_notifier(&ssr->nb);
+	return blocking_notifier_chain_register(&ssr_notifiers, &ssr->nb);
 }
 
 static void qcom_glink_ssr_remove(struct rpmsg_device *rpdev)
 {
 	struct glink_ssr *ssr = dev_get_drvdata(&rpdev->dev);
 
-	qcom_unregister_ssr_notifier(&ssr->nb);
+	blocking_notifier_chain_unregister(&ssr_notifiers, &ssr->nb);
 }
 
 static const struct rpmsg_device_id qcom_glink_ssr_match[] = {
diff --git a/include/linux/rpmsg/qcom_glink.h b/include/linux/rpmsg/qcom_glink.h
index 96e26d94719f..09daa0acde2c 100644
--- a/include/linux/rpmsg/qcom_glink.h
+++ b/include/linux/rpmsg/qcom_glink.h
@@ -26,4 +26,10 @@ static inline void qcom_glink_smem_unregister(struct qcom_glink *glink) {}
 
 #endif
 
+#if IS_ENABLED(CONFIG_RPMSG_QCOM_GLINK_SSR)
+void qcom_glink_ssr_notify(const char *ssr_name);
+#else
+static inline void qcom_glink_ssr_notify(const char *ssr_name) {}
+#endif
+
 #endif
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
