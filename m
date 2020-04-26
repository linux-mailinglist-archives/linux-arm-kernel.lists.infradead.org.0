Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A21D1B9262
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 19:44:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7M5Ya12hngZWA1eDHazU3MHeqOemP2uybkaRpwG+2rU=; b=RrQnN/9AiguoUEpzVxTMfPJvOO
	MHNJoavGEZzXjMIl2Zz1JNRPDoV7Q9JU6KGFR8r+TJp6TwatfVCn93Ez0CVo2VOjPM3QExEYFGbWm
	MbzBPidweH6CK1A2jXC1I+78Ajqp24HnXiW5Dzp6BDM4e/9fPRKKabnc4t57e7XZFxResTVvSwkT0
	hBoF4JCORIG5rTOkk8P9CqQFcuvZqhOjpcKfVmUSKmi6oUm8L9sPFOoU86OWldF1bR1Jd/lSYnHgD
	XUXUbc6JUYAxEtoKI/85Gjt2kDoTjeOpoTBaTMJQ8eGCUQXfbxksT46iOqcY3PNZWtCfHvyRkw4y4
	bh+to38Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSlJr-00035A-3d; Sun, 26 Apr 2020 17:43:55 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSlII-0001nG-BC
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 17:42:20 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200426174211epoutp022223436ab71a6e85ed403b408c653d82~Jb34kNdz52069620696epoutp02E
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 17:42:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200426174211epoutp022223436ab71a6e85ed403b408c653d82~Jb34kNdz52069620696epoutp02E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587922931;
 bh=kDIy4u6dKypJDeZVrGE9ZKceZgeyPXJh8PvB97xxnQM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DPRsnYTD+twF8Bomcthr8yCQLDKZdh1N5SvRkWX81TbbRxdZ7udW/R0m6qjXMPB7z
 GhtN/7vjs+ICzQo5n04tlWC2EdhJmIPW6/UcTZHVRUaf/Om3hnqfmrWDrUWHgGoqXR
 sv9RqB17QM1viCPXoazRAk3zdBqvtivtE/3oFdYo=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200426174209epcas5p1284ff3ef56513a18dbd5997f146f7067~Jb33aBmZb1407714077epcas5p1f;
 Sun, 26 Apr 2020 17:42:09 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 49.DE.04736.1F7C5AE5; Mon, 27 Apr 2020 02:42:09 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200426174209epcas5p2fc312fae0c619674bfd784d8659d3b97~Jb32mZNUi0368603686epcas5p2g;
 Sun, 26 Apr 2020 17:42:09 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200426174209epsmtrp2335ed61fb58fc1930a17db85369ad393~Jb32lpykY1150211502epsmtrp2W;
 Sun, 26 Apr 2020 17:42:09 +0000 (GMT)
X-AuditID: b6c32a4b-acbff70000001280-fc-5ea5c7f18355
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 CA.FF.18461.0F7C5AE5; Mon, 27 Apr 2020 02:42:08 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200426174207epsmtip16c4acfbd2fb4adc4230258ac30e25a43~Jb30wGKon2817828178epsmtip1J;
 Sun, 26 Apr 2020 17:42:06 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v7 03/10] scsi: ufs: add quirk to enable host controller
 without hce
