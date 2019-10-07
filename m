Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9374CCE1BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLdQyfPaxHp6YItl0P8FQ0diblKKvtiJBCKsDMSMzY0=; b=mylz2CJGVXRUGa
	vMwBLbyAWTuNcooxeaqV4X1KEVYzKcFLJWMl48HZlNFBIF8Z+OQQSvWGoUHcrDpCY9k2WbrARTnM4
	SgIG5FIamPbdTULjJsXIVDis2PS10aCm/DQKuOUPmggsCSSLtb9wG8NisnzTnUonTMsNIMrJSAsBd
	wBVWm0J2x+1gw3B1lSWqUiUELJ9McjJFMKBtatgB41mHEyndKqh/Yf515LQPC/Ea7RMyJooRMw+Qq
	aJqprJ6QHxEc9EBJOiIdWiSZmEn7j7VUCdbH9jmVHxuzlCBqb2FLfCEFodl8tuISa2ocQtJ6HcJ7Y
	ah/e6IeUvyEFUyEX0w6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSA3-00077S-QF; Mon, 07 Oct 2019 12:30:47 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHS91-0005Q1-8n
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:29:46 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x97CTbKe092218;
 Mon, 7 Oct 2019 07:29:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570451377;
 bh=CrweeoqDBqIdn3s+o5LCr5A3MF6tfykZWffRhUe50/g=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=OK4Dc0eUBmyvrqDlw7uFj8IcMEebY8TMr9dWBEwXLAz/CfxdX+7CF7NTtX4x8eZTN
 SW/lijT6g6/ZKkqDqPsuSXum08+EOKNrgMK5Ugy+D8MOxMsJ8NSuyuxzFOubAt/KxU
 PVrFemc+rF3lSc9S90B4royxzaVlRsNNddO37U9U=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x97CTbDL085408
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 7 Oct 2019 07:29:37 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 7 Oct
 2019 07:29:34 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 7 Oct 2019 07:29:34 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x97CTYe6066760;
 Mon, 7 Oct 2019 07:29:36 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 1/3] bus: ti-sysc: re-order reset and main clock controls
Date: Mon, 7 Oct 2019 15:29:29 +0300
Message-ID: <20191007122931.18668-2-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007122931.18668-1-t-kristo@ti.com>
References: <20191007122931.18668-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_052943_391771_A4EF32FF 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

The main clocks and reset controls have a hardware level dependency,
where one can't transition state without the other one transitioning.
Because we don't have the dependency implemented in software, we must
ensure the ordering of these two is done properly; they way this is
handled is that clocks transition on software level without delay,
and the status is only polled on reset side. Because of this, we must
re-order the main clock and reset handling on the ti-sysc driver.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/bus/ti-sysc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
index 193d8b23d54d..c9d01e2d3a64 100644
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1032,8 +1032,6 @@ static int __maybe_unused sysc_runtime_resume_legacy(struct device *dev,
 	struct ti_sysc_platform_data *pdata;
 	int error;
 
-	reset_control_deassert(ddata->rsts);
-
 	pdata = dev_get_platdata(ddata->dev);
 	if (!pdata)
 		return 0;
@@ -1046,6 +1044,8 @@ static int __maybe_unused sysc_runtime_resume_legacy(struct device *dev,
 		dev_err(dev, "%s: could not enable: %i\n",
 			__func__, error);
 
+	reset_control_deassert(ddata->rsts);
+
 	return 0;
 }
 
@@ -1099,8 +1099,6 @@ static int __maybe_unused sysc_runtime_resume(struct device *dev)
 
 	sysc_clkdm_deny_idle(ddata);
 
-	reset_control_deassert(ddata->rsts);
-
 	if (sysc_opt_clks_needed(ddata)) {
 		error = sysc_enable_opt_clocks(ddata);
 		if (error)
@@ -1111,6 +1109,8 @@ static int __maybe_unused sysc_runtime_resume(struct device *dev)
 	if (error)
 		goto err_opt_clocks;
 
+	reset_control_deassert(ddata->rsts);
+
 	if (ddata->legacy_mode) {
 		error = sysc_runtime_resume_legacy(dev, ddata);
 		if (error)
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
