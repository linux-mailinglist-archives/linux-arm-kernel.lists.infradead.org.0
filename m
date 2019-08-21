Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6845972B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 08:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RB01HXk34hGmKx1JZ4MfDEg0qh8fUyiV7BHS+pHLcMg=; b=dtWZWg/0aMHWCS
	9kowcf/NkEk3LBnYCgXvMB7OE1Px5gxAjMCot8O/gIYkOO+ltB7kmX4MZt2GHnZg5YQXLR9zGaDUx
	KN6ciL4ZYHKGtDRp7ArAUz0qyZs6fQzvxTtPdouGLoeJZl0hhIkjTdL+JkAanim5qVPwq9Qy1V5R6
	XQMeVNdX5jrBtSxhnbBPZF2amqsTfI8o1lq5Au69JVkMDKuaykSYXygPnEr7GX2WyJUuff538Xmn6
	GaQuQZmanZcnDCkQhmaHwhdS4Wf8v9RgknUPyGw5jopVpq1BcMnKPQ4nTM+dcPp474imXjpyAxc9A
	avFoslEf41xODd7ZmWNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KKq-0007yi-OL; Wed, 21 Aug 2019 06:43:08 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0KK8-0007Mf-72
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 06:42:26 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190821064221epoutp04a6730ad46b6379da93383e1ef2a0ffb4~83PskILYF1247612476epoutp04V
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 06:42:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190821064221epoutp04a6730ad46b6379da93383e1ef2a0ffb4~83PskILYF1247612476epoutp04V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566369741;
 bh=XmvgRUmAe2wKYHiaDqlBZGz349t74yQ9imYtStg6lHE=;
 h=From:To:Cc:Subject:Date:References:From;
 b=EyrZTewcBbnxZ2ulz/otdpewDqEruz8Gud79PDG0yCy8/AeusfGxfVhKuVwJt8Pf2
 SL0wiJqUSv0zYKfIsddwCagVIWTGRUImgR1K7TCBBnotK2s1AZAsg81SMgoJvNXp56
 Rjxco0dg2OmIqVhl3gJ8bwZ39Vh4YGf39hZWq8v0=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190821064221epcas2p2684e6115ac12d837c9b5307f2df57c40~83PsF4bp_1369213692epcas2p2c;
 Wed, 21 Aug 2019 06:42:21 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.40.186]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 46Cykz5DwgzMqYkn; Wed, 21 Aug
 2019 06:42:19 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 2B.23.04068.BC7EC5D5; Wed, 21 Aug 2019 15:42:19 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20190821064219epcas2p28b42391923012ecc7875313b8b2b9a1a~83PqdlOeq1149811498epcas2p2u;
 Wed, 21 Aug 2019 06:42:19 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190821064219epsmtrp298889ca36b32f346ee40f3eadb0b6908~83PqcX4JK2201622016epsmtrp2V;
 Wed, 21 Aug 2019 06:42:19 +0000 (GMT)
X-AuditID: b6c32a47-5a1ff70000000fe4-6f-5d5ce7cb27a6
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 F8.D2.03638.BC7EC5D5; Wed, 21 Aug 2019 15:42:19 +0900 (KST)
Received: from KORDO035251 (unknown [12.36.165.204]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20190821064218epsmtip16b10bb697269b2ad72f00b6d9cd76543~83Pp9CBw40460704607epsmtip1E;
 Wed, 21 Aug 2019 06:42:18 +0000 (GMT)
From: "boojin.kim" <boojin.kim@samsung.com>
To: "'Jaehoon Chung'" <jh80.chung@samsung.com>, "'Ulf Hansson'"
 <ulf.hansson@linaro.org>, <linux-mmc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/9] mmc: dw_mmc: support crypto operation
