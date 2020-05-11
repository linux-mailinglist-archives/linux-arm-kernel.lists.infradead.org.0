Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962481CCF6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 04:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7M5Ya12hngZWA1eDHazU3MHeqOemP2uybkaRpwG+2rU=; b=XFygTQWgvjOmgHdQQTr6UChDPY
	X4IrwWpwC6KOJCztzmRxm0wIscJvlRr5AX+u3rVQMhu1NjqFNU43GjB6uCfezMnBxuteQMsp5323O
	BSlsNRX1DMq2PrREYoQ04oTzrYfKdgR8vEry3OgT16yG9k4mw4BqD1744Pn/bjFfJVx9p4/cxXs7w
	yWnCzigrmnE5G+vajeXqMLDTG5dLlfBOT/7Gmbx+D/B/MT7zGQEmyU298HxAxY6M43qVSseKxH93H
	ENfPzTqPI0JCe1j8IDKhV/Pk2I1LmYCA0tCnWZpS6diUJ6Zdy1tYw/3kKZv2tT1cUOuHI4FYqAhqL
	S3/A3MBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXxxa-00033Z-Ba; Mon, 11 May 2020 02:14:26 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXxxA-0002s3-0N
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 02:14:01 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200511021355epoutp025cba778531b09b272a07135dbe8ccc24~N14rpl5kE3178831788epoutp02o
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 02:13:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200511021355epoutp025cba778531b09b272a07135dbe8ccc24~N14rpl5kE3178831788epoutp02o
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589163235;
 bh=kDIy4u6dKypJDeZVrGE9ZKceZgeyPXJh8PvB97xxnQM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j/N0e4ZJOxdfce1QxDUkeKwgvZ82q3uEcyVKOoK5bCXp4FPaVxrQZzgvG3kZIbUGC
 3OmCVzGH4B62qRf5V0AIcI2YxRIe0thmS6k4EWJLOeruyg6CLFebkCVniBhsaNNiBi
 lSJrNS27Nhi0Ev8jWF7DCLzzhSls5GYcUXwfFPTA=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200511021354epcas5p308719ba70e90ce1f09f9c4c5e63ca496~N14rXE55D1506415064epcas5p3D;
 Mon, 11 May 2020 02:13:54 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 AC.9E.23569.2E4B8BE5; Mon, 11 May 2020 11:13:54 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200511021354epcas5p1a3f7fe0cf17e7ecc586aaf29eb0d2d7f~N14rBqvJx1717517175epcas5p1N;
 Mon, 11 May 2020 02:13:54 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200511021354epsmtrp257f1a9a5a4c6fbae7c643c380b6034a7~N14rAUzqM1467414674epsmtrp2Q;
 Mon, 11 May 2020 02:13:54 +0000 (GMT)
X-AuditID: b6c32a4a-3b1ff70000005c11-ee-5eb8b4e2123b
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 BF.54.25866.2E4B8BE5; Mon, 11 May 2020 11:13:54 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200511021352epsmtip2002c8385977cb91f9bc2d00ec0aa7749~N14o8G-Gb0135501355epsmtip20;
 Mon, 11 May 2020 02:13:52 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v8 03/10] scsi: ufs: add quirk to enable host controller
 without hce
