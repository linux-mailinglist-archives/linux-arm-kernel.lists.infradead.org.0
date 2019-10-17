Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DE6DAC17
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dj2BSwxIYZnTwYcSHRcHtqae7Rir13CmqYjrwfxO2fA=; b=cGyRNSbjsGENeK
	zuMNlLM7JzWiBzJMlh9lQbC97mlQfssQxZhzJNcf3OAacE4itbyJkXt7qHnvTVRizoU3LgBZC474n
	x7WbZvliQquhhtcOmACqUQQme/ALcPllYDy9GZUoXkIqhF87TAw8L9dKKvKe6CqHpd9T2nJTEVb9r
	D0Pmt/reMPKvgNENnbez585Bus51lWdK3E0SHvU0/IJBTCW6wISpCo1dnzIC0ug+zOoApRjVdtfVR
	31Kmr20eQbn9RZih4WlowXOKeqyp8gcWrw9LJnlo3OXG1aadwaoeigpiBcVUfzud8p8Scn7n/kcPz
	9QspilE2h4hZw9pf+zQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4sV-0001lb-VF; Thu, 17 Oct 2019 12:27:40 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4r9-0000p3-PO
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:26:17 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9HCQ79Q037330;
 Thu, 17 Oct 2019 07:26:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571315167;
 bh=DlKZU2pnO04HoutMJq1MepcXwIlqftahdOsUH2+lg9Q=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=m12oDX5qzR3P5XZ7Dxuouu1Z1zII7fjemQbr2mXvuWzQ/xoV8E+v6pb4X+7LgJr2i
 +PS5Cba8ebWiEs/D1yoXNjOVLGnLeJZ12Q/zreJN3t5PcO/+FLYT1o8oOaXlX0DojB
 QBBU3wbI8yCAQR4DMPKWnEPWDKun8NOQkDLLoPWI=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9HCQ76I016264
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Oct 2019 07:26:07 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 17
 Oct 2019 07:25:58 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 17 Oct 2019 07:25:58 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9HCPxNY073246;
 Thu, 17 Oct 2019 07:26:05 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <linux-crypto@vger.kernel.org>, <ard.biesheuvel@linaro.org>
Subject: [PATCH 03/10] crypto: omap-aes: remove the sysfs group during driver
 removal
Date: Thu, 17 Oct 2019 15:25:42 +0300
Message-ID: <20191017122549.4634-4-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191017122549.4634-1-t-kristo@ti.com>
References: <20191017122549.4634-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_052615_907311_70CF5A71 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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

The driver removal should also cleanup the created sysfs group. If not,
the driver fails the subsequent probe as the files exist already. Also,
drop a completely unnecessary pointer assignment from the removal
function at the same time.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/crypto/omap-aes.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/omap-aes.c b/drivers/crypto/omap-aes.c
index a1fc03ed01f3..38c750e83dbe 100644
--- a/drivers/crypto/omap-aes.c
+++ b/drivers/crypto/omap-aes.c
@@ -1296,7 +1296,8 @@ static int omap_aes_remove(struct platform_device *pdev)
 	tasklet_kill(&dd->done_task);
 	omap_aes_dma_cleanup(dd);
 	pm_runtime_disable(dd->dev);
-	dd = NULL;
+
+	sysfs_remove_group(&dd->dev->kobj, &omap_aes_attr_group);
 
 	return 0;
 }
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
