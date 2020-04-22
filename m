Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326201B3AFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCSRf883Cvpyzr4gRxkAK+561ndaQLiSoZ7EVJ5qIpk=; b=kC7gRGGREng65I
	vzMr0DRZ8NU4MNacRPQDC6njZuBU3iwrYt3ZSkf0R1nUI12HKmdAtkOU+iG2dFbs25zmhy9wcultV
	3d9Dtm6TSQroSjUIgI7J8q5D+nYQCoWLVIQ3qIOJsoFWqOyPACjcIkyOhmvQtdhdOr4b/H/HCQ+iD
	bHo5LEodfYKjPDmdJuZ8qcSibwp0QFAoalZgM1l/mM2A/IJpeuJGgOBPo097Cp3wCZrromvhocdMq
	y9/NyPryqLkywNdV1qCJGaD13GyZBR0Cv72lkFCKgCOP/xIwZOiLd7HJTZHDSIeG8xGo6KtCla+7v
	Jh0ryyiiqVprZb1L9ERg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBUn-0001LK-SC; Wed, 22 Apr 2020 09:16:41 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBUA-0000rv-4u
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:16:03 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03M9FwCm087485;
 Wed, 22 Apr 2020 04:15:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587546958;
 bh=BQ/cRWU4dnpOH6S1NiL/L2cnray6cYMuybskcFcQh6U=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=bZSquppgn2vJw6cmj+Eg14pCHZ6Kb4l0ahAjOeIdFMST1XBQDLAclBNeNKnJ382Tl
 uFz3cSILRn3bC76zTyHg9BdWLSUvGyOFJcX0NGtp248HxHQqoLf5QoPQmFD+IyRggc
 xivTwyDSxt6pTDPZ/EIS+4rO1gAOv1gTt9K3M8ss=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03M9Fw6u082467;
 Wed, 22 Apr 2020 04:15:58 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 22
 Apr 2020 04:15:58 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Apr 2020 04:15:58 -0500
Received: from deskari.lan (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03M9FpLM050948;
 Wed, 22 Apr 2020 04:15:56 -0500
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Jyri Sarha <jsarha@ti.com>
Subject: [PATCH 3/3] arm64: dts: ti: k3-j721e-common-proc-board: add assigned
 clks for DSS
Date: Wed, 22 Apr 2020 12:15:12 +0300
Message-ID: <20200422091512.950-3-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200422091512.950-1-tomi.valkeinen@ti.com>
References: <20200422091512.950-1-tomi.valkeinen@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_021602_273612_51110770 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DSS related clock muxes are set via assigned-clocks in a way which
provides us:

VP0 - DisplayPort SST
VP1 - DPI0
VP2 - DSI
VP3 - DPI1

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 .../dts/ti/k3-j721e-common-proc-board.dts     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index 98e5e17e3ff7..6df823aaa37c 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -472,3 +472,23 @@
 	phy-mode = "rgmii-rxid";
 	phy-handle = <&phy0>;
 };
+
+&dss {
+	/*
+	 * These clock assignments are chosen to enable the following outputs:
+	 *
+	 * VP0 - DisplayPort SST
+	 * VP1 - DPI0
+	 * VP2 - DSI
+	 * VP3 - DPI1
+	 */
+
+	assigned-clocks = <&k3_clks 152 1>,
+			  <&k3_clks 152 4>,
+			  <&k3_clks 152 9>,
+			  <&k3_clks 152 13>;
+	assigned-clock-parents = <&k3_clks 152 2>,	/* PLL16_HSDIV0 */
+				 <&k3_clks 152 6>,	/* PLL19_HSDIV0 */
+				 <&k3_clks 152 11>,	/* PLL18_HSDIV0 */
+				 <&k3_clks 152 18>;	/* PLL23_HSDIV0 */
+};
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
