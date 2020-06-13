Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46E81F80AA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 05:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0X8FEV2ufhTW7cFxc2ytsh/1a72BGU27juTWSmtozeY=; b=BamP3zamxGIeeusZ2AfPFegwfQ
	m15czM0AvpbVxM3uVm7hEkQp2JRTiuC0Pd7WRfmG3Y4XDBR5H3L6/18ktMdf+DTggbajFKZoT4kQd
	H3ck8KX087QAhbx2OlFtjBBQubquTETysV1LqCjJnGWlQ9TSI3wxdC+aTCRdmIVH9uvZN1aqS1Qit
	LeLIAIURiI2CWKpAFLTlhUD2tdZCes4NlamGMIRVUfxgwUTC51FVFrKytJdpSeq5GVME/x96tzqNQ
	8pLVDCDTRbLbueDInZT93mzkI+Uc6XQvH8qiOzRQfHLhePp63exbCV8sXChd6gbfHAYMdXjghD9Ir
	SuE+mQuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjwVH-00054e-Ud; Sat, 13 Jun 2020 03:06:43 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjwTT-0001No-6p
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 03:04:53 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200613030449epoutp022e2643e86c71948492f728cbe09483f6~X_3isTjLf2746227462epoutp02p
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 03:04:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200613030449epoutp022e2643e86c71948492f728cbe09483f6~X_3isTjLf2746227462epoutp02p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592017489;
 bh=8GKVEUkWRCQ4oEzg+kXJtv/h4uSMVZoIRkh5wQhVTwY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Clu3Hz5T6fZqG68FpAK9ymuG7FPRKkk2/jonrGSlmv/xnMPIVQN6L1B5uxvf2ZSRU
 wva3aGh4uaQIHxkysULzx6nCATXaSHMuZdO+kJk3mLCH8OLzJor4i7vLq2FY5Ve1sv
 N7f+aIjkuhYmF8LA50g/x++uOIi+XFvgTbB7feII=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200613030448epcas5p1a923f0c2380822095392145f40db6615~X_3iX2cY_1950519505epcas5p1I;
 Sat, 13 Jun 2020 03:04:48 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 67.ED.09467.05244EE5; Sat, 13 Jun 2020 12:04:48 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200613030447epcas5p4ef2db2121851bdd251d2fd19b3532bb1~X_3hOnmFH1361613616epcas5p4h;
 Sat, 13 Jun 2020 03:04:47 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200613030447epsmtrp2a858df4346984dbc984b38971d204984~X_3hNxANF2362123621epsmtrp2v;
 Sat, 13 Jun 2020 03:04:47 +0000 (GMT)
X-AuditID: b6c32a49-a29ff700000024fb-80-5ee44250bcc4
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 11.C4.08303.F4244EE5; Sat, 13 Jun 2020 12:04:47 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200613030445epsmtip281234a0cb0717d87937a9195599c8ba5~X_3fUuOK70568705687epsmtip2V;
 Sat, 13 Jun 2020 03:04:45 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [RESEND PATCH v10 05/10] scsi: ufs: add quirk to fix abnormal ocs
 fatal error
