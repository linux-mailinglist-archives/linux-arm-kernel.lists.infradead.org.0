Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A1D1CCF8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 04:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eYW0RyqPIRfPzpIvCyByrX/V3+hEh/IqWEyF54UDBmI=; b=Ie7UbhVsGJykxliUHYR7QZRa9J
	Wc+bJbTpF9hBQInFlW8DtFsyQf2THnvvfnJVqJy/etp5Fca54nHJKbKPJtUErL8dR95J/Tb9zzMu7
	HYvEOZm2lvvJHWmWj1isr0TyPjo6rkbcZ/H0gJBJ9ITZGexIUVleObmAlaN3H0Fm3tu34cCajCtG+
	rhXbdycWjpotkKysPzerY/CdgqmYX0TL39cs7V3G/sQRNj9Yvl8cgu213Q4YAU5t0tLghvgBsIv+P
	X+D2D8BLST6LGvCUM7gVp2Etbm1DQi5rSphczgtkzG/yCFSuYmvTTLuBMvNUMgI5VgbwUKqIdyXpe
	tzz9J4uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXxy3-0003h8-VS; Mon, 11 May 2020 02:14:55 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXxxA-0002rt-2k
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 02:14:02 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200511021353epoutp013c5bb9d71c1ace02a939bfa20dc10c64~N14p5ehkz2365623656epoutp01p
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 02:13:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200511021353epoutp013c5bb9d71c1ace02a939bfa20dc10c64~N14p5ehkz2365623656epoutp01p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589163233;
 bh=aZlGHc5xTiWwAyuHWOUJ6KyldBblFcw6DUpelUfBEa8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DoB42yWmUyX2kuPqwB4/QQ2eeb5Sdic2W6Av2V8OjbpfQYdNQ4/s7/Phggc50uYl5
 OYb9dsEtehX0MjWHKevQHEI15LOCkL8B2035RpN8RUY2Dt7eB3/mKnoVOLxxr0eM8C
 nZAARzCpy9KjXuhiMhtwYKdJsW/FYorLbGGvQ7Gk=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200511021352epcas5p1c18a8a0ea5dd4d15a0bc11bb5af50383~N14pk_q_C1462014620epcas5p1g;
 Mon, 11 May 2020 02:13:52 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 27.B5.10010.0E4B8BE5; Mon, 11 May 2020 11:13:52 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200511021352epcas5p4c6f356db30fbd4905d2c8285ae2aabe6~N14o3_dTa2308823088epcas5p4k;
 Mon, 11 May 2020 02:13:52 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200511021352epsmtrp232d42672481326603c70e2d5b753e9aa~N14o2-bLs1467414674epsmtrp2O;
 Mon, 11 May 2020 02:13:52 +0000 (GMT)
X-AuditID: b6c32a49-71fff7000000271a-70-5eb8b4e0ae09
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 7E.54.25866.FD4B8BE5; Mon, 11 May 2020 11:13:52 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200511021349epsmtip2612251130d76d763b1136a148c5aab91~N14mtxlx20183901839epsmtip21;
 Mon, 11 May 2020 02:13:49 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v8 02/10] scsi: ufs: add quirk to disallow reset of
 interrupt aggregation
