Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316F11F8098
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 05:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2ZwOrZ04B/KMjYs2u5ieN5EqJ7Apuh+CHaRR3a+og3Y=; b=RP5ityZJRN11wEyi0/FZa9Baxu
	F8aapuWDmSedXO2aNW6D10cN+dpYzFmJXABJLPoc7Zv8O/dhqP1YVxFFOnBowIlSk49YQt+0gSHcr
	8Pe/gieyqzPR5i28RziE794TySXA+WduvVxXdbNHOtME2wSJijoBCygl62o11eXCtQ+XrWWLq7iAW
	JhgZ0EIeas576tC+BB+WJT5UmnzYZlB/g664l5tI7MczEIn+hbsdJkbynloAHkY8IkeQAexxGaF+W
	FUWtTZ0qADmaTeNWT2C5/eHPLo8A5Kz84r98qBbEzH4d8oR1d7DEOjoB1fSakDrkdUrqQ57qXuNxr
	Q3QrXtDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjwU4-0001R3-Jz; Sat, 13 Jun 2020 03:05:28 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjwTL-0001JK-H0
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 03:04:45 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200613030440epoutp01a727ea9ade1c07266ad8ab7384befe95~X_3asXD5y3032330323epoutp01i
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 03:04:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200613030440epoutp01a727ea9ade1c07266ad8ab7384befe95~X_3asXD5y3032330323epoutp01i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592017480;
 bh=HK/1/VP5ov7EOoNpQ0X08DtlhI52O+2EyAZ3cTvlQkI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Dr/JJVfgtNIMRnlW5hOcbdHPw9s/PViwM5OqX0kQCy1WPIktxz4VehCDwojEwHwMj
 FoxcP+rLwjObyr2kbnBNWDDph8/Ue2kZRCnjxW0katB56KLQzIC8GAFkF1hyk8NtbK
 VNfE6sgVVyRD6q5lVNk3ow1hwhcKfgtcE7r/E3ZE=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200613030440epcas5p38b5f75eae3725c4fe8fe995fa17ffe89~X_3aYBa7K2268422684epcas5p3G;
 Sat, 13 Jun 2020 03:04:40 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 43.AA.09703.74244EE5; Sat, 13 Jun 2020 12:04:39 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200613030438epcas5p337ed074612a2a1e8b4d6ecb3dda30b5c~X_3ZMSo0U2337923379epcas5p3-;
 Sat, 13 Jun 2020 03:04:38 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200613030438epsmtrp2ef3d41d993a59ff0cf172e3142b8c64b~X_3ZLcWyz2362123621epsmtrp2s;
 Sat, 13 Jun 2020 03:04:38 +0000 (GMT)
X-AuditID: b6c32a4a-4b5ff700000025e7-49-5ee44247a414
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 67.62.08382.64244EE5; Sat, 13 Jun 2020 12:04:38 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200613030436epsmtip2bd368f2cfe2b2bc9d0fdfdabd8c142b1~X_3XOe8TD0718207182epsmtip2A;
 Sat, 13 Jun 2020 03:04:36 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [RESEND PATCH v10 01/10] scsi: ufs: add quirk to fix mishandling
 utrlclr/utmrlclr
