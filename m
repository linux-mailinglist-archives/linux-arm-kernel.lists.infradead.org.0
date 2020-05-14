Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFDC1D2454
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0X8FEV2ufhTW7cFxc2ytsh/1a72BGU27juTWSmtozeY=; b=tdk0HqrzY1dwFcYBi2W/WOW+yQ
	TxMPuvsuafnEFqi2GOvOjFFjkRQsOoHv8IkBwsnrUO4j8iNl+S1htKT1X9V+oSx8uBIJbl6uw39Ai
	YfgxrlE18BkdQMSpyDMCnXS/3vmYQXW9mtweNrccDVB4IwoJAgcohND2Mys9uP7IMNnIYS96k+nv4
	Of6N2JdmkjmJ+xJ2UVub5fr2/pXHnGJ3/1I+pw+bXxpSK5lYPtIUo9oCg0L0W6/FMXFW3Zdg0D9u0
	xZlsbnpBFFwp9DcVj8234JE304q4pFA7tMuvSRe97pkiXhpBVJgnY+T/+G+/+hsK24uqfYPLwZhR8
	wNRwvKUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ29c-0002Lh-N0; Thu, 14 May 2020 00:55:16 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ27f-0000zi-RF
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:53:19 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200514005303epoutp0376e78992660e6881e1d1bcf032135448~Ovt8LjOlO0808608086epoutp03i
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 00:53:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200514005303epoutp0376e78992660e6881e1d1bcf032135448~Ovt8LjOlO0808608086epoutp03i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589417583;
 bh=8GKVEUkWRCQ4oEzg+kXJtv/h4uSMVZoIRkh5wQhVTwY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ASA7O6Dsy9m8BwwFJIq/MjQP2TGbOQELDzR8XqfaMKjs1mJrLrLXcnntgBz26A2aS
 riLJOUNW9zTLoRS0ZkfYPt4dekmftJQw68oo4znjDh1rhPByjXIGK13P6bGdbI36Dj
 VxDkei8wbZdtwa8e9Usu/RjyKxyh1c/K06qmw//0=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200514005303epcas5p20b4908df1bb8a0382aafb393ad782b84~Ovt73PI4f1336113361epcas5p28;
 Thu, 14 May 2020 00:53:03 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 75.DC.23569.F669CBE5; Thu, 14 May 2020 09:53:03 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200514005302epcas5p1d2e99ba001cacc4d9e0d8dcf7de3155b~Ovt7ORcye0512105121epcas5p17;
 Thu, 14 May 2020 00:53:02 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200514005302epsmtrp1db91eb220531ddbb6a7d682f1f64e34d~Ovt7NAEjp1129711297epsmtrp1Z;
 Thu, 14 May 2020 00:53:02 +0000 (GMT)
X-AuditID: b6c32a4a-3c7ff70000005c11-08-5ebc966f38f8
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 34.82.25866.E669CBE5; Thu, 14 May 2020 09:53:02 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200514005300epsmtip2369ac19e580cac567e91518bfa9bb408~Ovt5T1EGp3258132581epsmtip2v;
 Thu, 14 May 2020 00:53:00 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v9 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal error
