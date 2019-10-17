Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC329DAC32
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C4QfH4oQMcelU1/OFs5vOeSA+noqbU4QXYnlEfX3dJ8=; b=YmGmvj0bHsAT2J
	thN0ASKk7wdp5+hJumYWNyr01Rft2z5zrLvXD8WahjsPH6dagskKw4QB49KVchcMuCAabKdr6bjIN
	DJtUbIjrHMiqyQ6Dt6NHdr3b+QiFUkMfNn8+yWhLdQDWZFH/HUYLSEO2rQaV8RBwNBjeR0XAWTIaf
	Sslecz/GxQV5o+hLt+A2TR10Eg/rVAYkdUs61L5larc0xQuL5JOQ1BTRuHHv4HLDoPoWhVn0jgfWY
	ANqlwdbhEwe1I/ju6IHk9YpHlPoZrdRG+57sVJj9fiPj2kA4w8imvTf7wRgRuay2XqeGTivC57kCL
	W1qtOaHFML+i7R+rWDVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4tJ-0002Yf-25; Thu, 17 Oct 2019 12:28:29 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4rE-0000tk-Mt
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:26:22 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9HCQDsH086521;
 Thu, 17 Oct 2019 07:26:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571315173;
 bh=gf7Wxfh77f7HHA3L8Iq0WB8JJs92egQOvoT79mDTzZI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=rUqYVpjOwrHoanumGzo0DLMjJiI9R8hQuBSBtl5TmV4TMbNmFzW0qQL+eqe0diDLm
 2xYJOSj/HqJa0r+voyBgxVZkLINCxfakIq1rbNlk/SYiy6uir2MfDHSKl0gPfeSoT0
 TPS2NuTtUAq7ywW/SYt/MWiVbsVZn3lWDS12M1Z0=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9HCQDLM016505
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Oct 2019 07:26:13 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 17
 Oct 2019 07:26:04 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 17 Oct 2019 07:26:12 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9HCPxNb073246;
 Thu, 17 Oct 2019 07:26:10 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <linux-crypto@vger.kernel.org>, <ard.biesheuvel@linaro.org>
Subject: [PATCH 06/10] crypto: omap-sham: fix buffer handling for split test
 cases
Date: Thu, 17 Oct 2019 15:25:45 +0300
Message-ID: <20191017122549.4634-7-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191017122549.4634-1-t-kristo@ti.com>
References: <20191017122549.4634-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_052621_118378_4421E7F6 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

Current buffer handling logic fails in a case where the buffer contains
existing data from previous update which is divisible by block size.
This results in a block size of data to be left missing from the sg
list going out to the hw accelerator, ending up in stalling the
crypto accelerator driver (the last request never completes fully due
to missing data.)

Fix this by passing the total size of the data instead of the data size
of current request, and also parsing the buffer contents within the
prepare request handling.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/crypto/omap-sham.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/omap-sham.c b/drivers/crypto/omap-sham.c
index 0bf07a7c060b..e71cd977b621 100644
--- a/drivers/crypto/omap-sham.c
+++ b/drivers/crypto/omap-sham.c
@@ -740,11 +740,12 @@ static int omap_sham_align_sgs(struct scatterlist *sg,
 	struct scatterlist *sg_tmp = sg;
 	int new_len;
 	int offset = rctx->offset;
+	int bufcnt = rctx->bufcnt;
 
 	if (!sg || !sg->length || !nbytes)
 		return 0;
 
-	new_len = nbytes - offset;
+	new_len = nbytes;
 
 	if (offset)
 		list_ok = false;
@@ -763,6 +764,16 @@ static int omap_sham_align_sgs(struct scatterlist *sg,
 	while (nbytes > 0 && sg_tmp) {
 		n++;
 
+		if (bufcnt) {
+			if (!IS_ALIGNED(bufcnt, bs)) {
+				aligned = false;
+				break;
+			}
+			nbytes -= bufcnt;
+			bufcnt = 0;
+			continue;
+		}
+
 #ifdef CONFIG_ZONE_DMA
 		if (page_zonenum(sg_page(sg_tmp)) != ZONE_DMA) {
 			aligned = false;
@@ -859,7 +870,7 @@ static int omap_sham_prepare_request(struct ahash_request *req, bool update)
 	if (rctx->bufcnt)
 		memcpy(rctx->dd->xmit_buf, rctx->buffer, rctx->bufcnt);
 
-	ret = omap_sham_align_sgs(req->src, nbytes, bs, final, rctx);
+	ret = omap_sham_align_sgs(req->src, rctx->total, bs, final, rctx);
 	if (ret)
 		return ret;
 
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
