Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC63337100
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXn2W2zDPRQDEvs/eROS5glL0e/476cf8SyKvHCye5E=; b=SOyZO4dy/pH0Ti
	e/BTKfofIosOdf5dmoAraTglydZ3qJeE2yf5JStsu2QrRY8/FTuMDwiJD7/CA01Wf/rvQN4lllvZ4
	helgSoYCER4Fak488x9FS4SpenhzstiJ+nufv6cCeGjeldxC/b8/49N/qsK3ElhYyD91/LeiiNDBI
	MNFoMtmSGXOuiKdV0IwjKN8/yQU9aw7FkTq4DJM5YwvOV9jBuWavpguProMK04/34kCMWswBo2RXF
	FCSSwZR36Odk67Oyok1DeBD6bfIrW0zs4ZWEZ4npR/QfsCw19h+Yk5JLLhNrmbxMR9qw+sLxF8Ki/
	ndrZqyEYJC+Kx3F5dYQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYp8D-0002k7-Ct; Thu, 06 Jun 2019 09:56:25 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYp7l-0002HI-FW
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:55:59 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x569ttIN004415;
 Thu, 6 Jun 2019 04:55:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559814955;
 bh=fqOkFgQf2asCwtN/sIi6jqXEdeCASBm4EnauDQ+LIjY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=VgcDyoJNCM3oMj8vWDEOIQdzQ6pUwspxwySGAe+2pzBRn857sU1PPUuLwOM9gGiRE
 Ojlz22eiddheBGYdmX3eS/gxrUMWKNuQy5U/tXtVIwBGeKJ5iLerFl7lfAVx9bC7bq
 Z4N8r/+xpiTkDmtTxzRNVQJJjXHTpzovq30/U9M0=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x569ttDN055598
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 6 Jun 2019 04:55:55 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 04:55:55 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 04:55:55 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x569thss016817;
 Thu, 6 Jun 2019 04:55:51 -0500
From: Keerthy <j-keerthy@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>, <robh+dt@kernel.org>
Subject: [RFC RESEND PATCH v2 2/4] arm64: dts: ti: am6-wakeup: Add gpio node
Date: Thu, 6 Jun 2019 15:26:18 +0530
Message-ID: <20190606095620.6211-3-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190606095620.6211-1-j-keerthy@ti.com>
References: <20190606095620.6211-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_025557_679603_1F8D9F8E 
X-CRM114-Status: GOOD (  10.43  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, lokeshvutla@ti.com,
 j-keerthy@ti.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add gpio0 node under wakeup domain. This has 56 gpios
and all are capable of generating banked interrupts.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
index f1ca171abdf8..9cf2c0849a24 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
@@ -74,4 +74,19 @@
 		ti,sci-dst-id = <56>;
 		ti,sci-rm-range-girq = <0x4>;
 	};
+
+	wkup_gpio0: wkup_gpio0@42110000 {
+		compatible = "ti,am654-gpio", "ti,keystone-gpio";
+		reg = <0x42110000 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&intr_wkup_gpio>;
+		interrupts = <59 128>, <59 129>, <59 130>, <59 131>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <56>;
+		ti,davinci-gpio-unbanked = <0>;
+		clocks = <&k3_clks 59 0>;
+		clock-names = "gpio";
+	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
