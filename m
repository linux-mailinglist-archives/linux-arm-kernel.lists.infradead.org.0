Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEB61B516A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 02:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYu24uRMR79n/z38ib23m9eRdcKEw8acZ02mNtaJDyY=; b=eFs/nztO5WstQz
	k/r+V6x3uMeZdNzYXp2ePxye65XaSYeUMfNMw2/u+b0tUNlJrXuMN25zK29E/mcPQNYm1jGJe9V7H
	lADC5NLvQn9Sg7fmol6j/HTmYF6tqBjzL6fr1CziHjNvlnMBDP60Wz31ThjqiAbjjUVY2l9EATVgd
	yzlzxaKpat9lZNiNo0K2nvcZIpaEBOLZmHM3PzFXFkIHpLmE9RLoSqBgtgpyThinmM1HKlMP9+rz4
	36eKAOVlVejURFLVzCPctgqnRIWJPmfajtK/yXzGQvIbw9c+HG2HJpIZdxec0S3Hl0pHGOnL4NAho
	bUzOffxX+u0gfAbJDHpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRPtZ-0000eD-EC; Thu, 23 Apr 2020 00:39:13 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRPsa-0008Kg-Dz
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 00:38:15 +0000
Received: by mail-pf1-x441.google.com with SMTP id v63so2021440pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 17:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MGHZwN0LAtzrhReD8egvVxlgtUx+R63R7VOmTzodM+8=;
 b=efBg576eZ3LUkjyh6JULzCvgRV6yCqC5mm4AgOB3N/VfTEEiHJimPGf8zeU1nm5wxM
 ZA1vW/k9iqnx1GqD8FhQtgyeAEi2QhPzNlYobt2OVT2wYNL9VVLoWtwUNe1GhUuB4mlA
 EJplX/hsPmC6c0fY009d2HbeAioIMxQPcTURTtSHZbrDjTVJ4Ta1TcG0xurKjpJvblsf
 bPg/4P1FV+cJEGCMWKzQ37qXDVdi/72wEoLihvqgKZYNgx9g2Ml6vIug8aO5pH8YYzEn
 ZYvSTCOXf+122Z+97YBazi0uVR4s/lMlcVW45nhgdgWZAG8sOVYZhXv9AxPp4WVqu+8t
 boVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MGHZwN0LAtzrhReD8egvVxlgtUx+R63R7VOmTzodM+8=;
 b=LX3d7SCRPqIboKqvtz/1XIFU2Q2BamPwyiL9nrfSHp2vrsAGUgfHRgOAT2DSSfPuJM
 vZz3e31o0dEV8T/fTVuuB6qLLUlJZDmleKGTb7RAYv81z/D7KiquTFnfpcWc2yrXWHeG
 fk2O9KX3Ku5MzMOz3Xs9mbKlWjw3MHyKFh5loFAbe35QNBz6B6vekhduNnMWnqbBrSxR
 10duosMqpm7aA/fe2MeWsLWz5EOo0xp7TRNhF0pEU769edPZbdW8pqX4Njxhuz4F+uPz
 iEJevP8OMHvDtljJEOiKf/cUf0cF3NclBAwwxqEvwq5kdEKqriVjdWjVL3YFIdBi8aJU
 S1PQ==
X-Gm-Message-State: AGi0PuYETACLUSsiJf1wlhzHfedkIYcTLFzjfEEftaFQtruWtDhGeRzo
 6XV0venZffvYYeGyRDkkV7xbYA==
X-Google-Smtp-Source: APiQypLw7baTFhOiMTOokbF+ufVlwrh986MOwTUTryb0kDUEMg0FFP2DHqyjonVdeqr6H3GxSDFX8w==
X-Received: by 2002:a62:6585:: with SMTP id z127mr1191227pfb.217.1587602291258; 
 Wed, 22 Apr 2020 17:38:11 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 6sm432225pgz.0.2020.04.22.17.38.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 17:38:10 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ohad Ben-Cohen <ohad@wizery.com>