Date: Sat, 13 Jun 2020 08:16:57 +0530
Message-Id: <20200613024706.27975-2-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200613024706.27975-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuplleLIzCtJLcpLzFFi42LZdlhTU9fd6UmcwbwnlhYP5m1js3j58yqb
 xaf1y1gt5h85x2px4WkPm8X58xvYLW5uOcpisenxNVaLy7vmsFnMOL+PyaL7+g42i+XH/zFZ
 /N+zg91i6dabjA58Hpf7epk8Nq3qZPPYvKTeo+XkfhaPj09vsXj0bVnF6HH8xnYmj8+b5Dza
 D3QzBXBGcdmkpOZklqUW6dslcGW8OLqGpWC3QMX+D8eZGxhf83YxcnJICJhIPOlYxdrFyMUh
 JLCbUaJ3+XMWCOcTo8TdU2fYIZxvjBLHP81igml5um0JM0RiL6PExetn2SCcFiaJ/TNXsYBU
 sQloS9ydvgWsQ0RAWOLItzZGEJtZ4CWTxK5HBV2MHBzCAjESnWf4QcIsAqoSs++/YQexeQVs
 JPZf/wu1TF5i9YYDzCA2p4CtxMH/C5hAdkkIzOSQWDltDitEkYvEh4lT2SFsYYlXx7dA2VIS
 n9/tZQPZJSGQLdGzyxgiXCOxdN4xFgjbXuLAlTksICXMApoS63fpQ1zJJ9H7+wkTRCevREeb
 EES1qkTzu6tQndISE7u7oQ7wkDh6fhIjJBQmMEpceP+MZQKj7CyEqQsYGVcxSqYWFOempxab
 FhjlpZbrFSfmFpfmpesl5+duYgSnGC2vHYwPH3zQO8TIxMF4iFGCg1lJhFdQ/GGcEG9KYmVV
 alF+fFFpTmrxIUZpDhYlcV6lH2fihATSE0tSs1NTC1KLYLJMHJxSDUy8Rw86dy245LDs3kvp
 5U2zltVH5yjmO/fUqwe4x5SlPQte29nrIS120fC34GNGDinHxKtnHnUu/Jsitt1oDZNB4vuu
 k8sNutXyNY1q7RI1ThztWvTlGU9ai8rtGQduhCZ3nuXLCc3h9mVmiJhzlPfCPquO2XfN/s6o
 WymmyTUjxJmT4ez9D74TjtV5HljmcGYC/+RtShyiHwVfM6QwMdV6alXbNys7ZO7LM6nXf7h/
 5gsBy6NXozckvz60UW+ry0XZz28EbJwfG92Zw9vC4dTMflGroXjZPVXRrstbb2bk/Zur4/PE
 jfu0YcCvOb9m3YloetHE6me0+nAqd9gxqa+BWZPnN52dwCBd9Gq9kBJLcUaioRZzUXEiAMtM
 0oagAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHLMWRmVeSWpSXmKPExsWy7bCSvK6b05M4gw89mhYP5m1js3j58yqb
 xaf1y1gt5h85x2px4WkPm8X58xvYLW5uOcpisenxNVaLy7vmsFnMOL+PyaL7+g42i+XH/zFZ
 /N+zg91i6dabjA58Hpf7epk8Nq3qZPPYvKTeo+XkfhaPj09vsXj0bVnF6HH8xnYmj8+b5Dza
 D3QzBXBGcdmkpOZklqUW6dslcGW8OLqGpWC3QMX+D8eZGxhf83YxcnJICJhIPN22hLmLkYtD
 SGA3o8TSJ9NYIBLSEtc3TmCHsIUlVv57zg5R1MQkMalpARtIgk1AW+Lu9C1MILYIUNGRb22M
 IEXMAt+ZJA5MmMAMkhAWiJKYvGkBK4jNIqAqMfv+G7CpvAI2Evuv/2WC2CAvsXrDAbB6TgFb
 iYP/F4DFhYBqdh/9yTqBkW8BI8MqRsnUguLc9NxiwwLDvNRyveLE3OLSvHS95PzcTYzgINfS
 3MG4fdUHvUOMTByMhxglOJiVRHgFxR/GCfGmJFZWpRblxxeV5qQWH2KU5mBREue9UbgwTkgg
 PbEkNTs1tSC1CCbLxMEp1cAkf+LK5J/bAn5rPpBY1NN2MrXH4G3vSqPSoO7ue866O0RY153+
 rnn+u2n/Eedtbwwz2K44xXPlPJjZfUtac9b8Ga8FWtYImU14KqkeylhmHbXdtN/Yc2thfOyN
 NTGpTK+NzmbZiEstnpfr9kV+k/nbff+YWPPE+CvYvv6fMV/u1boHu28c3WubLnL7lPfWAjW9
 L/x6xn/VeiKmuMX5sLeycJp+96t6keTDtUQ/eYPHkl0nC9ed90gv3G7tz5rUPqHpjsbvV7kv
 d77aKtyYnhTwzHhVwM/Sr66i36fqKj03kWNqD797/TFvlHXxH72p6f+a/Ay9Df5VblKbYLNx
 yt83M4ufz/teKv7314TVZqFKLMUZiYZazEXFiQAlj3q24QIAAA==
X-CMS-MailID: 20200613030438epcas5p337ed074612a2a1e8b4d6ecb3dda30b5c
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200613030438epcas5p337ed074612a2a1e8b4d6ecb3dda30b5c
References: <20200613024706.27975-1-alim.akhtar@samsung.com>
 <CGME20200613030438epcas5p337ed074612a2a1e8b4d6ecb3dda30b5c@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_200443_915269_7760AFCB 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
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
