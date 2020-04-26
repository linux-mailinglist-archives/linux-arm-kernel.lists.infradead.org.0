Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C403C1B925D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 19:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6ORtmwyT117wizWvohqEnQjqAjBRwW/sjMdn+p/KH3w=; b=ZM8fWxy6FoXtA34arHD+6UlSjN
	WsHdA6XHk+AFRB7LxZK5OFFR0jO/EnMzGsfnlM02TP7Jr6o09KZN3MHEbiFZg2zADuqytfi4D79gb
	mXkBSMLyD4joAnVhD+l27VpCZ6B09HC3097RH7g4atNehu5QT6VLqhSLsZAxSWRvw2zbOmcUBMYgV
	B08u6jqvJM1GJ8VaQnmowufNarvV3i0thxQHRM9tKdWhwDbKUtcwfHrLBim96kqeGmjKZWAzcSKGC
	51pG0+PiWD1SEbrYU2P4DR3XpoTPThvAs0+rN4yf8uaaeBpZURrfYZ7D3euDbG3ffBd1sa+Efs6m7
	Gz34v0mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSlJS-0002Zd-Ln; Sun, 26 Apr 2020 17:43:30 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSlIG-0001kj-8T
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 17:42:18 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200426174214epoutp01722f5e1af2e0c472e389e511d7fbcc31~Jb37W38ml0140101401epoutp01b
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 17:42:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200426174214epoutp01722f5e1af2e0c472e389e511d7fbcc31~Jb37W38ml0140101401epoutp01b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587922934;
 bh=x/NJP4BcylUgWL3qK+Vpk3L9Gg4VlYVDP50hn5tTzsY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YPzC335gWq4FKNsmz4zUxj0cx408Mr/ywT3mXo5TyE3MztXpYcDfulROseqeyo+oO
 T4IbUfLj5pVrvMysj/a3s24ZGkyUuYdQ49GsBOAFKDsB8sUwEUl4tvrH854qMp8a2J
 WbZ+qed6nwPrqLY8oe/d6wi3Ctz1V8p71ZYQjO7g=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200426174213epcas5p22d1d871bcae20c22c9a300c05f935d0e~Jb37Clgx40053600536epcas5p2g;
 Sun, 26 Apr 2020 17:42:13 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 0B.DE.04736.5F7C5AE5; Mon, 27 Apr 2020 02:42:13 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200426174213epcas5p3f5b403eafe77d98cbe0b92ccb3fd56b2~Jb36kVMSB0554805548epcas5p3J;
 Sun, 26 Apr 2020 17:42:13 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200426174213epsmtrp1d2367c630dce0e0840a41cf3c6625fe5~Jb36jh32o0798907989epsmtrp1S;
 Sun, 26 Apr 2020 17:42:13 +0000 (GMT)
X-AuditID: b6c32a4b-acbff70000001280-02-5ea5c7f5bffd
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 AB.FF.18461.5F7C5AE5; Mon, 27 Apr 2020 02:42:13 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200426174211epsmtip10673fa7d201900c15d21f4d9f9dad6d5~Jb34tKWaM2817828178epsmtip1K;
 Sun, 26 Apr 2020 17:42:11 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v7 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal error
