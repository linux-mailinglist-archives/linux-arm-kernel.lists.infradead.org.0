Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 298A0172207
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:16:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+urIkUnZXlyn6tPMkxWre+4O4jXHOfCuzHXyDgip+d0=; b=t/IPBV3dXGggIcD4BtSAXDttQk
	sLcVKuY+qKW1y+amK85UJNzybzniYF74a006HKngCStRM/whcgLDaENRTBNzKPyC5lVbIPYZgW58r
	PsRsNv8aJkxejf++nP2UPRRdZc1Iormd87lsLAcW1XpsJ9R9VLxA2LKTwozrWSpoCgtAUfzBWAl9j
	kV3OcBDT8G1uuGgeR0VAs8JyW9FnE1xkRU2iZbMN2N9dmTIvvIEKXNEhvriit2lA4pvh2AhYYb/Gw
	8SNg1TPJksgc+V2P5HF0oE3nx3R6UpWViu+KPLjw9WIHCEx4CzSl77qe5ehVbpQ915HIkBOWxwdZR
	WweMRmYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7KtT-0002T8-6U; Thu, 27 Feb 2020 15:16:07 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Kry-00007n-Io
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:14:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id f19so1707075wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 07:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vhTfl79n9jE2DgXDY2nDtsHQSi/ayZitWxYC2DEPQGI=;
 b=wBIa5+lk9iIYCjNMcn6f1N3lnW5EuWlHDIRvMpMHapeoN57BZdvLS2Mxfb10vIvANx
 T73l3ZhrAiOhld5eWb9sG5hZKFSXiG7QYTsFbj6lyKfUFzPYlcqKrRnG4PvTUkrXK0gV
 yGM7mMaqSbK87Hs+w3/1AqWZsLXLdfEQ0hQ5Tqrd3SVsb9yJF9ay0F0P+ySqpFEbuLfZ
 h4ve1qjTiZ1cJqgYKxM6pz7140+ZimtERut9mX2prXYklr3tY/tL5mQ5HK/HhYulNVxo
 iFQcHAXCiTxFE/sDHYsHYf+ZO2wEQhFRtBybM3Xtve23Q+o3W21UlNR/FoybtJEiVHzV
 W8mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vhTfl79n9jE2DgXDY2nDtsHQSi/ayZitWxYC2DEPQGI=;
 b=b/JLhrvcp/xwZm0RtzxCowvBrfnIwGkT8CoBiWSgAI8yZEoo00Tkz7Afc/S224QhtY
 FQAzDXjftJXMFpHcgGtR0xMeofhnfnlVZXWR/S7eV0jhF/sfzq6SEVGqMxcAr8LTJ+kE
 a/W8R+ztWdgiyAvJiWX6qzL+RIzghWDid2OZc5WFTe77w/7lt6yQI/IFZAqZlPdulJ9+
 AMVnbQrCXqFAN7mcKtp/JAGdF3MRVmXZauGAiR+VTcgY8HogIQ2APezPCgQ0Zx0JiYoH
 U0XPzHHPlp2rSzC+QkvTRgnERmbE04caLDf34Tdddww3/SvxLVQJyttRMSJHW0Ob2Nkl
 fEoA==
X-Gm-Message-State: APjAAAUQFPChhLuKH64WYb8RQ18u+DBjd6j47bB47oNMxx5SE/zl+FX9
 ZYsDmQGh7cPpvd327QXmC6eNf9OwuHQ=
X-Google-Smtp-Source: APXvYqw4jKtA+AOitpttxRTf2Q5Jgjrntsjt2hAMESAge0Jsw/yJx1debLxfpyIIEKpiX7mDYkYfTQ==
X-Received: by 2002:a7b:cd14:: with SMTP id f20mr5634452wmj.43.1582816472373; 
 Thu, 27 Feb 2020 07:14:32 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6801:1801:2dc1:e60d:4b1c:70e0])
 by smtp.gmail.com with ESMTPSA id q12sm8973079wrg.71.2020.02.27.07.14.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 07:14:30 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v5 5/6] coresight: cti: Add in sysfs links to other coresight
 devices
Date: Thu, 27 Feb 2020 15:14:15 +0000
Message-Id: <20200227151416.14271-6-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227151416.14271-1-mike.leach@linaro.org>
References: <20200227151416.14271-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_071434_632977_D9AACEDA 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Adds in sysfs links for connections where the connected device is another
coresight device. This allows examination of the coresight topology.

Non-coresight connections remain just as a reference name.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
