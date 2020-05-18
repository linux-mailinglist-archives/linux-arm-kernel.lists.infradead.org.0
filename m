Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8D81D835E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pKuMrPFYMm/PnEeIUTUQ/r57MH4wFxm5k625tnKmiLc=; b=Vidv/ntQW0xfXI
	jCRtcNExRo3DcZnHhnDWQMF2F8ocAFAL5pR6sgeYWNhDZYZbwQit/p1Li0OAjPlIC7Z/OnX7oR6jX
	15OfR1ho84WSjgrKcFGX6rqipeswOyib0e5WAFiq9rhDn3OixVKuIjPtkwGj2V1Pfs1chu9N6kDpC
	/rKIYh7SS/lbCQs2zQdq5SUT848ZZXyn9LVUvXMrpK/cWgECrbNqRou8GJkAceiooPor5i8bRRVHg
	vtB8l35vckxi+4AKHKFx5M/JkUVDf4T2MEQHiH8OctKhWkeKEg6KOO0Mh+88lP6M1bMp56CVaGPgn
	dE9gSi2f4haIRNgZEGCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak7i-0004LU-2V; Mon, 18 May 2020 18:04:22 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6E-0003Gp-1G
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:53 +0000
Received: by mail-pj1-x1042.google.com with SMTP id k7so185897pjs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0qup2xfzyR/Fig7E6oaQXo8Xo2JibJ08tYflWG0z/rg=;
 b=ytD2QjeXDZrbc8HRk73YatO30g/33jOPq/+y+srGwAQEgtfofNjqlW68+UAby2WZxh
 K0OOt5OIKplgSdawJHU3QxysPrrEORtf8xNfsVmgCOIviXJ1M2Mjw6R5alQZFA6gFYnH
 zSi4jbwLkOjo3LsUpaMCde8DHhtnXjS6QwrWm4hJxeIMI7zkrSx+GRc4zfdjB5N+PCDv
 5qIk85wkYbIQ0aDRQNUSPlzKFOTu8ecG4HFxHW9rzmHLFPHzWIra91lrwmVGcysxtGva
 gYElEfjLHJyQsiabWrPcLiY5IvHGcHVPQxUUbQN3oiG0YnChjhHK5i3k82yVmO/K1sTA
 r1hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0qup2xfzyR/Fig7E6oaQXo8Xo2JibJ08tYflWG0z/rg=;
 b=llXawlOKQGvZmhrZtNz4B7XX3l1Wi26M7lTSk0YlZBnQmoTwPE54J1oxwPw6LmPW4k
 wAwUVU2P8pPGNYmXiHcapknZKxWEXf6F5dyGh4HPfT7YJ39GOq1+dLuAwtzbOSuK1guQ
 xWg9P2t09IHHa2MPKUP9Fp1Rs2ilPeFJsPR+H3G/BQQ/fAjs/4uTUGNFoMCWSJUDqZfF
 ngUxK3bz3Qx0xNG/W61NTXOSD0qegP138GDh0U4X9iCPSRNghb8euO8700TAXwBsrPAC
 SPGsd8rXiNESclDXTRYDF/eYJ62c31eve56o1H2bFN9oGmvL1/KUT9XunkAWAzC/svLG
 SQpw==
X-Gm-Message-State: AOAM533QEH2mcUakjE6yAVciyESIt+uFCRUmz9aUsS4gJmrVqz8ka190
 wXH/9xyVL+yx6ihbjyOxDRRo9A==
X-Google-Smtp-Source: ABdhPJxItxOuiaDBzTApsq2ElULgX5D34VOHCWN5PhW3MOaM1qCraWmrkBHYmVFQyTNsccVJ+KvAiA==
X-Received: by 2002:a17:902:9686:: with SMTP id
 n6mr17944319plp.100.1589824969267; 
 Mon, 18 May 2020 11:02:49 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:48 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 05/23] coresight: cti: Add in sysfs links to other coresight
 devices
Date: Mon, 18 May 2020 12:02:24 -0600
Message-Id: <20200518180242.7916-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110250_111867_C296A041 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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

