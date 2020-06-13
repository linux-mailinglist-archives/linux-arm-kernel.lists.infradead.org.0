Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DCE1F80A8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 05:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7M5Ya12hngZWA1eDHazU3MHeqOemP2uybkaRpwG+2rU=; b=VOeFacdYQ/CTm4MiDAbWiCRBmB
	nPF7iAe43PIcs8h5GUpJAITG4Y9HB0qpPxQMPahwg5EVAqdbO2AkhW3i0PLOeekO8icXV4Pqzvhtp
	lX0k0zy7SR+yc4Xu7Rmv4D6frzbQdaJSITKITK2mVFfoN1YxVAD82ga++spus1rCS0uFk0jo4aLxs
	DlXA97STcKRCFIWlUcuGX4nB22q90hVtdY5GFMZkn/YHnu1eNMj7IR+MVVw5VO+oPFQaOvb9UPzvK
	y1CIdBhqICHolKQCWQF3Db/PRo2MPFnsODYDHcHtaWM8bbyiIizzM2aK2xX0NK+1uE9wL8s0YtQfJ
	yQETMaAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjwUe-0004Tk-65; Sat, 13 Jun 2020 03:06:04 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjwTO-0001K3-Dr
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 03:04:48 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200613030444epoutp03bce3ddfcd13dcb346fe1a3cf672c3bf8~X_3erOaLZ0168401684epoutp03C
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 03:04:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200613030444epoutp03bce3ddfcd13dcb346fe1a3cf672c3bf8~X_3erOaLZ0168401684epoutp03C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592017484;
 bh=kDIy4u6dKypJDeZVrGE9ZKceZgeyPXJh8PvB97xxnQM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Gp/uAbHZRdZA3qVuBWwm9ic5w7NRuZrSvXWnft5V8/GcBw1vPYIpzH/+Ho/m4QSwI
 Ph7/8Y83DiI77ww5FtbiIKeFvm8H/ccOoLgt3Ou4qQjBW30AUyQ9pORFT2hiVdhdHt
 z39n0zeRI1yqXSowBNMSE7omP8UbTF9YYyJWnykE=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200613030444epcas5p3b689a6ce99b4d61296e04f99a6b55523~X_3eXI0rt2268422684epcas5p3J;
 Sat, 13 Jun 2020 03:04:44 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 A5.ED.09467.C4244EE5; Sat, 13 Jun 2020 12:04:44 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200613030443epcas5p3596ed8c2f56f3aa6bee7d72cb104363a~X_3dMyVhc2337923379epcas5p3C;
 Sat, 13 Jun 2020 03:04:43 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200613030443epsmtrp134c8c0f2df641357257df64ca53c11b4~X_3dL9ZZO2520425204epsmtrp1T;
 Sat, 13 Jun 2020 03:04:43 +0000 (GMT)
X-AuditID: b6c32a49-a29ff700000024fb-7a-5ee4424ce5e3
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 58.62.08382.A4244EE5; Sat, 13 Jun 2020 12:04:43 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200613030441epsmtip2bc0f9f36b35c9b3292c267ded1739d6d~X_3bRkAte0861308613epsmtip2h;
 Sat, 13 Jun 2020 03:04:40 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [RESEND PATCH v10 03/10] scsi: ufs: add quirk to enable host
 controller without hce
