Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8984D1AE452
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:11:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gxgruCacsxxEXQq/Hn2kvuCd64mtlWfSpkDf+Vq/JvE=; b=TVD8x7nWZGRHyA0fQdISeLpIvc
	QIjxMhszQ+7jY8X9sM6JdzTOhq597vx2EMm7YfXZTkpBPSvEzmZb4XOpSaXaazoLf55Fw0b37pzwi
	LFQX4KrF/f5PWIxPi+YKUcN/heSizJsBh9LRqZhEZCfNkpcEZiF+7yKE/jDWMOlofUYYrFGaaWFCY
	QTjtVdmc+ppB2AaYf3U648nxlX4GLweK1AmRWFUffRMBFwRbs0BW4Q33r+Qcu5I/YUgAhc+8mgwH3
	VHXZon5DTeh/IL0aGxFBrDXHDb0ikxQn6ZxRd8/oAFZxAOKHRo1YR9Z+eRJq5WWD/wIb07DTKv2eZ
	b1+AOdtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVRz-00014g-BB; Fri, 17 Apr 2020 18:10:51 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVRM-0000mp-M6
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 18:10:14 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200417181009epoutp04eea58a5fb5452df3fbf189d0e836ccfc~GrcvdsRpS1451714517epoutp04I
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 18:10:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200417181009epoutp04eea58a5fb5452df3fbf189d0e836ccfc~GrcvdsRpS1451714517epoutp04I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587147009;
 bh=fwMNAQHpcMt9+Q4F9H8f3bsqLQxRec1ZLRJWTWxuzrE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qoKCAdng+v3SI6uki8SAmr0gTcAzBCX8+u8QGvIE+Yw82Zj0/I3qsHvaFpLrTFEzg
 F5Fs8pe2dPJwIAZogPP0nGzvUpKmkG4f2W/zDpfUy8U+61PaIPEB0EXk3GjkTCU6ZG
 cRPlinFnCRw0nnZ2iNjfL8tBRadRmJsKU8WhjsW8=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200417181009epcas5p25aa05076d38edc21856f2afc0fed2ca3~Grcu4L0Sd2908329083epcas5p2w;
 Fri, 17 Apr 2020 18:10:09 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 05.58.04782.101F99E5; Sat, 18 Apr 2020 03:10:09 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200417181008epcas5p460840c01c2c09ce1a69e83005b4bddbe~Grct1ol391060310603epcas5p4j;
 Fri, 17 Apr 2020 18:10:08 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200417181008epsmtrp265ad757a2816b700daef12e461879989~Grct0y6JR1697716977epsmtrp2i;
 Fri, 17 Apr 2020 18:10:08 +0000 (GMT)
X-AuditID: b6c32a49-89bff700000012ae-e9-5e99f101531b
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 0D.D0.04024.FF0F99E5; Sat, 18 Apr 2020 03:10:07 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200417181006epsmtip1c7415a0681d4dcc8347fee899da7a5f2~GrcsDr3UA2251122511epsmtip1j;
 Fri, 17 Apr 2020 18:10:06 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v6 01/10] scsi: ufs: add quirk to fix mishandling
 utrlclr/utmrlclr
