Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A497E1D2452
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VJ/lYx4BWMSgZfbxFmExNEmRn/IxKobofhnFfqpcwho=; b=J/K5mu3RwBycKtcLi+N0Dc+myh
	MaBoX77DTkirjqT05nn7pG2alSS2g+yufv9TuqNn5h8UQELn7rgH7Y7zraBeybP6o9de6jZoSnM3F
	8/xTOjAnJbyObRoxt/RqG/8LUnnO/47MNHc6+r1PXCFK5YUX74kgkzp2hOKXS0ve9TqOkRqwAsQSK
	Dx1jrdpuysR1oRbg8zadNiCtnMz8cBj68F9L6OTW1ZMh8EOqodnXgJZ/iU8d+BpJFhyPbWYsqBe/2
	MlRwaQ2zUu/9vIngJVabLiNExfv9qI9A3/iUA+Q8ewvoAC2vqqwVcDB57DY0W1TbBFbXzxqZRcv3a
	T9JKlsFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ28t-0001ov-NJ; Thu, 14 May 2020 00:54:31 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ27g-00010L-C8
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:53:20 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200514005301epoutp0184340f6191dd8f4ca91422544b01512a~Ovt6hWlsN2940929409epoutp01D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 00:53:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200514005301epoutp0184340f6191dd8f4ca91422544b01512a~Ovt6hWlsN2940929409epoutp01D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589417581;
 bh=nPCI6KtKTzdjjbh5jTvGpI1fKN6gjrCt7WH8b1I6htY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=J9TqLwv5G60L/MMtKEybY/xxc6yUhYyQtp8VeWtfcuUqe9XPfb/xxaI6jw3hXBP9u
 KEMDlvvbz5TdaroP5KBhR14qhwt1H1U3T2UOCLGRyKwVLpEwR31QbL563MCvpFF9V1
 d6255oJbSoeULtsUl/Wp0sYkj6rIOg28z5hLnE8w=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200514005301epcas5p12b499e4a67f841847287592c8d0d802a~Ovt6FMEZK1507415074epcas5p1H;
 Thu, 14 May 2020 00:53:01 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 2A.45.10010.D669CBE5; Thu, 14 May 2020 09:53:01 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200514005300epcas5p4ce7ba7fe62567e7ba0066c96473853b2~Ovt5NBVm_0641706417epcas5p4H;
 Thu, 14 May 2020 00:53:00 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200514005300epsmtrp170edd15e00d54c024bd519712b5f3565~Ovt5L31Oz1129711297epsmtrp1L;
 Thu, 14 May 2020 00:53:00 +0000 (GMT)
X-AuditID: b6c32a49-735ff7000000271a-03-5ebc966d3c8b
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 61.D3.18461.C669CBE5; Thu, 14 May 2020 09:53:00 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200514005258epsmtip2e0d7cfb9638c1a1d72cfc65a6b2f4d8c~Ovt3TdqWN0066800668epsmtip2I;
 Thu, 14 May 2020 00:52:58 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v9 04/10] scsi: ufs: introduce UFSHCD_QUIRK_PRDT_BYTE_GRAN
 quirk