From: Mike Leach <mike.leach@linaro.org>

Adds in sysfs links for connections where the connected device is another
coresight device. This allows examination of the coresight topology.

Non-coresight connections remain just as a reference name.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti.c | 52 +++++++++++++++++++--
 1 file changed, 48 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index aa6e0249bd70..9e262f5a85e3 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -442,6 +442,34 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
 	return err;
 }
 
+static bool cti_add_sysfs_link(struct cti_drvdata *drvdata,
+			       struct cti_trig_con *tc)
+{
+	struct coresight_sysfs_link link_info;
+	int link_err = 0;
+
+	link_info.orig = drvdata->csdev;
+	link_info.orig_name = tc->con_dev_name;
+	link_info.target = tc->con_dev;
+	link_info.target_name = dev_name(&drvdata->csdev->dev);
+
+	link_err = coresight_add_sysfs_link(&link_info);
+	if (link_err)
+		dev_warn(&drvdata->csdev->dev,
+			 "Failed to set CTI sysfs link %s<=>%s\n",
+			 link_info.orig_name, link_info.target_name);
+	return !link_err;
+}
+
+static void cti_remove_sysfs_link(struct cti_trig_con *tc)
+{
+	struct coresight_sysfs_link link_info;
+
+	link_info.orig_name = tc->con_dev_name;
+	link_info.target = tc->con_dev;
+	coresight_remove_sysfs_link(&link_info);
+}
+
 /*
  * Look for a matching connection device name in the list of connections.
  * If found then swap in the csdev name, set trig con association pointer
@@ -452,6 +480,8 @@ cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
 		      struct coresight_device *csdev)
 {
 	struct cti_trig_con *tc;
+	struct cti_drvdata *drvdata = container_of(ctidev, struct cti_drvdata,
+						   ctidev);
 
 	list_for_each_entry(tc, &ctidev->trig_cons, node) {
 		if (tc->con_dev_name) {
@@ -459,7 +489,12 @@ cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
 				/* match: so swap in csdev name & dev */
 				tc->con_dev_name = dev_name(&csdev->dev);
 				tc->con_dev = csdev;
-				return true;
+				/* try to set sysfs link */
+				if (cti_add_sysfs_link(drvdata, tc))
+					return true;
+				/* link failed - remove CTI reference */
+				tc->con_dev = NULL;
+				break;
 			}
 		}
 	}
@@ -522,6 +557,7 @@ void cti_remove_assoc_from_csdev(struct coresight_device *csdev)
 		ctidev = &ctidrv->ctidev;
 		list_for_each_entry(tc, &ctidev->trig_cons, node) {
 			if (tc->con_dev == csdev->ect_dev) {
+				cti_remove_sysfs_link(tc);
 				tc->con_dev = NULL;
 				break;
 			}
@@ -543,10 +579,16 @@ static void cti_update_conn_xrefs(struct cti_drvdata *drvdata)
 	struct cti_device *ctidev = &drvdata->ctidev;
 
 	list_for_each_entry(tc, &ctidev->trig_cons, node) {
-		if (tc->con_dev)
-			/* set tc->con_dev->ect_dev */
-			coresight_set_assoc_ectdev_mutex(tc->con_dev,
+		if (tc->con_dev) {
+			/* if we can set the sysfs link */
+			if (cti_add_sysfs_link(drvdata, tc))
+				/* set the CTI/csdev association */
+				coresight_set_assoc_ectdev_mutex(tc->con_dev,
 							 drvdata->csdev);
+			else
+				/* otherwise remove reference from CTI */
+				tc->con_dev = NULL;
+		}
 	}
 }
 
@@ -559,6 +601,8 @@ static void cti_remove_conn_xrefs(struct cti_drvdata *drvdata)
 		if (tc->con_dev) {
 			coresight_set_assoc_ectdev_mutex(tc->con_dev,
 							 NULL);
+			cti_remove_sysfs_link(tc);
+			tc->con_dev = NULL;
 		}
 	}
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
