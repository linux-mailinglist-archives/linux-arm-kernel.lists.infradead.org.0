Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1371AE47E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1GRJTbyVdvqBVB+ngzRbVZwRegH2ArmQ1fZm/xv0ttw=; b=nMz47qJAU4hmyZyrjVHUAqVd/O
	tl2V08xxA7lWpYQxBFge4+PbnReOWDPgyICO7/R203JqQrcxwU+2sg/KTbwolZxPughX/E+80eYBP
	Ns9vsZ18TXXlnwmoxWDIBZqAaJ5EzsWPhfhOPngBnkHfpR8m13O+DtpC9XqgXvzQcsxaz2yDdADo7
	oieRwLg4pS/dM13q851252kR7mkOTNPaUYYoC8glAOn6vPQ7W4knKmoR0tvp9Sfd0sFQBp8683OoP
	WPvrgz/1d41bj/6ELn6Ke/E6HcxqQCDjtrukWMDfocKUBc/ypxsQOmoHUQNnbIlToA2Z9hXmn/Nc6
	yfQqCRuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVSn-0001xm-JH; Fri, 17 Apr 2020 18:11:41 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVRS-0000y3-EZ
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 18:10:20 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200417181016epoutp024ead21f49f40e93282d7439a93aed1f1~Grc1X-FaB0383303833epoutp02Z
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 18:10:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200417181016epoutp024ead21f49f40e93282d7439a93aed1f1~Grc1X-FaB0383303833epoutp02Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587147016;
 bh=Yq3ZrW8KBd4mJIAWN2pm3RitvJv2ZSE96Ir1pPs0QSo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JizERCnep0fV0M6HAj1IIPd2KI9bvWrVy6gHq+ZQ+6of7altl/w8gF5ChjrSr4L0B
 m8L/+tKqYwuHEO5OkVgn+LV7jmR2gfyOsI+bRR4HRVFJ3zebrmwhsCrsv1Swn4vt9m
 /NzlwO9NjYEXVLYDGTzaVaYUzcAhbRhU6WZy6JPA=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200417181014epcas5p3dc688a8e5827857fb049f155ffa12110~Grc0LeO5Q2551525515epcas5p3T;
 Fri, 17 Apr 2020 18:10:14 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 69.0B.04736.601F99E5; Sat, 18 Apr 2020 03:10:14 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200417181014epcas5p1343bc81fb246133cc332d3fc7a394c15~GrcznnMf02627826278epcas5p1N;
 Fri, 17 Apr 2020 18:10:14 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200417181014epsmtrp1c80cc7ef8fdbfc8d2e10a1450fa4d11f~Grczms5ni0669906699epsmtrp1I;
 Fri, 17 Apr 2020 18:10:14 +0000 (GMT)
X-AuditID: b6c32a4b-acbff70000001280-55-5e99f10691bc
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 0F.D0.04024.601F99E5; Sat, 18 Apr 2020 03:10:14 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200417181012epsmtip1be15bde8c2a998d5cc1cc80797a33628~GrcxzIfQw2094920949epsmtip1G;
 Fri, 17 Apr 2020 18:10:12 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v6 04/10] scsi: ufs: introduce UFSHCD_QUIRK_PRDT_BYTE_GRAN
 quirk
