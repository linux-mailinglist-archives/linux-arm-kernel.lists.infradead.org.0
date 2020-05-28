Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6B71E5319
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:33:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2ZwOrZ04B/KMjYs2u5ieN5EqJ7Apuh+CHaRR3a+og3Y=; b=i6Ue5eFes+nKGxszC14ZLQE22k
	n1IgOJSUyF3gYT+8NRrlOFpkbvoG3F+5NusDDZAkS1GaHs0V43qkNf94PnkGmPdBzQjHVA6gHcCJp
	N21DZIv75516yDTNHsgFr5PIFVN0+CARJHZYkok4FJfTTY92s+WGo61h+0ez9yS20A8bDrA0otDSY
	i579LW4Pd+1Fvt+HMi69+SK3l/+RIJBs4Di2nzqROwcJudOg/2Fe2j2iSd0kFO+hTB12RG0R1l+/P
	4iMcSI/eP4Ds3a0C1KOBV27CtVJvDaAWqBXGxIleee1//0dOokGvAsX8TSjBS+AsARnVhdCxDfQUJ
	bX9Knqtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7QW-0003pP-Sb; Thu, 28 May 2020 01:33:44 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7PM-0003CA-7S
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:32:35 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200528013226epoutp038fac9f37743a9bbce13b4ceec50f7444~TDSUzsNFT0284902849epoutp03D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 01:32:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200528013226epoutp038fac9f37743a9bbce13b4ceec50f7444~TDSUzsNFT0284902849epoutp03D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590629546;
 bh=HK/1/VP5ov7EOoNpQ0X08DtlhI52O+2EyAZ3cTvlQkI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jM78j4WRhT1Z0vxUnmdU9/HUJ9ZxbQ0fTDO3XrgQc2uH1egTaMomO7B2dAiDPYh7q
 mnVgmJMtWxcBEso8Mai78o3imQdso3FbyA5sgEDNWJ8gR3zynvFAbSHKFhhbuga0b1
 gPg4ES6JP9zqfNUvfDv/V6aIZKr+SL+XFYn7M5TU=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200528013226epcas5p17c56ec6d989480e834855950b36e2334~TDSUe02Wh1882918829epcas5p1c;
 Thu, 28 May 2020 01:32:26 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 76.00.09467.AA41FCE5; Thu, 28 May 2020 10:32:26 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200528013226epcas5p1c73527c71424679443c10daf8bf561df~TDSUD0My00728507285epcas5p10;
 Thu, 28 May 2020 01:32:26 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200528013226epsmtrp2285c64bdb564c4513d91654752e6b269~TDSUC227J2107921079epsmtrp2d;
 Thu, 28 May 2020 01:32:26 +0000 (GMT)
X-AuditID: b6c32a49-fba88a80000024fb-0d-5ecf14aa192c
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 D8.77.08303.9A41FCE5; Thu, 28 May 2020 10:32:25 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200528013223epsmtip1efd3432a48365af5ec1348fbaaf4812d~TDSSJ3bxJ1673116731epsmtip1k;
 Thu, 28 May 2020 01:32:23 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v10 01/10] scsi: ufs: add quirk to fix mishandling
 utrlclr/utmrlclr
