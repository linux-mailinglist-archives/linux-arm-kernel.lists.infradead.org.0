Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666C31B9259
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 19:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2ZwOrZ04B/KMjYs2u5ieN5EqJ7Apuh+CHaRR3a+og3Y=; b=LGnHyfzTXVn38aGmuFx55Qd2W4
	5StRw4wwOWcm2gayI9ZNMxcCi4BzvwZbTdqZgklz56hmR6SNVN788BnsJJpXwJKe3KMvg/GjCgUz2
	om7lPpFWHYirtqBGOD0xcKlJzimox+0yorngD6pk8HmVao9XbRf07p+QvV3ZG3VzmBvuIS7/iHgQC
	EzU/G0kKONsvb4V9gy6Umvjg0PnwNuQXx71pqvJkSLyXaIBHWK7mXY4s9PTXta6k3Swdzm9rS3aar
	OynoDxlcr47CvlTxzQItgC/qQ9rIGnF/FUFmi30MGIA1kkFXCULFhNP+roNC4Y2eUnxbSJJ0jEcDm
	tOYo3mCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSlJ6-0002Gz-Ve; Sun, 26 Apr 2020 17:43:09 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSlIC-0001bD-I9
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 17:42:14 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200426174207epoutp018617325010f3828ffb36356183a68574~Jb31CA6Co0140101401epoutp01W
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 17:42:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200426174207epoutp018617325010f3828ffb36356183a68574~Jb31CA6Co0140101401epoutp01W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587922927;
 bh=HK/1/VP5ov7EOoNpQ0X08DtlhI52O+2EyAZ3cTvlQkI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gDD9DuF3h5DKjYXD9Fv7hDpFLAkplAHCIIuqPic0lDC8ppoEZdKT0qBgGr4hu+SuD
 8Qxo13CjMIbwyQyIXI0gUMeuXNq8ayQO5L/pRQ4cAub6uqJe7ADjEF97QEdtyJth1c
 2yl/814ECQOSqOf9USWGOfMOX5cEp40wvpiTNRXU=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200426174206epcas5p45d98aa69c0a3ec15204b0bb33ece54e6~Jb3z8cphO2672326723epcas5p4U;
 Sun, 26 Apr 2020 17:42:06 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 0F.13.10083.EE7C5AE5; Mon, 27 Apr 2020 02:42:06 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200426174204epcas5p24796abe49298815cff344fba2e067169~Jb3yukotj0053600536epcas5p2c;
 Sun, 26 Apr 2020 17:42:04 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200426174204epsmtrp10e5c790ec6d05b3b23c26adff7a88c98~Jb3yqSRah0798907989epsmtrp1Q;
 Sun, 26 Apr 2020 17:42:04 +0000 (GMT)
X-AuditID: b6c32a4a-875ff70000002763-76-5ea5c7ee3eba
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E9.FF.18461.CE7C5AE5; Mon, 27 Apr 2020 02:42:04 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200426174202epsmtip1ea4f6fe09ac532bc666ce69b98cdbc0b~Jb3wxjaqe2817828178epsmtip1I;
 Sun, 26 Apr 2020 17:42:02 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v7 01/10] scsi: ufs: add quirk to fix mishandling
 utrlclr/utmrlclr
