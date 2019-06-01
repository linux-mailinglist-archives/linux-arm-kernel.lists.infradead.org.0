Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9586631B6C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 12:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEuqLbAZzNJsLI0I+8wWq9PzDGgCj87I7PlugwdvA8A=; b=mqpMIHdRBT66V2
	gfD2qjxDiaoHWtXB1PhsRWlheMiDj5yZEgBN3HGfsXAh93F9Sh7MaO21rcuHDEd76ZWjz6T1MFpIu
	gSc9wDOZrMIvXoKjdKDu5DuPpx/eruwfyCV60wRa5CvbWbNbeqT43aWd6e17ndPtoj+c61K9bo8r2
	L7LHmkorS/qf3bpUtusacaA4AiaM7u0gZlL1paQFLJzQ07R9VRf9gQELHgjoLCsfbWrIPSynND+Zo
	Y3k8a3Exb7feJokU9mN4n3k9/SAp/w8iZomcnSB+1RYAPLyV+jxRkaY69Srg/hg0uLg+nsBYwlnH/
	MZSMDkqvwpFDFb5sROaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX1XY-00074N-DX; Sat, 01 Jun 2019 10:47:08 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX1X5-0006cV-7e
 for linux-arm-kernel@bombadil.infradead.org; Sat, 01 Jun 2019 10:46:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R9/ML2By2Vb9VJ9ig9TmuZ+7bbZ0eArmGw/7g8VKZyU=; b=FiXF7puSLedCqBDKvPD0jvq/o
 PqqIa3Lw6Gheu5QoEEYbhKa4NaVANasL85LHWiQ2vUbeBdCGeY3BzGJ5Bi9+47vdx+yFP9H6h1Nfm
 i15YJbwq4Sk3t+xbdLo4f4ga9gXK37SUiSCW67VRfXbH+zZHGGhCCzcnUOd+bryqFddHc41jTXFub
 R/ktkwnPZycZClnsdDoQvGRhJBfwFpzoibxA5TKoSSuVFhKugIn4KR5tXsSspN6Ahw4XSdQeWRHzG
 W2EtwVI16x3/iMsF6cEWEwTdMvyd7Bz6djeNQIK9FWXN9G8wiBZCJTRHDz45jJAlbZDrISMBaYrYe
 mR80mHPaw==;
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX1X1-000134-1y
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 10:46:37 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x51AkSNN017493;
 Sat, 1 Jun 2019 05:46:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559385988;
 bh=R9/ML2By2Vb9VJ9ig9TmuZ+7bbZ0eArmGw/7g8VKZyU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Rqoy4yQqfntNV9wn3oF6xv29w7Ux9/NJrwavUei1ZYfx0XgsJrHpsUusM5ui/A5yp
 m4mYMvTae3+6MSxgDO3XTucl9doHbecbMzUQuoNMNce3jcealcA2HVHQrHIEn99XBE
 UJrnO6hsxrGLy3kxjLmoDrp0/vBbYRF4YjbawMVQ=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x51AkS36037265
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 1 Jun 2019 05:46:28 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sat, 1 Jun
 2019 05:46:27 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sat, 1 Jun 2019 05:46:27 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x51AkQms077729;
 Sat, 1 Jun 2019 05:46:27 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Santosh Shilimkar
 <ssantosh@kernel.org>, Richard Cochran <richardcochran@gmail.com>, Rob
 Herring <robh+dt@kernel.org>
Subject: [PATCH net-next 06/10] ARM: dts: k2e-clocks: add input ext. fixed
 clocks tsipclka/b
Date: Sat, 1 Jun 2019 13:45:30 +0300
Message-ID: <20190601104534.25790-7-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190601104534.25790-1-grygorii.strashko@ti.com>
References: <20190601104534.25790-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_114635_328182_FC85AAB1 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Wingman Kwok <w-kwok2@ti.com>, netdev@vger.kernel.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add set of fixed, external input clocks definitions for TSIPCLKA, TSIPCLKB
clocks. Such clocks can be used as reference clocks for some HW modules (as
cpts, for example) by configuring corresponding clock muxes. For these
clocks real frequencies have to be defined in board files.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 arch/arm/boot/dts/keystone-k2e-clocks.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/keystone-k2e-clocks.dtsi b/arch/arm/boot/dts/keystone-k2e-clocks.dtsi
index f7592155a740..cf30e007fea3 100644
--- a/arch/arm/boot/dts/keystone-k2e-clocks.dtsi
+++ b/arch/arm/boot/dts/keystone-k2e-clocks.dtsi
@@ -71,4 +71,24 @@ clocks {
 		reg-names = "control", "domain";
 		domain-id = <29>;
 	};
+
+	/*
+	 * Below are set of fixed, input clocks definitions,
+	 * for which real frequencies have to be defined in board files.
+	 * Those clocks can be used as reference clocks for some HW modules
+	 * (as cpts, for example) by configuring corresponding clock muxes.
+	 */
+	tsipclka: tsipclka {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <0>;
+		clock-output-names = "tsipclka";
+	};
+
+	tsipclkb: tsipclkb {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <0>;
+		clock-output-names = "tsipclkb";
+	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
