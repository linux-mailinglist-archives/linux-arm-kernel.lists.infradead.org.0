Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E251CCF8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 04:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VJ/lYx4BWMSgZfbxFmExNEmRn/IxKobofhnFfqpcwho=; b=SJgfW2Jfhu8NUl9mUqHDeqScKj
	K2Ei2jUySdgNjp0zwivconV3vzZNmQs3qnk1yHbAcSf/HiG/HmaXjfoynboDQhk8+kCCkJj1Td/r5
	O4z/4fT4VHkeObdE9QfhG+uiTWiRz27A9kVkzdK2uFXpXPPHaESOIfxlaEieo6g4LxKtEtsTw7sg4
	9WBWZJapIWx0k5dK4d9Kw+b+U5IpL7CUd+PVboRj6FH71eqJP62F3l7/NJjespJFh+iKwfZsMwDDx
	v7jjsvOsm+JZgv6DgndhJ1T8F+jRUmzCdfJkrdUxa65sNk5Z0htZLgEXfvrtFxxHlbln5CszVLou0
	PbpGeEuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXxxp-0003Mr-Qw; Mon, 11 May 2020 02:14:41 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXxxA-0002tJ-Ly
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 02:14:02 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200511021358epoutp02a1d3eb326b7cd5e11483dfb76e3b5e43~N14u8BG853178531785epoutp02r
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 02:13:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200511021358epoutp02a1d3eb326b7cd5e11483dfb76e3b5e43~N14u8BG853178531785epoutp02r
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589163238;
 bh=nPCI6KtKTzdjjbh5jTvGpI1fKN6gjrCt7WH8b1I6htY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mP7SePy03rDnsqEWNKKDxUFk35ngwtwzBL5MA3nLxcAPwRO1maCXf8EDcZ6Ky8JdS
 i8NUrwpkv+LEOSGGAqfybLv2QNiSEcWNo3zXgqxKSIlpBWondPX8GcoEh7gDtT8qZ8
 Q1h19EL1ePB9MYZFBwEzQ/V2QxBCUKtfetSvDZIo=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200511021357epcas5p3b9ebc4be44662f2a9c3cc143b5ab86d3~N14t_O96x1506415064epcas5p3P;
 Mon, 11 May 2020 02:13:57 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 CD.0A.23389.5E4B8BE5; Mon, 11 May 2020 11:13:57 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200511021357epcas5p31ca197c25742a50359b076f10d4938cd~N14tezyBe2929029290epcas5p3B;
 Mon, 11 May 2020 02:13:57 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200511021356epsmtrp20e8a952fd61f692aad30c99a3c57a5fb~N14tVYRlg1520815208epsmtrp2I;
 Mon, 11 May 2020 02:13:56 +0000 (GMT)
X-AuditID: b6c32a4b-7adff70000005b5d-30-5eb8b4e58333
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 5C.E6.18461.4E4B8BE5; Mon, 11 May 2020 11:13:56 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200511021354epsmtip2df48f4cdf9d3437091391a5eeeebdb6d~N14rJxPbn3209532095epsmtip2i;
 Mon, 11 May 2020 02:13:54 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v8 04/10] scsi: ufs: introduce UFSHCD_QUIRK_PRDT_BYTE_GRAN
 quirk