Date: Wed, 21 Aug 2019 15:42:18 +0900
Message-ID: <003f01d557eb$94210260$bc630720$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdVX6DWbOAXQrOkmQ/qY5VJQXNywng==
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA01Tf0xTVxjN7fvRh6PyrIzdNZuWN1kCBmxhxUsHc3FmvmT+wVy2JU6GL/DS
 MtrXrq9luCwTN9YhNmNkuthSicGpWx1BW4bEUX9UBlPsKiOgJXVkk8xIFRWQBHFuLQ8z/jv3
 fOfk+8798lGY0i1XUVWCnbcJnIkhl+FdF7LX5w7c3F6mOdGfgx7MNOCo41Ifho5fbyLRwP6w
 DHkj9TgKTrYQqL3nEYb2TjyHxjs8GLr20EmgphtxDEUiJ+TIf2OEQMHRtWjsjzkZcrfGSPR7
 22Y00TqLo57gRRwNnfaSqPffJoAORM7IkPPkA4C+cM3JUX/7u68+y3b+EJWx9YGP2K5zWexQ
 2MH6fXtINjbSQ7KB73axPx+alrGfXf4FY++eGSbZrzp9gJ32rypN3WYqNvJcJW9T80KFpbJK
 MJQwb7xV/lq5rlCjzdUWofWMWuDMfAmzaUtp7utVpkR2Rl3DmRwJqpQTRWbdK8U2i8POq40W
 0V7C8NZKk1WrteaJnFl0CIa8CotZr9Vo8nUJ5Q6Tsfl8vdx6O6PWN3MEqwNeZSNIoSD9Erx0
 9STRCJZRSrobwCOueVJ6TAF4/Nv7WFKlpGcBPDf84RNH29m4TOKDALonVkmGWwD2heeJZIGk
 18JAvw8kcTrtThSaPkiKMPqxHI5PhfBkYSWth1dibQsYp7Pg/c/H5EmsoIvgwZFBQsIr4EX3
 +IIGo1fDU3e8mDSFGnaH44sN8mDz+SAmadJhyx4nlmwG6d0U7P2+G5cMm2B09h6Q8Eo40d8p
 l7AKTk8GSQnvgsNHD8slswvAyw+di6IC6Pn7y4SZSnTIhh2n1yUhpF+AvaOLsy2HDRf+kUu0
 AjY4F793DTw4NSSTaBW85/pUolkYntyPfw0yPUtCepaE9CwJ4/m/7SGA+0AGbxXNBl7MtxYs
 3bUfLJxFzuZu0PXblhCgKcCkKnZcfa9MSXA14k5zCEAKY9IVtd5tZUpFJbfzY95mKbc5TLwY
 ArrEDpox1dMVlsSRCfZyrS6/sFBTpEO6wnzEPKPwPxXdrqQNnJ2v5nkrb3vik1EpqjqgXR4t
 1g8W11UTb26cTOF3Z1+7XVc7emUsPHBzQx/oPHbnr2/2nk0THvXNv5xx3RlYcTj64ttVKWPu
 A60hB7obmM/8aV+avjHeG/x1aPUooTf8KPsk8/Gt9ngGZ3w+q+ao1jVY/U5sw/stM+z0xups
 wb8m7U+d/pQxYoRzdCx1awGDi0ZOm4PZRO4/ucmGcSwEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrNIsWRmVeSWpSXmKPExsWy7bCSnO7p5zGxBi97eC2+fulgsVh/6hiz
 xeq7/WwWp6eeZbKYc76FxWLvu9msFmv3/GG26H4lY/Fk/Sxmixu/2lgt+h+/ZrY4f34Du8Wm
 x9dYLfbe0ra4f+8nk8XMeXfYLC4tcrd4Ne8bi8WevSdZLC7vmsNmceR/P6PFjPP7mCzaNn5l
 tGjt+clucXxtuIOkx5aVN5k8WjaXe2w7oOpx+Wypx6ZVnWwed67tYfPYvKTeY/eCz0weTWeO
 Mnu833eVzaNvyypGj8+b5AJ4orhsUlJzMstSi/TtErgyJh5sYS94I1ax6stS5gbGOUJdjJwc
 EgImEov2v2bqYuTiEBLYzSgxtfEKC0RCSmJr+x5mCFtY4n7LEVYQW0jgOaPEt8+FIDabgLbE
 5uOrGEGaRQRmM0r8vfCcESTBLDCNQ2LXB3EQW1jASuLCnUVgQ1kEVCU+Nt9nB7F5BSwl5l67
 yAphC0qcnPkEqIYDqFdPom0j1Bh5ie1v50DdoCCx4+xrsLgIUMnEg3uZIWpEJGZ3tjFPYBSc
 hWTSLIRJs5BMmoWkYwEjyypGydSC4tz03GLDAqO81HK94sTc4tK8dL3k/NxNjOAkoKW1g/HE
 ifhDjAIcjEo8vDtuRscKsSaWFVfmHmKU4GBWEuGtmBMVK8SbklhZlVqUH19UmpNafIhRmoNF
 SZxXPv9YpJBAemJJanZqakFqEUyWiYNTqoGR49ZSiUbF4w+XLgwVlV/2UZDZY92+iayFwY3L
 v+bcvnBgy2Hj5/d9cuZvKKx9knfhhufxzt3XzL7IF394pJ4V8+Ps/nRuD8UXam99dwm7buxL
 uOYx4ca6B/I1HAd3lohFZ95rkbgtb7yv68NNbfbzSq7Td97fa2Biz3mj8+X0jvWFobp6Nx96
 K7EUZyQaajEXFScCAOfGz5v+AgAA