Date: Thu, 28 May 2020 06:46:49 +0530
Message-Id: <20200528011658.71590-2-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528011658.71590-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpileLIzCtJLcpLzFFi42LZdlhTS3eVyPk4g7XnJS0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxouja1gKdgtU7P9wnLmB8TVvFyMnh4SAicTHD2vZuxi5OIQEdjNKHGx/zArh
 fGKUeLziDhOE85lRYvGUB4wwLSvWLGGBSOxilPhxajkrSEJIoIVJYsVsXRCbTUBb4u70LUwg
 toiAsMSRb21gzcwCN5gkHqx0AbGFBUIljuztZAexWQRUJa6dfgtWzytgI3F+z0ZWiGXyEqs3
 HGDuYuTg4BSwldg7wQFkr4RAL4fEn7XT2SFqXCR+rfrNBGELS7w6vgUqLiXx+d1eNpBeCYFs
 iZ5dxhDhGoml846xQNj2EgeuzGEBKWEW0JRYv0sf4ko+id7fT5ggOnklOtqEIKpVJZrfXYXq
 lJaY2N0NdaSHxKpDB9kgITKBUWLbr7/sExhlZyFMXcDIuIpRMrWgODc9tdi0wDAvtVyvODG3
 uDQvXS85P3cTIziZaHnuYLz74IPeIUYmDsZDjBIczEoivE5nT8cJ8aYkVlalFuXHF5XmpBYf
 YpTmYFES51X6cSZOSCA9sSQ1OzW1ILUIJsvEwSnVwDStxFvUST1otld5oEWxBwdf0d1ck2gt
 wXa2pM4CP8PkdTYTH98QY+s3sJwZcuHye/kTJY4JokvtHE4r6+0IFnutnLhvmcilWfHNClsb
 sjZ+vc29/ZWs+Je383u9jJrrJneEFllonvzRUXlc+9WP28y6c5pfiV2/tl3D67TFjtVy/urf
 olcaS71RvSt1Ty+S0+w/e9zjc/bKnesVhVgVdbR2HD64eE7t7ZWad56rztRZN617ZarQC75t
 nXVJX6uzA65lil+8fCirp5fv3m+51z/Fn8lIzo/M3shVv0DG5J7d5Cti1lzVynunySVnN7C4
 vF6+pNlof5Zum8XdGznRp0716hl8uR57VFTccFOTEktxRqKhFnNRcSIAqIW44ZUDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrELMWRmVeSWpSXmKPExsWy7bCSnO5KkfNxBidfmFk8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujBdH17AU7Bao2P/hOHMD42veLkZODgkBE4kVa5awdDFycQgJ7GCUeNP7gA0i
 IS1xfeMEdghbWGLlv+fsEEVNTBKdDxcwgiTYBLQl7k7fwgRiiwAVHfnWBhZnFnjGJHHqYSmI
 LSwQLHG67z8LiM0ioCpx7fRbsHpeARuJ83s2skIskJdYveEAcxcjBwengK3E3gkOIGEhoJIJ
 q/YyTmDkW8DIsIpRMrWgODc9t9iwwCgvtVyvODG3uDQvXS85P3cTIziYtbR2MO5Z9UHvECMT
 B+MhRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMUpzsCiJ836dtTBOSCA9sSQ1OzW1ILUI
 JsvEwSnVwJTxSLjlzsKc9XKPWGZpbv98ZcEv/73uR20Cvi+/f5nxzceo03c2s+Zv5Os04fj/
 dseaKkn27g/HFwQEyv7w15zmsH9Fg7j4nmtXPr1inMd3miXL5N7b/TExDSznvpYav2xauUAt
 Ii1x8QaXx+czah5Yh9212fP4VPO27nlRT/PWbLeMWLhgv4RrwsNL3Ndz2SyUzSqD2ydOFE2b
 WZp6XPpGbSXzx/MPdV1rGE3/r001VZq2+GQt16Fcw2AV940TjsbfilQJ5st0/eAvlH93ffub
 EMbpN77+3vfptm12+nyHF9/li7o4zHdIGlu+sz9zOuI6f3BOjIhquvoCdx5Fw00lTc8+PPug
 Nfl7snTfmRtKLMUZiYZazEXFiQAvvvT61QIAAA==
X-CMS-MailID: 20200528013226epcas5p1c73527c71424679443c10daf8bf561df
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013226epcas5p1c73527c71424679443c10daf8bf561df
References: <20200528011658.71590-1-alim.akhtar@samsung.com>
 <CGME20200528013226epcas5p1c73527c71424679443c10daf8bf561df@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_183232_624768_D6CFF5C1 
X-CRM114-Status: GOOD (  14.28  )
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