Date: Sat, 13 Jun 2020 08:16:59 +0530
Message-Id: <20200613024706.27975-4-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200613024706.27975-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuplleLIzCtJLcpLzFFi42LZdlhTU9fH6UmcQeM6QYsH87axWbz8eZXN
 4tP6ZawW84+cY7W48LSHzeL8+Q3sFje3HGWx2PT4GqvF5V1z2CxmnN/HZNF9fQebxfLj/5gs
 /u/ZwW6xdOtNRgc+j8t9vUwem1Z1snlsXlLv0XJyP4vHx6e3WDz6tqxi9Dh+YzuTx+dNch7t
 B7qZAjijuGxSUnMyy1KL9O0SuDJmvTjEVrBBrqKp8QtTA+MpiS5GTg4JAROJ//P+M3cxcnEI
 CexmlNj7ejkbhPOJUeLy3deMIFVCAt8YJb5NzIfpmDB/DyNE0V5GiSf35kM5LUwSJ1cfB+tg
 E9CWuDt9CxOILSIgLHHkWxtYnFngJZPErkcFILawQJzEvKcnWEBsFgFViefXN7GC2LwCNhJN
 qw6xQ2yTl1i94QAziM0pYCtx8P8CJpBlEgJTOSSmvLzFBFHkInH/xRRWCFtY4tXxLVDNUhIv
 +9uAbA4gO1uiZ5cxRLhGYum8YywQtr3EgStzWEBKmAU0Jdbv0oc4k0+i9/cTJohOXomONiGI
 alWJ5ndXoTqlJSZ2d0Mt9ZCYf+k4EyQYJjBKfFqwm20Co+wshKkLGBlXMUqmFhTnpqcWmxYY
 5qWW6xUn5haX5qXrJefnbmIEpxgtzx2Mdx980DvEyMTBeIhRgoNZSYRXUPxhnBBvSmJlVWpR
 fnxRaU5q8SFGaQ4WJXFepR9n4oQE0hNLUrNTUwtSi2CyTBycUg1Mutc5/uzZpf/awKDOumxK
 i9fhxorZbtsOV+uqSZ03uffy1jTbpxPFeUVneNUt/ZHUxf/cfGX/r/yLDm8Xs70St9wfIZT0
 e7La170TD8s817i/7U2x2ckv8QJRsfJtuVr6s3bfLNwjUTlXKUI+YnHSRt3ZLnMmlzaZ/7f8
 cE9jbVlbn/WRlu0ex2yfLPuSWap4uWqJhEOn1oStX120Go2d0o7f7AlrV0wyv8C7pntmYynn
 zc3M/vfdOL6xKb88LSrQ5nCzLI4he0VL64HipaffRxtH9P9fzx7AruTQfzi0sX//7vs8Z65s
 bOB4WHi/M9kx40T766dcuWW//2osZMqOthT6/flpzNuSjgfivo+VWIozEg21mIuKEwENSDUe
 oAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLLMWRmVeSWpSXmKPExsWy7bCSvK6305M4g7dXGC0ezNvGZvHy51U2
 i0/rl7FazD9yjtXiwtMeNovz5zewW9zccpTFYtPja6wWl3fNYbOYcX4fk0X39R1sFsuP/2Oy
 +L9nB7vF0q03GR34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4MqY9eIQW8EGuYqmxi9MDYynJLoYOTkkBEwkJszfwwhiCwns
 ZpToXgsVl5a4vnECO4QtLLHy33MgmwuopolJYumcW2wgCTYBbYm707cwgdgiQEVHvrUxghQx
 C3xnkjgwYQIzSEJYIEZiyeUWsAYWAVWJ59c3sYLYvAI2Ek2rDkFtkJdYveEAWD2ngK3Ewf8L
 mCAuspHYffQn6wRGvgWMDKsYJVMLinPTc4sNCwzzUsv1ihNzi0vz0vWS83M3MYJDXEtzB+P2
 VR/0DjEycTAeYpTgYFYS4RUUfxgnxJuSWFmVWpQfX1Sak1p8iFGag0VJnPdG4cI4IYH0xJLU
 7NTUgtQimCwTB6dUA1PMSa0y4abKvJ5rnwrVPt+7MEt98mGH9R7nZ600TUzL6ZurtPeB8t2a
 aZkiD95zMid/6hNmLvu8iplxxtnSqo+XXuyK5XKJ2Zv3hO/wx2lTI4Iu9wjGnjrxmyvON+B6
 f/P+y84TDjtfuWs7YW7d45m9F379OhF2ZpMXn9mXgyq+igsbxJYKrlSN7vm9+Mr+RaUhfj/9
 Jsnu37zWWq9d/dI5nmvy53L4JyS9sRNcfyXAZfJL78Cju/TYDydKt0tPnrRl0VuuK5M//f1x
 z3q1lZlQD3fw/nvBG5i1z3eb2tcIyJTGTWm/uim06D1vp/lKHiuXo6ltJhu7I50lb5Vvqpz2
 yex3z7V/X8V2Vi81jfyvxFKckWioxVxUnAgADInsfeACAAA=
X-CMS-MailID: 20200613030443epcas5p3596ed8c2f56f3aa6bee7d72cb104363a
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200613030443epcas5p3596ed8c2f56f3aa6bee7d72cb104363a
References: <20200613024706.27975-1-alim.akhtar@samsung.com>
 <CGME20200613030443epcas5p3596ed8c2f56f3aa6bee7d72cb104363a@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_200446_642641_83C8319B 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com, kishon@ti.com,
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