Date: Sun, 26 Apr 2020 23:00:15 +0530
Message-Id: <20200426173024.63069-2-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200426173024.63069-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSbUhTYRTHe+7brtatyzR6UsxY+MGFWlZwCU0/WNwisKig0rSRNyc6Hbu6
 1IKWylKXpkFqNadkm6mhNqeuLVN0OnpBrTnTIDAqSA3fAkmiF+ed9O13zvn/z/nz8JCouBIP
 INMyszlVpixDQvhiXQOh0rA5pzFpT1/7RmbK0EUw0ytugllqM+FMnWMYZ0ZG2kXMpGUQY8yf
 x3HGZdMTTM3IC4TRvbcSTKPzD8L8fW4VMcbOSRBLsa7yMoQ1N5cQbMej62zRy16MXfz6AWPL
 Lc2A/WHewd7s0yEnyPO+USlcRpqaU0Ucuugr/zb4BFPa6dzeBSeqAbNUKfAhIb0ftrQWikqB
 Lymm7QDOzLcCoVgC0Fow6C2WAWyeqBOtW35Wur2WHgCn9XZUKIoQWDXfSHhUBL0bfqy2IB72
 p/2gY1kLPIzSEwicaorzsB99GvYU165txegQqK02rDFFR0HH2BtcuBYMW9r7UA/70NHwVY0N
 8RyDdAkJx0c/eSPFwaF3c4TAfnDGafH2A+D0be0qk6ucDm/Z9gnta9BoGMIEjoF9Y3rMI0Hp
 UNhmixBiboZlv74ggpOCxVqxoA6BhXNurzMQVup03pQsbNJNed+kAsDi6kZQAYLu/99aD0Az
 2M4peUUqxx9QRmZyV8J5mYLPyUwNv5SlMIO1jyI9ZgWm4eP9gCaBZBNFdhuTxLhMzecp+gEk
 UYk/lZj9MElMpcjy8jlVVrIqJ4Pj+0EgiUm2UXdwd6KYTpVlc+kcp+RU61OE9AnQgIENm0U2
 d0Kiy1xvLLvajQf9BnEGTfLjqty7YQm7CDJ9fierD3cptiiTG9Rq7fd8LMax9WnB5ZWTGvsD
 c+TryaMHG0Smc9mj/A3lQk68Tl5jkUblvp2Nz+8eUD27sBjc2x9QG33EVJuX5SYwedfZzokz
 99DYSnrZ0nKYP9UhwXi5bK8UVfGyf2J1nAMkAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrELMWRmVeSWpSXmKPExsWy7bCSnO6b40vjDP7t0LN4MG8bm8XLn1fZ
 LD6tX8ZqMf/IOVaL8+c3sFvc3HKUxWLT42usFpd3zWGzmHF+H5NF9/UdbBbLj/9jsvi/Zwe7
 xdKtNxkdeD0u9/UyeWxa1cnmsXlJvUfLyf0sHh+f3mLx6NuyitHj8yY5j/YD3UwBHFFcNimp
 OZllqUX6dglcGS+OrmEp2C1Qsf/DceYGxte8XYycHBICJhI/Jl5l72Lk4hAS2M0ocf3LSyaI
 hLTE9Y0T2CFsYYmV/55DFTUxSbyZsRIswSagLXF3+hawBhGgoiPf2hhBbGaBZ0wSpx6WgtjC
 AkESZz9tZgOxWQRUJdqmzwPr5RWwkThy5QwrxAJ5idUbDjCD2JwCthKnZuwCmskBtMxGYvp6
 /wmMfAsYGVYxSqYWFOem5xYbFhjmpZbrFSfmFpfmpesl5+duYgQHs5bmDsbtqz7oHWJk4mA8
 xCjBwawkwhtTsihOiDclsbIqtSg/vqg0J7X4EKM0B4uSOO+NwoVxQgLpiSWp2ampBalFMFkm
 Dk6pBqbJX2O42f7dUTvLrRYanOBdxNCewXV5+gfe5anS6pOm2hpyH1XTT041e8jHs6lCVeXZ
 xI9TD+bu4DTPWPfml8lU/6PV9eu3GldpqgTFr5h29Z7K7q6dgSfeHzzx50rP3px3zBt1n35y
 Zr3cltW+I9jmWKXB0U92d5tWH43bu6l22m5/Aw79rdMqHWdO/+Jw7pfJ/I279Da5+O/h4Lt+
 gF19m51uxIWKPAX5Nb/T3X/oTWBmYlC6/G7/6rgTRov3Bm4Vi31q1SU4YXV6/TeblwYvrO/x
 tjYmxBuEi+xfy3jm5vktj98t4z80J+zpy528gToyB9fcl5nH5f315pLb7H42XmsVjy2o1b9Z
 fcEtewOPEktxRqKhFnNRcSIAt0D+aNUCAAA=
X-CMS-MailID: 20200426174204epcas5p24796abe49298815cff344fba2e067169
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200426174204epcas5p24796abe49298815cff344fba2e067169
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174204epcas5p24796abe49298815cff344fba2e067169@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_104212_777396_05B85A74 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
