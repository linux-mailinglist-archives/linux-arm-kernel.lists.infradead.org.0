Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357F371BB2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44AsvBKEIsdsmOQmy6bTT9QuCQsKrQQsxKkDzZS1vao=; b=DycACpqKs/FJ54
	UY+SMpxuq6IyQr2Gf24y7EsIEfQ+LVXDLbkwAQ8KVXaAqCl8kjIdx90Y5mSbk4hEl6wl+/PYUkZS0
	6EgNe9zJgBy2y8wvPJSXW6LYqeIMMFKrRS59by8yl2I2bwjLC3Gqht1QCQbgh1PnBG8Hcfhs1njn5
	B9l4TmHSfKxAhvUUCoxqKyGngEe7Hdg9aivZnaJ/VEqX+QnXV/CHQ89xKdluRiEW0C4KTJHHbH0Y6
	zZvSP1yBtBKjz+SErTOU0R4ObDd/jWv4Tbg/YcudEeV3FxAJpE+wpUDscJWCUTH7C64NyH+isGeWu
	b96+p1GigqSuPPsCAMMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwn6-0004Lu-Py; Tue, 23 Jul 2019 15:33:24 +0000
Received: from mail1.bemta24.messagelabs.com ([67.219.250.4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwmd-00048a-NS
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:32:57 +0000
Received: from [67.219.250.101] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-4.bemta.az-a.us-west-2.aws.symcld.net id AA/43-10746-6A8273D5;
 Tue, 23 Jul 2019 15:32:54 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRWlGSWpSXmKPExsXi5LtOQHeZhnm
 swbYprBYPr/pbrJq6k8Vi0+NrrBZdv1YyW1zeNYfN4u/2TSwWL7aIW7QdO8bqwOGxc9Zddo9N
 qzrZPO5c28PmsXlJvcfGdzuYPPr/Gnh83iQXwB7FmpmXlF+RwJrRvn4KW8F0noqe3RfYGhhbu
 boYuTiEBFYzSqy8upUNwlnDKLF4yQlWuMz6b1sYuxg5OdgETCSuzNjJ3MXIwSEiIC9x4ok3SJ
 hZ4AmjRN9qexBbWMBTYs6eL+wgNouAqsSPV4vBWnmB4m/3zWADsSUE5CRunusEG8Mp4CWx4Vw
 JSFgIqOTGx5NsEOWCEidnPmGBGC8hcfDFC2aIGjWJtjkTwFolgC7421s2gVFgFpKOWUg6FjAy
 rWK0SCrKTM8oyU3MzNE1NDDQNTQ00jU0BtJGBnqJVbqJeqXFuuWpxSW6RnqJ5cV6xZW5yTkpe
 nmpJZsYgdGRUtBUsYPx6JHXeocYJTmYlER5X30yixXiS8pPqcxILM6ILyrNSS0+xCjDwaEkwX
 tV2jxWSLAoNT21Ii0zBxipMGkJDh4lEV4rkDRvcUFibnFmOkTqFKOilDjvW5CEAEgiozQPrg2
 WHC4xykoJ8zIyMDAI8RSkFuVmlqDKv2IU52BUEuZ1BpnCk5lXAjf9FdBiJqDFe1XMQBaXJCKk
 pBqYGg2W+ba0/7z+r+zd1fUCpR227C/CxC9+klofXBS+9eWUTt6N7ws3flr7y3B157PEBVZZr
 qXsEcEP37zd3CFuzby8XYTl2b9vU/8fjppvFsZwPrn67yyvb2zLPnrtVXkV1Ov5Zk5nhFpePV
 PKnUkHNqwV3/TbgPPrPLMggQsuv5JNVfxlEpuWP2vo9twYsE5Sbkfhse+6V+etSBWrnqVzucm
 8fd3XQx9txX8y9t09Gf61YMutuy5xlVuX3U31vSjHevXm5zCmrUs22DHvOrRfMzBsnf/U4x94
 xSwyZp7werG0010pu5bLY7bZ4zLxp5K7Ko6kOIRdWnmMbQbbVsM3waoZgc/bBFs2TP++advW6
 UosxRmJhlrMRcWJAAwv9FmJAwAA
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-32.tower-325.messagelabs.com!1563895972!30385!1
X-Originating-IP: [66.77.174.16]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.9; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 1081 invoked from network); 23 Jul 2019 15:32:53 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
 by server-32.tower-325.messagelabs.com with ECDHE-RSA-AES256-SHA384 encrypted
 SMTP; 23 Jul 2019 15:32:53 -0000
Received: from MTK-SMS-XCH03.digi.com (10.10.8.197) by MCL-VMS-XCH01.digi.com
 (10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.468.0;
 Tue, 23 Jul 2019 10:32:52 -0500
Received: from DOR-SMS-XCH01.digi.com (10.49.8.99) by MTK-SMS-XCH03.digi.com
 (10.10.8.197) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 23 Jul
 2019 10:32:52 -0500
Received: from localhost.localdomain (10.101.2.92) by dor-sms-xch01.digi.com
 (10.49.8.99) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 23 Jul 2019
 17:32:50 +0200
From: Jose Diaz de Grenu <Jose.DiazdeGrenu@digi.com>
To: <Jose.DiazdeGrenu@digi.com>
Subject: [PATCH 1/2] nvmem: imx-ocotp: use constant for write restriction
Date: Tue, 23 Jul 2019 17:32:42 +0200
Message-ID: <1563895963-19526-2-git-send-email-Jose.DiazdeGrenu@digi.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563895963-19526-1-git-send-email-Jose.DiazdeGrenu@digi.com>
References: <1563895963-19526-1-git-send-email-Jose.DiazdeGrenu@digi.com>
MIME-Version: 1.0
X-Originating-IP: [10.101.2.92]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_083255_811709_0BE90C2A 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.250.4 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.4 listed in wl.mailspike.net]
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

Use a new constant instead of reusing config->word_size, which applies
both to read and writes. This allows to change config->word_size without
affecting to the write size restriction.

Signed-off-by: Jose Diaz de Grenu <Jose.DiazdeGrenu@digi.com>
---
 drivers/nvmem/imx-ocotp.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 42d4451e7d67..dc86d863563a 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -29,6 +29,7 @@
 #define IMX_OCOTP_OFFSET_PER_WORD	0x10  /* Offset between the start addr
 					       * of two consecutive OTP words.
 					       */
+#define IMX_OTP_WORD_SIZE		4
 
 #define IMX_OCOTP_ADDR_CTRL		0x0000
 #define IMX_OCOTP_ADDR_CTRL_SET		0x0004
@@ -252,8 +253,8 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 	u8 word = 0;
 
 	/* allow only writing one complete OTP word at a time */
-	if ((bytes != priv->config->word_size) ||
-	    (offset % priv->config->word_size))
+	if ((bytes != IMX_OTP_WORD_SIZE) ||
+	    (offset % IMX_OTP_WORD_SIZE))
 		return -EINVAL;
 
 	mutex_lock(&ocotp_mutex);
@@ -293,7 +294,7 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 		 * see i.MX 7Solo Applications Processor Reference Manual, Rev.
 		 * 0.1 section 6.4.3.1
 		 */
-		offset = offset / priv->config->word_size;
+		offset = offset / IMX_OTP_WORD_SIZE;
 		waddr = offset / priv->params->bank_address_words;
 		word  = offset & (priv->params->bank_address_words - 1);
 	} else {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