Date: Thu, 14 May 2020 06:09:09 +0530
Message-Id: <20200514003914.26052-6-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514003914.26052-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpmleLIzCtJLcpLzFFi42LZdlhTQzd/2p44gymf+C0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxqYjP9gK2vkq1l++yNzAeIa7i5GDQ0LAROLfWZ8uRi4OIYHdjBIv+uayQjif
 GCXuNr2Ecj4zSpyd8hbI4QTraPw3Eyqxi1GidcNKFginhUni86MFYFVsAtoSd6dvYQKxRQSE
 JY58a2MEsZkFbjBJPFjpAmILCwRIXG1qYgGxWQRUJS4sn8wGYvMK2EgcujSPHWKbvMTqDQeY
 QWxOAVuJLV+OgW2WEGjlkNj5fQoLRJGLxNJZfxkhbGGJV8e3QDVLSbzsb2OHeDRbomeXMUS4
 RmLpvGNQrfYSB67MYQEpYRbQlFi/Sx/iTD6J3t9PmCA6eSU62oQgqlUlmt9dheqUlpjY3Q0N
 Ew+J840z2SDBMIFRovFVE9sERtlZCFMXMDKuYpRMLSjOTU8tNi0wykst1ytOzC0uzUvXS87P
 3cQITidaXjsYHz74oHeIkYmD8RCjBAezkgiv3/rdcUK8KYmVValF+fFFpTmpxYcYpTlYlMR5
 kxq3xAkJpCeWpGanphakFsFkmTg4pRqYkiO2hh3yrV0dW1t1WvPpagbuG7P7LhmtU13QLLau
 SGjl1/1xJ80P/PysHZXK/+qn6ZyLfAUFq4XLeTbwvpRv8PPwt/tg1/dgUez+r7u0Hz66ZPbv
 TZ5ZIJvE2XN9OkqZczRPHrF4H8B9izGu6a2d4ezm6NRYfaVkX869Fr8UlvtLVP9V4QQGuHBJ
 pOtKdta2lb9u3Raa87Qq/Xd033nzzQdfuDPv3vko/AZzzsWHjXPP1554Mp9h8YSVX1cGvXzw
 lomFMWTF8n/9pdOsvXWeTj8pMa1hh0T7HesYp58ZTQvPtqev8g9Ni2l7IV9eei03J0r4cdCO
 DYZdZ9fZ8my7dF91Z5ZF1OOwzzE1HPVKLMUZiYZazEXFiQA7sI+0lgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMLMWRmVeSWpSXmKPExsWy7bCSvG7etD1xBp2nFC0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxqYjP9gK2vkq1l++yNzAeIa7i5GTQ0LARKLx30zWLkYuDiGBHYwSl0+sZ4NI
 SEtc3ziBHcIWllj57zk7RFETk8TJ2fOZQRJsAtoSd6dvYQKxRYCKjnxrYwSxmQWeMUmcelgK
 YgsL+Emc/rQBrIZFQFXiwvLJYAt4BWwkDl2aB7VAXmL1hgNgMzkFbCW2fDnGCmILAdUsW7OM
 cQIj3wJGhlWMkqkFxbnpucWGBUZ5qeV6xYm5xaV56XrJ+bmbGMHhrKW1g3HPqg96hxiZOBgP
 MUpwMCuJ8Pqt3x0nxJuSWFmVWpQfX1Sak1p8iFGag0VJnPfrrIVxQgLpiSWp2ampBalFMFkm
 Dk6pBqZDi16aqnBILjaZs9/RUWvSZHex14Yfu6cFbJHQrY4N2Zj1c2axzObnzy259/qe8F9t
 F7lBL+bTleiFVVtsovc83XhIMOx9kuEjlznr51vwx75S82e4U9isnHCdpVjjkl3OLrl7G6cx
 HHUpbK6P7nt+yIWn8bCPy+63UhZ+/Ef87zyuDsjb4jU/sV6sj/PbpMNnfcUzLkT9/Hpy22+5
 9U+luv51J6sWt1udO/tAmc/xn0xnZN7x0NfWjdsT1nSUupmsc7C9He7wMPLcTwn7+2/j6iaL
 mBxZn1qn+DFty6nzddJ3pAQM3nKfCS6bHi31OYX1aJT7lWU7V79mrmLf4XrM/HogLytXgsf2
 Ju21fEosxRmJhlrMRcWJABdlsjXWAgAA
X-CMS-MailID: 20200514005302epcas5p1d2e99ba001cacc4d9e0d8dcf7de3155b
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200514005302epcas5p1d2e99ba001cacc4d9e0d8dcf7de3155b
References: <20200514003914.26052-1-alim.akhtar@samsung.com>
 <CGME20200514005302epcas5p1d2e99ba001cacc4d9e0d8dcf7de3155b@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_175316_132435_17B48814 
X-CRM114-Status: GOOD (  13.84  )
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