Date: Mon, 11 May 2020 07:30:24 +0530
Message-Id: <20200511020031.25730-4-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511020031.25730-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpileLIzCtJLcpLzFFi42LZdlhTS/fRlh1xBu379SwezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxqwXh9gKNshVNDV+YWpgPCXRxcjJISFgIrFv4ktWEFtIYDejxMNPfF2MXED2
 J0aJyfO3sEI4nxklbv04xw7TcenVahaIxC5Gibs//rJDOC1MEufXnWEBqWIT0Ja4O30LE4gt
 IiAsceRbGyOIzSxwg0niwUoXEFtYIEziybz9bF2MHBwsAqoS2/fmgYR5BWwk2i5/YYVYJi+x
 esMBZhCbU8BWYlrDdrDFEgK9HBL/X/UxQxS5SPRse8sGYQtLvDq+BepSKYnP7/aCzZcQyJbo
 2WUMEa6RWDrvGAuEbS9x4MocFpASZgFNifW79CGu5JPo/f2ECaKTV6KjTQiiWlWi+d1VqE5p
 iYnd3VBXekisvH2cCRIKExgl2pa/ZpvAKDsLYeoCRsZVjJKpBcW56anFpgVGeanlesWJucWl
 eel6yfm5mxjByUTLawfjwwcf9A4xMnEwHmKU4GBWEuFdnrsjTog3JbGyKrUoP76oNCe1+BCj
 NAeLkjhvUuOWOCGB9MSS1OzU1ILUIpgsEwenVAPTEmMWl0WfHn9hvz7x+tWvfh1+c17zihrk
 Fvefyd5qKDNR+9fyNS03Wjw2e508fMvdTuKqkHdVjRy3T9mbdCtGhs3lrMbmPZFP808/ZJsd
 ffVBpH52rlKdbb3wQ9mc7VkaLN8cVghtE2XlK9t/Skmu9UedsOlZ9b/PPx9Jjdp4Tna94ozD
 T2yDwyrvqeVpGScVmy1l5jYp+NnPaRBu61SiJ/rp7KTFpU3fNn25uVH/8ZfaPToz1a1W3fv4
 lKFa3+XxgmPHLp3NlDbKkvm/4/u0puPzfna+LEnaHaRcdkO/44C7YOfTcxeY7hXEOk/XX99v
 8otNUsrzt03K2tlCspyVJsd4Hz3pk73+WdPy3TIlluKMREMt5qLiRACudnnQlQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrELMWRmVeSWpSXmKPExsWy7bCSvO6jLTviDPqOSVg8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujFkvDrEVbJCraGr8wtTAeEqii5GTQ0LAROLSq9UsXYxcHEICOxglZkz+yA6R
 kJa4vnEClC0ssfLfc3aIoiYmiSlzjjKCJNgEtCXuTt/CBGKLABUd+dYGFmcWeMYkcephKYgt
 LBAisbZ7KXMXIwcHi4CqxPa9eSBhXgEbibbLX1gh5stLrN5wgBnE5hSwlZjWsJ0FxBYCqpmx
 aTPrBEa+BYwMqxglUwuKc9Nziw0LjPJSy/WKE3OLS/PS9ZLzczcxgoNZS2sH455VH/QOMTJx
 MB5ilOBgVhLhXZ67I06INyWxsiq1KD++qDQntfgQozQHi5I479dZC+OEBNITS1KzU1MLUotg
 skwcnFINTG4Pv1z1vJl6h1fj+5zSJbWnex4ynDjV/tFz363Esy0teWtKFr74u3Hz16XnjBpW
 fSifNDHCurZ91uflE4IeuCYrXlfLt1w8ge3PbEGzHemsG40WP9u8JSPli9YrqexfZpt/uFpM
 y7zfXllfz2naErA6Jny5S1nHpdbLzYsOvvXVf/1lw/Kw6hdzpkmHvLaYwDsx509szSSrUKOl
 3yTkOxZ4JTf/zzw97c3HjbJdYslzbYWMPEoYVnjaO9ziLz1dmT1Fbc+B7+INbZq+Ntfcy/0s
 j+ekJu7UWOe59tylluUcVX1zDwkfvLNz3pq58y7K3rt1umSXflghoyWHHbvHtNlblWvXn5vZ
 y7uSc0eF3AUlluKMREMt5qLiRAAK4Xpw1QIAAA==
X-CMS-MailID: 20200511021354epcas5p1a3f7fe0cf17e7ecc586aaf29eb0d2d7f
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200511021354epcas5p1a3f7fe0cf17e7ecc586aaf29eb0d2d7f
References: <20200511020031.25730-1-alim.akhtar@samsung.com>
 <CGME20200511021354epcas5p1a3f7fe0cf17e7ecc586aaf29eb0d2d7f@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_191400_223715_457259B5 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
