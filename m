Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9931CCF67
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 04:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2ZwOrZ04B/KMjYs2u5ieN5EqJ7Apuh+CHaRR3a+og3Y=; b=K8T064UqWv6UVEcsu0/2gD+uU/
	J7non48VnFuuJld+4fSD/RVTFOq7XSNEnVTH8J2nYYS1UFNomvVDfxpVfWWHIB+ibn4ZDcH/WefAm
	4ECV1kVwc2HQDXIvOQlyYJcuMeFashRM2GrXKHvWW6LZKACn+Vkf2kar2WXKN/fGyrEh8CS8MbZZa
	HWD1OVlZWyO91OiOtRvwjRbTC+e8sgeM1sCj8o+DA/Z0Bs4RBjyLlzYZXrTGbGfz2AO2vTBTCAG8H
	CjjRh+2Oyq08ZrJkh0C2uqgGSKQx2hCT5M25lafTTIdcOqHNkhrezJiREgPmOOR1nGEYTCGVd+P7w
	V6xt0vvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXxxI-0002v5-Eq; Mon, 11 May 2020 02:14:08 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXxx9-0002rl-F3
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 02:14:01 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200511021350epoutp04812d5d515cab8fa0c79191de9f0ffc9b~N14npIcAT1437514375epoutp04C
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 02:13:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200511021350epoutp04812d5d515cab8fa0c79191de9f0ffc9b~N14npIcAT1437514375epoutp04C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589163230;
 bh=HK/1/VP5ov7EOoNpQ0X08DtlhI52O+2EyAZ3cTvlQkI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pqgJ+zVJWPF1rWf+O17Xne7SY6QkUjdiBNNkCFqZWKnTz//xmRwAZU69/T1bELAZv
 b6HfwLOWDQkXbc/d60q27rN6Kj7DWUpl2IxKbyy7RrsePBoTKmUd8mDVGD2KdmuY27
 ZsfOhYmmkX5QSdEfjSpKWSMbOHhIp+OBaiOaMkzo=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200511021350epcas5p3deba4bf4bfed536e912be972a6c1e503~N14nEAQah1506415064epcas5p33;
 Mon, 11 May 2020 02:13:50 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 F9.9E.23569.ED4B8BE5; Mon, 11 May 2020 11:13:50 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200511021349epcas5p107f296543fe2c1e13a9e5cbffdab43d3~N14mq56c21462014620epcas5p1b;
 Mon, 11 May 2020 02:13:49 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200511021349epsmtrp295b330462cb70980d26fc6c99382fffa~N14mk2MeC1467414674epsmtrp2M;
 Mon, 11 May 2020 02:13:49 +0000 (GMT)
X-AuditID: b6c32a4a-3c7ff70000005c11-e1-5eb8b4de483a
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 A7.E6.18461.DD4B8BE5; Mon, 11 May 2020 11:13:49 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200511021347epsmtip2ee551f9828ade523b0deff03136d02ff~N14knFANd0194601946epsmtip2l;
 Mon, 11 May 2020 02:13:47 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v8 01/10] scsi: ufs: add quirk to fix mishandling
 utrlclr/utmrlclr