Date: Sun, 26 Apr 2020 23:00:19 +0530
Message-Id: <20200426173024.63069-6-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200426173024.63069-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnleLIzCtJLcpLzFFi42LZdlhTXffr8aVxBhNP6Fs8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujFMXdzAWXOetmPastoFxIXcXIyeHhICJRNejW4xdjFwcQgK7GSVaNs9kg3A+
 MUrc3bOSFcL5xihxeu5kFpiWRVffQVXtZZRoXPGbCcJpYZLoPHgLrIpNQFvi7vQtTCC2iICw
 xJFvbYwgNrPADSaJBytdQGxhgQCJBxN62EBsFgFViS1r/rGC2LwCNhIXHi9hhtgmL7F6wwEw
 m1PAVuLUjF1MEPFODonT7+IhbBeJzrMboOqFJV4d38IOYUtJvOxvA7I5gOxsiZ5dxhDhGoml
 845BPWMvceDKHBaQEmYBTYn1u/QhruST6P39hAmik1eio00IolpVovndVahOaYmJ3d2sELaH
 xJnNW6ChMIFRYtKhVrYJjLKzEKYuYGRcxSiZWlCcm55abFpgnJdarlecmFtcmpeul5yfu4kR
 nEy0vHcwbjrnc4hRgINRiYeXY/vSOCHWxLLiytxDjBIczEoivDEli+KEeFMSK6tSi/Lji0pz
 UosPMUpzsCiJ805ivRojJJCeWJKanZpakFoEk2Xi4JRqYPQPXsbi77fnwI91cc90GUt2pAhs
 sXHtY3T+KurYsf8T50PeO+Zfbh1XWn3j1eQd5auad259bb8951HgyYU/W4zO7px4Zkby7kdC
 8oedbCd+ffyKaWeCfK/7o8dqEcUuHy/GfKxs5LWNWP/oqNBNvRDnSYf38fd+KHE2kSwN41zx
 s1ptZ2y5RYASS3FGoqEWc1FxIgClp2bjIgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrILMWRmVeSWpSXmKPExsWy7bCSnO7X40vjDD4/4rd4MG8bm8XLn1fZ
 LD6tX8ZqMf/IOVaL8+c3sFvc3HKUxWLT42usFpd3zWGzmHF+H5NF9/UdbBbLj/9jsvi/Zwe7
 xdKtNxkdeD0u9/UyeWxa1cnmsXlJvUfLyf0sHh+f3mLx6NuyitHj8yY5j/YD3UwBHFFcNimp
 OZllqUX6dglcGacu7mAsuM5bMe1ZbQPjQu4uRk4OCQETiUVX37F1MXJxCAnsZpR4e/49G0RC
 WuL6xgnsELawxMp/z9khipqYJGa82c8EkmAT0Ja4O30LmC0CVHTkWxsjiM0s8IxJ4tTDUhBb
 WMBPouXDf2YQm0VAVWLLmn+sIDavgI3EhcdLmCEWyEus3nAAzOYUsJU4NWMX0EwOoGU2EtPX
 +09g5FvAyLCKUTK1oDg3PbfYsMAwL7Vcrzgxt7g0L10vOT93EyM4lLU0dzBuX/VB7xAjEwfj
 IUYJDmYlEd6YkkVxQrwpiZVVqUX58UWlOanFhxilOViUxHlvFC6MExJITyxJzU5NLUgtgsky
 cXBKNTAlLUl58eV5fE3WweRjeyL0F020uThbiaNpeUrppVuOM/6c3OMintHw9ucmO0+NnSo3
 5wZ/a2XZ4LBEoszgv1ICa8UyB+8Pib/1brM5O/RzK2ZWcy2ZZ8Gzvuh/eKvez9CszIXOnO9M
 8nt8nGOPF4faneL/7Krzt7717Fr+D9/mvTGtdlt1draAWueXh6lKE1WdF2s7Nc9y1fevrTj2
 7KHFkXn/76s1b2xMmf/0tnKU9E/XCv+ccw5Fole+T/62OlTd3IxfRvXV8b/zn3y59fP83oCA
 GwlzP8Rqf/c7M/NQ55OTGp4HK3I+TWydxFzXX/s5/MUM/bo70h41M90Oz/KbbLxt9pxf1jlF
 QtcPWrUpsRRnJBpqMRcVJwIAZ+voQNQCAAA=
X-CMS-MailID: 20200426174213epcas5p3f5b403eafe77d98cbe0b92ccb3fd56b2
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200426174213epcas5p3f5b403eafe77d98cbe0b92ccb3fd56b2
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174213epcas5p3f5b403eafe77d98cbe0b92ccb3fd56b2@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_104216_644228_44EEB711 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

From: Kiwoong Kim <kwmad.kim@samsung.com>

Some controller like Exynos determines if FATAL ERROR (0x7)
in OCS field in UTRD occurs for values other than GOOD (0x0)
in STATUS field in response upiu as well as errors that a
host controller can't cover.
This patch is to prevent from reporting command results in
those cases.

Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufshcd.c | 6 ++++++
 drivers/scsi/ufs/ufshcd.h | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index ba093d0d0942..33ebffa8257d 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -4794,6 +4794,12 @@ ufshcd_transfer_rsp_status(struct ufs_hba *hba, struct ufshcd_lrb *lrbp)
 	/* overall command status of utrd */
 	ocs = ufshcd_get_tr_ocs(lrbp);
 
+	if (hba->quirks & UFSHCD_QUIRK_BROKEN_OCS_FATAL_ERROR) {
+		if (be32_to_cpu(lrbp->ucd_rsp_ptr->header.dword_1) &
+					MASK_RSP_UPIU_RESULT)
+			ocs = OCS_SUCCESS;
+	}
+
 	switch (ocs) {
 	case OCS_SUCCESS:
 		result = ufshcd_get_req_rsp(lrbp->ucd_rsp_ptr);
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index a9b9ace9fc72..e1d09c2c4302 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -541,6 +541,12 @@ enum ufshcd_quirks {
 	 * resolution of the values of PRDTO and PRDTL in UTRD as byte.
 	 */
 	UFSHCD_QUIRK_PRDT_BYTE_GRAN			= 1 << 9,
+
+	/*
+	 * This quirk needs to be enabled if the host controller reports
+	 * OCS FATAL ERROR with device error through sense data
+	 */
+	UFSHCD_QUIRK_BROKEN_OCS_FATAL_ERROR		= 1 << 10,
 };
 
 enum ufshcd_caps {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
