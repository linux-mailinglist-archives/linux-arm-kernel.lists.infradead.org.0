Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72701D2436
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7M5Ya12hngZWA1eDHazU3MHeqOemP2uybkaRpwG+2rU=; b=h+X+7K3g4nvIr13R95Fgnh0HPf
	YrM9YmwIs+22gQuHM/vOTG0brW0MorG1rxYplYo/Usl3rRV1YcPesIqSB2FQCsM51iLcG4Jq0T80n
	daVktGtzefoICHJ5IbqeLiz1JzkbaabLk+rs9Z7VVDUO2br2B+KIr+UWaCzu4nXNA6bC5OjEwotLe
	v0lvEundealbvZgCRia05+cVoxxa/Tw8mpNeg48lREEXq8+yEt0s6zSn02ct4hyld3F8uaun4T+cP
	IFChSp8l0la1W52H8PvEy/jo+niRU4BLNAipx66FOVmxDJbfHeAIAKadZyIuNzt6Jggg8J3HQeNp5
	NqdZhchw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ28W-0001W8-ON; Thu, 14 May 2020 00:54:08 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ27R-0000kl-C0
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:53:03 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200514005259epoutp03ff08930bcf3a9577453824a35bd0b6dd~Ovt4DB3vI0808608086epoutp03e
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 00:52:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200514005259epoutp03ff08930bcf3a9577453824a35bd0b6dd~Ovt4DB3vI0808608086epoutp03e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589417579;
 bh=kDIy4u6dKypJDeZVrGE9ZKceZgeyPXJh8PvB97xxnQM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M6mF41Y/BtfiekB8Pcgc6PuFg9Q79qhHnXtdISoM+7aWmDV90MvtjOeuGumyBF5r4
 QjBGAfxh50HRY8I1n5VZ06Pq7Ti0CPE8z/Wq+8rPwK5na0daMVFi91DksXsUmzZkN7
 irxJoDW0QgpL+CG4DGdFXt2OLz31tOQhxCcuL2F8=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200514005258epcas5p3724cb2da48af76bb5a8a43dc904bca0a~Ovt3vNDKD1578415784epcas5p3v;
 Thu, 14 May 2020 00:52:58 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 D2.7E.23389.A669CBE5; Thu, 14 May 2020 09:52:58 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200514005258epcas5p14733cec8b9ca92e518a8d5a0c27f3f0b~Ovt3PWUKk0561005610epcas5p10;
 Thu, 14 May 2020 00:52:58 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200514005258epsmtrp2e3521a4d4c066e0c7deda812d688fdfd~Ovt3ObrY81522815228epsmtrp2F;
 Thu, 14 May 2020 00:52:58 +0000 (GMT)
X-AuditID: b6c32a4b-7adff70000005b5d-e5-5ebc966a2298
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 7F.C3.18461.A669CBE5; Thu, 14 May 2020 09:52:58 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200514005256epsmtip2145bd29b7cd6852b8b9df882a496eb46~Ovt1Tgrin3258132581epsmtip2t;
 Thu, 14 May 2020 00:52:56 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v9 03/10] scsi: ufs: add quirk to enable host controller
 without hce