Date: Thu, 14 May 2020 06:09:08 +0530
Message-Id: <20200514003914.26052-5-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514003914.26052-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpmleLIzCtJLcpLzFFi42LZdlhTXTd32p44g+5nghYP5m1js3j58yqb
 xaf1y1gt5h85x2px/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFv/37GC3
 WLr1JqMDr8flvl4mj02rOtk8Ni+p92g5uZ/F4+PTWywefVtWMXp83iTn0X6gmymAI4rLJiU1
 J7MstUjfLoEr4+OfbcwF20UrZrRcZW9gvCvYxcjJISFgIrHz3FG2LkYuDiGB3YwS764cY4dw
 PjFKfD7ezwxSJSTwjVHixicmmI7F576zQhTtZZS49ewLI4TTwiQx/chMVpAqNgFtibvTt4B1
 iAgISxz51sYIYjML3GCSeLDSBcQWFgiSaNrWzQJiswioSszdshhsG6+AjcTT+efYIbbJS6ze
 cAAszilgK7HlyzGwzRICnRwS677fhypykZi84RYLhC0s8er4Fqi4lMTL/jYgmwPIzpbo2WUM
 Ea6RWDrvGFS5vcSBK3NYQEqYBTQl1u/ShziTT6L39xMmiE5eiY42IYhqVYnmd1ehOqUlJnZ3
 s0LYHhKnj65kgQTDBEaJ3R/uM05glJ2FMHUBI+MqRsnUguLc9NRi0wLDvNRyveLE3OLSvHS9
 5PzcTYzgdKLluYPx7oMPeocYmTgYDzFKcDArifD6rd8dJ8SbklhZlVqUH19UmpNafIhRmoNF
 SZz3dNqWOCGB9MSS1OzU1ILUIpgsEwenVANTzK/1ga5H+v/yP4u+Xr06k3Nh/qzo2hctQTpT
 6kJ2a/wzL8uUWMrHYlfR7Gpvef/31DmJGXOvVMnKtZ1uD8huXfb1cZ92dcbuCrnPoqLdshoN
 04XF/blkH9csVPNwbJ3YILn/lrfUFiaDPKOiWB9lztz7/Y/azht67bH+F8JhtEzm3PeLq8sU
 b2v/84jNMz+oU3rQhjc+7uwjLYs266nRvncn+DbH+7pyK84ItTy72vVonP+dLI9zphtFPxnb
 6G+3W3Nx/qJvAvxVj/9G+n7Oydhy4vI7t4cJK1cf2/UxTiR0y1ShlwlNC299MBE492pj9SMm
 uaLnCnu48y7flVgjxRJSvGBHlJ3wktMnFiuxFGckGmoxFxUnAgAKIhw5lgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMLMWRmVeSWpSXmKPExsWy7bCSvG7OtD1xBiumSFg8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujI9/tjEXbBetmNFylb2B8a5gFyMnh4SAicTic99Zuxi5OIQEdjNKXLtwghUi
 IS1xfeMEdghbWGLlv+fsEEVNTBKX3j1hA0mwCWhL3J2+hQnEFgEqOvKtjRHEZhZ4xiRx6mEp
 iC0sECDxfe8isDiLgKrE3C2LmUFsXgEbiafzz0EtkJdYveEAWJxTwFZiy5djYEcIAdUsW7OM
 cQIj3wJGhlWMkqkFxbnpucWGBYZ5qeV6xYm5xaV56XrJ+bmbGMHhrKW5g3H7qg96hxiZOBgP
 MUpwMCuJ8Pqt3x0nxJuSWFmVWpQfX1Sak1p8iFGag0VJnPdG4cI4IYH0xJLU7NTUgtQimCwT
 B6dUA5Of/J0bJQk5Ez7p7cs5846tb+Hl1todZw+dSf+yl+mjiwJztfWBPYvs2qLjGhRMdv3a
 vtiv1OH8p40RoWL1U4Qm32o6NNuwyF5urm51R0Gh7USxDUvcv56IEY9WnmUn25KhV9J47cmB
 f0+6FoV8etqfI3L0GY/0nYaskL8tJk8kt+hz6W7ZfTHX8M+TZYHvLux62nPlab61vceTDxfy
 dqxa8komd4NTTGhFgU1J+on4OQXbdr27mqhz656E37VNUvb3zr62k/24zn3nBJ595dN6RPry
 /7yRzpN6fiC2Wi/lx/bXt7jz+DPvdiXcM83fxvniyDyboxZtOcKyLM80Xqi5V6T7Lp8te8LX
 J32Fu4QSS3FGoqEWc1FxIgAijn9D1gIAAA==
X-CMS-MailID: 20200514005300epcas5p4ce7ba7fe62567e7ba0066c96473853b2
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200514005300epcas5p4ce7ba7fe62567e7ba0066c96473853b2
References: <20200514003914.26052-1-alim.akhtar@samsung.com>
 <CGME20200514005300epcas5p4ce7ba7fe62567e7ba0066c96473853b2@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_175316_777449_334CC53F 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
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
