Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F6D1AE47F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E1pq6eZpGr6PpEADsa2qdFYUDvuv2V03y/nV9AQWJIM=; b=J5CfJsGampoIdspp28l6CyE7CB
	ZYrLWu3utHRxxMXepdGp/eP3V7q+hxG3i0Rpn6HRSAcR317re7ulI+zgED9eF3C6TrdcL1KV3x3OA
	/Ot+zmiOGqD6s+AuqtwRJTqp7wmEmPdZxWvPLlhcVtVHPA0iW7vjLKJfDaUQ7E6Z4k91xkCeYrRvH
	9PYsp2S4hCOz5lKmH1qrPcOdSlgv8o3pJbchpnSp/IGNZ75xOPNIHgsKcMsZzs/QQvwVuphQOoyf4
	cAp6aaN17jcWe/MWdgqBuq4yaGxRYMMUdsdaoIcw4L5KXcXXSA5ERwRBdjnS3/nTFF2d/kb1xwHn1
	NGMhN7sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVT1-0002Ck-Mc; Fri, 17 Apr 2020 18:11:55 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVRU-00010C-HI
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 18:10:22 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200417181018epoutp0403f5f771e1753b71eb95a76c48e84cd5~Grc3jlKzF1451714517epoutp04O
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 18:10:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200417181018epoutp0403f5f771e1753b71eb95a76c48e84cd5~Grc3jlKzF1451714517epoutp04O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587147018;
 bh=ZPz4c7rs/J4yvDkVsqsO6MPyp8jBkGC5MbwUBNlrl90=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Sk6QXVIrIived9p0rOteg/kN7cgbJm+28nlEdvrthDZEuyusIoDAmOiTyWgtli8P+
 p7qqwhc8AiNIKWjUt+wXiHctA2McemuLaQacxm1mHXuk1LD9Xe6+TBAm5f5vgVEQ3A
 9qk3d9V1shUdkgNMWZQVYCg6K4SAfLqsm+jB8Qxg=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200417181017epcas5p431965f3c43030dbd4f1e4da2089a72ad~Grc2jonzf0789107891epcas5p44;
 Fri, 17 Apr 2020 18:10:17 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 D0.26.04778.901F99E5; Sat, 18 Apr 2020 03:10:17 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08~Grc1k8_Li2908329083epcas5p28;
 Fri, 17 Apr 2020 18:10:16 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200417181016epsmtrp21f2b776f5522f2fa635b1a24193b6d96~Grc1kIOB11925319253epsmtrp2C;
 Fri, 17 Apr 2020 18:10:16 +0000 (GMT)
X-AuditID: b6c32a4a-33bff700000012aa-21-5e99f109ea0e
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 EF.D0.04024.801F99E5; Sat, 18 Apr 2020 03:10:16 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200417181014epsmtip17135e62ed861b5744dded85dd6b07524~GrczthsVI2097520975epsmtip1F;
 Fri, 17 Apr 2020 18:10:14 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal error
Date: Fri, 17 Apr 2020 23:29:39 +0530
Message-Id: <20200417175944.47189-6-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417175944.47189-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnleLIzCtJLcpLzFFi42LZdlhTU5fz48w4g58vxCwezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxtwJHxkL7vFUtDy6z97AeIiri5GTQ0LARGLDnj/sXYxcHEICuxkldtz/yQbh
 fGKUeN94CMr5xijxau8rVpiW9vXzmSESexklXt9uAnI4gJwWJokjTCA1bALaEnenbwGzRQSE
 JY58a2MEsZkFbjBJPFjpAmILCwRInPr6EGwmi4CqxNLJy8DqeQVsJHa3f2aC2CUvsXrDAWYQ
 m1PAVqKtZSkTyF4JgftsErt3nGGEKHKRuPRtPTOELSzx6vgWdghbSuLzu71sILdJCGRL9Owy
 hgjXSCydd4wFwraXOHBlDgtICbOApsT6XfoQZ/JJ9P5+wgTRySvR0SYEUa0q0fzuKlSntMTE
 7m5oiHhIzD86CxqIExglzm9ewjSBUXYWwtQFjIyrGCVTC4pz01OLTQuM8lLL9YoTc4tL89L1
 kvNzNzGCk4mW1w7GZed8DjEKcDAq8fB29M2ME2JNLCuuzD3EKMHBrCTCe9ANKMSbklhZlVqU
 H19UmpNafIhRmoNFSZx3EuvVGCGB9MSS1OzU1ILUIpgsEwenVAPjtkhTzwDmy6kX5N/POxKy
 bYtYgd/rZY6+cyKWRt81/5lhmG1Wd7984ZzbudfNN8asyJ5hy8T2OrHULEnu9N7aBmuPBL+j
 ljdE1W/lTH/gy+UqvOjXJOu363cbhMwKtmGo2bzgi1abv1vibf19U66ETeqbypFUaZrBrnQ/
 n0NmU1DySyc2NXMlluKMREMt5qLiRABGx36hIgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPLMWRmVeSWpSXmKPExsWy7bCSnC7Hx5lxBs+X81o8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujLkTPjIW3OOpaHl0n72B8RBXFyMnh4SAiUT7+vnMXYxcHEICuxklpiw4wwSR
 kJa4vnECO4QtLLHy33N2iKImJolVr6azgiTYBLQl7k7fAtYgAlR05FsbI4jNLPCMSeLUw1IQ
 W1jAT2LyqU6wGhYBVYmlk5eB2bwCNhK72z9DLZOXWL3hADOIzSlgK9HWshQozgG0zEZiw5OY
 CYx8CxgZVjFKphYU56bnFhsWGOallusVJ+YWl+al6yXn525iBAezluYOxstL4g8xCnAwKvHw
 GvTMjBNiTSwrrsw9xCjBwawkwnvQDSjEm5JYWZValB9fVJqTWnyIUZqDRUmc92nesUghgfTE
 ktTs1NSC1CKYLBMHp1QDY2eHQNb1szsF18Rar2laoin3SLRCtk70Y+yuxqe7T/+asltNwurN
 5PV8F/hrFh9OL306R8T5tVTfL9YfbgaTTGVnd05unXG4UyelRZf5gc4VPwnxTb1P6ryqfG91
 n978YtGpbs+1F/+mGs1OuFX/7VzgITsvg7jMs1+Pf0jw/2G1Yum/dR+2SymxFGckGmoxFxUn
 AgCk5ziyYgIAAA==
X-CMS-MailID: 20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_111020_944960_0089C6A3 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Some architectures determines if fatal error for OCS
occurrs to check status in response upiu. This patch
is to prevent from reporting command results with that.

Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufshcd.c | 6 ++++++
 drivers/scsi/ufs/ufshcd.h | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index b32fcedcdcb9..8c07caff0a5c 100644
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
