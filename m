Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E845A71BB3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtItqR3WQTGus0S3YZcEqrDuaT/E0wJ6FGrOy8+vF9o=; b=t+p40fc5c+uOb6
	EAJbBrTbbMhbG55QDjP2qGk7YyCd0E9WfTrT08Y4mQfIrqJqjETpDt25/C/RiFz1D2AC7UeYhcpVD
	ErJWXDyZJYeWwbSMh+h5CMU4MFQGeOfZtvWb2mMy1ZtdWADYaEyTsWNiMFrAMHOmdYGIc4VaYtnwr
	Ex9vV/9P6JFBbC/bq38lNdJoBgJPGIX0Ehr4akwWiV3ToM9c0zWV+LdhghmHLCi27zJv340J43WLO
	1v5sUy2G9HgfPr5N6+A1ZV5+QkmlFMwG00/LyZVkyD528OMUATjHeoPOx+mmns8WArrXBiZACwCMP
	GuLShw/9yI+T9z0VgFvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwnN-0004Yd-PN; Tue, 23 Jul 2019 15:33:41 +0000
Received: from mail1.bemta24.messagelabs.com ([67.219.250.5])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwmg-00049X-BC
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:33:00 +0000
Received: from [67.219.250.101] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-a.us-west-2.aws.symcld.net id 9B/55-14470-8A8273D5;
 Tue, 23 Jul 2019 15:32:56 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMIsWRWlGSWpSXmKPExsXi5LtOQHeFhnm
 swasnOhYPr/pbrJq6k8Vi0+NrrBZdv1YyW1zeNYfN4u/2TSwWL7aIW7QdO8bqwOGxc9Zddo9N
 qzrZPO5c28PmsXlJvcfGdzuYPPr/Gnh83iQXwB7FmpmXlF+RwJrxeuI05oJ1QhXLbv9ga2D8y
 tfFyMkhJLCaUWLTnswuRi4gew2jxJf3exghHKDE29kv2UCq2ARMJK7M2MncxcjBISIgL3HiiT
 dImFngCaNE32p7EFtYIFBi6uP9TCAlLAKqEvvvRoKEeQU8Jf6famYEsSUE5CRunusEm8Ip4CW
 x4VwJxAmeEjc+nmSDKBeUODnzCQvEdAmJgy9eMEPUqEm0zZkA1ioBdMDf3rIJjAKzkHTMQtKx
 gJFpFaN5UlFmekZJbmJmjq6hgYGuoaGRrqGxga6lqV5ilW6iXmmxbnlqcYmukV5iebFecWVuc
 k6KXl5qySZGYFykFDTF72A8O+uN3iFGSQ4mJVHeV5/MYoX4kvJTKjMSizPii0pzUosPMcpwcC
 hJ8Hapm8cKCRalpqdWpGXmAGMUJi3BwaMkwrtNDSjNW1yQmFucmQ6ROsWoKCXOWwKSEABJZJT
 mwbXB0sIlRlkpYV5GBgYGIZ6C1KLczBJU+VeM4hyMSsK87CDbeTLzSuCmvwJazAS0eK+KGcji
 kkSElFQDU9+S9aELds1s/lIeJLgnzG5Kl2v008mxxXvfuebIRnw9+8rPY/OZz4senFLM28rEN
 Wnt9xbbL4civCz5Vrblbppp/u/W1qL0c7K/qu6mTqj6e2lSl9nl8K8Mzx7d/uzBrzot0sH6ju
 Q/h4oH3NxGM6QNmzd0nb2nvebG/ukJonPkRE127DC/uf+q++Tpk9T6Js2smjYn5t7HgzWan79
 UTVcJvfO1vmz2o+TzyWqRHGaHGQ/VxpzoPjBDSEh18rEt9hZ/9D2eTeoR7JNfLdojERWnGH6m
 Q72bVXT/t8yrUbP7XZU7D0pJ7XOrjBCuCD5WX9B1bg7H3/tsC21zDL4cf77+3aEn5ls2lvxPO
 l054YkSS3FGoqEWc1FxIgBkC3GWhgMAAA==
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-30.tower-325.messagelabs.com!1563895975!30184!1
X-Originating-IP: [66.77.174.16]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.9; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 21640 invoked from network); 23 Jul 2019 15:32:56 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
 by server-30.tower-325.messagelabs.com with ECDHE-RSA-AES256-SHA384 encrypted
 SMTP; 23 Jul 2019 15:32:56 -0000
