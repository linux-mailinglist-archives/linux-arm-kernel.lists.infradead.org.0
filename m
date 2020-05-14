Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E291D2434
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2ZwOrZ04B/KMjYs2u5ieN5EqJ7Apuh+CHaRR3a+og3Y=; b=RlAqrx08hC2PuEK6oJ62b5SgN7
	t1t4ZpsNjzJD1oG4PfQvCtKVUm6FoiRIYP0TcaaWYg9AGO7EIk4Y2EHbTAzj/j/NTQ0c/lRCMxCgn
	69SlEIWYs7rXdrhhVsTb5SH1mcjCERPaNkGDnQ4n8ldi9K8s5BQSiU1GMJfX4luqOC+TrMXXHwrJC
	46ryZPzCXH3C1yvkp1Uub0nRi8cs37sn2vzcjVLXmyDz8yC3HfGDD2VlX4tG1ulSoNoMnM3boWxXP
	QW00LyYePja3e1z0YqvyfXfR5VdxNnxDbZzGzlYdheQj9asTnxMeh+bwHTqTJoJJ/KNyaloATZUS5
	lyyUY/RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ27w-0000sh-Du; Thu, 14 May 2020 00:53:32 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ27N-0000jR-DN
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:52:59 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200514005255epoutp0340b5541ca8228253a89401dbb0fb0784~Ovt0H86zG0912309123epoutp03i
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 00:52:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200514005255epoutp0340b5541ca8228253a89401dbb0fb0784~Ovt0H86zG0912309123epoutp03i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589417575;
 bh=HK/1/VP5ov7EOoNpQ0X08DtlhI52O+2EyAZ3cTvlQkI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iq9bV2MvKBaOd4OJVeKR6lAshvSH27Q+7A3iAfWowsketrFby9TCRt2YUM7y7pdX1
 Lmd1Spbxo4y04ptgTGF+RPLZd9v6j+1hmvOcudsVMFjAWJ2ljzx0hAv9iWeazxpTft
 C5Jp5AD9GJtDGgeGrPkn2oWVnuw7NdVhBNMxIc0c=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200514005254epcas5p4e1a104efe68d28acdbb3e0768208a94e~OvtznjCWp1376013760epcas5p4-;
 Thu, 14 May 2020 00:52:54 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 95.45.10010.6669CBE5; Thu, 14 May 2020 09:52:54 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200514005254epcas5p27e2ef61a6d7f595ff2eaf4ec65940cf6~OvtzOhf9E1337713377epcas5p2E;
 Thu, 14 May 2020 00:52:54 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200514005254epsmtrp1fa7c612eaa29d07db168f66d1a091dae~OvtzNnQGq1028710287epsmtrp1j;
 Thu, 14 May 2020 00:52:54 +0000 (GMT)
X-AuditID: b6c32a49-71fff7000000271a-ee-5ebc9666ccf5
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 6C.C3.18461.5669CBE5; Thu, 14 May 2020 09:52:53 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200514005252epsmtip2f8c61bf224dc7b461d8ca8f6611a8818~OvtxTQi6n3205832058epsmtip2k;
 Thu, 14 May 2020 00:52:51 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v9 01/10] scsi: ufs: add quirk to fix mishandling
 utrlclr/utmrlclr
