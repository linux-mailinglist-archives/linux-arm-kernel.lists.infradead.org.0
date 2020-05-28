Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1411E531C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VJ/lYx4BWMSgZfbxFmExNEmRn/IxKobofhnFfqpcwho=; b=CrnSSAwyCsroh0Zze3YiiQfIo2
	15K48PSiO9rsuXXWqmD9mgXf3+shpeRZDQKSlTSZwChq8RnQjt+RyIH6LbfOAYq3r00iMUMiRMmsZ
	hnS0xlLJKEfh1PP3vqXae5bY6fujQXsTEUM5GSwam1eYHkVBJtyC/8kTrOzXlxC0BChJS68gl8Hdl
	pAs2T6LMExCuGQUt/OnndOr+2SDpe6vF2zPRozXJPSJgTSJw82aNKAJE9yYHDYk1L/4u6hiW2i5kD
	KRX/KA8qi0X4w27+q+a1+uFEseyNU4tvmVgYb1ShTzrqABmYICXHPYiHpLfNKdS30xIYWyKAau3xP
	b0rh/I0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7RS-0004XZ-Ox; Thu, 28 May 2020 01:34:42 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7PW-0003JL-19
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:32:43 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200528013233epoutp046b2e665289c4a030e6dee97e566285c7~TDSa1-adP2592825928epoutp04N
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 01:32:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200528013233epoutp046b2e665289c4a030e6dee97e566285c7~TDSa1-adP2592825928epoutp04N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590629553;
 bh=nPCI6KtKTzdjjbh5jTvGpI1fKN6gjrCt7WH8b1I6htY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bRrQd0LeajYCAte3aAjCOZkZSJ1BskOV9DwBpoNSoZ6ECPPmtJy27XThrWZoGmLVw
 l7a7CjgqNwfNv69Fegj9GlqZsAUnJ8viOKK6zz7KKJuFdc54/k4VYaIauJyJb6QNg/
 TQA/Hx4Fb+8Sk8qayaA1MFycK9V9GJwX/7hPZlxM=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200528013233epcas5p26c92f0b7581b5876dd2fcca5e40a41d9~TDSalIsZx3096230962epcas5p2D;
 Thu, 28 May 2020 01:32:33 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E6.58.09703.0B41FCE5; Thu, 28 May 2020 10:32:32 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200528013232epcas5p32fecbbebc06909ff1fa7136481891dc1~TDSZ4QDgy1669616696epcas5p3v;
 Thu, 28 May 2020 01:32:32 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200528013232epsmtrp27b820d590b40f2cb85edddf2d38360a8~TDSZ3bBjY2193121931epsmtrp2C;
 Thu, 28 May 2020 01:32:32 +0000 (GMT)
X-AuditID: b6c32a4a-4cbff700000025e7-cb-5ecf14b0f5b6
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 9D.E7.08382.0B41FCE5; Thu, 28 May 2020 10:32:32 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200528013230epsmtip10d37aa13c3f1b2b8c6fc3854ac5b9c0a~TDSYBGXfv1640116401epsmtip1k;
 Thu, 28 May 2020 01:32:30 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v10 04/10] scsi: ufs: introduce UFSHCD_QUIRK_PRDT_BYTE_GRAN
 quirk