Date: Fri, 17 Apr 2020 23:29:38 +0530
Message-Id: <20200417175944.47189-5-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417175944.47189-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnleLIzCtJLcpLzFFi42LZdlhTQ5ft48w4g/ZXBhYP5m1js3j58yqb
 xaf1y1gt5h85x2px/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFv/37GC3
 WLr1JqMDr8flvl4mj02rOtk8Ni+p92g5uZ/F4+PTWywefVtWMXp83iTn0X6gmymAI4rLJiU1
 J7MstUjfLoEr4/72PYwFb0UqbvdPZGtgnCPYxcjJISFgIrHx+HnmLkYuDiGB3YwSL+8/gHI+
 MUq0X77LCOF8Y5T4/v40C0zLiU8/oKr2MkpsXXUKqqqFSeLvqy+MIFVsAtoSd6dvYQKxRQSE
 JY58awOLMwvcYJJ4sNIFxBYWCJL4vuAj0FQODhYBVYnLe4tATF4BG4nnX1UhdslLrN5wgBnE
 5hSwlWhrWcoEskpC4DabRPOlaVAHuUic6FzODGELS7w6voUdwpaSeNnfxg4yU0IgW6JnlzFE
 uEZi6bxjUK32EgeuzAG7gFlAU2L9Ln2II/kken8/YYLo5JXoaBOCqFaVaH53FapTWmJidzcr
 hO0h8fTBLWggTGCUWPdtJesERtlZCFMXMDKuYpRMLSjOTU8tNi0wzkst1ytOzC0uzUvXS87P
 3cQITiZa3jsYN53zOcQowMGoxMPb0TczTog1say4MvcQowQHs5II70E3oBBvSmJlVWpRfnxR
 aU5q8SFGaQ4WJXHeSaxXY4QE0hNLUrNTUwtSi2CyTBycUg2MDSviDzntjE7IsZmV3+s1m3vJ
 ypWxcesbQ1O83TTqbZl+b3l9Nz7xbLztO7381lPvWmuvBl9uchZfcbr+3heHi0suTNt1iE9D
 qG762fgQ7duJFWrOmU0Z2/6YzGHTFGavyw9pNRR7fGgBT/2GtJjVPtbyMedSnj3M2XNR5Fol
 n+HcWUFPbn1RYinOSDTUYi4qTgQAK/j5UyIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDLMWRmVeSWpSXmKPExsWy7bCSnC7bx5lxBt2/OS0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxv3texgL3opU3O6fyNbAOEewi5GTQ0LAROLEpx/MXYxcHEICuxkllk97yA6R
 kJa4vnEClC0ssfLfc3aIoiYmibaGw8wgCTYBbYm707cwgdgiQEVHvrUxgtjMAs+YJE49LO1i
 5OAQFgiQ+PwmEMRkEVCVuLy3CMTkFbCReP5VFWK6vMTqDQfABnIK2Eq0tSxlAikRAirZ8CRm
 AiPfAkaGVYySqQXFuem5xYYFhnmp5XrFibnFpXnpesn5uZsYwWGspbmD8fKS+EOMAhyMSjy8
 Bj0z44RYE8uKK3MPMUpwMCuJ8B50AwrxpiRWVqUW5ccXleakFh9ilOZgURLnfZp3LFJIID2x
 JDU7NbUgtQgmy8TBKdXAmGgZ66fhJCl95mM/Y3jI9qb/jnbVdhOLd8eIC9rcvH7Sd4MGh8ri
 9nszAm+4JN/0nTxncvveevlHW5WWm3crxRv+k5sUPcVv9+U9ealvyo4s/ddcvuvLResef/e3
 v6t40lb/dnsp9uvvfW+VmIDFzJOTk/duPPrda63JnHKD/LCVLz8sym1MU2Ipzkg01GIuKk4E
 ACYMHTJfAgAA
X-CMS-MailID: 20200417181014epcas5p1343bc81fb246133cc332d3fc7a394c15
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200417181014epcas5p1343bc81fb246133cc332d3fc7a394c15
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181014epcas5p1343bc81fb246133cc332d3fc7a394c15@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_111018_870864_54AB1C51 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Some UFS host controllers may think granularities of PRDT length and
offset as bytes, not double words.

Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufshcd.c | 30 +++++++++++++++++++++++-------
 drivers/scsi/ufs/ufshcd.h |  6 ++++++
 2 files changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index ee30ed6cc805..b32fcedcdcb9 100644
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
+				cpu_to_le16((u16)(sg_segments *
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
