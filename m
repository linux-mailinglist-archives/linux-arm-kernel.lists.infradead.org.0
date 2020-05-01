Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9C81C1EDB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 22:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tX3L9a83b0INAzL7QDfoAmDj+1kCiVujirFOx/4Kmg4=; b=gTiJ9KmVxTLpq6
	HfU0asqkJPDoOnLMZjrsVVqWTPP1xTMZjAzTdrvpI4yEnQAvEtv7MewVhRpZsWV4oAJHYZWJrxuZd
	kwXcYHWw6bmGCIvfq6+PxE5HutR/AImh3qJwsCOtpKakjo5N3U5z0BJSAHlUNUh38oBJ32iHUe+/g
	CdFIvtUmfTYjMVyK4pljusy6IlUx+xtGTepl4vBvqLi6FUXtEsPkjBcF1Fhe+ztvCr/z1GtgdWzP6
	05v+5JW+1buOsiyE13bbrdJdwBNxq2BXOHJEDDGDKRX4K66oKNEDzj+rYRmIc628L1gPTR4Jovnnl
	CW4Ntf73Wgi9uBSXrHIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUce6-0002ek-2y; Fri, 01 May 2020 20:52:30 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUcce-0001Ll-HQ
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 20:51:02 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 041KouFD080776;
 Fri, 1 May 2020 15:50:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588366256;
 bh=LhttJw1JbjTgnmdvEPuQ5xgCDkw1lEfTeMZ9lnsUOOs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=AzWR0avdQVa+SIH4vJtK+qkZQ4OmgWJCjaJyzRMov1mHKc7E7pPJ+aq/5TDX/7mSc
 aa9FrD4umBIX6dkuHJ7w7lnKA9j7ff58oecw7Gvzs2W3wVMv4/ci8zqhHRgmNv70uY
 t8FnNWOLluMH6OaFXdnJ/K0exkWZMThpSL/KzyIU=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 041Kougc049222
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 1 May 2020 15:50:56 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 1 May
 2020 15:50:55 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 1 May 2020 15:50:55 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 041KosiP099423;
 Fri, 1 May 2020 15:50:55 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Richard Cochran <richardcochran@gmail.com>, Murali Karicheri
 <m-karicheri2@ti.com>, "David S. Miller" <davem@davemloft.net>, Rob Herring
 <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>
Subject: [PATCH net-next 7/7] arm64: dts: ti: j721e-main: add main navss cpts
 node
Date: Fri, 1 May 2020 23:50:11 +0300
Message-ID: <20200501205011.14899-8-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200501205011.14899-1-grygorii.strashko@ti.com>
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_135100_643151_6D882EBE 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, netdev@vger.kernel.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT node for Main NAVSS CPTS module.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 0b9d14b838a1..844a5b50cf09 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -254,6 +254,18 @@
 						<0x0c>; /* RX_UHCHAN */
 			ti,sci-rm-range-rflow = <0x00>; /* GP RFLOW */
 		};
+
+		cpts@310d0000 {
+			compatible = "ti,j721e-cpts";
+			reg = <0x0 0x310d0000 0x0 0x400>;
+			reg-names = "cpts";
+			clocks = <&k3_clks 201 1>;
+			clock-names = "cpts";
+			interrupts-extended = <&main_navss_intr 201 0>;
+			interrupt-names = "cpts";
+			ti,cpts-periodic-outputs = <6>;
+			ti,cpts-ext-ts-inputs = <8>;
+		};
 	};
 
 	main_pmx0: pinmux@11c000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