Date: Mon, 11 May 2020 07:30:23 +0530
Message-Id: <20200511020031.25730-3-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511020031.25730-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpileLIzCtJLcpLzFFi42LZdlhTS/fBlh1xBot3GVg8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujG2737EV3OKpmHD8FnMD42WuLkZODgkBE4nbh78wgthCArsZJZZOF+ti5AKy
 PzFKvG97xgKR+Mwo8aE3F6bh6pIVzBBFuxglXj57ygLhtDBJNC+8wAZSxSagLXF3+hYmEFtE
 QFjiyLc2sBXMAjeYJB6sdAGxhQWiJXacXgG2gUVAVeLEslYwm1fARuLTiulsENvkJVZvOMAM
 YnMK2EpMa9gOtkxCoJNDouf3bBaIIheJlRcPQjUIS7w6voUdwpaS+PxuL1CcA8jOlujZZQwR
 rpFYOu8YVKu9xIErc1hASpgFNCXW79KHOJNPovf3EyaITl6JjjYhiGpVieZ3V6E6pSUmdnez
 QtgeEvd/bGWCBMMERonOJedYJzDKzkKYuoCRcRWjZGpBcW56arFpgWFearlecWJucWleul5y
 fu4mRnAy0fLcwXj3wQe9Q4xMHIyHGCU4mJVEeJfn7ogT4k1JrKxKLcqPLyrNSS0+xCjNwaIk
 zns6bUuckEB6YklqdmpqQWoRTJaJg1OqgSnsx+n4bWd3689Na16fvHO1wsmuQxOtuH7XuMTv
 ++ReZPoihmXzY6s9T058iiz03jRHurnqL4va9gjBoJXuThuXx0iX/FtR/vf0g51uT65VPPp1
 6avn7gkCn5ck3Psn/7WPQ+t4bF0cc/vVG63PRdbEn23Zeclt4rLOGytCN9ibTGvc/+EN34HK
 r0Ve67X+mJVZTHq/LycrI2XXhVzzwNV2VoK1fyI3+13dv9dF4t2J/rmb72lmCjFITOfgSTz+
 7+qaBreTi1yqWMXrXu7kz2GU/qGyd457wYbLhil/7jVVGyoe8Ov10tsxvcT/3OlnkhZ7848u
 ttbepeQn0s6+wfDfrLSs/u0b06R8vxUk6uoqsRRnJBpqMRcVJwIABVaw7ZUDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMLMWRmVeSWpSXmKPExsWy7bCSvO6DLTviDO5vY7R4MG8bm8XLn1fZ
 LD6tX8ZqMf/IOVaL8+c3sFvc3HKUxWLT42usFpd3zWGzmHF+H5NF9/UdbBbLj/9jsvi/Zwe7
 xdKtNxkdeD0u9/UyeWxa1cnmsXlJvUfLyf0sHh+f3mLx6NuyitHj8yY5j/YD3UwBHFFcNimp
 OZllqUX6dglcGdt2v2MruMVTMeH4LeYGxstcXYycHBICJhJXl6xg7mLk4hAS2MEoceHCcSaI
 hLTE9Y0T2CFsYYmV/56zQxQ1MUn8uLaKFSTBJqAtcXf6FrAGEaCiI9/aGEFsZoFnTBKnHpaC
 2MICkRI/9k8BG8QioCpxYlkrC4jNK2Aj8WnFdDaIBfISqzccYAaxOQVsJaY1bAerEQKqmbFp
 M+sERr4FjAyrGCVTC4pz03OLDQuM8lLL9YoTc4tL89L1kvNzNzGCw1lLawfjnlUf9A4xMnEw
 HmKU4GBWEuFdnrsjTog3JbGyKrUoP76oNCe1+BCjNAeLkjjv11kL44QE0hNLUrNTUwtSi2Cy
 TBycUg1MC22mqp3/525ltLDz+Oboo2K1jP7/RbPd6+WZdbkapz07lN683yx46+Iq3zeV1893
 MyxZm+oTJcLdfKRX+qEaT9Z5hll3HC/zinr8MOffIMu2O/pEsxd3yy/LquPLXRqYjjOtP3rv
 R4d+7+Fj5sVyhkUNb4TP5FslNT59/VTWVbiKZcZzS3llE8+rcXur/RPycybP2nBbXktivvUR
 bbErX9U32xr/TOKcuJlPy/IB51xuD5Yp+usjHqq2TZH2PxZ49XwHN0fXMuOm3S7vky6ZvzJa
 uiFv9tXEsA3ulh8dBH51/AptL4u7l/V2WsAUBYtfN3dP/mh9kFFqgezCV216iWqfa4r/x7hU
 2s+s/aPEUpyRaKjFXFScCABTjJeQ1gIAAA==
X-CMS-MailID: 20200511021352epcas5p4c6f356db30fbd4905d2c8285ae2aabe6
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200511021352epcas5p4c6f356db30fbd4905d2c8285ae2aabe6
References: <20200511020031.25730-1-alim.akhtar@samsung.com>
 <CGME20200511021352epcas5p4c6f356db30fbd4905d2c8285ae2aabe6@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_191400_467984_56600D28 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