X-CMS-MailID: 20190821064219epcas2p28b42391923012ecc7875313b8b2b9a1a
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190821064219epcas2p28b42391923012ecc7875313b8b2b9a1a
References: <CGME20190821064219epcas2p28b42391923012ecc7875313b8b2b9a1a@epcas2p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_234224_616656_53B707B0 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: 'Ulf
 Hansson' <ulf.hansson@linaro.org>, 'Mike Snitzer' <snitzer@redhat.com>,
 dm-devel@redhat.com, 'Andreas Dilger' <adilger.kernel@dilger.ca>,
 'Alasdair Kergon' <agk@redhat.com>, 'Eric Biggers' <ebiggers@kernel.org>,
 linux-samsung-soc@vger.kernel.org, 'Herbert Xu' <herbert@gondor.apana.org.au>,
 'Krzysztof Kozlowski' <krzk@kernel.org>,
 'Jaehoon Chung' <jh80.chung@samsung.com>, 'Kukjin Kim' <kgene@kernel.org>,
 linux-ext4@vger.kernel.org, 'Chao Yu' <chao@kernel.org>,
 linux-block@vger.kernel.org, linux-fscrypt@vger.kernel.org,
 'Jaegeuk Kim' <jaegeuk@kernel.org>, linux-arm-kernel@lists.infradead.org,
 'Jens Axboe' <axboe@kernel.dk>, 'Theodore Ts'o' <tytso@mit.edu>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, "'David S. Miller'" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch supports the crypto operation in mmc driver.
Two vops are added to dw_mci_drv_data for it.
The crypto_engine_cfg() is required to set crypto information such as
key and algorithm modes before I/O.
The crypto_engine_clear() is required to clear the crypto information
set in the H/W after I/O.

Cc: Jaehoon Chung <jh80.chung@samsung.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Boojin Kim <boojin.kim@samsung.com>
---
 drivers/mmc/host/dw_mmc.c | 22 +++++++++++++++++++++-
 drivers/mmc/host/dw_mmc.h |  6 ++++++
 2 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
index eea52e2..0cdf574 100644
--- a/drivers/mmc/host/dw_mmc.c
+++ b/drivers/mmc/host/dw_mmc.c
@@ -470,6 +470,7 @@ static void dw_mci_dmac_complete_dma(void *arg)
 {
 	struct dw_mci *host = arg;
 	struct mmc_data *data = host->data;
+	const struct dw_mci_drv_data *drv_data = host->drv_data;
 
 	dev_vdbg(host->dev, "DMA complete\n");
 
@@ -481,6 +482,9 @@ static void dw_mci_dmac_complete_dma(void *arg)
 				    data->sg_len,
 				    DMA_FROM_DEVICE);
 
+	if (drv_data && drv_data->crypto_engine_clear)
+		drv_data->crypto_engine_clear(host, host->sg_cpu, false);
+
 	host->dma_ops->cleanup(host);
 
 	/*
@@ -577,8 +581,10 @@ static inline int dw_mci_prepare_desc64(struct dw_mci
*host,
 {
 	unsigned int desc_len;
 	struct idmac_desc_64addr *desc_first, *desc_last, *desc;
+	int i, ret;
+	const struct dw_mci_drv_data *drv_data = host->drv_data;
+	int sector_offset = 0;
 	u32 val;
-	int i;
 
 	desc_first = desc_last = desc = host->sg_cpu;
 
@@ -618,6 +624,20 @@ static inline int dw_mci_prepare_desc64(struct dw_mci
*host,
 			desc->des4 = mem_addr & 0xffffffff;
 			desc->des5 = mem_addr >> 32;
 
+			if (drv_data && drv_data->crypto_engine_cfg) {
+				ret = drv_data->crypto_engine_cfg(host,
desc,
+						data, sg_page(&data->sg[i]),
i,
+						sector_offset, false);
+				if (ret) {
+					dev_err(host->dev,
+						"%s: fail to set
crypto(%d)\n",
+						__func__, ret);
+					return -EPERM;
+				}
+				/* mmc sector size */
+				sector_offset += desc_len / 512;
+			}
+
 			/* Update physical address for the next desc */
 			mem_addr += desc_len;
 
diff --git a/drivers/mmc/host/dw_mmc.h b/drivers/mmc/host/dw_mmc.h
index da5923a..b32d39b 100644
--- a/drivers/mmc/host/dw_mmc.h
+++ b/drivers/mmc/host/dw_mmc.h
@@ -563,5 +563,11 @@ struct dw_mci_drv_data {
 						struct mmc_ios *ios);
 	int		(*switch_voltage)(struct mmc_host *mmc,
 					  struct mmc_ios *ios);
+	int		(*crypto_engine_cfg)(struct dw_mci *host, void
*desc,
+				struct mmc_data *data, struct page *page,
+				int page_offset, int sector_offset,
+				bool cmdq_enabled);
+	int		(*crypto_engine_clear)(struct dw_mci *host,
+				void *desc, bool cmdq_enabled);
 };
 #endif /* _DW_MMC_H_ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