Date: Mon, 11 May 2020 07:30:22 +0530
Message-Id: <20200511020031.25730-2-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511020031.25730-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpmleLIzCtJLcpLzFFi42LZdlhTU/felh1xBjtucVg8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujBdH17AU7Bao2P/hOHMD42veLkYODgkBE4k/i826GLk4hAR2M0osajzPBuF8
 YpToWHWdEcL5xihxYvFGoAwnWMfs7wuZIRJ7GSXmNk5lgnBamCTO7fnHCFLFJqAtcXf6FiYQ
 W0RAWOLItzawOLPADSaJBytdQGxhgRCJJzca2EFsFgFViTnPT4Bt4BWwkdjz6iIrxDZ5idUb
 DjCD2JwCthLTGrazgCyTEGjkkFj38jM7RJGLxNOby5ghbGGJV8e3QMWlJD6/28sG8Wi2RM8u
 Y4hwjcTSecdYIGx7iQNX5rCAlDALaEqs36UPcSafRO/vJ0wQnbwSHW1CENWqEs3vrkJ1SktM
 7O6GutJDomV+DzskGCYwSqy708M+gVF2FsLUBYyMqxglUwuKc9NTi00LjPJSy/WKE3OLS/PS
 9ZLzczcxgtOJltcOxocPPugdYmTiYDzEKMHBrCTCuzx3R5wQb0piZVVqUX58UWlOavEhRmkO
 FiVx3qTGLXFCAumJJanZqakFqUUwWSYOTqkGpl3+CYdDTOJ0N7aaTXz66Fh/ovrbh87Oavs/
 TNq0/H/F7Wn60o55Xzz3ck4PtvWIKy44V/3TPPIx8/z7kSlvOnv9/c9e6f8ceHeJ/dYDYgsk
 d6VdzUy01OjUF/K4OzO/8fdW+w/a505V1zIFzek9X3Xee/lupYSyx3MND2xrNCi0f5+3foaP
 4Nc0fjO95lna4Wd2THKZInXgb+DTyGntOzf8PegSnXJObfUyf/b9qfFX5NhLqs6emViz1Seo
 dbOm8exfv1fc5Xm29MH53pAPJhFcvv+827nLD52aGWLI9+rRHym+xPnznWzzlVfXNnMcz97t
 c/ynTsvspJmX43WvB+rPiypaHavpz/7uur2vmxJLcUaioRZzUXEiAK7XXCCWAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrILMWRmVeSWpSXmKPExsWy7bCSvO7dLTviDO4dVLN4MG8bm8XLn1fZ
 LD6tX8ZqMf/IOVaL8+c3sFvc3HKUxWLT42usFpd3zWGzmHF+H5NF9/UdbBbLj/9jsvi/Zwe7
 xdKtNxkdeD0u9/UyeWxa1cnmsXlJvUfLyf0sHh+f3mLx6NuyitHj8yY5j/YD3UwBHFFcNimp
 OZllqUX6dglcGS+OrmEp2C1Qsf/DceYGxte8XYycHBICJhKzvy9kBrGFBHYzSizfGQcRl5a4
 vnECO4QtLLHy33N2iJomJok9rVkgNpuAtsTd6VuYQGwRoJoj39oYQWxmgWdMEqceloLYwgJB
 ErcOdoL1sgioSsx5foINxOYVsJHY8+oiK8R8eYnVGw6A3cApYCsxrWE7C8QuG4kZmzazTmDk
 W8DIsIpRMrWgODc9t9iwwDAvtVyvODG3uDQvXS85P3cTIziUtTR3MG5f9UHvECMTB+MhRgkO
 ZiUR3uW5O+KEeFMSK6tSi/Lji0pzUosPMUpzsCiJ894oXBgnJJCeWJKanZpakFoEk2Xi4JRq
 YCr8USzEKG/560ph5nLB+9vPGenNnnHw3Z+1t6r8ZE+us1w50X3rhFfHS0SvP12nsFztkG/Q
 nNuZTLN/ZW51ZV414VD5r7Kpp4X6Jaa8Wih4cU2mOvvLa8kevTwbUj05F+3ucYxtfuncxPJV
 9LVMRcT0oF0n7kiaCBz8fSKuW1ctUOT82bm/9TZsL4o7Z8FZ/z7N7oFT59GOtiUbxPKXqVfH
 nbja75vOZGRqEn9zgUXRrYxvfB3Gl8W1k84yy7deLz722si8esY23mOVKeHizxcF6qTJ3Wze
 FlfeKeittHdqkdSlQ+mHwqt1+3q5KyV3ur9reKE+q3yZghv7rhmil4RPet1ePXG39due6FSr
 ACWW4oxEQy3mouJEADAj0o/UAgAA
X-CMS-MailID: 20200511021349epcas5p107f296543fe2c1e13a9e5cbffdab43d3
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200511021349epcas5p107f296543fe2c1e13a9e5cbffdab43d3
References: <20200511020031.25730-1-alim.akhtar@samsung.com>
 <CGME20200511021349epcas5p107f296543fe2c1e13a9e5cbffdab43d3@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_191359_860557_402BA2D8 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

In the right behavior, setting the bit to '0' indicates clear and '1'
indicates no change. If host controller handles this the other way,
UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR can be used.

Reviewed-by: Can Guo <cang@codeaurora.org>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufshcd.c | 11 +++++++++--
 drivers/scsi/ufs/ufshcd.h |  5 +++++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 698e8d20b4ba..3655b88fc862 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -645,7 +645,11 @@ static inline int ufshcd_get_tr_ocs(struct ufshcd_lrb *lrbp)
  */
 static inline void ufshcd_utrl_clear(struct ufs_hba *hba, u32 pos)
 {
-	ufshcd_writel(hba, ~(1 << pos), REG_UTP_TRANSFER_REQ_LIST_CLEAR);
+	if (hba->quirks & UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR)
+		ufshcd_writel(hba, (1 << pos), REG_UTP_TRANSFER_REQ_LIST_CLEAR);
+	else
+		ufshcd_writel(hba, ~(1 << pos),
+				REG_UTP_TRANSFER_REQ_LIST_CLEAR);
 }
 
 /**
@@ -655,7 +659,10 @@ static inline void ufshcd_utrl_clear(struct ufs_hba *hba, u32 pos)
  */
 static inline void ufshcd_utmrl_clear(struct ufs_hba *hba, u32 pos)
 {
-	ufshcd_writel(hba, ~(1 << pos), REG_UTP_TASK_REQ_LIST_CLEAR);
+	if (hba->quirks & UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR)
+		ufshcd_writel(hba, (1 << pos), REG_UTP_TASK_REQ_LIST_CLEAR);
+	else
+		ufshcd_writel(hba, ~(1 << pos), REG_UTP_TASK_REQ_LIST_CLEAR);
 }
 
 /**
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 6ffc08ad85f6..071f0edf3f64 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -518,6 +518,11 @@ enum ufshcd_quirks {
 	 * ops (get_ufs_hci_version) to get the correct version.
 	 */
 	UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION		= 1 << 5,
+
+	/*
+	 * Clear handling for transfer/task request list is just opposite.
+	 */
+	UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR		= 1 << 6,
 };
 
 enum ufshcd_caps {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
