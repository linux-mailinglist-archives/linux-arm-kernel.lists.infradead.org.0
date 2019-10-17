Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3EADAC36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwW0SfN3XHnASP7/SCKh4MX24speP7lUnTvdzFbEOMA=; b=VFRz/BdHDLrDOr
	PoSzT7KHdDXFZ2u7eAHozef91VlZOhKaVcH+ZsPzjkWJpCzsbjYzh8LUiBa2r/lN10YpgEThcdFZX
	4XZNNaoof11CNUBL9YT4kmigbhowaabfoh2FPbBCLSYdEadDLzDUjL8ncUwRSXIvFWUAYUpN490hi
	HX0A+IRbq15LtnulGRPvlAviMkC8QexUMd0EZA3vIO9xLZc6ec1+fGQonv1TKi4vM5H/WagASOKen
	t3cHnVVPRP3JnvaK000PT4b75SucrDmItP9bddP2vp6kfQP/7++qubqnWX3+UZ51L5U4xSNmKs2SA
	rrKSNaXHMYWf64COTX7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4u8-0003bv-9e; Thu, 17 Oct 2019 12:29:20 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4rE-0000uR-Ur
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:26:22 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9HCQE24084614;
 Thu, 17 Oct 2019 07:26:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571315174;
 bh=/548IYlsZzVpGFlUyLpuldMg6WhApejqtJF4qdDLFY8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=FSCP1gxGgF0OIz9XnlIfJWQr2ZVvUsB50V54Y+CK+gsqhBp3UnfAl/fUICNx/x7fM
 DFDLNW8+slMGMe3ZLaOaz62HUigsONZxBpH+ifQJCryxE5Qz1DWww6EOFotvaiCp6T
 fm+KNqka2JkfjYqdtkDwy1A60Tpl6JI5uXeuyQQ4=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9HCQEJp075376
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Oct 2019 07:26:14 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 17
 Oct 2019 07:26:06 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 17 Oct 2019 07:26:13 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9HCPxNc073246;
 Thu, 17 Oct 2019 07:26:12 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <linux-crypto@vger.kernel.org>, <ard.biesheuvel@linaro.org>
Subject: [PATCH 07/10] crypto: omap-aes-gcm: fix corner case with only auth
 data
Date: Thu, 17 Oct 2019 15:25:46 +0300
Message-ID: <20191017122549.4634-8-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191017122549.4634-1-t-kristo@ti.com>
References: <20191017122549.4634-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_052621_109646_51E1D30D 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix a corner case where only authdata is generated, without any provided
assocdata / cryptdata. Passing the empty scatterlists to OMAP AES core driver
in this case would confuse it, failing to map DMAs.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/crypto/omap-aes-gcm.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/crypto/omap-aes-gcm.c b/drivers/crypto/omap-aes-gcm.c
index 9bbedbccfadf..dfd4d1cac421 100644
--- a/drivers/crypto/omap-aes-gcm.c
+++ b/drivers/crypto/omap-aes-gcm.c
@@ -148,12 +148,14 @@ static int omap_aes_gcm_copy_buffers(struct omap_aes_dev *dd,
 	if (req->src == req->dst || dd->out_sg == sg_arr)
 		flags |= OMAP_CRYPTO_FORCE_COPY;
 
-	ret = omap_crypto_align_sg(&dd->out_sg, cryptlen,
-				   AES_BLOCK_SIZE, &dd->out_sgl,
-				   flags,
-				   FLAGS_OUT_DATA_ST_SHIFT, &dd->flags);
-	if (ret)
-		return ret;
+	if (cryptlen) {
+		ret = omap_crypto_align_sg(&dd->out_sg, cryptlen,
+					   AES_BLOCK_SIZE, &dd->out_sgl,
+					   flags,
+					   FLAGS_OUT_DATA_ST_SHIFT, &dd->flags);
+		if (ret)
+			return ret;
+	}
 
 	dd->in_sg_len = sg_nents_for_len(dd->in_sg, alen + clen);
 	dd->out_sg_len = sg_nents_for_len(dd->out_sg, clen);
@@ -287,8 +289,12 @@ static int omap_aes_gcm_handle_queue(struct omap_aes_dev *dd,
 		return err;
 
 	err = omap_aes_write_ctrl(dd);
-	if (!err)
-		err = omap_aes_crypt_dma_start(dd);
+	if (!err) {
+		if (dd->in_sg_len && dd->out_sg_len)
+			err = omap_aes_crypt_dma_start(dd);
+		else
+			omap_aes_gcm_dma_out_callback(dd);
+	}
 
 	if (err) {
 		omap_aes_gcm_finish_req(dd, err);
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
