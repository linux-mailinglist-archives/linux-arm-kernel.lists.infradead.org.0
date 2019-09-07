Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCE5AC500
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 08:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHjZnNcZQZ6xpI/dRD1ELKkSO27fXlcNn47dAI2QS4M=; b=XbVinZ4/TwTUxj
	AHPEkg/KRlO/mTG+WTXDLRDhf8c+r6wMjWHqxN0HCIddCe0t8EC2iq+WGTidrZZDYeG7Hu/XJayl4
	6Hw1SBYS0AKKHOOMUOpgDl/RHF90adMuW3shwNopZqfgy8JG1an6gGxhiWoY0zy3iMNRE6jPvzrO+
	s3UnMiVqBoawsqk9SHDMExbzCm2z17m+xeFs0A137LwgtAL+M/c2l9mWLsjPKO8JskjaPHTF3CdAT
	BxJ69GcuoyvzHumZUcIBpvo0z6j1Y+LVr/s9eEQAmVniredcZb/aZ9sVIu9NwbixyRHWZ1jnnT27x
	JKQIujmn+6kyhsOi5ylA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6UeK-0002bN-25; Sat, 07 Sep 2019 06:56:44 +0000
Received: from mo6-p03-ob.smtp.rzone.de ([2a01:238:20a:202:5303::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Ue7-0002Zs-Km
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 06:56:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1567839380;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=Q3Og36PsgnBdMWhYQfPSlLzKb9zKps/UuApN14KynqU=;
 b=BeqU+PZN0QzTVssbfWOxgwEfOBclH6IIBYbOUgkwe9FSPXINOjHcW2zltss+qUA1ky
 F+nS7bJSVX0sGtginopxyL6waDwcCodOyHPqPG4AVhJrw9sQetsy7YhaOzCI+1p96JWQ
 1aakt4mPeHQNMYAN2iQt2RrCcjb9vdIo03zMHvIRgpGn+AMgFJl+9vUjWPt7cEwY//No
 PQqhXLMF01HyRSv94FhdtzoUZuOKtn9+xrNF3qb+YlC07PjOw0CKmQRrPV33VtccG4Pb
 rTEcWigDM+GoP+w9qdR+bFp+vGJP6dJ7AZ3lEfvtdENb9nTJwFlUKHwgWO7Z4uayok9T
 ELQA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1mfYzBGHXL8GTntuxg="
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 44.27.0 DYNA|AUTH)
 with ESMTPSA id u036f9v876uKqXH
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sat, 7 Sep 2019 08:56:20 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 Adam Ford <aford173@gmail.com>,
 =?UTF-8?q?Andr=C3=A9=20Roth?= <neolynx@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Enric Balletbo i Serra <eballetbo@gmail.com>,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Roger Quadros <rogerq@ti.com>, Teresa Remmet <t.remmet@phytec.de>,
 "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: [PATCH 4/4] DTS: bindings: omap: update bindings documentation
Date: Sat,  7 Sep 2019 08:56:15 +0200
Message-Id: <3063019699f21e161221897e14c124a4e5366fa0.1567839375.git.hns@goldelico.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1567839375.git.hns@goldelico.com>
References: <cover.1567839375.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_235632_219936_A7DC0578 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5303:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@pyra-handheld.com, letux-kernel@openphoenux.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* clarify that we now need either "ti,omap3430" or "ti,omap3630" or "ti,am3517" for omap3 chips
* clarify that "ti,omap3" has no default
* clarify that AM33x is not an "ti,omap3"
* clarify that the list of boards is incomplete
* remove some "ti,am33xx", "ti,omap3"
* add some missing "ti,omap4"

Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 .../devicetree/bindings/arm/omap/omap.txt     | 30 +++++++++++--------
 1 file changed, 17 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/omap/omap.txt b/Documentation/devicetree/bindings/arm/omap/omap.txt
index b301f753ed2c..e77635c5422c 100644
--- a/Documentation/devicetree/bindings/arm/omap/omap.txt
+++ b/Documentation/devicetree/bindings/arm/omap/omap.txt
@@ -43,7 +43,7 @@ SoC Families:
 
 - OMAP2 generic - defaults to OMAP2420
   compatible = "ti,omap2"
-- OMAP3 generic - defaults to OMAP3430
+- OMAP3 generic
   compatible = "ti,omap3"
 - OMAP4 generic - defaults to OMAP4430
   compatible = "ti,omap4"
@@ -51,6 +51,8 @@ SoC Families:
   compatible = "ti,omap5"
 - DRA7 generic - defaults to DRA742
   compatible = "ti,dra7"
+- AM33x generic
+  compatible = "ti,am33xx"
 - AM43x generic - defaults to AM4372
   compatible = "ti,am43"
 
@@ -63,12 +65,14 @@ SoCs:
 
 - OMAP3430
   compatible = "ti,omap3430", "ti,omap3"
+  legacy: "ti,omap34xx" - please do not use any more
 - AM3517
   compatible = "ti,am3517", "ti,omap3"
 - OMAP3630
-  compatible = "ti,omap36xx", "ti,omap3"
-- AM33xx
-  compatible = "ti,am33xx", "ti,omap3"
+  compatible = "ti,omap3630", "ti,omap3"
+  legacy: "ti,omap36xx" - please do not use any more
+- AM335x
+  compatible = "ti,am33xx"
 
 - OMAP4430
   compatible = "ti,omap4430", "ti,omap4"
@@ -110,19 +114,19 @@ SoCs:
 - AM4372
   compatible = "ti,am4372", "ti,am43"
 
-Boards:
+Boards (incomplete list of examples):
 
 - OMAP3 BeagleBoard : Low cost community board
-  compatible = "ti,omap3-beagle", "ti,omap3"
+  compatible = "ti,omap3-beagle", "ti,omap3430", "ti,omap3"
 
 - OMAP3 Tobi with Overo : Commercial expansion board with daughter board
-  compatible = "gumstix,omap3-overo-tobi", "gumstix,omap3-overo", "ti,omap3"
+  compatible = "gumstix,omap3-overo-tobi", "gumstix,omap3-overo", "ti,omap3430", "ti,omap3"
 
 - OMAP4 SDP : Software Development Board
-  compatible = "ti,omap4-sdp", "ti,omap4430"
+  compatible = "ti,omap4-sdp", "ti,omap4430", "ti,omap4"
 
 - OMAP4 PandaBoard : Low cost community board
-  compatible = "ti,omap4-panda", "ti,omap4430"
+  compatible = "ti,omap4-panda", "ti,omap4430", "ti,omap4"
 
 - OMAP4 DuoVero with Parlor : Commercial expansion board with daughter board
   compatible = "gumstix,omap4-duovero-parlor", "gumstix,omap4-duovero", "ti,omap4430", "ti,omap4";
@@ -134,16 +138,16 @@ Boards:
   compatible = "variscite,var-dvk-om44", "variscite,var-som-om44", "ti,omap4460", "ti,omap4";
 
 - OMAP3 EVM : Software Development Board for OMAP35x, AM/DM37x
-  compatible = "ti,omap3-evm", "ti,omap3"
+  compatible = "ti,omap3-evm", "ti,omap3630", "ti,omap3"
 
 - AM335X EVM : Software Development Board for AM335x
-  compatible = "ti,am335x-evm", "ti,am33xx", "ti,omap3"
+  compatible = "ti,am335x-evm", "ti,am33xx"
 
 - AM335X Bone : Low cost community board
-  compatible = "ti,am335x-bone", "ti,am33xx", "ti,omap3"
+  compatible = "ti,am335x-bone", "ti,am33xx"
 
 - AM3359 ICEv2 : Low cost Industrial Communication Engine EVM.
-  compatible = "ti,am3359-icev2", "ti,am33xx", "ti,omap3"
+  compatible = "ti,am3359-icev2", "ti,am33xx"
 
 - AM335X OrionLXm : Substation Automation Platform
   compatible = "novatech,am335x-lxm", "ti,am33xx"
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
