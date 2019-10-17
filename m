Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE3ADAC3A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dmwO0YqUfxllphHeNH460hNHEM2m3+kEZzx1saZoQ0M=; b=lYs5m0JL5agSYc
	n28LQyjB6un1yGmhiRQPJq+Yn8n84Rvpc6XrZ8jr8VrUph2yUT8nl85LeD4K36BNn1YqpQKa9Xy3u
	ZEHiqueeeoDSeAZgdR1rY7kK0oz7DxCTHvEOW+9t68uFZ4PJkcENFIEFs+lKgpr7prHItq6HBENSQ
	wipVNXy/ibzJd9wJPTHxumMatwA+YWU+K8FIRZgOaT+tFIYt+v15PbOL6ygZWxprfE1MQebzb9o/V
	PLmNZPcu+Yh9NzHNgEZ/WHOfZULuzkILH16wIrrA8MMRl5ROijDsmiGmj0qZfdGHSIomQSHhMOfWF
	RzrMX6/GNGPw7jJNJ+Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4uM-0003ra-C7; Thu, 17 Oct 2019 12:29:34 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4rO-00011B-8V
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:26:33 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9HCQJRg086571;
 Thu, 17 Oct 2019 07:26:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571315179;
 bh=yP6xPhlj18H6iTp8pG1xyYarjc/HONgaPVPk1rzTYts=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=cN6IGpc12pN5UdK4ufEN2GnQgH13Wcv/dQ6DBb9a4U/7U3rg4+mKlASdX1hQPxroJ
 J4GvqO5QsBgTDcJJgVVJjQ1EINcbOnyg+NIBJmot4lk7/wOAXPEDDeT4MeSJ3pDRAm
 UrrLPy95a1RSDS1zTIRuCh2zg7gVWTY3iRJpCSDk=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9HCQJMt118129;
 Thu, 17 Oct 2019 07:26:19 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 17
 Oct 2019 07:26:19 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 17 Oct 2019 07:26:11 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9HCPxNf073246;
 Thu, 17 Oct 2019 07:26:17 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <linux-crypto@vger.kernel.org>, <ard.biesheuvel@linaro.org>
Subject: [PATCH 10/10] crypto: omap-aes: fixup aligned data cleanup
Date: Thu, 17 Oct 2019 15:25:49 +0300
Message-ID: <20191017122549.4634-11-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191017122549.4634-1-t-kristo@ti.com>
References: <20191017122549.4634-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_052630_693462_51E37286 
X-CRM114-Status: GOOD (  11.44  )
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

Aligned data cleanup is using wrong pointers in the cleanup calls. Most
of the time these are right, but can cause mysterious problems in some
cases. Fix to use the same pointers that were used with the align call.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/crypto/omap-aes.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/omap-aes.c b/drivers/crypto/omap-aes.c
index c40876353b19..649abbc92fd4 100644
--- a/drivers/crypto/omap-aes.c
+++ b/drivers/crypto/omap-aes.c
@@ -502,10 +502,10 @@ static void omap_aes_done_task(unsigned long data)
 		omap_aes_crypt_dma_stop(dd);
 	}
 
-	omap_crypto_cleanup(dd->in_sgl, NULL, 0, dd->total_save,
+	omap_crypto_cleanup(dd->in_sg, NULL, 0, dd->total_save,
 			    FLAGS_IN_DATA_ST_SHIFT, dd->flags);
 
-	omap_crypto_cleanup(&dd->out_sgl, dd->orig_out, 0, dd->total_save,
+	omap_crypto_cleanup(dd->out_sg, dd->orig_out, 0, dd->total_save,
 			    FLAGS_OUT_DATA_ST_SHIFT, dd->flags);
 
 	/* Update IV output */
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
