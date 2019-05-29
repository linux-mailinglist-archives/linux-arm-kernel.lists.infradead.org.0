Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FA72E726
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 23:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fYHMLBvyxaQdH4/HjS4UJnZ6FrXXl4/XAw/56SvbLqA=; b=gWqNy5XkllbtCs
	T1lcoQlfbitMOFNNTz6zNHksnTpRv99OHwuesvW+mQkB4lcYKVKpwExYdrFBOhHRkycfQmTqc/NOB
	ldeRHAUWXPuURByo+avJy6W3gnfsuMQU+SkRPHXyG9adh5O6JJebhpXn9kc8F0eKUBQPWbzy1ORcg
	00HwOpqXnUjW8Nx1PjrbybyETLym+6lE0MuPd9WbmY/npPFrPI+pzz7U36KVbJMEB9iBs2BM4jiIs
	AAEmQW30M/6vmdwehpRZfHnpb9qfbsK4Is4B4K5wXP6Ug9CEImyLPYC5pHH13erdkc74TqWsqIjPw
	2Hc8m7fyB6L8D+8tDyvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5tY-0005Ny-4Y; Wed, 29 May 2019 21:14:00 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5tR-0005NK-6h
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 21:13:54 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4TLDnc3011365;
 Wed, 29 May 2019 16:13:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559164429;
 bh=UtfU/8233aUmiqr/3DAdlqIZFtCoTeyL2Sth6JDKYVY=;
 h=From:To:CC:Subject:Date;
 b=hrzvBo3kTOZd3dPKYEcsPSf9u+AYiOc/9/Y8FWHPrfeH775H9jeTU4tTWJ1XA2Gm3
 bunCbkZ4wRRu115eAwbK+Mh22QoLTkz2QVHy2xLcAmucSi8oyzWfyCgplznAaPd98G
 AFj+TB6BEHwAaRqT7Q9hvcrIeSxR5MFcJi7LrWJI=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4TLDnDI016010
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 29 May 2019 16:13:49 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 29
 May 2019 16:13:49 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 29 May 2019 16:13:49 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4TLDnEu015680;
 Wed, 29 May 2019 16:13:49 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x4TLDnm04056; 
 Wed, 29 May 2019 16:13:49 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am65: Add MSMC RAM ranges in interconnect
 node
Date: Wed, 29 May 2019 16:13:44 -0500
Message-ID: <20190529211344.18014-1-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_141353_320342_90628C7E 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Roger Quadros <rogerq@ti.com>

Add the MSCM RAM address space to the ranges property of the cbass_main
interconnect node so that the addresses can be translated properly.

This fixes the probe failure in the sram driver for the MSMC RAM node.

Signed-off-by: Roger Quadros <rogerq@ti.com>
Signed-off-by: Suman Anna <s-anna@ti.com>
---

The following error message is seen without this:
[    0.480261] sram interconnect@100000:sram@70000000: found no memory resource
[    0.487497] sram: probe of interconnect@100000:sram@70000000 failed with error -22

regards
Suman

 arch/arm64/boot/dts/ti/k3-am65.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
index 50f4be2047a9..68b3f954f1d1 100644
--- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
@@ -68,6 +68,7 @@
 			 <0x00 0x00900000 0x00 0x00900000 0x00 0x00012000>, /* serdes */
 			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0af02400>, /* Most peripherals */
 			 <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>, /* MAIN NAVSS */
+			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00200000>, /* MSMC SRAM */
 			 /* MCUSS Range */
 			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
 			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