Date: Mon, 11 May 2020 07:30:25 +0530
Message-Id: <20200511020031.25730-5-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511020031.25730-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUwTURDGfbvb7bZaXQviQD0xRMVQD5SsNzEGN8ErRo1RAza6AuFqWrwP
 EOrVChZFIYqKilTqhbjQBjygFhA0xYSighIrKCoaVIiN91G2xv9+M/N975tMHoXL00UBVFxS
 CqdJUiUEklKi/O74sSGveGvUpLfO0YzrdDnJvP3aTDI914pEzBm7Q8Q0NpaImRa+hmBKOx6J
 mKaKfJLJa7yNMYbHVpIx1f3CmN83rWLmQlkLCpexTVmZGFtqPkiyNwpTWV39HYL99KqVYLN4
 M2J7S0ew+6sM2FJqtXTWBi4hbjOnmThnnTT2049yXG0ZsjVP1yxOQ22D9UhCAT0VrtYXER6W
 05UIGjPG6JH0L/cgKPniJIXCjcB+sAv/57jyqNM7uIWg8uRzJBQ6DB6015MeFUlPgLZcHvOw
 L+0Ddvc+5GGcfoKBq3i+HlGUD70MjKfGedoEHQSHjlzuW0NGzwKL5bBYCBsJl0qq+oIl9Gw4
 nmYhPFlA76XA+ew8IYjmw/fbdq/BB7rqeC8HQG/3LdKTBXQ8HKoIFdo74cLpWq91LlQ58wmP
 BKfHw7WKicKWAyHz+0tMcMrgwD65oA6CjO5mr1MB2QaDSGAWGtqLxMIVjAgePrQgIxp+4v+r
 BQiZkT+n1ibGcNpp6tAkbotSq0rUbkqKUa5PTixFfd8kONKK2l0flTaEUciGgMIDfWWmRGuU
 XLZBtW07p0mO1mxK4LQ2pKCIwKGyjj18lJyOUaVw8Ryn5jT/phglCUjDBrvDsyKMTkf5kJyb
 10cvS88x+azrXlxbrXSbJkyqG+XvT4rGZHeOcoszM3rttv6p5qOGvMJF74tDG8JjCynFLsPc
 J5/XXH2z8s2lSqtJYZ6mCsutOZUa/XOQ6efCpjX6jBA2ZFFE7ccI8bglMzbG890134xl+sie
 6i8j+z3I0QdVNkzHV10/9uJ9Qeix1+fhZNxju3lq15T7uzouRraN3XnuxbwFr51pHxZ3tvjl
 Eo5VufkD3kHxwrN+Vam8Yo5DsrwteNjarXd8hw4L4Ir4zRK/Aoce+LCWHa3BFl56ZJsxOd3l
 Qq1heLTtpXrFDUyasrZQ2Vqtu/f09+4r6pkry3SBhDZWNTkY12hVfwCxpD2RlQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMLMWRmVeSWpSXmKPExsWy7bCSvO6TLTviDG5MMrd4MG8bm8XLn1fZ
 LD6tX8ZqMf/IOVaL8+c3sFvc3HKUxWLT42usFpd3zWGzmHF+H5NF9/UdbBbLj/9jsvi/Zwe7
 xdKtNxkdeD0u9/UyeWxa1cnmsXlJvUfLyf0sHh+f3mLx6NuyitHj8yY5j/YD3UwBHFFcNimp
 OZllqUX6dglcGR//bGMu2C5aMaPlKnsD413BLkZODgkBE4m1156xdTFycQgJ7GaU6Li5gxki
 IS1xfeMEdghbWGLlv+fsEEVNTBKNv5tZQBJsAtoSd6dvYQKxRYCKjnxrYwSxmQWeMUmcelgK
 YgsLBEgs/T0frJ5FQFWiZ9IaMJtXwEZi+/Z+qAXyEqs3HABbzClgKzGtYTtYjRBQzYxNm1kn
 MPItYGRYxSiZWlCcm55bbFhgmJdarlecmFtcmpeul5yfu4kRHM5amjsYt6/6oHeIkYmD8RCj
 BAezkgjv8twdcUK8KYmVValF+fFFpTmpxYcYpTlYlMR5bxQujBMSSE8sSc1OTS1ILYLJMnFw
 SjUw+S/ID024fTtx+YEF5h0rNi07kB2yvYarWlpf36abY/XZH0cUD57LPr5y4xyf27vEOP2b
 nsgkPan0nbb0j/w7xdhH/v4lcRNWxrhM158+M2WfxoW3666odd3a2m7ewrDd0yCSIyVQK/Hy
 /aWCtVYb62b4mHXcOd3AfGWJT6fclbgbSsyH18nVK7yQ+ZbuG25vwnxrfnmT+NosRRte+VwZ
 DimjU4ftw7bsPH670KB0qmvLi09MfzhuH0jUXWhd0mrzpbzo5rFevb/imcEyfTwfpr0yPK3Q
 uULzSqyg6dzQGdcfuugJNKw+PdXF5LbfO16V5wE56bpMM/tV1FclPso46G+21VVcWDjWZpvC
 5QYlluKMREMt5qLiRACW9gw11gIAAA==
