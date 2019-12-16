Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9902A1219ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 20:30:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vRkEZo6bealjtO7IGHZvES5isNPFqdq1NKPmzhxz2mA=; b=aCPP39HhGlznnL
	hOqZYHOI+wTaDUd56qQBE1VfySI10sClbZu6eAPSYtCBPU7zjmHgb4ft+wal2UN8z6nKemwc2CtA6
	7TY2RFKoD+C6uG9HVpCyil602Q7JpC+dBFm1bPuSII8ts3UEynTwd9+LbgCmHGltE6fVJXYgN3H5w
	GilMUBjI2wCZ7rpj5Oofx8/6rYAfg/CzZmvueddyFXHE1ZiaelVVjBxBIyEnm2wGy5ZlwgRcYurQc
	b2dDz83ri/fjMZDXO77THw0cbQGC0X+2m0sNqOnV9cD5Du48a+3T3AtgjkAWmpfD+7ZW7x3VS/jKv
	b9VJg2CSQLHqZiwgRcVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igw4e-0008H6-Mk; Mon, 16 Dec 2019 19:30:32 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igw4W-0008Gk-VA
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 19:30:26 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBGJULvU046852;
 Mon, 16 Dec 2019 13:30:21 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576524621;
 bh=dSfhtkR87DyqUv4DqxoqOVaAaHUJOoEd9aHCeG3B9m8=;
 h=From:To:CC:Subject:Date;
 b=sWB7KMcUlkiVfXJN5vBEGzUJJU7iI2ev4g0mjGCoP4JnZcTKbdD6j5AAAGf9pOEGX
 Gvs9ey3+1zoBa7vvJYxd90XIp3HbNAuEKtT4tTbI9n6Z3+OD2uxXCId3at0lhnSfvp
 uI2n0wxmRdwqhhaWK61elP2IUJBcDejYlLJ7nfeE=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBGJUJtV031415;
 Mon, 16 Dec 2019 13:30:19 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Dec 2019 13:30:19 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Dec 2019 13:30:19 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBGJUIiE077781;
 Mon, 16 Dec 2019 13:30:18 -0600
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>, <devicetree@vger.kernel.org>
Subject: [PATCH] ARM: dts: omap3: name mdio node properly
Date: Mon, 16 Dec 2019 21:30:22 +0200
Message-ID: <20191216193022.30201-1-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_113025_109418_A0508843 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename davinci_mdio DT node "ethernet"->"mdio"
This fixes the following DT schemas check errors:
am3517-craneboard.dt.yaml: ethernet@5c030000: $nodename:0: 'ethernet@5c030000' does not match '^mdio(@.*)?'

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 arch/arm/boot/dts/am3517.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/am3517.dtsi b/arch/arm/boot/dts/am3517.dtsi
index 76f819f4ba48..84e13778a64a 100644
--- a/arch/arm/boot/dts/am3517.dtsi
+++ b/arch/arm/boot/dts/am3517.dtsi
@@ -74,7 +74,7 @@
 			clock-names = "ick";
 		};
 
-		davinci_mdio: ethernet@5c030000 {
+		davinci_mdio: mdio@5c030000 {
 			compatible = "ti,davinci_mdio";
 			ti,hwmods = "davinci_mdio";
 			status = "disabled";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