Subject: [PATCH 3/4] rpmsg: glink: Integrate glink_ssr in qcom_glink
Date: Wed, 22 Apr 2020 17:37:35 -0700
Message-Id: <20200423003736.2027371-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
References: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_173812_477292_B1654AB0 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

In all but the very special case of a system with _only_ glink_rpm,
GLINK is dependent on glink_ssr, so move it to rpmsg and combine it with
qcom_glink_native in the new qcom_glink kernel module.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/rpmsg/Kconfig                                    | 6 +++---
 drivers/rpmsg/Makefile                                   | 3 ++-
 drivers/{soc/qcom/glink_ssr.c => rpmsg/qcom_glink_ssr.c} | 4 ----
 drivers/soc/qcom/Kconfig                                 | 9 ---------
 drivers/soc/qcom/Makefile                                | 1 -
 include/linux/rpmsg/qcom_glink.h                         | 7 +------
 6 files changed, 6 insertions(+), 24 deletions(-)
 rename drivers/{soc/qcom/glink_ssr.c => rpmsg/qcom_glink_ssr.c} (97%)

diff --git a/drivers/rpmsg/Kconfig b/drivers/rpmsg/Kconfig
index a9108ff563dc..f96716893c2a 100644
--- a/drivers/rpmsg/Kconfig
+++ b/drivers/rpmsg/Kconfig
@@ -24,13 +24,13 @@ config RPMSG_MTK_SCP
 	  remote processors in MediaTek platforms.
 	  This use IPI and IPC to communicate with remote processors.
 
-config RPMSG_QCOM_GLINK_NATIVE
+config RPMSG_QCOM_GLINK
 	tristate
 	select RPMSG
 
 config RPMSG_QCOM_GLINK_RPM
 	tristate "Qualcomm RPM Glink driver"
-	select RPMSG_QCOM_GLINK_NATIVE
+	select RPMSG_QCOM_GLINK
 	depends on HAS_IOMEM
 	depends on MAILBOX
 	help
@@ -40,7 +40,7 @@ config RPMSG_QCOM_GLINK_RPM
 
 config RPMSG_QCOM_GLINK_SMEM
 	tristate "Qualcomm SMEM Glink driver"
-	select RPMSG_QCOM_GLINK_NATIVE
+	select RPMSG_QCOM_GLINK
 	depends on MAILBOX
 	depends on QCOM_SMEM
 	help
diff --git a/drivers/rpmsg/Makefile b/drivers/rpmsg/Makefile
index ae92a7fb08f6..ffe932ef6050 100644
--- a/drivers/rpmsg/Makefile
+++ b/drivers/rpmsg/Makefile
@@ -2,8 +2,9 @@
 obj-$(CONFIG_RPMSG)		+= rpmsg_core.o
 obj-$(CONFIG_RPMSG_CHAR)	+= rpmsg_char.o
 obj-$(CONFIG_RPMSG_MTK_SCP)	+= mtk_rpmsg.o
+qcom_glink-objs			:= qcom_glink_native.o qcom_glink_ssr.o
+obj-$(CONFIG_RPMSG_QCOM_GLINK) += qcom_glink.o
 obj-$(CONFIG_RPMSG_QCOM_GLINK_RPM) += qcom_glink_rpm.o
-obj-$(CONFIG_RPMSG_QCOM_GLINK_NATIVE) += qcom_glink_native.o
 obj-$(CONFIG_RPMSG_QCOM_GLINK_SMEM) += qcom_glink_smem.o
 obj-$(CONFIG_RPMSG_QCOM_SMD)	+= qcom_smd.o
 obj-$(CONFIG_RPMSG_VIRTIO)	+= virtio_rpmsg_bus.o
