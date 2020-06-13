Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5A81F80A9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 05:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VJ/lYx4BWMSgZfbxFmExNEmRn/IxKobofhnFfqpcwho=; b=gW8Ftm3t9MLqZIw1MkXP/JOsu5
	okw2/N+8cT5qqz8lrCO2PVz6Nj8Ja0ZiqXoO09kyiNnUR5YPE0T+Klp/s2HDaVun5KxjMT7RknLUf
	Y0oo6kJzfEDnOdEbGmKkVi5G+r3BR9GGpycDuPZVj4DZz4Wa466uo0bEpUVK5D9+sv2tyG9JHqCId
	bGd5IHRTtQs3uqmx8gslbyz8WGwkDdwoUQ0/wqKoHWptqwOmRRn8uPf0zy6q6hzNnx1hRZotO6gUn
	7eXgVGkOBRzEK3ZQkzeF24aT0THoeKVA3RJ5nGUaQmWaqWWQYjyKm2SiJvYCDXn9pPC9eE8YdNqQ5
	IpUTq+Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjwUy-0004n5-QK; Sat, 13 Jun 2020 03:06:24 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjwTR-0001LI-9Q
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 03:04:51 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200613030446epoutp0211b14e809009b39b646740de39939159~X_3gV6jgm2755327553epoutp02f
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 03:04:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200613030446epoutp0211b14e809009b39b646740de39939159~X_3gV6jgm2755327553epoutp02f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592017486;
 bh=nPCI6KtKTzdjjbh5jTvGpI1fKN6gjrCt7WH8b1I6htY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gMSph4gjrki4tkpX9PHqynDhq/D8nuc05UzweodDYsSa0Phuu5WUZnnHCkVX3LTOI
 X3Tl7wJ7hMd23ie8JbuA7iPU+neQLM8haodDLWp7gmVXc6EhtFVXB4iMBIbhdKeONe
 1+iicdh0FmglH0c2N4GlGnpO192gAF44r4AQmC0E=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200613030445epcas5p22381f9cc1696cef74b255cd0c2ac6a6d~X_3f2HxeO2889128891epcas5p2h;
 Sat, 13 Jun 2020 03:04:45 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 9F.AA.09703.D4244EE5; Sat, 13 Jun 2020 12:04:45 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200613030445epcas5p4428da322cd9527d1075ff0f1ccc75d23~X_3fSw-zm1361613616epcas5p4f;
 Sat, 13 Jun 2020 03:04:45 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200613030445epsmtrp13c5a0bd3461baf1903fd21a10c3f83f0~X_3fPQeEl2520425204epsmtrp1U;
 Sat, 13 Jun 2020 03:04:45 +0000 (GMT)
X-AuditID: b6c32a4a-4cbff700000025e7-54-5ee4424d0c09
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 49.62.08382.D4244EE5; Sat, 13 Jun 2020 12:04:45 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200613030443epsmtip2872aa0bacbe6873b50cf3ad6d932be1a~X_3dTtFM-0718207182epsmtip2B;
 Sat, 13 Jun 2020 03:04:43 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [RESEND PATCH v10 04/10] scsi: ufs: introduce
 UFSHCD_QUIRK_PRDT_BYTE_GRAN quirk
