Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5488A11E5F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 15:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8Mf3svkGTtLKaBdC4aOvNDdfsw/dQAfUxwQoHuWOqy8=; b=MkFFuaQ9d0OTcMa6/Kgtu7DlU2
	28hKRt0HTdJwl79VS287lyP7xczONIWDrRnfCTp9DfZLvWw7cLI8fjG9WcBeqxZynFK+iclfgc/kJ
	lpmOA/e9fGce3ay7FZIFkjgVA5MEoJCXsoUSXJTw+XMv+Qu0BFPud+VG/bb4tGkOBgqoawf2Bx0Yq
	eVYh2nGBW2Ys7Ai2Hzd/H45snUYqYI7xNZLtca9DQ3Qnek/ceKK4jsK1FDVbElkahMcpWZS+hRt83
	ooueSrIRGJ07I2I6yHFZVYYTWgSe43l5B29TO7Ld0s49Xpuh0SMF1piZQTECcklbq+lMRdD3hYHSE
	yEaFcVfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmMQ-0002VQ-3t; Fri, 13 Dec 2019 14:56:06 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmLA-0000FS-1U
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 14:54:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so6978803wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 06:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=//sdX0uimiNqq+PTSFIQWuZgSIzAe7ctl+sMKSFWfAA=;
 b=fwQKQh0K20OADXtxzsH48b5qBPqqKsH7Gq4GO5bggQKYWVelVgUNzD3fT7QdwFIcxa
 9ZonGyEb1ow8cqfrpL+/BrN+QWxO1G+kQKcR4mLoMV+MhQHeoob+iyOSggJowswbXYZP
 Js3ZIo1PTLrPw4at20VI/0jYGurcJPzxLlKF+rgvV9VB+lwvaQSZeXuiVz0ByRG/eRWw
 bhJpfGArXBbHvpjxLi2SAX5q6vPO/fcL5R1uFINS77U2hWpzRiN5P/3emib5h4wmPVl+
 Oq0TKc+xpfg+/EP2NYMdAuwcJMIowg2n3nOfedopDlZIRjaVIBDAdhf5qzNkQF8v+ULG
 8AeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=//sdX0uimiNqq+PTSFIQWuZgSIzAe7ctl+sMKSFWfAA=;
 b=KJ25WKmwGe14TZ10qRU9GaCy0tdt+M1F0BTm6bikfUTqpe7iURpqZGJbooWHE3yPD5
 MLNi+yyIjb2yV8PNRzhLsNsD2G/Ek/jehGZUhbHhFo6Cw3y3LMHaUmXFIR7T/EfSPU4P
 t+rXrlPBLpNDX35EZPhBDXiagaFJdENaHwY3E9x4sORWrVDMgRp/jTtl34zlWUblM1A+
 qF9kB5Z9hc7kWEtowNMlZiwbU+abNkjCdqY3YPxD6yvtolzbq2cGpc66h4fuBuXqmMYQ
 MIB8LTi1NWBa6X6p4U4RzCUAsXIFr59bmpislV3etjUQ82F04HpZSQhAwFvZDNgm+r0z
 UbNQ==
X-Gm-Message-State: APjAAAU3juL1TUKTQsaEdULSIhQnTFFxvXnpJl5A2TV1L/bXWCW924Qc
 OOIy2Yiv9WtskTwDKFRpCDXVSKyZ0Gc=
X-Google-Smtp-Source: APXvYqyDh8ESWmF4+9tJP6UNIKYroQbne5r/2ngcSkt0FIW7juWbOYv2D4wA0FteCfmCq3aqOZoChA==
X-Received: by 2002:adf:f885:: with SMTP id u5mr13538678wrp.359.1576248886509; 
 Fri, 13 Dec 2019 06:54:46 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:54:d457:4f7b:f42c])
 by smtp.gmail.com with ESMTPSA id n189sm10002979wme.33.2019.12.13.06.54.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 06:54:45 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v3 5/6] coresight: cti: Add in sysfs links to other coresight
 devices.
Date: Fri, 13 Dec 2019 14:54:30 +0000
Message-Id: <20191213145431.24067-6-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191213145431.24067-1-mike.leach@linaro.org>
References: <20191213145431.24067-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_065448_127328_7BC7221E 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Adds in sysfs links for connections where the connected device is another
coresight device. This allows examination of the coresight topology.

Non-coresight connections remain just as a reference name.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti.c | 41 ++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index 9d27dea1625f..107ef7178015 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -441,6 +441,37 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
 	return err;
 }
 
+static void cti_add_sysfs_link(struct cti_drvdata *drvdata,
+			       struct cti_trig_con *tc)
+{
+	struct coresight_sysfs_link link_info;
+
+	link_info.orig = drvdata->csdev;
+	link_info.orig_name = tc->con_dev_name;
+	link_info.target = tc->con_dev;
+	link_info.target_name = dev_name(&drvdata->csdev->dev);
+	coresight_add_sysfs_link(&link_info);
+}
+
+static void cti_remove_all_sysfs_links(struct cti_drvdata *drvdata)
+{
+	struct cti_trig_con *tc;
+	struct cti_device *ctidev = &drvdata->ctidev;
+	struct coresight_sysfs_link link_info;
+
+	/* origin device and target link name constant for this cti */
+	link_info.orig = drvdata->csdev;
+	link_info.target_name = dev_name(&drvdata->csdev->dev);
+
+	list_for_each_entry(tc, &ctidev->trig_cons, node) {
+		if (tc->con_dev) {
+			link_info.target = tc->con_dev;
+			link_info.orig_name = tc->con_dev_name;
+			coresight_remove_sysfs_link(&link_info);
+		}
+	}
+}
+
 /*
  * Look for a matching connection device name in the list of connections.
  * If found then swap in the csdev name, set trig con association pointer
@@ -452,6 +483,8 @@ cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
 {
 	struct cti_trig_con *trig_con;
 	const char *csdev_name;
+	struct cti_drvdata *drvdata = container_of(ctidev, struct cti_drvdata,
+						   ctidev);
 
 	list_for_each_entry(trig_con, &ctidev->trig_cons, node) {
 		if (trig_con->con_dev_name) {
@@ -462,6 +495,7 @@ cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
 				trig_con->con_dev_name =
 					kstrdup(csdev_name, GFP_KERNEL);
 				trig_con->con_dev = csdev;
+				cti_add_sysfs_link(drvdata, trig_con);
 				return true;
 			}
 		}
@@ -546,10 +580,12 @@ static void cti_update_conn_xrefs(struct cti_drvdata *drvdata)
 	struct cti_device *ctidev = &drvdata->ctidev;
 
 	list_for_each_entry(tc, &ctidev->trig_cons, node) {
-		if (tc->con_dev)
+		if (tc->con_dev) {
 			/* set tc->con_dev->ect_dev */
 			coresight_set_assoc_ectdev_mutex(tc->con_dev,
 							 drvdata->csdev);
+			cti_add_sysfs_link(drvdata, tc);
+		}
 	}
 }
 
@@ -602,6 +638,9 @@ static void cti_device_release(struct device *dev)
 	mutex_lock(&ect_mutex);
 	cti_remove_conn_xrefs(drvdata);
 
+	/* clear the dynamic sysfs associate with connections */
+	cti_remove_all_sysfs_links(drvdata);
+
 	/* remove from the list */
 	list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
 		if (ect_item == drvdata) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
