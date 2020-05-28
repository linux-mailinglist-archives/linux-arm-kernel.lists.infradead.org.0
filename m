Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EF61E531B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0X8FEV2ufhTW7cFxc2ytsh/1a72BGU27juTWSmtozeY=; b=IkNNsP8wJxHh5t+6+iOG+sf3iG
	ee+WkCm5ZyO33hP4PwYD/WiYGhaLjXWCCpZfeIyckHW1tsLjAfV9As+nnmgk/+hLAPZCPMyvHfgHO
	8faLTL08ZfHjkRX971MEiCJw64l0MTkI7Lq27AjmiKh9jmUWxemwdAXx/a8KsBx8grRMcumcbBnUh
	g6HvtvGJ3NoBPivrGg0GOYTNRonikeVL/MA4Yr6/DItTVORGDoYUCMiLUptQUNdCOTlYse8PFNeQ2
	XijB/gy0ypsVrbSVBUb5xhCtPuGjjFOZCs8GLHVDOtY7vcU0h3kBCuR1E8z3a8vZn6LuqfTN/bRfD
	jFigP17g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7RF-0004JF-83; Thu, 28 May 2020 01:34:29 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7PW-0003JH-2a
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:32:44 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200528013235epoutp0480df59622ca1f7e577bd7ce4ef7d3fd2~TDSc-Tb-k2580225802epoutp04g
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 01:32:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200528013235epoutp0480df59622ca1f7e577bd7ce4ef7d3fd2~TDSc-Tb-k2580225802epoutp04g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590629555;
 bh=8GKVEUkWRCQ4oEzg+kXJtv/h4uSMVZoIRkh5wQhVTwY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=b3aNaUEhzmMSu2ykXpSJq73LDGbPO2GWqpzdjSkMkO06/up7GJXKkGdxH/HubcjfB
 tPvLsFH2REMtguana0dqFyEM3otJS4R8r8mL+fRwLJTk5ZTb80CvR5RcCiwbmGK0sK
 nziviO57s20Qtcqkbk2ZJjZgkLtwKYGCrEAWHnro=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200528013234epcas5p21cb88759af4e3f23ff005cf0e87987ea~TDScNi_aT3096230962epcas5p2I;
 Thu, 28 May 2020 01:32:34 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 9B.58.09703.2B41FCE5; Thu, 28 May 2020 10:32:34 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200528013234epcas5p2fe5412e2775ff9b28a1b29e8e30ab69c~TDSb0sP683096230962epcas5p2H;
 Thu, 28 May 2020 01:32:34 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200528013234epsmtrp1c36b17c2d81d989a82f9f7a72bcfa10e~TDSbz4oah0638506385epsmtrp1k;
 Thu, 28 May 2020 01:32:34 +0000 (GMT)
X-AuditID: b6c32a4a-4b5ff700000025e7-d6-5ecf14b2003f
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 7B.77.08303.2B41FCE5; Thu, 28 May 2020 10:32:34 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200528013232epsmtip1a09102e03b8e80d37c4e285c8939a793~TDSZ9nwKx1673116731epsmtip1l;
 Thu, 28 May 2020 01:32:32 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v10 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal error