Date: Sun, 26 Apr 2020 23:00:17 +0530
Message-Id: <20200426173024.63069-4-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200426173024.63069-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIKsWRmVeSWpSXmKPExsWy7bCmlu7H40vjDPrPmlk8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujFkvDrEVbJCraGr8wtTAeEqii5GTQ0LARGLvi6esXYxcHEICuxklLlx5yg7h
 fGKU2D/tJBOE841R4ubZLYwwLfMnNTFDJPYySlx5tYERwmlhktjX0AVWxSagLXF3+hYmEFtE
 QFjiyLc2sDizwA0miQcrXUBsYYEwiaYLS8DiLAKqEl/OTgCzeQVsJLa9mMsEsU1eYvWGA8wg
 NqeArcSpGbvATpIQ6OSQ6HlwjBWiyEWid9ElZghbWOLV8S3sELaUxOd3e9m6GDmA7GyJnl3G
 EOEaiaXzjrFA2PYSB67MYQEpYRbQlFi/Sx/iTD6J3t9PmCA6eSU62oQgqlUlmt9dheqUlpjY
 3Q11gIfEgQmzoIE1gVHi4JxOpgmMsrMQpi5gZFzFKJlaUJybnlpsWmCcl1quV5yYW1yal66X
 nJ+7iRGcULS8dzBuOudziFGAg1GJh5dj+9I4IdbEsuLK3EOMEhzMSiK8MSWL4oR4UxIrq1KL
 8uOLSnNSiw8xSnOwKInzTmK9GiMkkJ5YkpqdmlqQWgSTZeLglGpgbFwh6DiVS8z9cDqr0Ymo
 2dOl96513yptM/3qZWedE13n5ySzrY8/V/zqZfqk2/5T5NJP6iZM+cX+Pl5aXGembOvelRsf
 7hNY+/Rq6FbONV99X7gdLhaLzU9RvXhwSt1Mn0S2GqXJf+5+PmcssvlOqq7jz4JJLV6SLX/2
 GMq7Fpd7CTXzfs6/qMRSnJFoqMVcVJwIAFsPG94kAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrILMWRmVeSWpSXmKPExsWy7bCSnO7H40vjDLpdLR7M28Zm8fLnVTaL
 T+uXsVrMP3KO1eL8+Q3sFje3HGWx2PT4GqvF5V1z2CxmnN/HZNF9fQebxfLj/5gs/u/ZwW6x
 dOtNRgdej8t9vUwem1Z1snlsXlLv0XJyP4vHx6e3WDz6tqxi9Pi8Sc6j/UA3UwBHFJdNSmpO
 Zllqkb5dAlfGrBeH2Ao2yFU0NX5hamA8JdHFyMkhIWAiMX9SE3MXIxeHkMBuRonvP/czQiSk
 Ja5vnMAOYQtLrPz3nB2iqIlJ4uiij8wgCTYBbYm707cwgdgiQEVHvrWBNTMLPGOSOPWwFMQW
 FgiReLj8HNggFgFViS9nJ4DV8ArYSGx7MZcJYoG8xOoNB8BmcgrYSpyasQsozgG0zEZi+nr/
 CYx8CxgZVjFKphYU56bnFhsWGOallusVJ+YWl+al6yXn525iBIeyluYOxu2rPugdYmTiYDzE
 KMHBrCTCG1OyKE6INyWxsiq1KD++qDQntfgQozQHi5I4743ChXFCAumJJanZqakFqUUwWSYO
 TqkGpu75xzenpa77UqzI+CDgLe/zt0aCnA/4NrjdaXS7y+r3+tIv3scz5rUdTZ6iIVEWPGdr
 pLv6zSUVW/3mtzGUaezp/iw3r2mTp1RcrszEXW2qS5/4p+qv38q1bdqXqT4PJhk3WC9Y8+XE
 06Xawj38t93bH0VNXbFqqbh/qUHodNY9H91YFbN+3/C4f2RrhqeIS6hGS6LnkercVQEhL3fP
 +at15jXfxKuKloqZFd/4Jl+/tWjbcZ9dTyMkPnxfNTlISFQnSkqr9Oz3qLfTMq4WXHxkvLPr
 9bdc760898ra1d9NZNhg5Gmas6lTVPK21mf3cJ7PG3leGu6dqurFY71oZdGz3beMEpXKrt08
 yNvjm67EUpyRaKjFXFScCAAXe6k61AIAAA==
X-CMS-MailID: 20200426174209epcas5p2fc312fae0c619674bfd784d8659d3b97
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200426174209epcas5p2fc312fae0c619674bfd784d8659d3b97
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174209epcas5p2fc312fae0c619674bfd784d8659d3b97@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_104218_567295_F95F07B5 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some host controllers don't support host controller enable via HCE.

Reviewed-by: Can Guo <cang@codeaurora.org>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufshcd.c | 76 +++++++++++++++++++++++++++++++++++++--
 drivers/scsi/ufs/ufshcd.h |  6 ++++
 2 files changed, 80 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 0e9704da58bd..ee30ed6cc805 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -3534,6 +3534,52 @@ static int ufshcd_dme_link_startup(struct ufs_hba *hba)
 			"dme-link-startup: error code %d\n", ret);
 	return ret;
 }
