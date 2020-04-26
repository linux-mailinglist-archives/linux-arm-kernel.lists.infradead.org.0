Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D0B1B9261
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 19:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KG2VTCJWWrV6YW5vqPA6UAoV5xi8bsPsPVy9vJfNrTw=; b=BOSbjwF4wNHDYN+B2utDg9o30g
	+5DTaYPlduZz3XPPa/aLUm9b+QqLI/xwNOOTlMzwccC3ZRTZ+pHaez5z9B2LBjqJsRAClLikRgwbQ
	+iQ4r6adC817TRpV5QWRZ91tqMv0x3S8q9193C6nXvFeh2HozkIyYr048p0CaxsXDU1NKRL5t2n5F
	DSmpeUSCFPIY7Vh6yvfQQy+wF1OxZX2L26IuoAty7sx6fyXg2zLfMFy+xgfIJ1wPAcxDpmaPyEH0S
	Ek8i+8jMqSPxIKbTJ9Zwh2w447opkZz+w1RtylOCTA/yb3JcaMk66v6rB0Af4XElzjNdt6ypX41cD
	3a5f/lRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSlJh-0002qO-SO; Sun, 26 Apr 2020 17:43:45 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSlIG-0001kG-LJ
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 17:42:19 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200426174213epoutp02539bf668656859bc24137aefdd82ba98~Jb364zdSJ2069620696epoutp02F
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 17:42:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200426174213epoutp02539bf668656859bc24137aefdd82ba98~Jb364zdSJ2069620696epoutp02F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587922933;
 bh=hdIUvvbePa3Q37fIHJTSn4JBE+dveoUYBG/MIUarT20=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FTIcmnchwhbUqbBbPV4m0uXDpukrtWiYFLZDjXifJ+jYD4tjT2zbTasiUAGV7mKA2
 jM0Xx9auyHjZtFn5mu0AOJ3n25HUHagx8vFVJoOqznpoLH1njqCSojiupNAMOZF/qc
 Pvo0tZpmtHHdr5jGgKiX+5YhqjhHT4NO2N3m2ZaM=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200426174212epcas5p2e4299be66e9be666b205ca1505a8c93f~Jb351DaOZ0368603686epcas5p2h;
 Sun, 26 Apr 2020 17:42:12 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 2A.DE.04736.4F7C5AE5; Mon, 27 Apr 2020 02:42:12 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200426174211epcas5p39d7a1ca820bacb5638b5ba63c1585a53~Jb34pmrRB0554805548epcas5p3I;
 Sun, 26 Apr 2020 17:42:11 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200426174211epsmtrp1b3fa4d32da4374f8b78882ee99bc11ba~Jb34o63qH0798907989epsmtrp1R;
 Sun, 26 Apr 2020 17:42:11 +0000 (GMT)
X-AuditID: b6c32a4b-acbff70000001280-00-5ea5c7f4d9d8
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 C4.DC.25866.3F7C5AE5; Mon, 27 Apr 2020 02:42:11 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200426174209epsmtip1186371e78e14c021fcf10087b552abe0~Jb32uhjaf2626126261epsmtip1i;
 Sun, 26 Apr 2020 17:42:09 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v7 04/10] scsi: ufs: introduce UFSHCD_QUIRK_PRDT_BYTE_GRAN
 quirk