X-CMS-MailID: 20200511021357epcas5p31ca197c25742a50359b076f10d4938cd
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200511021357epcas5p31ca197c25742a50359b076f10d4938cd
References: <20200511020031.25730-1-alim.akhtar@samsung.com>
 <CGME20200511021357epcas5p31ca197c25742a50359b076f10d4938cd@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_191400_885310_463DB06B 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Some UFS host controllers like Exynos uses granularities of PRDT length and
offset as bytes, whereas others uses actual segment count.

Reviewed-by: Avri Altman <avri.altman@wdc.com>
Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufshcd.c | 30 +++++++++++++++++++++++-------
 drivers/scsi/ufs/ufshcd.h |  6 ++++++
 2 files changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index ee30ed6cc805..ba093d0d0942 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -2151,8 +2151,14 @@ static int ufshcd_map_sg(struct ufs_hba *hba, struct ufshcd_lrb *lrbp)
 		return sg_segments;
 
 	if (sg_segments) {
-		lrbp->utr_descriptor_ptr->prd_table_length =
-			cpu_to_le16((u16)sg_segments);
+
+		if (hba->quirks & UFSHCD_QUIRK_PRDT_BYTE_GRAN)
+			lrbp->utr_descriptor_ptr->prd_table_length =
+				cpu_to_le16((sg_segments *
+					sizeof(struct ufshcd_sg_entry)));
+		else
+			lrbp->utr_descriptor_ptr->prd_table_length =
+				cpu_to_le16((u16) (sg_segments));
 
 		prd_table = (struct ufshcd_sg_entry *)lrbp->ucd_prdt_ptr;
 
@@ -3500,11 +3506,21 @@ static void ufshcd_host_memory_configure(struct ufs_hba *hba)
 				cpu_to_le32(upper_32_bits(cmd_desc_element_addr));
 
 		/* Response upiu and prdt offset should be in double words */
-		utrdlp[i].response_upiu_offset =
-			cpu_to_le16(response_offset >> 2);
-		utrdlp[i].prd_table_offset = cpu_to_le16(prdt_offset >> 2);
-		utrdlp[i].response_upiu_length =
-			cpu_to_le16(ALIGNED_UPIU_SIZE >> 2);
+		if (hba->quirks & UFSHCD_QUIRK_PRDT_BYTE_GRAN) {
+			utrdlp[i].response_upiu_offset =
+				cpu_to_le16(response_offset);
+			utrdlp[i].prd_table_offset =
+				cpu_to_le16(prdt_offset);
+			utrdlp[i].response_upiu_length =
+				cpu_to_le16(ALIGNED_UPIU_SIZE);
+		} else {
+			utrdlp[i].response_upiu_offset =
+				cpu_to_le16(response_offset >> 2);
+			utrdlp[i].prd_table_offset =
+				cpu_to_le16(prdt_offset >> 2);
+			utrdlp[i].response_upiu_length =
+				cpu_to_le16(ALIGNED_UPIU_SIZE >> 2);
+		}
 
 		ufshcd_init_lrb(hba, &hba->lrb[i], i);
 	}
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index f8d08cb9caf7..a9b9ace9fc72 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -535,6 +535,12 @@ enum ufshcd_quirks {
 	 * enabled via HCE register.
 	 */
 	UFSHCI_QUIRK_BROKEN_HCE				= 1 << 8,
+
+	/*
+	 * This quirk needs to be enabled if the host controller regards
+	 * resolution of the values of PRDTO and PRDTL in UTRD as byte.
+	 */
+	UFSHCD_QUIRK_PRDT_BYTE_GRAN			= 1 << 9,
 };
 
 enum ufshcd_caps {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