Date: Thu, 14 May 2020 06:09:07 +0530
Message-Id: <20200514003914.26052-4-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514003914.26052-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSaUwTURSFfTPTYWhSHIvEy6ppQAUVJIoZE1GMNZmESDAx/pCIVp1U2W0F
 NwQqiNJaAoIbkqIGlOIC1BErIpS6rzWiaI0gChg1pkqLonGplsH477v3nvPOzc2jcKlGFEBt
 ytjCqTIUaTJSTLRcC58+K+VQW/Lsn65ops/QQjLvvz8lGWfjKRFTc/2hiLHZmrwYO3+DYEz9
 3SKmq7WaZI7Y2jFG98xMMqdv/cYYd5vZi6m7aEdxErarVI+xpoYSkr1Qm88W3ekg2KHBFwRb
 yjcg1mUKYfdadFgitUq8YAOXtimHU0UtXCveWPXOSmY1hWzbrRnGCtBd0CJvCui5cLG+kPCw
 lL6CQG9O0iLxX3YicFXUIqH4iqDpvhb9c5TXHyWEwVUET3rtuFAUYdB79qOXR0XSM6DnMI95
 eCLtC9e/Fo+6cfo5Bn1GuRZRlC+9Egy8ytMm6DAYvvB2VCKhF0Ab7/ASwibDmSYL7mFvOhb4
 4ZsiTxbQeyjo7ikkBZEcut32se184cMtfswcAC7HVdKTBXQq7G+dI7Rzoc5wkxB4EVieVBMe
 CU6HQ2NrlLClD+h/DGCCUwL7iqWCOgwKHU/HnIFQrtOJBGbh4APj2BHLEFgO+ZWh4Kr/jx5H
 qAH5c1nqdCWnjsmak8FtjVQr0tXZGcrI9ZnpJjT6SyLizehN3+dIK8IoZEVA4bKJkoTGK8lS
 yQbF9h2cKnONKjuNU1tRIEXIJkn6NXyylFYqtnCpHJfFqf5NMco7oABbfGDgfPjqztxUeYWf
 PnjSq7jQ2J1xbNKvc76f/OeF3RtXW/iWPvxyJFHWY4zC+vFd28ROB1LeLg0aGiAua6Jqlijr
 oUA3v+Sb5VtXRczJkaROO559zcZXyU8Vxc5cwVu1d+vyHO2mUsullFh3ztTg/HVJPu7qmEWS
 GFPc/vC8nt3ez97Mfj6BSD79SNPhrKmsEF96PBhtMKMZPoPjwyIMna5fvS0lmcuXbbfd7z+m
 +ei/wm8uk98+1dk269Hk41SQsfxHZXPx1ub6O90JS43GsikhrzdPCa4D5syJFKNONhSf0yzP
 bQ91G9a25HUVDQd2JOrXVH45cHnau/koPkQlI9QbFdERuEqt+AOsnPX1lAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMLMWRmVeSWpSXmKPExsWy7bCSvG7WtD1xBldu8lk8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujFkvDrEVbJCraGr8wtTAeEqii5GTQ0LARGLiipksXYxcHEICuxkl7nY0MUIk
 pCWub5zADmELS6z895wdoqiJSeL77/1gRWwC2hJ3p29hArFFgIqOfGsDizMLPGOSOPWwFMQW
 FgiR2Lb7G9ggFgFViS+bn4HV8ArYSOzZ8g5qgbzE6g0HmEFsTgFbiS1fjrGC2EJANcvWLGOc
 wMi3gJFhFaNkakFxbnpusWGBYV5quV5xYm5xaV66XnJ+7iZGcDhrae5g3L7qg94hRiYOxkOM
 EhzMSiK8fut3xwnxpiRWVqUW5ccXleakFh9ilOZgURLnvVG4ME5IID2xJDU7NbUgtQgmy8TB
 KdXAZBYq9CWkROPE5MSm4FPbJ1rdC1yr8mJihpvi9trKPyvV9VJ65r+8K6xvXLGigNXU43Ky
 fJH3x9PcfTaXvmodbkm4G6x4NiftWnLJ7J0zFuYlPY4Utn4pxxIjnmd1pTvEML37wWbOvr7H
 Bml3p8wJDHlWJ7i65UCAxYdNhUzye280H2D3EFfmOjn7tWPsOiOlwLXhVpd/vzTZM6H/9uQl
 nruPPXh3kvnPVNMFGpM/TYn8/HLTirzFehzzrq379dS5V3htQMBe8Y/HpzHJ2hiLtTXvPHZ0
 W5uigrYx2+u7khkbVd41SMT6Lnk7vzzy8KdZE1d88/+zTPxBl0f0qft+OmvZymY9SG1IXjRN
 1HYhkxJLcUaioRZzUXEiAIDAqmPWAgAA
X-CMS-MailID: 20200514005258epcas5p14733cec8b9ca92e518a8d5a0c27f3f0b
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200514005258epcas5p14733cec8b9ca92e518a8d5a0c27f3f0b
References: <20200514003914.26052-1-alim.akhtar@samsung.com>
 <CGME20200514005258epcas5p14733cec8b9ca92e518a8d5a0c27f3f0b@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_175301_780492_CF330A4E 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
