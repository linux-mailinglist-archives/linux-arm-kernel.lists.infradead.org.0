Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EF11D2435
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eYW0RyqPIRfPzpIvCyByrX/V3+hEh/IqWEyF54UDBmI=; b=Lz2uIt8sN05Bzd5BHBB6hZTzXa
	BzyeT5Q+SAjYax6cYUYuQYIyXkweK7NUr5OUvhnYQ/DbywADasBoIOMqtvp1YV63D0pUaZnqFipC9
	gwQWuV1Y6PJc7mR7WOTY4O9NBxeuDQqdgIIysCV5HH+cy5z8PsjgjmKOOL3cgAI85m79gLDny9klX
	aBIdrEpuLERPjEqedOtmMJ3Q/H78OpOWZL9cLooxZs7iZh3PvqkYKSrO/vfCG0Us4qMaOCdS4ukzO
	az62jxjiTCfHYv6aKK+wvtt2cUdoi/LMW9VD9ZnjiXwP7Hh26MToMlSEA1gejtRHaQKlbI85UYsqr
	0KvnS3MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ28G-0001Fr-Ji; Thu, 14 May 2020 00:53:52 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ27P-0000jz-1s
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:53:00 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200514005256epoutp0373516c87d9635502750d5061f285c353~Ovt1zSSNP0811808118epoutp03b
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 00:52:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200514005256epoutp0373516c87d9635502750d5061f285c353~Ovt1zSSNP0811808118epoutp03b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589417576;
 bh=aZlGHc5xTiWwAyuHWOUJ6KyldBblFcw6DUpelUfBEa8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XAGwyV+EK0jJkaYaOuOATxz0Og9S/HK7FVY9shlrszaJa8whOpmaJsqYgrPy/LSPR
 weCveoAvD81HLzSpD0m4DwTsicQSWbycQrhjNtrMczlZa+jrTDV+9EEStXrF9mzltp
 9AvwON9qhfz45LsgcgJWFDn6H0ubT+TEcWFMNcbI=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200514005256epcas5p4b505d9649ce18325762618aec51307c7~Ovt1eyqxo0590005900epcas5p4C;
 Thu, 14 May 2020 00:52:56 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 6F.6E.23389.8669CBE5; Thu, 14 May 2020 09:52:56 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200514005256epcas5p3ccb5dcc7c96a5cdb9ee78baa8ec1e0d3~Ovt1MOmZ31579215792epcas5p3g;
 Thu, 14 May 2020 00:52:56 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200514005256epsmtrp2b62267b832bfb80b95da4fe730197dff~Ovt1LCi-a1517815178epsmtrp2P;
 Thu, 14 May 2020 00:52:56 +0000 (GMT)
X-AuditID: b6c32a4b-797ff70000005b5d-de-5ebc9668bdcc
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 CD.C3.18461.8669CBE5; Thu, 14 May 2020 09:52:56 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200514005254epsmtip23012c0682b1f1e83ceeba407574e8b52~OvtzTUsvL0172201722epsmtip2M;
 Thu, 14 May 2020 00:52:54 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v9 02/10] scsi: ufs: add quirk to disallow reset of
 interrupt aggregation
