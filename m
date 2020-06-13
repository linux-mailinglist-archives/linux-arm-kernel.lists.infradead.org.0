Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290041F80A7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 05:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eYW0RyqPIRfPzpIvCyByrX/V3+hEh/IqWEyF54UDBmI=; b=fOgubrANsQtUzvMG+Iw7nGqYZ1
	blUIPQfzfigFd4xgz65BORMZc2r4xGIq3XpieyFUxfJCsFU/bvM2mxlvlsWvnfmWlPraLwy6fCG4J
	EWMyoM3GIaacmbvBA8tBqr+Tjvt1ao1mKvpXl0Yy39nOwlKxnAzH2ktT5jy+AmDptMVBtyc5hLZKu
	mQ/oB+N7bxo665AVx8ne+f0zwWTc7bMcQ5KE3iMEuIWWPb93BJXxgJ2xo1AWD/WvHAMF2er8ssn0s
	Y9dcSu2J5NKrOn5KemAs5nxYImi3Yw1u9W4SucroOMtvfmT3JGR0JpLSBFPT/vS5dIsCTMbqVME5E
	pVqcZlBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjwUM-0004Cl-DT; Sat, 13 Jun 2020 03:05:46 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjwTN-0001Jd-6f
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 03:04:46 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200613030442epoutp03ee40aacc08737f137e431ab81e2eec27~X_3cpLH-N0168401684epoutp03B
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 03:04:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200613030442epoutp03ee40aacc08737f137e431ab81e2eec27~X_3cpLH-N0168401684epoutp03B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592017482;
 bh=aZlGHc5xTiWwAyuHWOUJ6KyldBblFcw6DUpelUfBEa8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bwwN0FW6/dnxyAUFAqCbrxDiHDBzDzl8I8K0KDw2KZ5Vk/HQazObDWRiI5dKgQaOv
 G9+rDydS49SV85SfL6O4MKZA0fm+6IncOcWsDtYH29qvl0NUBRk4onyuTRDYJd/yNz
 ghhiuMy+p0CswQZCRFVCLKTg6pX+ecLCDwYyxsB8=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200613030441epcas5p19719f3023fcaaf11a11b54e14c35eec6~X_3cIQc3i1950519505epcas5p1D;
 Sat, 13 Jun 2020 03:04:41 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 33.43.09475.94244EE5; Sat, 13 Jun 2020 12:04:41 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200613030440epcas5p121247d520b30ddca1a31b2d57bfc6b91~X_3bN1zKr3120931209epcas5p1Y;
 Sat, 13 Jun 2020 03:04:40 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200613030440epsmtrp201a8ca9fdb6c075fd1f37b8ec3c12e8d~X_3bKVbLd2362123621epsmtrp2t;
 Sat, 13 Jun 2020 03:04:40 +0000 (GMT)
X-AuditID: b6c32a4b-389ff70000002503-b7-5ee44249e287
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 00.C4.08303.84244EE5; Sat, 13 Jun 2020 12:04:40 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200613030438epsmtip268334da49cc409f5927505474ac332ec~X_3ZP7fba0568705687epsmtip2T;
 Sat, 13 Jun 2020 03:04:38 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [RESEND PATCH v10 02/10] scsi: ufs: add quirk to disallow reset of
 interrupt aggregation