Date: Fri, 17 Apr 2020 23:29:35 +0530
Message-Id: <20200417175944.47189-2-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417175944.47189-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAKsWRmVeSWpSXmKPExsWy7bCmhi7jx5lxBr+72SwezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXRnfPROaCGQIVb862MzUwnuXtYuTkkBAwkVjS+oOti5GLQ0hgN6PEpVXbWCCc
 T4wSPz/9h8p8Y5Q4c+8JaxcjB1jLsckBEPG9jBJPf66C6mhhktjz/wMjyFw2AW2Ju9O3MIHY
 IgLCEke+tYHFmQVuMEk8WOkCYgsLhEjs27SbFcRmEVCV2N1zGqyGV8BGon/NGlaI++QlVm84
 wAxicwrYSrS1LGUCWSYhcJ9N4tmS90wQRS4Sbcv2MUPYwhKvjm9hh7ClJD6/28sGcXW2RM8u
 Y4hwjcTSecdYIGx7iQNX5rCAlDALaEqs36UPcSafRO/vJ0wQnbwSHW1CENWqEs3vrkJ1SktM
 7O6GutJDYsfmqYyQYJjAKHFu/gOWCYyysxCmLmBkXMUomVpQnJueWmxaYJiXWq5XnJhbXJqX
 rpecn7uJEZxOtDx3MM4653OIUYCDUYmHt6NvZpwQa2JZcWXuIUYJDmYlEd6DbkAh3pTEyqrU
 ovz4otKc1OJDjNIcLErivJNYr8YICaQnlqRmp6YWpBbBZJk4OKUaGNluCR+YP7dOY0HP3gUK
 /CqXecLZv4Wc0wgR27q96wpLfdIyUZGtdc8izutm33kddrom0l7p9oo/v+fPqDrpNvPmFc2o
 Tf1rd0ffb5mrsOz6cmMX5+wAy/w8v/Q7LPUS3Z+ub0x5x3LuunOF3e3prpYOj1w5lBKWXsn6
 Y5i60mSj+6vrx3VD9iqxFGckGmoxFxUnAgDAsGfVIwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLLMWRmVeSWpSXmKPExsWy7bCSnO7/DzPjDI4etLF4MG8bm8XLn1fZ
 LD6tX8ZqMf/IOVaL8+c3sFvc3HKUxWLT42usFpd3zWGzmHF+H5NF9/UdbBbLj/9jsvi/Zwe7
 xdKtNxkdeD0u9/UyeWxa1cnmsXlJvUfLyf0sHh+f3mLx6NuyitHj8yY5j/YD3UwBHFFcNimp
 OZllqUX6dglcGd09E5kLZghUvDnbztTAeJa3i5GDQ0LAROLY5IAuRk4OIYHdjBKdr5VAbAkB
 aYnrGyewQ9jCEiv/PQeyuYBqmpgk1t77wwaSYBPQlrg7fQsTiC0CVHTkWxsjiM0s8IxJ4tTD
 UhBbWCBIYv+/iWA1LAKqErt7ToPV8ArYSPSvWcMKsUBeYvWGA8wgNqeArURby1ImkNuEgGo2
 PImZwMi3gJFhFaNkakFxbnpusWGBYV5quV5xYm5xaV66XnJ+7iZGcCBrae5gvLwk/hCjAAej
 Eg+vQc/MOCHWxLLiytxDjBIczEoivAfdgEK8KYmVValF+fFFpTmpxYcYpTlYlMR5n+YdixQS
 SE8sSc1OTS1ILYLJMnFwSjUwLuWP4YsOywy7bZvFlDTviv/+iIqMOL3CnLP95UZ2RWtiGf56
 rc5IvGe26ihzSrevjVS4jC/vzmebX20oU1+5ZKc8xzVdJ1lhxfNvuhPUuCacMj+674nq7/Vb
 LitK3do3VeFTf+KCVcU35yUfsJ77uLDzUl2azXyjvobV/wWjW75xfGq3FilSYinOSDTUYi4q
 TgQAiLsUbGACAAA=
X-CMS-MailID: 20200417181008epcas5p460840c01c2c09ce1a69e83005b4bddbe
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200417181008epcas5p460840c01c2c09ce1a69e83005b4bddbe
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181008epcas5p460840c01c2c09ce1a69e83005b4bddbe@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_111012_897289_48E7C0A7 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
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

In the right behavior, setting the bit to '0' indicates clear and '1'
indicates no change. If host controller handles this the other way,
UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR can be used.

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

base-commit: 8f3d9f354286745c751374f5f1fcafee6b3f3136
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