Date: Sat, 13 Jun 2020 08:17:00 +0530
Message-Id: <20200613024706.27975-5-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200613024706.27975-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuplleLIzCtJLcpLzFFi42LZdlhTS9fX6Umcwfd2U4sH87axWbz8eZXN
 4tP6ZawW84+cY7W48LSHzeL8+Q3sFje3HGWx2PT4GqvF5V1z2CxmnN/HZNF9fQebxfLj/5gs
 /u/ZwW6xdOtNRgc+j8t9vUwem1Z1snlsXlLv0XJyP4vHx6e3WDz6tqxi9Dh+YzuTx+dNch7t
 B7qZAjijuGxSUnMyy1KL9O0SuDI+/tnGXLBdtGJGy1X2Bsa7gl2MnBwSAiYSK/a+Zu5i5OIQ
 EtjNKHF09ksWCOcTo8TFGycYIZxvjBLLPjSxwLR8XnwNKrGXUWLH3GvsEE4Lk8Sb2VtYQarY
 BLQl7k7fwgRiiwgISxz51sYIYjMLvGSS2PWoAMQWFoiSeP3qOdhUFgFViZV7FrJ1MXJw8ArY
 SHw8EgSxTF5i9YYDzCA2p4CtxMH/C5hAdkkIzOSQaP/ynRGiyEVi/ccL7BC2sMSr41ugbCmJ
 l/1t7CAzJQSyJXp2GUOEaySWzjsG9Yy9xIErc1hASpgFNCXW79KHuJJPovf3EyaITl6JjjYh
 iGpVieZ3V6E6pSUmdnezQtgeEg8WvIAGyQRGiXc/trFOYJSdhTB1ASPjKkbJ1ILi3PTUYtMC
 o7zUcr3ixNzi0rx0veT83E2M4BSj5bWD8eGDD3qHGJk4GA8xSnAwK4nwCoo/jBPiTUmsrEot
 yo8vKs1JLT7EKM3BoiTOq/TjTJyQQHpiSWp2ampBahFMlomDU6qB6UC3EreZdKVdlh6zfsDd
 STalJya9tJzjs7RGL7TmXHykULHbPHmV0993zmw4a2ZaXqF6o26SskR1TN+ar3lX58UdmJHU
 F8s+M7vGJfNih3birP3pjYE2E5xmrvAz9XnoZXFG95PMy9jYjZOj3v+x3l+udc96/f3Jy3+m
 Om97v2vePd1/mW9/rHNfyXJh07t357zKdY6zvW8NdzT583txrVdaiDHz1LIpE9iaX/2/nFrU
 HfTgz70vVivaYoUvXrKdLeYbOffZ1qNN9f0PPYX9oh/qzLCUTsqZO+vky7f35fzZGRKPhU+b
 zqZ9z0Bijf2ShGm3j7ds6lecG1+2RPubxNLJv1/IJDwM1P+aEjAlRYmlOCPRUIu5qDgRAOgX
 EXSgAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNLMWRmVeSWpSXmKPExsWy7bCSvK6v05M4g6X3uS0ezNvGZvHy51U2
 i0/rl7FazD9yjtXiwtMeNovz5zewW9zccpTFYtPja6wWl3fNYbOYcX4fk0X39R1sFsuP/2Oy
 +L9nB7vF0q03GR34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4Mr4+Gcbc8F20YoZLVfZGxjvCnYxcnJICJhIfF58jRHEFhLY
 zSjRfS0JIi4tcX3jBHYIW1hi5b/nQDYXUE0Tk8TptwtZQRJsAtoSd6dvYQKxRYCKjnxrYwQp
 Yhb4ziRxYMIE5i5GDg5hgQiJ6X9DQGpYBFQlVu5ZyAYS5hWwkfh4JAhivrzE6g0HmEFsTgFb
 iYP/FzBB3GMjsfvoT9YJjHwLGBlWMUqmFhTnpucWGxYY5qWW6xUn5haX5qXrJefnbmIEh7eW
 5g7G7as+6B1iZOJgPMQowcGsJMIrKP4wTog3JbGyKrUoP76oNCe1+BCjNAeLkjjvjcKFcUIC
 6YklqdmpqQWpRTBZJg5OqQamc22tJ5O7HHntzq5b/ujrXYekCbvqeJMP63Zr7Q/QTd/x+vWe
 3lW1tSFKtSUnp3z0vH5r1xWvaw+2ME9bHWAj9fq59PrGPDdznzcPE5ZUyAi8fdu7gsvOUH7h
 ioItM6eli+4LL85d4/t6/3IVWZ07e9xyXv+803yb2/zt1JjQUOsY5pMmsiv2zKl3X2x8oUtm
 ya9sdW7JPocPn1JlSqwWVD1hvsgq3Rm/gSnhnNkJy/j8IO4opusvzbfrP9Z5wb54WYinuQ1b
 +nTuxFMawSqX3xUVrD/uVd1mH7R7yqsUV48SdffDPp+3mqfZaSjlsyt+2bBijmH+7VWtz5+d
 2JLR17nn1UGGsA+vUx89+fJZiaU4I9FQi7moOBEAatNthN4CAAA=
X-CMS-MailID: 20200613030445epcas5p4428da322cd9527d1075ff0f1ccc75d23
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200613030445epcas5p4428da322cd9527d1075ff0f1ccc75d23
References: <20200613024706.27975-1-alim.akhtar@samsung.com>
 <CGME20200613030445epcas5p4428da322cd9527d1075ff0f1ccc75d23@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_200449_698235_AA0B43D4 
X-CRM114-Status: GOOD (  14.66  )
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