Date: Thu, 28 May 2020 06:46:53 +0530
Message-Id: <20200528011658.71590-6-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528011658.71590-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpkleLIzCtJLcpLzFFi42LZdlhTS3eTyPk4g7svtCwezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxqYjP9gK2vkq1l++yNzAeIa7i5GTQ0LARKLxwQ2WLkYuDiGB3YwSc492MYMk
 hAQ+MUo0rZWDSHxmlPjRMJ29i5EDrGPePx6I+C5Gie7/l5ghnBYmiU//D7OBdLMJaEvcnb6F
 CcQWERCWOPKtjRHEZha4wSTxYKULiC0sECixdP0dFhCbRUBV4uHmBrDNvAI2EqvWdrFDnCcv
 sXrDAWaQxZwCthJ7JziA7JIQ6OSQ+NbWwwJR4yKx6vtRVghbWOLV8S1QvVISL/vboI7OlujZ
 ZQwRrpFYOu8YVKu9xIErc1hASpgFNCXW79KHuJJPovf3EyaITl6JjjYhiGpVieZ3V6E6pSUm
 dndDLfWQeLr3LyskFCYAg+riFvYJjLKzEKYuYGRcxSiZWlCcm55abFpglJdarlecmFtcmpeu
 l5yfu4kRnEq0vHYwPnzwQe8QIxMH4yFGCQ5mJRFep7On44R4UxIrq1KL8uOLSnNSiw8xSnOw
 KInzKv04EyckkJ5YkpqdmlqQWgSTZeLglGpgYorKXXJGHaiusKT3u5jd/OPqXheOFR8+0x24
 P37b3L/MTW/bSz/u5Tj85OP9fQuSU6SFTaN1nvn7PcvRM8mtMrz7sCfKOuF0l+/nqUmbNKc8
 EUqvyp2/6QG/9XcDRvFqx6nhfAa8fdqXS+bm9HZZz5JaddumrkyjY85njcjtej9Z/PgFP2w6
 FnzaxOMQf5y0893op8fuHxbY9c8/aIuvmbDLz5CN2SZnW24LWzscEecRPnLwdtsG/nNTuGyW
 tF/SyZgg9T30arqWCL/wJ7Gpse7vKkIu3L9yxWbLjfV9p1l71rhqazm/VZ0msvyUZefnVYbz
 VGevqnZpeXCxpEb1yE+Jt/az1Q+e8L0d8U+JpTgj0VCLuag4EQD6ahqblAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrALMWRmVeSWpSXmKPExsWy7bCSnO4mkfNxBttv8Fk8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujE1HfrAVtPNVrL98kbmB8Qx3FyMHh4SAicS8fzxdjFwcQgI7GCUmXvzE2sXI
 CRSXlri+cQI7hC0ssfLfczBbSKCJSWLhsjoQm01AW+Lu9C1MILYIUM2Rb22MIDazwDMmiVMP
 S0FsYQF/iY7pLWBxFgFViYebG5hBbF4BG4lVa7ug5stLrN5wgBnkHk4BW4m9ExwgVtlITFi1
 l3ECI98CRoZVjJKpBcW56bnFhgVGeanlesWJucWleel6yfm5mxjBgayltYNxz6oPeocYmTgY
 DzFKcDArifA6nT0dJ8SbklhZlVqUH19UmpNafIhRmoNFSZz366yFcUIC6YklqdmpqQWpRTBZ
 Jg5OqQYmswymRWf2/Hur7rzy4hyG/mWXu8sefjPe3/NKmPdIWd8Vp68P3ez/vApmm6dZf1yw
 WvtO5menk5KNn9qZXj4ok4prXHmtTYQh8H3h3Iwf72Ii2tOrFzxiX/M9SEXFqt8u9f2dE1JH
 peSfM/lmfCo92Jax5kFodvf90FRp0en3meSXL5p9yc95rVbKz9p/LfHlDIdPN6tvbLlmvrWB
 +Q57et6ESmlpmdV/O740heSZd8rNOX4oIv3itANnInq7Hr/I4ZxdaWD/gO9Xsf1SPZ6Xrz6L
 MffPkVTjbWD6liFxP9Vsgg//jdVBKq/9TI8bC1p97tmVeOltREfSIfmD51tWesoqzk8901jz
 6PDhR2xKLMUZiYZazEXFiQDNqBCL0wIAAA==
X-CMS-MailID: 20200528013234epcas5p2fe5412e2775ff9b28a1b29e8e30ab69c
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013234epcas5p2fe5412e2775ff9b28a1b29e8e30ab69c
References: <20200528011658.71590-1-alim.akhtar@samsung.com>
 <CGME20200528013234epcas5p2fe5412e2775ff9b28a1b29e8e30ab69c@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_183242_489185_CD02951E 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
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

From: Kiwoong Kim <kwmad.kim@samsung.com>

Some controller like Exynos determines if FATAL ERROR (0x7)
in OCS field in UTRD occurs for values other than GOOD (0x0)
in STATUS field in response upiu as well as errors that a
host controller can't cover.
This patch is to prevent from reporting command results in
those cases.

Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
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
