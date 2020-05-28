Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 900F91E530D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eYW0RyqPIRfPzpIvCyByrX/V3+hEh/IqWEyF54UDBmI=; b=qtNfh2NbbXQ+2tKDhUllYxos3E
	PbYDCQqtv3//MPgccS5Mxgssovs12gpd2gLtsFdInvcvu9/AY9lH5QoHz1XPK8NGouNFeJDUXuWMc
	3KMtTM10b9Xo1RIQIQs5LpEfuaZwp/JM1j5U//zUNAEhiF7QvDa5Vvs0aLYHcOjM8UljeVu3IbSs/
	Hv0IgsmUxI1rzFXb3fx3GY8lZiZ5IcviJOj1zZf85kruQMIMatWz2PStqtWwRFB+56wCh3ycqW3er
	481a8TlGitnvedi03cNFmoCmOd4GkbKcL7gdSXoylY0zOPcIGleZym3p+7cl5eX4IxFosVItPAoga
	cn0p6FKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7Q2-0003Qi-HL; Thu, 28 May 2020 01:33:14 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7PM-0003CT-7S
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:32:34 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200528013229epoutp035aebec55ef67b76ace90818236b72f74~TDSXgmq3r0188001880epoutp03R
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 01:32:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200528013229epoutp035aebec55ef67b76ace90818236b72f74~TDSXgmq3r0188001880epoutp03R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590629549;
 bh=aZlGHc5xTiWwAyuHWOUJ6KyldBblFcw6DUpelUfBEa8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uSGoa+nsQtvqb05cVlCYGTrzqDjboaEtV01OjRnkITuRkWFZ1hdK76RVKldMD6XtL
 aL7rlHFk5kH67eWCeEI5CXZL/JHAZQSjdeGDDB1G9w78mzfmetiyizIOBHgosgLqpO
 waFOcsFwaOAeXZFQ9cbsJX2d5OWT2EdsLwhzroqg=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200528013228epcas5p2fcbdc5778b4f1156ff32c6bf6271aeac~TDSWf9m_A0582105821epcas5p2T;
 Thu, 28 May 2020 01:32:28 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1A.00.09467.CA41FCE5; Thu, 28 May 2020 10:32:28 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200528013228epcas5p4641c271e319aaefc78d7bbd22b23c30f~TDSV_NUZl2137121371epcas5p4e;
 Thu, 28 May 2020 01:32:28 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200528013228epsmtrp1f07aee0488fcd41cd71921d3645e1825~TDSV81IwD0638506385epsmtrp1i;
 Thu, 28 May 2020 01:32:28 +0000 (GMT)
X-AuditID: b6c32a49-a29ff700000024fb-16-5ecf14ac61e3
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 CB.E7.08382.BA41FCE5; Thu, 28 May 2020 10:32:27 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200528013226epsmtip1781cc4df5f4a1a48d05ee63fe450e2b8~TDSUIVqMU1669416694epsmtip1k;
 Thu, 28 May 2020 01:32:25 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v10 02/10] scsi: ufs: add quirk to disallow reset of
 interrupt aggregation