Date: Thu, 14 May 2020 06:09:05 +0530
Message-Id: <20200514003914.26052-2-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514003914.26052-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmphleLIzCtJLcpLzFFi42LZdlhTUzdt2p44g8eHxC0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxouja1gKdgtU7P9wnLmB8TVvFyMnh4SAicT/nUsZuxi5OIQEdjNKPLu6jxnC
 +cQo8anjNRuE841R4uWKw0wwLWcvLYBq2cso8efUWSYIp4VJ4tG+VlaQKjYBbYm707eAdYgI
 CEsc+dbGCGIzC9xgkniw0gXEFhYIkZi+/AALiM0ioCqxbd5SMJtXwEbi0btHzBDb5CVWbzgA
 ZnMK2Eps+XKMFWSZhEAnh8SxKe/YIYpcgM6DWCwBtOzV8S1QcSmJl/1tQDYHkJ0t0bPLGCJc
 I7F03jEWCNte4sCVOSwgJcwCmhLrd+lDnMkn0fv7CRNEJ69ER5sQRLWqRPO7q1Cd0hITu7uh
 lnpIHJ7SAA25CYwSpzuWsk1glJ2FMHUBI+MqRsnUguLc9NRi0wLDvNRyveLE3OLSvHS95Pzc
 TYzghKLluYPx7oMPeocYmTgYDzFKcDArifD6rd8dJ8SbklhZlVqUH19UmpNafIhRmoNFSZz3
 dNqWOCGB9MSS1OzU1ILUIpgsEwenVANTSJnzMv5rL39Y3Mt0iLvRx/S56k3xjSSHrhmCTzep
 WJ2tOt9iKMnLwf5Hd9/bgjmJL/fFnYsN/fJddLP5IQ0nrssbfn2R8vxs6v/4YsxzLpWUT+er
 dX3XXqp508mrVOOz4XZbYI+2p//pZ1947glPZNnwM806SH4CT/BJ1867W42F65NmXvY3dD6p
 tOPBwhCP2SyJlQ688yy+51fWM86ckSvNXvuHW3TupkzzXsuCKxc4by2Ka8iqP+Ip2X/E5KGY
 90yPxOTYsobjCVuOTPnM1NjHdEh56eLfqqoKs+xt0lwSOLR/qMl1mAezzn1975Pa29T1Z380
 5uhM2niK2/bm2eaPLVoPRIvjy2eHTVNiKc5INNRiLipOBACNXPbjlwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMLMWRmVeSWpSXmKPExsWy7bCSvG7qtD1xBscfWlo8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujBdH17AU7Bao2P/hOHMD42veLkZODgkBE4mzlxYwdjFycQgJ7GaUeLV6BjNE
 Qlri+sYJ7BC2sMTKf8/ZIYqamCTOP1/KBJJgE9CWuDt9C5gtAlR05FsbI4jNLPCMSeLUw1IQ
 W1ggSKKz8wPYIBYBVYlt85aygNi8AjYSj949glomL7F6wwEwm1PAVmLLl2OsILYQUM2yNcsY
 JzDyLWBkWMUomVpQnJueW2xYYJiXWq5XnJhbXJqXrpecn7uJERzOWpo7GLev+qB3iJGJg/EQ
 owQHs5IIr9/63XFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeW8ULowTEkhPLEnNTk0tSC2CyTJx
 cEo1MEU+O7ZK3TMjRdpH5+OTebG7TsqITjglXarYLNs1qXf95ccX9x7atVxyJRvD1udpddck
 DFm1lu1PW9zU/m75opfzX4Z5qLzdXc3/WIMtY2/D6vt1N0zdX/XczSsIC/njvWr9Qk4Hhazv
 UusYZuinv7cW21vvf+7ppyqlrO2yx7yfVNXbHXqUsWP+RaPjf/sVtCu4lbhCtgdNV9mXLhLp
 /narxgVdC5EraR1FRzlPfMh4bPkn4sMXlwMLn592r5zJbLclNV7V5tZh31kbn0eINi+Y4jBd
 ek35+iMVi2TyfH+KPvpm+FNhL++i3ktyLgzsISK1oTtCLAX4lm6Kelwf97TOWLZRNuBy1f2d
 2zg2hCuxFGckGmoxFxUnAgD+I2701gIAAA==
X-CMS-MailID: 20200514005254epcas5p27e2ef61a6d7f595ff2eaf4ec65940cf6
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200514005254epcas5p27e2ef61a6d7f595ff2eaf4ec65940cf6
References: <20200514003914.26052-1-alim.akhtar@samsung.com>
 <CGME20200514005254epcas5p27e2ef61a6d7f595ff2eaf4ec65940cf6@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_175257_807008_63C5893B 
X-CRM114-Status: GOOD (  14.06  )
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