+/**
+ * ufshcd_dme_reset - UIC command for DME_RESET
+ * @hba: per adapter instance
+ *
+ * DME_RESET command is issued in order to reset UniPro stack.
+ * This function now deal with cold reset.
+ *
+ * Returns 0 on success, non-zero value on failure
+ */
+static int ufshcd_dme_reset(struct ufs_hba *hba)
+{
+	struct uic_command uic_cmd = {0};
+	int ret;
+
+	uic_cmd.command = UIC_CMD_DME_RESET;
+
+	ret = ufshcd_send_uic_cmd(hba, &uic_cmd);
+	if (ret)
+		dev_err(hba->dev,
+			"dme-reset: error code %d\n", ret);
+
+	return ret;
+}
+
+/**
+ * ufshcd_dme_enable - UIC command for DME_ENABLE
+ * @hba: per adapter instance
+ *
+ * DME_ENABLE command is issued in order to enable UniPro stack.
+ *
+ * Returns 0 on success, non-zero value on failure
+ */
+static int ufshcd_dme_enable(struct ufs_hba *hba)
+{
+	struct uic_command uic_cmd = {0};
+	int ret;
+
+	uic_cmd.command = UIC_CMD_DME_ENABLE;
+
+	ret = ufshcd_send_uic_cmd(hba, &uic_cmd);
+	if (ret)
+		dev_err(hba->dev,
+			"dme-reset: error code %d\n", ret);
+
+	return ret;
+}
 
 static inline void ufshcd_add_delay_before_dme_cmd(struct ufs_hba *hba)
 {
@@ -4251,7 +4297,7 @@ static inline void ufshcd_hba_stop(struct ufs_hba *hba, bool can_sleep)
 }
 
 /**
- * ufshcd_hba_enable - initialize the controller
+ * ufshcd_hba_execute_hce - initialize the controller
  * @hba: per adapter instance
  *
  * The controller resets itself and controller firmware initialization
@@ -4260,7 +4306,7 @@ static inline void ufshcd_hba_stop(struct ufs_hba *hba, bool can_sleep)
  *
  * Returns 0 on success, non-zero value on failure
  */
-int ufshcd_hba_enable(struct ufs_hba *hba)
+static int ufshcd_hba_execute_hce(struct ufs_hba *hba)
 {
 	int retry;
 
@@ -4308,6 +4354,32 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
 
 	return 0;
 }
+
+int ufshcd_hba_enable(struct ufs_hba *hba)
+{
+	int ret;
+
+	if (hba->quirks & UFSHCI_QUIRK_BROKEN_HCE) {
+		ufshcd_set_link_off(hba);
+		ufshcd_vops_hce_enable_notify(hba, PRE_CHANGE);
+
+		/* enable UIC related interrupts */
+		ufshcd_enable_intr(hba, UFSHCD_UIC_MASK);
+		ret = ufshcd_dme_reset(hba);
+		if (!ret) {
+			ret = ufshcd_dme_enable(hba);
+			if (!ret)
+				ufshcd_vops_hce_enable_notify(hba, POST_CHANGE);
+			if (ret)
+				dev_err(hba->dev,
+					"Host controller enable failed with non-hce\n");
+		}
+	} else {
+		ret = ufshcd_hba_execute_hce(hba);
+	}
+
+	return ret;
+}
 EXPORT_SYMBOL_GPL(ufshcd_hba_enable);
 
 static int ufshcd_disable_tx_lcc(struct ufs_hba *hba, bool peer)
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 53096642f9a8..f8d08cb9caf7 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -529,6 +529,12 @@ enum ufshcd_quirks {
 	 * that the interrupt aggregation timer and counter are reset by s/w.
 	 */
 	UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR		= 1 << 7,
+
+	/*
+	 * This quirks needs to be enabled if host controller cannot be
+	 * enabled via HCE register.
+	 */
+	UFSHCI_QUIRK_BROKEN_HCE				= 1 << 8,
 };
 
 enum ufshcd_caps {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
