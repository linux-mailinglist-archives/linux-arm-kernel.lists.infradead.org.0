Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB481B8102
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dsY1D1YUYg0i6IClTaku32t3H+URf1IVKVw/0v2/qOc=; b=iN97VmL8jpv1jw
	4jpGtjpWhFYAa795od+D6AVlDyUVPsH7ZQgfyT+qDoLFDXgTr/EzwxjERHI4EyBN7ihOhp1HU3sXM
	TS+RgLvZg6rYYQUEdvhyxPljvV2y6kOMgtqjHqBbvUaz6TKxd8p0j2ZSzVoVwzt0uHtfIPDkAggAt
	IUzk7e+wFrvArk5zLxLgo47kgaMWH/Z+zGD7GSWc4KLPSW1GlWg9DBPIw6yPdKdduuc9S6cn/Bc38
	IrGt443q55Pzv5IDRojcZZ6oXLLL46Di6UKKid8PrEVEGPqJRtNcJ2ZA4IBKL8yAPFkw1rfpIGIYd
	5Jo+IL7CKVuxzAsDDjwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS54h-0007rO-BL; Fri, 24 Apr 2020 20:37:27 +0000
Received: from mo6-p03-ob.smtp.rzone.de ([2a01:238:20a:202:5303::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS522-0003PZ-8c
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:34:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587760473;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=NJkNfMOfA5lIfCBn9zDVSiYTeEu3pGdb9m9YTv6wbww=;
 b=Yz1CNpPOrY225HhM76qPKTWXwPkjwu4X8+3X9bNCHc1ZZG20p0RtRNgA6C0vZO9e7B
 oGRWmFF/7H4UtmTLFWVb6yHz8FiXSy8QzCxaC92hLK+gn8Ph1u/Sts30Yc2zrzpmnXMw
 oAYnW4ISuEYUIBjMJP7xI3S3hey55BEqKREBWQH+cpIDrVb3ph5WOED9trzNActVAEiY
 ZZ9csab4ETaCygpbKIh/8T3fUZ92Pyh2a3hWl9as1IvTew9Gqdcjj2rX93f7kpGvraH1
 cLZx3IyJWtITjxq56goJn1jTtZcU1WO8LNTXumuJcdSha8LHogW7Z8uOAZF6CRJSvM6W
 Pm8Q==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1mfYzBGHXH6GK44R2FE"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw3OKYLEVC
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Fri, 24 Apr 2020 22:34:21 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Paul Cercueil <paul@crapouillou.net>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paulburton@kernel.org>,
 James Hogan <jhogan@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: [PATCH v7 04/12] ARM: DTS: omap34xx: add sgx gpu child node
Date: Fri, 24 Apr 2020 22:34:07 +0200
Message-Id: <133da7fe98731e8b31acb577e8c5c707b08337e9.1587760454.git.hns@goldelico.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1587760454.git.hns@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_133442_470277_6197AD81 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5303:0:0:4 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, letux-kernel@openphoenux.org,
 Philipp Rossak <embed3d@gmail.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Jonathan Bakker <xc-racer2@live.ca>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 linux-samsung-soc@vger.kernel.org, kernel@pyra-handheld.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SGX GPU node with interrupt. Tested on OpenPandora 600 MHz.

According to omap3530 TRM the SGX register block is 64kB.
See: 13.4  SGX Register Mapping, Table 13-2

Reported-by: Andrew F. Davis <afd@ti.com>	# register size
Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 arch/arm/boot/dts/omap34xx.dtsi | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/omap34xx.dtsi b/arch/arm/boot/dts/omap34xx.dtsi
index c4dd9801840d..51c60ee2b68d 100644
--- a/arch/arm/boot/dts/omap34xx.dtsi
+++ b/arch/arm/boot/dts/omap34xx.dtsi
@@ -167,12 +167,13 @@ sgx_module: target-module@50000000 {
 			clock-names = "fck", "ick";
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges = <0 0x50000000 0x4000>;
+			ranges = <0 0x50000000 0x10000>;
 
-			/*
-			 * Closed source PowerVR driver, no child device
-			 * binding or driver in mainline
-			 */
+			gpu: gpu@0 {
+				compatible = "ti,omap3-sgx530-121", "img,sgx530-121", "img,sgx530";
+				reg = <0x0 0x10000>;	/* 64kB */
+				interrupts = <21>;
+			};
 		};
 	};
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