Date: Sun, 26 Apr 2020 23:00:18 +0530
Message-Id: <20200426173024.63069-5-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200426173024.63069-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAKsWRmVeSWpSXmKPExsWy7bCmuu6X40vjDD43yFo8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujAWTpjAVPBGt2NWxmKWBsUGoi5GTQ0LARKJ7/RW2LkYuDiGB3YwSu28dYYRw
 PjFKnH1/nhnC+cwocaFxLjNMy5HLU6ESuxglnhy8DtXSwiTRt34GO0gVm4C2xN3pW5hAbBEB
 YYkj39oYQWxmgRtMEg9WuoDYwgJBEh/ar4PVsAioSlw5dZQFxOYVsJG4u/QbE8Q2eYnVGw6A
 beYUsJU4NWMXE8gyCYFODomn75tYIYpcJLbv7YBqEJZ4dXwLO4QtJfGyvw3I5gCysyV6dhlD
 hGskls47xgJh20scuDKHBaSEWUBTYv0ufYgz+SR6fz9hgujklehogwaXqkTzu6tQndISE7u7
 WSFKPCReXNSDhMIERomGOfPYJjDKzkIYuoCRcRWjZGpBcW56arFpgXFearlecWJucWleul5y
 fu4mRnA60fLewbjpnM8hRgEORiUeXo7tS+OEWBPLiitzDzFKcDArifDGlCyKE+JNSaysSi3K
 jy8qzUktPsQozcGiJM47ifVqjJBAemJJanZqakFqEUyWiYNTqoGxrPw3i+3XPwmZz/nVI1hO
 b/ohVX2P95B3ztonM/U8c8zbjbM6p/0I3vL++ryJmRlnXbIfMQZyrsy0tuYLnPgnwP7K+/bb
 hUuNFpWpz7g9XdHTu//x9vJrOfvPv7qmFu29fO8aM1NTRvXF7secQ6IMl667rfrTeUbnI4U3
 e78+eDA10TRA5G+qEktxRqKhFnNRcSIAj/Z+ziMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrILMWRmVeSWpSXmKPExsWy7bCSnO7n40vjDNZ2cVg8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujAWTpjAVPBGt2NWxmKWBsUGoi5GTQ0LAROLI5anMXYxcHEICOxglTvzbzwyR
 kJa4vnECO4QtLLHy33N2iKImJonPJy6zgSTYBLQl7k7fwgRiiwAVHfnWxghiMws8Y5I49bC0
 i5GDQ1ggQOL2/jiQMIuAqsSVU0dZQGxeARuJu0u/MUHMl5dYveEA2F5OAVuJUzN2MYG0CgHV
 TF/vP4GRbwEjwypGydSC4tz03GLDAqO81HK94sTc4tK8dL3k/NxNjOBQ1tLawbhn1Qe9Q4xM
 HIyHGCU4mJVEeGNKFsUJ8aYkVlalFuXHF5XmpBYfYpTmYFES5/06a2GckEB6YklqdmpqQWoR
 TJaJg1OqgWl5Y5HNs53BO/cfny3KU/zKccbGK1MvhX9f9PpA/uVL8/nb3c/sMejXWtW9PaLh
 km23fcZnp83HWKz0Lkd1Ch29efFz14ooDb+HCS1M5tHdx6UdIiVW1c33v345wOXu1StvbM6v
 LN3+x8jpUHrNknWPZr/VulnJMaM/+IhndlbL/m3p5yT1tqTkON/zPu8eJXKfR+CCTtqHxKLZ
 yzzrciZc/xJdYPNSP/vqdwNHLgvWRVelTJaZFghX8cbKb8ydes5YZIeUyzubWUIz19XOL9Xa
 lxmcvaFpQ0tfTqvX/YiWW+sVD6tx6RUIS9t4WmjotPDv5Gx6ynhCqCXJ/dE1ZaPmEyWT2nr0
 P/zkqN90QImlOCPRUIu5qDgRAKdtDlfUAgAA
X-CMS-MailID: 20200426174211epcas5p39d7a1ca820bacb5638b5ba63c1585a53
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200426174211epcas5p39d7a1ca820bacb5638b5ba63c1585a53
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174211epcas5p39d7a1ca820bacb5638b5ba63c1585a53@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_104217_067924_30D12AD9 
X-CRM114-Status: GOOD (  16.37  )
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

Some UFS host controllers like Exynos uses granularities of PRDT length and
offset as bytes, whereas others uses actual segment count. This patch
adds a quirk to handle the same.

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
