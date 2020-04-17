Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 770D61AE455
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zQ3SnbtpjeDh8WWPOvehzbWFrU1ejvpy0EJ+SVJ8TfY=; b=b6NACgAbMd1Wzad7RiP8hgfUCv
	3wlhwaV91ZMUDqNTWqUi9NqcAaL14Nb5DLPRDYA2bRafA4+YsW+7Xxl3bAfY85OfQ6Ey8CGelAuMd
	xQCnHs8weNJ9xaWRQ1bt7APdgWllhdhqvbWxmPDL7GC1SIIG0mW7cahwYYK8K+p7pSobfV7nyDmUE
	+NKkfXs39CCNbmnZNT/2gsXi83lbiJcGXrWLk8zgHbDASJSP13ooRhcBXtvq5Vo6QG/7g66j4rN6/
	zNF95tlP6gI43f05tuQzQ3mCJ5V80qJ1O/afpULqJCegDZ3o8f+grk2yCPtdeGfxMvdzvW/h/w1Sv
	pMLuyTdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVSH-0001SD-G7; Fri, 17 Apr 2020 18:11:09 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVRN-0000uW-Er
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 18:10:15 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200417181010epoutp02e2f680f5bc048fe89ecaeba999108d4f~GrcwZodeS0378603786epoutp02X
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 18:10:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200417181010epoutp02e2f680f5bc048fe89ecaeba999108d4f~GrcwZodeS0378603786epoutp02X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587147010;
 bh=RGpDjOip8NxrtFUkwIRsldggJ3prXwHbaBTjKYt8Ygc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mZWaLeHfmFwAbw/ClLCsYNXLEFWAlnnWc5Qx4rzUA8GXKJf8LAdjkZ9m4yx/Xwc4M
 fM4SbzgAnTNGfoHBPFaXQ/n4YVJZlyaKur4/iISXCAWweAqXWrpAsKSkw/6xZd1NOB
 TW5Ie6D/BTkrwhWKDknNT89OvZpwqnF5zUbrTMVM=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200417181010epcas5p4a10985d225b7584ed00c2145a64271f2~GrcwHwD7Q1060310603epcas5p4p;
 Fri, 17 Apr 2020 18:10:10 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 CE.16.04778.201F99E5; Sat, 18 Apr 2020 03:10:10 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200417181010epcas5p23cb018eee5b7ae0eba87d81dbaaec3ce~Grcv0msIw2908329083epcas5p20;
 Fri, 17 Apr 2020 18:10:10 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200417181010epsmtrp24978e105a8b2faae4cb769500324dd65~Grcvz1gql1697716977epsmtrp2j;
 Fri, 17 Apr 2020 18:10:10 +0000 (GMT)
X-AuditID: b6c32a4a-33bff700000012aa-17-5e99f102e28d
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 53.DE.04158.101F99E5; Sat, 18 Apr 2020 03:10:10 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200417181008epsmtip115c231bb619ac7f04509b08173b6dbf4~Grct9rDqd2094920949epsmtip1F;
 Fri, 17 Apr 2020 18:10:08 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v6 02/10] scsi: ufs: add quirk to disallow reset of
 interrupt aggregation