Date: Thu, 28 May 2020 06:46:52 +0530
Message-Id: <20200528011658.71590-5-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528011658.71590-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgleLIzCtJLcpLzFFi42LZdlhTS3eDyPk4g00vjS0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxsc/25gLtotWzGi5yt7AeFewi5GTQ0LAROJ+93L2LkYuDiGB3YwSk9bMYQRJ
 CAl8YpRYt4sDIvGNUeLZsvWMMB3fp+6D6tjLKPF1xU1mCKeFSeL+2242kCo2AW2Ju9O3MIHY
 IgLCEke+tYF1MwvcYJJ4sNIFxBYWCJb4e2shWJxFQFXiy7w57CA2r4CNxLHmE2wQ2+QlVm84
 ALSAg4NTwFZi7wQHkF0SAp0cEq1TetlA4hICLhI/7qdBlAtLvDq+hR3ClpL4/G4vVEm2RM8u
 Y4hwjcTSecdYIGx7iQNX5rCAlDALaEqs36UPcSSfRO/vJ0wQnbwSHW1CENWqEs3vrkJ1SktM
 7O5mhSjxACpPh4TBBEaJppvNTBMYZWchDF3AyLiKUTK1oDg3PbXYtMAoL7Vcrzgxt7g0L10v
 OT93EyM4kWh57WB8+OCD3iFGJg7GQ4wSHMxKIrxOZ0/HCfGmJFZWpRblxxeV5qQWH2KU5mBR
 EudV+nEmTkggPbEkNTs1tSC1CCbLxMEp1cDUnBHPY/tJiqm9n137QsuBS6cnXOHfbCx20+3i
 5KdPHyzlzrsX9Fvb8NirldlZPRG33iXu6Gb0m2ogbKVvnaeeWyGnuHDSJdszdg/48n61nS95
 +PLep6WeGh/Ns30fRx+ftT/X5cTvd/eZ1IM5z68+9zW7jKOcO6vIU37aYa+sl/+PRTvLz1gy
 28ovSfdP+OHyjj1ykd8lrs5ken/iR/Nl5hgHYWafLSv3lEQe5Fobvktdb96Eb+ZrhR6eFmUT
 PrhjxeyI3Xc+VJzOmaRcLbi7vauq99yVy7/zJuQfnbFgvl/fxIA6w3ORUrF/29zMm2L59LPT
 Ra/qiHWxR1+2+br7q8oWS569Eg/uuaW+4Z+hxFKckWioxVxUnAgAufY/jJMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrILMWRmVeSWpSXmKPExsWy7bCSnO4GkfNxBv+Pc1o8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujI9/tjEXbBetmNFylb2B8a5gFyMnh4SAicT3qfvYuxi5OIQEdjNK7G84wAKR
 kJa4vnECO4QtLLHy33OooiYmiZmTD4MVsQloS9ydvoUJxBYBKjryrY0RxGYWeMYkcephaRcj
 B4ewQKDEyV9cIGEWAVWJL/PmgM3kFbCRONZ8gg1ivrzE6g0HmEHKOQVsJfZOcAAJCwGVTFi1
 l3ECI98CRoZVjJKpBcW56bnFhgWGeanlesWJucWleel6yfm5mxjBoayluYNx+6oPeocYmTgY
 DzFKcDArifA6nT0dJ8SbklhZlVqUH19UmpNafIhRmoNFSZz3RuHCOCGB9MSS1OzU1ILUIpgs
 EwenVANT+jElk+rcXNmMT1mSs67OFPC+P325iN/Sv//L/rgdv/jI7L6d9F6v/x6+13sjOeT8
 kuaJ2Lr8tdxeIrmZL2SO5rMLJa/vrZIX2q24WLaRi+3VwcgrD6vZptyR6s3kOv1Y3ypexeCs
 ytODL7bfTTKPfl6ftzn/JK9ak+OjxluvCpkcPr5bX7O2Kn8l77UvhcabcrfWhcy2ZFtwPP/Y
 rYrQ+SItruc0ji11ry/4tPbRwal3PxyImPzRansop9O9nXdnbP3zqM+KVeya5xYrlZhzEyIF
 Vsy08s3MD3v67t32eTe1q1nfHimy0XL7ZxXYPUvR61Td8rAvlbwMauGdPBnzvyRPm1LyTdC7
 5nR0wdN6JZbijERDLeai4kQAGrhjCdQCAAA=
X-CMS-MailID: 20200528013232epcas5p32fecbbebc06909ff1fa7136481891dc1
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013232epcas5p32fecbbebc06909ff1fa7136481891dc1
References: <20200528011658.71590-1-alim.akhtar@samsung.com>
 <CGME20200528013232epcas5p32fecbbebc06909ff1fa7136481891dc1@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_183242_267818_20B82E41 
X-CRM114-Status: GOOD (  16.02  )
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
