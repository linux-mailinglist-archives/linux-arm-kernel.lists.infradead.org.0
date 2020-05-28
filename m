Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541711E531A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7M5Ya12hngZWA1eDHazU3MHeqOemP2uybkaRpwG+2rU=; b=QzPa7Sm9haqziGtyRsJmR2gKAS
	syfGNdnEPG9OCTPw5lnSmGUhzNitzqJBVTxzSpibuZQxUlxWc2yfuOeWEziK2EIMyInjpbw6IFPHC
	7o+IjrmRxQ0CGKFykcb+dhrkVcu9+laqrXoSz2CLt7boRO/7ac0RvYWnvOCPz8TmrXooCSXp7AHYf
	lkUY0SXHj++nkvKvELlxNFRXniOr5ovHqb4wNTf1hPC2l1Ec+B0W8dulZQ9pIT9KYmUM73n3G50mN
	DWUlHcD6AFRkVS9yH7bJGeVPqp0f+9CyoA3nqAAWfYGZyb6AXX9mFuqvu1TYWZwtZx4VbsU6qJiiq
	JXJS3jNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7Qy-00044R-0v; Thu, 28 May 2020 01:34:12 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7PN-0003Cm-3a
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:32:35 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200528013230epoutp032786f0dd0d1dd4eb441dac2c3770b147~TDSYlK7J50284902849epoutp03I
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 01:32:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200528013230epoutp032786f0dd0d1dd4eb441dac2c3770b147~TDSYlK7J50284902849epoutp03I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590629550;
 bh=kDIy4u6dKypJDeZVrGE9ZKceZgeyPXJh8PvB97xxnQM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ueO4TmIcr1LEVs7nURhzUe1pLpHlyu+RDmz0BM5wVJvuWuFtIKiFk7nb1sIWj8+dm
 sGLmDdWhCFIppQqCx7vJmK/sVD4Nw07lxCH8H4qybSZ/iBR1fgs2g7GXT/2SLyWh5a
 TB4c0I4FhhccXmdJmAiCZRwf0oBh2ordIw5QdjTs=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200528013230epcas5p3487c2ce9cf64332b7a97d2e003ac2ace~TDSYNiVkK2924029240epcas5p36;
 Thu, 28 May 2020 01:32:30 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 42.B2.09475.EA41FCE5; Thu, 28 May 2020 10:32:30 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200528013230epcas5p37b2d1980cfccf593242bef11e2076eb8~TDSX9DSz42924029240epcas5p33;
 Thu, 28 May 2020 01:32:30 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200528013230epsmtrp24c836ade0f2ab2669f265b3f7e59d5f7~TDSX74IUM2107921079epsmtrp2i;
 Thu, 28 May 2020 01:32:30 +0000 (GMT)
X-AuditID: b6c32a4b-389ff70000002503-2b-5ecf14aee359
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 F9.77.08303.EA41FCE5; Thu, 28 May 2020 10:32:30 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200528013228epsmtip14739227217a187ab1d3a87e17bf3f7ad~TDSWEnZGp1533515335epsmtip1V;
 Thu, 28 May 2020 01:32:28 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v10 03/10] scsi: ufs: add quirk to enable host controller
 without hce