Date: Fri, 17 Apr 2020 23:29:36 +0530
Message-Id: <20200417175944.47189-3-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417175944.47189-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnleLIzCtJLcpLzFFi42LZdlhTXZfp48w4g9c7pC0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxq6+1ywFq3gqzh27ytbAuIKri5GTQ0LARGLO3r9sXYxcHEICuxkl2idfYIZw
 PjFK3F54nQWkSkjgG5AzJR6mY/LhaSwQRXsZJeb1PWKEcFqYJM4+OMQKUsUmoC1xd/oWJhBb
 REBY4si3NkYQm1ngBpPEg5UuILawQLTErj+bwDawCKhKvJ61E6yGV8BGYt/PY8wQ2+QlVm84
 AGZzCthKtLUsZQJZJiFwm01i/nyIoRICLhJbls1gg7CFJV4d38IOYUtJfH63FyjOAWRnS/Ts
 MoYI10gsnXeMBcK2lzhwZQ4LSAmzgKbE+l36EGfySfT+fsIE0ckr0dEmBFGtKtH87ipUp7TE
 xO5uVogSD4mv8/MgoTCBUeLis0+sExhlZyEMXcDIuIpRMrWgODc9tdi0wCgvtVyvODG3uDQv
 XS85P3cTIziZaHntYFx2zucQowAHoxIPb0ffzDgh1sSy4srcQ4wSHMxKIrwH3YBCvCmJlVWp
 RfnxRaU5qcWHGKU5WJTEeSexXo0REkhPLEnNTk0tSC2CyTJxcEo1MNq1Mt73+uuq+mPW+q5D
 xx9Yr2G5P9VG1/P647/OHW1n2UQYO1p/G+3+uvhjdoqk8bbkLhPFBLV7qxfqHO+bEHGEuZ+p
 OdR6VeZT3U2PJTbszjnCzSD4ni1t542NTbabT07+8+mhwFfBDWmT/xxYcGNdkd37ffOTHZdv
 l6y+I1Y+L6gzPuTk521KLMUZiYZazEXFiQAhvbKPIgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPLMWRmVeSWpSXmKPExsWy7bCSnC7Tx5lxBv9fMVk8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujF19r1kKVvFUnDt2la2BcQVXFyMnh4SAicTkw9NYuhi5OIQEdjNKrDj7kQ0i
 IS1xfeMEdghbWGLlv+fsEEVNTBJv7mxmBEmwCWhL3J2+hQnEFgEqOvKtDSzOLPCMSeLUw1IQ
 W1ggUqL59gJmEJtFQFXi9aydYDW8AjYS+34eY4ZYIC+xesMBMJtTwFairWUp0EwOoGU2Ehue
 xExg5FvAyLCKUTK1oDg3PbfYsMAoL7Vcrzgxt7g0L10vOT93EyM4mLW0djCeOBF/iFGAg1GJ
 h7ejb2acEGtiWXFl7iFGCQ5mJRHeg25AId6UxMqq1KL8+KLSnNTiQ4zSHCxK4rzy+ccihQTS
 E0tSs1NTC1KLYLJMHJxSDYzcc3W1klVY2navfr7L9uJctu6fzV+i/3M7S8k7zOZveVg20fDO
 oRKhD0smlk34Jdh2cdKuOW5vFjgm8UheF/qavvZXn1nRf1Pl9XkqnX6dVfxvNGOKdMVjfXN2
 nnPhZZ8ayF/Ps5M7auEMW6agwrZkxbcLcxJO/N4crVcRPDsieGZXgtMMGyWW4oxEQy3mouJE
 AFIhEJtiAgAA
X-CMS-MailID: 20200417181010epcas5p23cb018eee5b7ae0eba87d81dbaaec3ce
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200417181010epcas5p23cb018eee5b7ae0eba87d81dbaaec3ce
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181010epcas5p23cb018eee5b7ae0eba87d81dbaaec3ce@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_111013_673993_657A3882 
X-CRM114-Status: GOOD (  13.72  )
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

Some host controllers support interrupt aggregation but don't allow
resetting counter and timer in software.

Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufshcd.c | 3 ++-
 drivers/scsi/ufs/ufshcd.h | 6 ++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 3655b88fc862..0e9704da58bd 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -4884,7 +4884,8 @@ static irqreturn_t ufshcd_transfer_req_compl(struct ufs_hba *hba)
 	 * false interrupt if device completes another request after resetting
 	 * aggregation and before reading the DB.
 	 */
-	if (ufshcd_is_intr_aggr_allowed(hba))
+	if (ufshcd_is_intr_aggr_allowed(hba) &&
+	    !(hba->quirks & UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR))
 		ufshcd_reset_intr_aggr(hba);
 
 	tr_doorbell = ufshcd_readl(hba, REG_UTP_TRANSFER_REQ_DOOR_BELL);
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 071f0edf3f64..53096642f9a8 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -523,6 +523,12 @@ enum ufshcd_quirks {
 	 * Clear handling for transfer/task request list is just opposite.
 	 */
 	UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR		= 1 << 6,
+
+	/*
+	 * This quirk needs to be enabled if host controller doesn't allow
+	 * that the interrupt aggregation timer and counter are reset by s/w.
+	 */
+	UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR		= 1 << 7,
 };
 
 enum ufshcd_caps {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