Date: Thu, 14 May 2020 06:09:06 +0530
Message-Id: <20200514003914.26052-3-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514003914.26052-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpileLIzCtJLcpLzFFi42LZdlhTQzdj2p44g11bpSwezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxrbd79gKbvFUTDh+i7mB8TJXFyMnh4SAicTHuRPYuhi5OIQEdjNKnG9ayAjh
 fGKUuPKtB8r5xihx4/pmZpiW9dvuMkEk9jJKHJs1iwUkISTQwiRx56geiM0moC1xd/oWJhBb
 REBY4si3NkYQm1ngBpPEg5UuILawQLTE13e32UFsFgFViVldrawgNq+AjcT9numsEMvkJVZv
 OAC2mFPAVmLLl2NQ8VYOifMtEhC2i8Ta2esYIWxhiVfHt7BD2FISn9/tBfqNA8jOlujZZQwR
 rpFYOu8YC4RtL3HgyhwWkBJmAU2J9bv0Ia7kk+j9/YQJopNXoqNNCKJaVaL53VWoTmmJid3d
 UMd4SCzddRMaiBMYJf7c+c42gVF2FsLUBYyMqxglUwuKc9NTi00LjPNSy/WKE3OLS/PS9ZLz
 czcxgpOJlvcOxkcPPugdYmTiYDzEKMHBrCTC67d+d5wQb0piZVVqUX58UWlOavEhRmkOFiVx
 3seNW+KEBNITS1KzU1MLUotgskwcnFINTJyx7maZ5i8ecMzqZX/6PmvKS7WLGd26S96JeodM
 rDebP+mv51chLodDtS0349f/YTX4vdsh2Fd949oQoxuiAjVVnbvfT2ETEGlp6H/wgO/wl/Xz
 054b69fdcV0itGqie8J15Q9OosHrtr0K+FPbt+eCS+qHxdfb22W2+Wt658d9en42+rNyiPWt
 f2Ga9feP/Pkcnqv/vfHTU8+8yJOHGj2Sb+y8uGp5+fGZ03Ircj+JOejlMh+OdSxKtG3PCbab
 sasn8P/vC/Mrw1Y8vSzpmnl1kU+LkLq7S8nv2c4TE7O9Lv5/nZ2fsTHH4oBc4pq5ohVXp1qV
 /1frrQp0OsWZ9mD+ZJ0D26TtGFdrqs5UV2Ipzkg01GIuKk4EABwlMJWVAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMLMWRmVeSWpSXmKPExsWy7bCSvG7GtD1xBg8+s1o8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujG2737EV3OKpmHD8FnMD42WuLkZODgkBE4n12+4ydTFycQgJ7GaUuPbrHCNE
 Qlri+sYJ7BC2sMTKf8/ZIYqamCRedRxkBUmwCWhL3J2+hQnEFgEqOvKtDayZWeAZk8Sph6Ug
 trBApMSLN4uZQWwWAVWJWV2tYL28AjYS93ums0IskJdYveEAWA2ngK3Eli/HwOJCQDXL1ixj
 nMDIt4CRYRWjZGpBcW56brFhgWFearlecWJucWleul5yfu4mRnA4a2nuYNy+6oPeIUYmDsZD
 jBIczEoivH7rd8cJ8aYkVlalFuXHF5XmpBYfYpTmYFES571RuDBOSCA9sSQ1OzW1ILUIJsvE
 wSnVwCQRrlkh5rroxqbVbhuONgvFCWtwxs7dttDkRMwNyas/uGQ1m212rhV6tXP2HdY/Xxk0
 v/Q+dhHPm/H3q7qwthcXp8AkcYb31TlL9f6KXC1jvBMpGK5wzTAqo4v11t+QHu4QZ/6OS5I3
 Jq1fO3PW7ecGshv3BeYzNGyWZH1+s7ec+cnDJ3XupWLrricav1k41/V2g/FX0db315dzLLz8
 et+5rpY873nfLHf3Hj8Y2Bduf3PTP1eFCrEVn42D4zWvsIYol/dErL4+x1dqNs/NI7Mu2TU+
 Omr2zLf40u7g/jmJ/T/iMn9ktPQGGdpVRp9eEizUvyHSrrdc/nsmn0isfb5o7MvesNuVmQ1c
 ZTpvlFiKMxINtZiLihMBecJRa9YCAAA=
X-CMS-MailID: 20200514005256epcas5p3ccb5dcc7c96a5cdb9ee78baa8ec1e0d3
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200514005256epcas5p3ccb5dcc7c96a5cdb9ee78baa8ec1e0d3
References: <20200514003914.26052-1-alim.akhtar@samsung.com>
 <CGME20200514005256epcas5p3ccb5dcc7c96a5cdb9ee78baa8ec1e0d3@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_175259_276813_CD968591 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
