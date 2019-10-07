Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FC6CE1B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:30:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Du+G5eSGAxGkJMeKOHkRlIAWfnhDXcYvK3cOR2Ayl28=; b=JUmg7WnMmUqbkm
	0RJFA8sS4KqBxbN4zOk6i+ByjVpct1AlGiDn7JLdXW34/YsE6cOfdb/HDa2nfecmaTIerILLydAm0
	7PJVbKjos4VQMKmzFADR9shBVTY4LQ8SMoW0ykleQx5FsqCofaPrhRvUAlMsgHELIlan/GIuKKRr3
	SeRx2P62zkQwbXW7qgTX3HGGlWbI7UZuRt6mPTs6tv/MyLJS005n/2o+ZpwtZff+hET1Rf+p2r4bk
	rHCdnw5v8RXblw+ZaQE31EzLdgA0H0JNiDB4BvQsZOAa7bam31WBofppzYUG4ASQ5TSTIpV7sD6C9
	Wb72e2EPykcdQgKiLiPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHS9D-0005Rf-Sx; Mon, 07 Oct 2019 12:29:55 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHS90-0005QH-UV
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:29:44 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x97CTeXE023818;
 Mon, 7 Oct 2019 07:29:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570451380;
 bh=Fw2h1o3Q27rAtV1ZBgNrh1rdPKvZXkA0SznxBk2nGYI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=MixkhmX43tUUry6e993e/Yco947fJbi1rMC19OF9pm5/zSujPfcpwYBOoHGq2mrHX
 6dOraZqOcNC6kfF8l+Dlg8/rT9RB/puZgb+vd9qAp9uU6Pk5QLGXIYoJ9qYo75QZTE
 sGwGGDT5Vd1tth1czc4GIM36ceSFNRl67fBHkI30=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x97CTdwq069570
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 7 Oct 2019 07:29:40 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 7 Oct
 2019 07:29:37 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 7 Oct 2019 07:29:39 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x97CTYe8066760;
 Mon, 7 Oct 2019 07:29:38 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 3/3] bus: ti-sysc: avoid toggling power state of module during
 probe
Date: Mon, 7 Oct 2019 15:29:31 +0300
Message-ID: <20191007122931.18668-4-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007122931.18668-1-t-kristo@ti.com>
References: <20191007122931.18668-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_052943_073495_1EBD63BF 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current implementation for ti-sysc powers down the module once module
init is complete. However, right after power is disabled, it is enabled
via runtime PM. This is unnecessary so avoid it by re-ordering the
events a bit; move powering down of the module post runtime PM enable
which makes sure the use counts are maintained properly and there is
no extra power down/up sequence for the module.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/bus/ti-sysc.c | 32 +++++++++++++++++++-------------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
index 6f392469d5b0..5b69457fa857 100644
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1580,11 +1580,6 @@ static int sysc_reset(struct sysc *ddata)
 static int sysc_init_module(struct sysc *ddata)
 {
 	int error = 0;
-	bool manage_clocks = true;
-
-	if (ddata->cfg.quirks &
-	    (SYSC_QUIRK_NO_IDLE | SYSC_QUIRK_NO_IDLE_ON_INIT))
-		manage_clocks = false;
 
 	error = sysc_clockdomain_init(ddata);
 	if (error)
@@ -1617,28 +1612,32 @@ static int sysc_init_module(struct sysc *ddata)
 	if (ddata->legacy_mode) {
 		error = sysc_legacy_init(ddata);
 		if (error)
-			goto err_main_clocks;
+			goto err_reset;
 	}
 
 	if (!ddata->legacy_mode) {
 		error = sysc_enable_module(ddata->dev);
 		if (error)
-			goto err_main_clocks;
+			goto err_reset;
 	}
 
 	error = sysc_reset(ddata);
 	if (error)
 		dev_err(ddata->dev, "Reset failed with %d\n", error);
 
-	if (!ddata->legacy_mode && manage_clocks)
+	if (error && !ddata->legacy_mode)
 		sysc_disable_module(ddata->dev);
 
+err_reset:
+	if (error && !(ddata->cfg.quirks & SYSC_QUIRK_NO_RESET_ON_INIT))
+		reset_control_assert(ddata->rsts);
+
 err_main_clocks:
-	if (manage_clocks)
+	if (error)
 		sysc_disable_main_clocks(ddata);
 err_opt_clocks:
 	/* No re-enable of clockdomain autoidle to prevent module autoidle */
-	if (manage_clocks) {
+	if (error) {
 		sysc_disable_opt_clocks(ddata);
 		sysc_clkdm_allow_idle(ddata);
 	}
@@ -2411,9 +2410,16 @@ static int sysc_probe(struct platform_device *pdev)
 		goto unprepare;
 	}
 
-	/* Balance reset counts */
-	if (ddata->rsts)
-		reset_control_assert(ddata->rsts);
+	/* Balance use counts as PM runtime should have enabled these all */
+	if (!(ddata->cfg.quirks & SYSC_QUIRK_NO_RESET_ON_INIT))
+		reset_control_assert(ddata->rsts);
+
+	if (!(ddata->cfg.quirks &
+	      (SYSC_QUIRK_NO_IDLE | SYSC_QUIRK_NO_IDLE_ON_INIT))) {
+		sysc_disable_main_clocks(ddata);
+		sysc_disable_opt_clocks(ddata);
+		sysc_clkdm_allow_idle(ddata);
+	}
 
 	sysc_show_registers(ddata);
 
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