diff --git a/drivers/soc/qcom/glink_ssr.c b/drivers/rpmsg/qcom_glink_ssr.c
similarity index 97%
rename from drivers/soc/qcom/glink_ssr.c
rename to drivers/rpmsg/qcom_glink_ssr.c
index 847d79c935f1..dcd1ce616974 100644
--- a/drivers/soc/qcom/glink_ssr.c
+++ b/drivers/rpmsg/qcom_glink_ssr.c
@@ -164,7 +164,3 @@ static struct rpmsg_driver qcom_glink_ssr_driver = {
 	},
 };
 module_rpmsg_driver(qcom_glink_ssr_driver);
-
-MODULE_ALIAS("rpmsg:glink_ssr");
-MODULE_DESCRIPTION("Qualcomm GLINK SSR notifier");
-MODULE_LICENSE("GPL v2");
diff --git a/drivers/soc/qcom/Kconfig b/drivers/soc/qcom/Kconfig
index 19332ea40234..5140bd82f1be 100644
--- a/drivers/soc/qcom/Kconfig
+++ b/drivers/soc/qcom/Kconfig
@@ -35,15 +35,6 @@ config QCOM_GENI_SE
 	  driver is also used to manage the common aspects of multiple Serial
 	  Engines present in the QUP.
 
-config QCOM_GLINK_SSR
-	tristate "Qualcomm Glink SSR driver"
-	depends on RPMSG
-	depends on QCOM_RPROC_COMMON
-	help
-	  Say y here to enable GLINK SSR support. The GLINK SSR driver
-	  implements the SSR protocol for notifying the remote processor about
-	  neighboring subsystems going up or down.
-
 config QCOM_GSBI
 	tristate "QCOM General Serial Bus Interface"
 	depends on ARCH_QCOM || COMPILE_TEST
diff --git a/drivers/soc/qcom/Makefile b/drivers/soc/qcom/Makefile
index 5d6b83dc58e8..e9cacc9ad401 100644
--- a/drivers/soc/qcom/Makefile
+++ b/drivers/soc/qcom/Makefile
@@ -3,7 +3,6 @@ CFLAGS_rpmh-rsc.o := -I$(src)
 obj-$(CONFIG_QCOM_AOSS_QMP) +=	qcom_aoss.o
 obj-$(CONFIG_QCOM_GENI_SE) +=	qcom-geni-se.o
 obj-$(CONFIG_QCOM_COMMAND_DB) += cmd-db.o
-obj-$(CONFIG_QCOM_GLINK_SSR) +=	glink_ssr.o
 obj-$(CONFIG_QCOM_GSBI)	+=	qcom_gsbi.o
 obj-$(CONFIG_QCOM_MDT_LOADER)	+= mdt_loader.o
 obj-$(CONFIG_QCOM_OCMEM)	+= ocmem.o
diff --git a/include/linux/rpmsg/qcom_glink.h b/include/linux/rpmsg/qcom_glink.h
index 09daa0acde2c..daded9fddf36 100644
--- a/include/linux/rpmsg/qcom_glink.h
+++ b/include/linux/rpmsg/qcom_glink.h
@@ -12,6 +12,7 @@ struct qcom_glink;
 struct qcom_glink *qcom_glink_smem_register(struct device *parent,
 					    struct device_node *node);
 void qcom_glink_smem_unregister(struct qcom_glink *glink);
+void qcom_glink_ssr_notify(const char *ssr_name);
 
 #else
 
@@ -23,12 +24,6 @@ qcom_glink_smem_register(struct device *parent,
 }
 
 static inline void qcom_glink_smem_unregister(struct qcom_glink *glink) {}
-
-#endif
-
-#if IS_ENABLED(CONFIG_RPMSG_QCOM_GLINK_SSR)
-void qcom_glink_ssr_notify(const char *ssr_name);
-#else
 static inline void qcom_glink_ssr_notify(const char *ssr_name) {}
 #endif
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
