Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CA2DAC14
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Duah/ozz+jMzVlQlOYuW4BRk7P8oCf2ToZoPSZLZdMU=; b=Gr+ZyNTAMVQohh
	0G5RcAWhb+4WoZSvk+PBOhU3Mc7d/t1jUpHerGnMPB5BWRmAhfjq9V6VDoO54b9REAMnW2SZLLTT2
	HrxWXNS0+LaRgW5Kt3DkqUqoV+jtBCyx28dw6Xv3RF06sepknnmZGOKQIhsf2BDalBEr489rPdWK/
	mAGPhJaXJ9Shcb9AiY+3rmgE8afWiT9D3WZe/ICoxuulCVdAXif+CYJqKrTH0vHD+0XbPPm1In66v
	qmywMOQFSZO/nr/UcFjyP55ZTrv3Ct4Bg1HwAPsI4m4wjxIj0wGrGmqzqEIyBYo+sAR08RJicteEu
	6ee1uu3OF5I2waUk+2Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4sI-0001Vv-7Y; Thu, 17 Oct 2019 12:27:26 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4r9-0000p8-SQ
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:26:17 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9HCQ9Np091673;
 Thu, 17 Oct 2019 07:26:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571315169;
 bh=1IRzEhXkaYpuIR4HmS/s7juXRRsv8nh6YnuqSdpL4Qk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=fhD5zpvDS9/guAnZ5cGequwye8WSGKLygZSLXFVoJ4Ih4qJn10f+oHoSIWm6XTYwP
 FFmdp8vFeegu2Sp/ydIxCwbVe+jsS2SqshxxW2VkuFbLOLCDXhRCFdyVQFeo3PvSzI
 RouXBoOA0oLZG8y2/DTdM6CizN2N73ln+pDgauM8=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9HCQ8vo039332
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Oct 2019 07:26:08 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 17
 Oct 2019 07:26:00 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 17 Oct 2019 07:26:00 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9HCPxNZ073246;
 Thu, 17 Oct 2019 07:26:07 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <linux-crypto@vger.kernel.org>, <ard.biesheuvel@linaro.org>
Subject: [PATCH 04/10] crypto: omap-des: add IV output handling
Date: Thu, 17 Oct 2019 15:25:43 +0300
Message-ID: <20191017122549.4634-5-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191017122549.4634-1-t-kristo@ti.com>
References: <20191017122549.4634-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_052616_011946_FB546D88 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

Currently omap-des driver does not copy end result IV out at all. This
is evident with the additional checks done at the crypto test manager.
Fix by copying out the IV values from HW.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/crypto/omap-des.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/crypto/omap-des.c b/drivers/crypto/omap-des.c
index 4c4dbc2b377e..ea82d55ea8c3 100644
--- a/drivers/crypto/omap-des.c
+++ b/drivers/crypto/omap-des.c
@@ -597,6 +597,7 @@ static int omap_des_crypt_req(struct crypto_engine *engine,
 static void omap_des_done_task(unsigned long data)
 {
 	struct omap_des_dev *dd = (struct omap_des_dev *)data;
+	int i;
 
 	pr_debug("enter done_task\n");
 
@@ -615,6 +616,11 @@ static void omap_des_done_task(unsigned long data)
 	omap_crypto_cleanup(&dd->out_sgl, dd->orig_out, 0, dd->total_save,
 			    FLAGS_OUT_DATA_ST_SHIFT, dd->flags);
 
+	if ((dd->flags & FLAGS_CBC) && dd->req->iv)
+		for (i = 0; i < 2; i++)
+			((u32 *)dd->req->iv)[i] =
+				omap_des_read(dd, DES_REG_IV(dd, i));
+
 	omap_des_finish_req(dd, 0);
 
 	pr_debug("exit\n");
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
