Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7E7120193
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:56:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XRYLUsGy5l3KAvwZcNFXdVZiiQpUOBcUQwUutcKr3s=; b=tuPUm+AaMdOxws
	LyPq7CmOp5PN+/Tt7PqkBDqDYxSGGM9jCwqZFKtgTuxEG9koaGHBaNnJkKmWRruzc1KaPJfn6Jxuu
	qCgym2eWE4b5kfRA5R7d72vha5TMLZDlkEYuVQir0Rq28o9Qcx2Qz1/s6cgGjvYz88+BShFnQ4POt
	xxh1yZYSNSPUh35jwEycPb6e1yu56cIs7NKb9QnrQVLIFQNt/XH4vgA0V98XpLrnRE6lxWOQ7jT2M
	GkBsL6jTUk8SMmd//7wF1aX90H8A/wGNghANQhfB5BB/hDGC5jRhqhJ0p+BdDys8P8hFklwUyUd9a
	nD3dTRbdOjjet7pm+//w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ign6u-0005MM-D4; Mon, 16 Dec 2019 09:56:16 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ign6i-0005Kl-Lv
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:56:06 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBG9u0Yx105981;
 Mon, 16 Dec 2019 03:56:00 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576490160;
 bh=6fpvrXJ83jkqpt127njJSVIBYoo3/59w/XSU+W0RtjE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=NKlrK6FAlZIywRYsmE4sw/16bzggCzHeGDwwldI39Hdp7S90tAciZ/h6bu4/1rxNa
 RAz6bnpPEBZX+XHfhoYUI8V2Cc2UUIx2O0W+bMmZVEwv7e1CWuLDIrtbj4wEkeoEfR
 y2qcPmhmzNzlUyTM4+aq2e3p7s/niGMY1vT8bBis=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBG9u0fu048706
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 16 Dec 2019 03:56:00 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Dec 2019 03:55:59 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Dec 2019 03:55:59 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBG9tsJK084408;
 Mon, 16 Dec 2019 03:55:57 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Anil Varughese <aniljoy@cadence.com>,
 Roger Quadros <rogerq@ti.com>, Jyri Sarha <jsarha@ti.com>
Subject: [PATCH v4 01/14] dt-bindings: phy: Sierra: Add bindings for Sierra in
 TI's J721E
Date: Mon, 16 Dec 2019 15:26:59 +0530
Message-ID: <20191216095712.13266-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191216095712.13266-1-kishon@ti.com>
References: <20191216095712.13266-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_015604_798105_88338310 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT binding documentation for Sierra PHY IP used in TI's J721E
SoC.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/phy/phy-cadence-sierra.txt  | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.txt b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.txt
index 6e1b47bfce43..03f5939d3d19 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.txt
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.txt
@@ -2,21 +2,24 @@ Cadence Sierra PHY
 -----------------------
 
 Required properties:
-- compatible:	cdns,sierra-phy-t0
-- clocks:	Must contain an entry in clock-names.
-		See ../clocks/clock-bindings.txt for details.
-- clock-names:	Must be "phy_clk"
+- compatible:	Must be "cdns,sierra-phy-t0" for Sierra in Cadence platform
+		Must be "ti,sierra-phy-t0" for Sierra in TI's J721E SoC.
 - resets:	Must contain an entry for each in reset-names.
 		See ../reset/reset.txt for details.
 - reset-names:	Must include "sierra_reset" and "sierra_apb".
 		"sierra_reset" must control the reset line to the PHY.
 		"sierra_apb" must control the reset line to the APB PHY
-		interface.
+		interface ("sierra_apb" is optional).
 - reg:		register range for the PHY.
 - #address-cells: Must be 1
 - #size-cells:	Must be 0
 
 Optional properties:
+- clocks:		Must contain an entry in clock-names.
+			See ../clocks/clock-bindings.txt for details.
+- clock-names:		Must contain "cmn_refclk_dig_div" and
+			"cmn_refclk1_dig_div" for configuring the frequency of
+			the clock to the lanes. "phy_clk" is deprecated.
 - cdns,autoconf:	A boolean property whose presence indicates that the
 			PHY registers will be configured by hardware. If not
 			present, all sub-node optional properties must be
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