Date: Thu, 28 May 2020 06:46:51 +0530
Message-Id: <20200528011658.71590-4-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528011658.71590-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpileLIzCtJLcpLzFFi42LZdlhTXXedyPk4gzO3JC0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxqwXh9gKNshVNDV+YWpgPCXRxcjJISFgIrG1/wRzFyMXh5DAbkaJp1c2M0I4
 nxglPv16zgLhfGaUWHx3KQtMy8zn19khErsYJZYunQbV0sIk8eXLRFaQKjYBbYm707cwgdgi
 AsISR761MYLYzAI3mCQerHQBsYUFwiWatsxnA7FZBFQl/pxbyQ5i8wrYSJzsaYfaJi+xesMB
 oAM5ODgFbCX2TnAA2SUh0Mohsej7FEaQuISAi8SRo9oQ5cISr45vYYewpSQ+v9vLBlGSLdGz
 yxgiXCOxdN4xqOn2EgeuzGEBKWEW0JRYv0sf4kg+id7fT5ggOnklOtqEIKpVJZrfXYXqlJaY
 2N3NCmF7SFx6PB0aVBMYJc5NXM88gVF2FsLUBYyMqxglUwuKc9NTi00LjPNSy/WKE3OLS/PS
 9ZLzczcxgpOJlvcOxkcPPugdYmTiYDzEKMHBrCTC63T2dJwQb0piZVVqUX58UWlOavEhRmkO
 FiVxXqUfZ+KEBNITS1KzU1MLUotgskwcnFINTHE108zkT5aznIr0uHfNZF5ymdMu4S8lydty
 pp7SUso7bVhiWrRNRGT74g+byo8min7dP+vquZ+sPm/q9qVfrdjv2xz3hP2MwOPH8s732srD
 EsS/6by3krxx99chPTNvXe8W/zfvf8nZnJ00kzu+5GEzw/y+76v+3TzuIdiQsbEz/W+S8HnW
 OxcYY7/LvJ64VU/6wBrhWfGfj2zhNf+887NqjcbC2X5/IqYyXhCZ1f/4hmKfSPOrZB+T8Dmd
 PE7yl2r8HL+Z7vRvnP2M27mIzUzJ+/Pb019ZfDl3TOY7fORVXqXQlnfibzkEpu2pKPjlOyk3
 tu0663ullQ1dmYaJ/4pL8g3Zo9heH/jU7MLQo8RSnJFoqMVcVJwIAMJkcpuVAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrELMWRmVeSWpSXmKPExsWy7bCSnO46kfNxBpMWs1g8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujFkvDrEVbJCraGr8wtTAeEqii5GTQ0LARGLm8+vsXYxcHEICOxgldnxfwwSR
 kJa4vnECO4QtLLHy33OooiYmiT+vDjCDJNgEtCXuTt8C1iACVHTkWxsjiM0s8IxJ4tTDUhBb
 WCBUYsX8LrBBLAKqEn/OrQSzeQVsJE72tLNALJCXWL0BZCYHB6eArcTeCQ4gYSGgkgmr9jJO
 YORbwMiwilEytaA4Nz232LDAKC+1XK84Mbe4NC9dLzk/dxMjOJi1tHYw7ln1Qe8QIxMH4yFG
 CQ5mJRFep7On44R4UxIrq1KL8uOLSnNSiw8xSnOwKInzfp21ME5IID2xJDU7NbUgtQgmy8TB
 KdXANFVO3uT3Lo5pwbw9l666Wud31e3apuHI3nTm/9szuunyk9jip+iL+bVbr3xh49TyJMNz
 0b+vncvPv9WpfcN+bMaZrrMr5Fo+r5Gb+3lftm3J92Ihtzjxk1/9psl9+jlnV11owvawcy6O
 txynr65crn1bKW/L3fdffu+2467Weibez2B2ii3oq7W2Qc+KQHWh+TmXAwt9qyv+Les8sbf9
 +ZIH66S+fpmw4IbWZJte/SKPXA7WC5LLpv+/XfrZKcnG2PuHUO70ivkibYX1hcv3PdqTvMCw
 WLYgcWMM78wjV81EQkV2dC15HOK7anGN1cPPxpzn7ly9XM1d8I/b0V97lVa691KviFDu2JAn
 PCJCSizFGYmGWsxFxYkA+hkfH9UCAAA=
X-CMS-MailID: 20200528013230epcas5p37b2d1980cfccf593242bef11e2076eb8
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013230epcas5p37b2d1980cfccf593242bef11e2076eb8
References: <20200528011658.71590-1-alim.akhtar@samsung.com>
 <CGME20200528013230epcas5p37b2d1980cfccf593242bef11e2076eb8@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_183233_501830_A7F3B175 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