Received: from MTK-SMS-XCH04.digi.com (10.10.8.198) by MCL-VMS-XCH01.digi.com
 (10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.468.0;
 Tue, 23 Jul 2019 10:32:55 -0500
Received: from DOR-SMS-XCH01.digi.com (10.49.8.99) by MTK-SMS-XCH04.digi.com
 (10.10.8.198) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 23 Jul
 2019 10:32:54 -0500
Received: from localhost.localdomain (10.101.2.92) by dor-sms-xch01.digi.com
 (10.49.8.99) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 23 Jul 2019
 17:32:52 +0200
From: Jose Diaz de Grenu <Jose.DiazdeGrenu@digi.com>
To: <Jose.DiazdeGrenu@digi.com>
Subject: [PATCH 2/2] nvmem: imx-ocotp: allow reads with arbitrary size and
 offset
Date: Tue, 23 Jul 2019 17:32:43 +0200
Message-ID: <1563895963-19526-3-git-send-email-Jose.DiazdeGrenu@digi.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563895963-19526-1-git-send-email-Jose.DiazdeGrenu@digi.com>
References: <1563895963-19526-1-git-send-email-Jose.DiazdeGrenu@digi.com>
MIME-Version: 1.0
X-Originating-IP: [10.101.2.92]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_083258_494343_86B11154 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.250.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the driver only allows to read 32 aligned 32-bit chunks. This
is inconvenient when defining nvmem-cells, as they are rarely a multiple
of 32 bits in size, and that makes the nvmem-consumer hardcode offsets and
masks to extract the real value.

Remove the limitation but keep reading in 32-bit chunks from the hardware
to ensure there is no change in the behaviour.

Signed-off-by: Jose Diaz de Grenu <Jose.DiazdeGrenu@digi.com>
---
 drivers/nvmem/imx-ocotp.c | 27 ++++++++++++---------------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index dc86d863563a..9590eeab85d8 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -121,16 +121,8 @@ static int imx_ocotp_read(void *context, unsigned int offset,
 			  void *val, size_t bytes)
 {
 	struct ocotp_priv *priv = context;
-	unsigned int count;
-	u32 *buf = val;
+	u8 *buf = val;
 	int i, ret;
-	u32 index;
-
-	index = offset >> 2;
-	count = bytes >> 2;
-
-	if (count > (priv->params->nregs - index))
-		count = priv->params->nregs - index;
 
 	mutex_lock(&ocotp_mutex);
 
@@ -147,9 +139,9 @@ static int imx_ocotp_read(void *context, unsigned int offset,
 		goto read_end;
 	}
 
-	for (i = index; i < (index + count); i++) {
-		*buf++ = readl(priv->base + IMX_OCOTP_OFFSET_B0W0 +
-			       i * IMX_OCOTP_OFFSET_PER_WORD);
+	for (i = offset; i < (bytes + offset); i++) {
+		u32 word_val = readl(priv->base + IMX_OCOTP_OFFSET_B0W0 +
+				     (i >> 2) * IMX_OCOTP_OFFSET_PER_WORD);
 
 		/* 47.3.1.2
 		 * For "read locked" registers 0xBADABADA will be returned and
@@ -157,9 +149,14 @@ static int imx_ocotp_read(void *context, unsigned int offset,
 		 * software before any new write, read or reload access can be
 		 * issued
 		 */
-		if (*(buf - 1) == IMX_OCOTP_READ_LOCKED_VAL)
+		if (word_val == IMX_OCOTP_READ_LOCKED_VAL)
 			imx_ocotp_clr_err_if_set(priv->base);
+
+		word_val >>= (i % 4) * 8;
+
+		*buf++ = (u8) (word_val & 0xFF);
 	}
+
 	ret = 0;
 
 read_end:
@@ -415,8 +412,8 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 static struct nvmem_config imx_ocotp_nvmem_config = {
 	.name = "imx-ocotp",
 	.read_only = false,
-	.word_size = 4,
-	.stride = 4,
+	.word_size = 1,
+	.stride = 1,
 	.reg_read = imx_ocotp_read,
 	.reg_write = imx_ocotp_write,
 };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