Date: Thu, 28 May 2020 06:46:50 +0530
Message-Id: <20200528011658.71590-3-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528011658.71590-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUwTURCHfbvb7VKt2ZRGR8CrBm8LiJrVIBI1uph4x1vRChtQoK0teEUj
 QQShFqtRIYhFDIiChFIrQbBa8agIigQ5SgIUkRiMEa1aJRqPujX+95uZ73vz8vIoXJIq8KP2
 KJM4jVKRICNFRNWDaVNn3ZA2RQVnlExinMYqkhkYaiUZV8VVAVPw8LmAaWoyCRmH5RHBmPva
 BExLTT7J5DbdxRhdezXJlNh/YsyvO9VCpviWA0WI2ZZsPcaaSzNJ9mbRMTat/h7BfuzvJNhs
 SyliP5nHsRk2HbaG2ioKi+ES9uznNEHhu0RxVbXvSXXniIMGeyeeglpEWciHAnoOXDuvJ7KQ
 iJLQtQhS3xRgfOFCYHVfJPnCjeCcdVD4T8kyuYX8wIqgI/Wi10/D4NGZQtxDkfQM6MqxYJ4s
 pX3hoTsdeTJOd2DgvL7Uk33p7fDK1P2HpyiCDoTWoo2etpgOg5wXRd5l46HMZPuL+NALwWqI
 8KwCOpOC7mufCZ5ZCmXlNgGffeGt3eJ1/WDgdLrQ4wIdD6dqQvn2ESg2Pvaqi8D2Mp/wIDg9
 DSpqgvhLjgT999cYb4rhZLqEpwPh+PtWr+kPZ3Q671IWes8+R/wjGBB0OYaQAY3N+3/qZYRK
 0RhOrU2M5bRz1SFK7oBcq0jUJitj5dGqRDP6+02mR1ajLucHeR3CKFSHgMJlUvHiZw1REnGM
 4tBhTqPaqUlO4LR1yJ8iZKPFsm+NURI6VpHExXOcmtP8m2KUj18Kxj3+0lOw4pg8dEdzZEDf
 BWu7yN6+97zGKW04eqlUqtq3MjSvcN3m+P7V206kfF6gX7utrs/UfKfidrQrd+KViVd+DGXu
 vmwvx3/sC2/e6zxXFXt6ru1tIwREBXyhI82VLmPglIGWUfeNFyonfNuOz8PIzXpi/tFhGTMr
 88NGipDfq/HdfRGpExw3N8p1aYavi1lgbWvjDtRf2m1wHN7/rkcgQwKlar3FEpOztWu4Vrcy
 t3qJu2FZOZn0ZMns4qfZzOjBe2clZYeWR6ypnWQJFSQHq9tKOm1DM/0DVrl6i8JV4372BA1i
 wZuSJm/JSxvbizYEcyGzG1cbMeebwv7vsg8yQhunCJmOa7SK39u2meqVAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrILMWRmVeSWpSXmKPExsWy7bCSnO5qkfNxBnP2WFs8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujG2737EV3OKpmHD8FnMD42WuLkZODgkBE4muDd/Yuxi5OIQEdjNKPP/+nREi
 IS1xfeMEdghbWGLlv+dQRU1MEp3/17GCJNgEtCXuTt/CBGKLABUd+dYG1sws8IxJ4tTDUhBb
 WCBKouvaR6AaDg4WAVWJq0vCQMK8AjYS0y8sgZovL7F6wwFmkBJOAVuJvRMcQMJCQCUTVu1l
 nMDIt4CRYRWjZGpBcW56brFhgWFearlecWJucWleul5yfu4mRnAoa2nuYNy+6oPeIUYmDsZD
 jBIczEoivE5nT8cJ8aYkVlalFuXHF5XmpBYfYpTmYFES571RuDBOSCA9sSQ1OzW1ILUIJsvE
 wSnVwDT9uuTUHEMn/R5hlfL9vTvvSO7fpXNV/8fKvQY7ti9QZnXKLI7gPOT/8tTVT+lXYmfc
 mPYg70DdW80zZRWnWBTls/T0zrKkmXVc27tyoc/SNc33St4sqrgk8+eXevzTWXmzV7uzt0av
 WF8yh3Fz5oNvClolb/TyZlg+n7qj9VXCe/5dqes/uZ362nf8at654kka6tVxVwRjbW4dvdV6
 5pGEFZPUFxfJ56p6dgYZM0Qv1B7/+eb93q3zzmp+OpNsuSX6+4rtpzaUzgipt7N8FuSUL/Ww
 7JbMm/DTVUtlX8+6YpTmxSczYXul9tGww5WLGI17+BucjDO+1q9g846+zXo47BirenXVe0cV
 N/nGV9lKLMUZiYZazEXFiQCLL+Dq1AIAAA==
X-CMS-MailID: 20200528013228epcas5p4641c271e319aaefc78d7bbd22b23c30f
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013228epcas5p4641c271e319aaefc78d7bbd22b23c30f
References: <20200528011658.71590-1-alim.akhtar@samsung.com>
 <CGME20200528013228epcas5p4641c271e319aaefc78d7bbd22b23c30f@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_183232_449547_852A8B9A 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
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

Some host controllers support interrupt aggregation but don't allow
resetting counter and timer in software.

Reviewed-by: Avri Altman <avri.altman@wdc.com>
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