Date: Sat, 13 Jun 2020 08:17:01 +0530
Message-Id: <20200613024706.27975-6-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200613024706.27975-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkleLIzCtJLcpLzFFi42LZdlhTQzfA6UmcwZfnChYP5m1js3j58yqb
 xaf1y1gt5h85x2px4WkPm8X58xvYLW5uOcpisenxNVaLy7vmsFnMOL+PyaL7+g42i+XH/zFZ
 /N+zg91i6dabjA58Hpf7epk8Nq3qZPPYvKTeo+XkfhaPj09vsXj0bVnF6HH8xnYmj8+b5Dza
 D3QzBXBGcdmkpOZklqUW6dslcGVsOvKDraCdr2L95YvMDYxnuLsYOTkkBEwk5s1eygxiCwns
 ZpR4fUO/i5ELyP7EKHHi0hdGCOczo8TDz0dYYTru7D7PDJHYxShxcsdhJoj2FiaJrh0FIDab
 gLbE3elbwOIiAsISR761MYLYzAIvmSR2PQKrERaIkGjd9B5oKAcHi4CqxPT/xSAmr4CNxKP2
 IohV8hKrNxwAO45TwFbi4P8FTCBrJQSmckj8/XafBaLIRWJC/w4oW1ji1fEt7BC2lMTnd3vZ
 QGZKCGRL9OwyhgjXSCyddwyq3F7iwJU5LCAlzAKaEut36UMcySfR+/sJE0Qnr0RHmxBEtapE
 87urUJ3SEhO7u6EB4iExa8lxFkgYTGCUmNldOIFRdhbC0AWMjKsYJVMLinPTU4tNCwzzUsv1
 ihNzi0vz0vWS83M3MYJTi5bnDsa7Dz7oHWJk4mA8xCjBwawkwiso/jBOiDclsbIqtSg/vqg0
 J7X4EKM0B4uSOK/SjzNxQgLpiSWp2ampBalFMFkmDk6pBiaBZyfDTqotigirWnyh2GaDih6P
 77WzOpHWGVZB7A4rFE/OuRC55z3nu2s3gx9EVnYLRMvqV7Vs2zR/JvfOgI0nv108tkb2f2ua
 85wLZ1lOSSWJWYix9ipeX3Fv6Ztp4fOjrL2vvW9+rzh7isR5iaVXeO9ozto4mXFdbpZAEOck
 vVsX7u45/Xr1jIcz2y93dZebL5kb9OTuX7/7M/c33NlxbuX/8rwbzhZmte+8uVvDd29JFRSe
 YMc5sa+YlUsogumtYdTvitMP/NiE3nVWTf/ofrVgcfPJ1qNTTpY9YYlwmRn4eHXun9+VbbXc
 6zgqt10L+7JR4GP6QYMJa8Q6JhiXX0o0WqI/8drtKwfS8kQdlFiKMxINtZiLihMByWbfB5wD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDLMWRmVeSWpSXmKPExsWy7bCSvK6/05M4g8cvRC0ezNvGZvHy51U2
 i0/rl7FazD9yjtXiwtMeNovz5zewW9zccpTFYtPja6wWl3fNYbOYcX4fk0X39R1sFsuP/2Oy
 +L9nB7vF0q03GR34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4MrYdOQHW0E7X8X6yxeZGxjPcHcxcnJICJhI3Nl9nrmLkYtD
 SGAHo8SDVZ/ZIBLSEtc3TmCHsIUlVv57zg5R1MQk8atxDzNIgk1AW+Lu9C1MILYIUNGRb22M
 IEXMAt+ZJA5MmABWJCwQJvFvyhegBAcHi4CqxPT/xSAmr4CNxKP2Ioj58hKrNxwAq+YUsJU4
 +H8B2EghoJLdR3+yTmDkW8DIsIpRMrWgODc9t9iwwCgvtVyvODG3uDQvXS85P3cTIzjAtbR2
 MO5Z9UHvECMTB+MhRgkOZiURXkHxh3FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeb/OWhgnJJCe
 WJKanZpakFoEk2Xi4JRqYFqwX5vvX9tK7kWpC2PPleQtr2Qtuedi3KGXFhxezyCwxeFD1qMd
 D9q6xaPbM7p4512Wfv6P8b7bmr3n/tzKXajV/KPKQv99md1lxd0h3RueP70V+SQhfD5HSrqL
 fnKZo1uNdWRQoXsGb3Htkx/zdL98mfHoS63wn+b560I3ePiVudiYcguturk2aOUMlolBGZpJ
 W4uvLesT6LUUU7r9ZtsmV1XHTW+EN0f8FCoNN+R9Jpd5NHqhb1pV+YpK8Ze9/ByTol7xXOc5
 r/WWU0TMnr3TUP5iTNvqUKPDHUxMX1zj5vG5rXz69uiKw0tO7QlQztxzj3VL1OvHE94sNu/z
 ZE0u/cISbV9m0j+nk/+QEktxRqKhFnNRcSIA+qeBpN8CAAA=
X-CMS-MailID: 20200613030447epcas5p4ef2db2121851bdd251d2fd19b3532bb1
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200613030447epcas5p4ef2db2121851bdd251d2fd19b3532bb1
References: <20200613024706.27975-1-alim.akhtar@samsung.com>
 <CGME20200613030447epcas5p4ef2db2121851bdd251d2fd19b3532bb1@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_200451_640388_7BFB83F2 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.25 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com, kishon@ti.com,
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