Date: Sat, 13 Jun 2020 08:16:58 +0530
Message-Id: <20200613024706.27975-3-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200613024706.27975-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupmleLIzCtJLcpLzFFi42LZdlhTS9fT6UmcwfW5phYP5m1js3j58yqb
 xaf1y1gt5h85x2px4WkPm8X58xvYLW5uOcpisenxNVaLy7vmsFnMOL+PyaL7+g42i+XH/zFZ
 /N+zg91i6dabjA58Hpf7epk8Nq3qZPPYvKTeo+XkfhaPj09vsXj0bVnF6HH8xnYmj8+b5Dza
 D3QzBXBGcdmkpOZklqUW6dslcGVs2/2OreAWT8WE47eYGxgvc3UxcnJICJhI7Pv2ib2LkYtD
 SGA3o0TrrMVMIAkhgU+MErN/B0MkPjNKPO/rZ4Lp2Dx5KxtEYhejxIdnp5khnBYmietPVjKC
 VLEJaEvcnb4FrENEQFjiyLc2sDizwEsmiV2PCroYOTiEBZIl+pviQMIsAqoSJw4vYwWxeQVs
 JA5f3ssGsUxeYvWGA8wgNqeArcTB/wuYQHZJCMzkkOi/PI0ZoshFYuGTtSwQtrDEq+Nb2CFs
 KYnP70AGcQDZ2RI9u4whwjUSS+cdgyq3lzhwZQ4LSAmzgKbE+l36EFfySfT+fsIE0ckr0dEm
 BFGtKtH87ipUp7TExO5uVgjbQ2LnzGY2SLhNYJR497VwAqPsLIShCxgZVzFKphYU56anFpsW
 GOellusVJ+YWl+al6yXn525iBKcXLe8djI8efNA7xMjEwXiIUYKDWUmEV1D8YZwQb0piZVVq
 UX58UWlOavEhRmkOFiVxXqUfZ+KEBNITS1KzU1MLUotgskwcnFINTNo9ultPdliuUKrr7Whf
 JLj/6/PVrbr8mjO97rzrKVv1QX46i/vpdJ6W1xsKOF1WiqSXLhOt/CO0cPbXPR01D3U+Zydu
 f/JBlM3zadOazn1ahxe4MsQGfpzyWOF3S7Tx/qMVa257efY+/Z1i7m4ZvarhaOw9eUXeZfNv
 aFu/qfBZ9p+v2k1y8ynTPVfVd79rONi5Z91u+yWXzU2629W1N8l13PETKGJcK978bfE7jVre
 9jw3LfYj0XO3BPtssLwte0d6tV5Q3rzUsD1CMqxvvRmstb/t/7Bm7Qcr5/BtIqVbpLKysxX2
 XVvV7/VlycmylwZKXnuj3LqVtXZo6lR0zrTZ9/d/7I/E/RK7bn17pcRSnJFoqMVcVJwIAC6C
 +lmeAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHLMWRmVeSWpSXmKPExsWy7bCSvK6H05M4gwv7jC0ezNvGZvHy51U2
 i0/rl7FazD9yjtXiwtMeNovz5zewW9zccpTFYtPja6wWl3fNYbOYcX4fk0X39R1sFsuP/2Oy
 +L9nB7vF0q03GR34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4MrYtvsdW8EtnooJx28xNzBe5upi5OSQEDCR2Dx5K1sXIxeH
 kMAORolbr56zQySkJa5vnABlC0us/AcSBylqYpLovf+CBSTBJqAtcXf6FiYQWwSo6Mi3NkaQ
 ImaB70wSByZMYAZJCAskSjy8cg6sgUVAVeLE4WWsIDavgI3E4ct72SA2yEus3nAArJ5TwFbi
 4P8FYEOFgGp2H/3JOoGRbwEjwypGydSC4tz03GLDAqO81HK94sTc4tK8dL3k/NxNjOAg19La
 wbhn1Qe9Q4xMHIyHGCU4mJVEeAXFH8YJ8aYkVlalFuXHF5XmpBYfYpTmYFES5/06a2GckEB6
 YklqdmpqQWoRTJaJg1OqgUnqe+6RLf/tjXQmzEouTbhmunBVQNucI5x/9ySfXCB9gHFt7gc2
 Xr+GNc/KH/xex/5J/pnWbuEpS850eneEnW5b3F4SKy5zyud2Va3F7Ekh7+6nrp4o0pWksKHd
 91X9hZmHz35c3STeclh5w6bOOpGz3/Y6dewx2WFs/+ljouDbtbu+JN+0e3Hh7CfP/lWPJJlu
 2WXvsGuYEF2zt8DoZxv/YoN5Udl/uzZzmDNu/W+eUsXwq2b9NKVp+nePaEsXz62dc/l6uwdL
 w+GQZT+cfqeoHFiwtPGy573QwmiurKebDAKL897yOm+b8bjLx9vyiAPLh3Te/XwvWrZcPa9a
 forVhbHkqu+31hvlcyfufnRSiaU4I9FQi7moOBEAMTLlg+ECAAA=
X-CMS-MailID: 20200613030440epcas5p121247d520b30ddca1a31b2d57bfc6b91
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200613030440epcas5p121247d520b30ddca1a31b2d57bfc6b91
References: <20200613024706.27975-1-alim.akhtar@samsung.com>
 <CGME20200613030440epcas5p121247d520b30ddca1a31b2d57bfc6b91@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_200445_420192_AA557C88 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
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
