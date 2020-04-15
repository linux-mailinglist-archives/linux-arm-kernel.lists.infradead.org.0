Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0151A96AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfGORdejqCd4rAkMWopKNhV3Kt5eCtwTfDFPvE4CaRY=; b=Sur2ivDlCXaH4g
	/kQUaryOquMtTM1PpuHEfoMLPW0wnR7o5tnIRMmkeFLQEDYAtAq/FT97TWlZ0kdNdP2mHelaiuSeY
	A21b7MEJDZQxW6RwSVNvwSU3ZGgPo4Bj3nCPc1Zlj+nTDynb48nIJxtqWvLwLcDgb1dLDUSKp107n
	quC361A9lBGWydit6QRGZNlnLbQiXjXASTtulmDDp9RJPEPcaLIFmgozA7/jGtIgwpwGsMYqoXDmx
	z0uzD7fxnH4JgwuSMeAzu69nt583LYASRgFoVARNGFvKxs8BxsvC1yZBqBRa0GpeCEynW8GeSucY5
	A3pRmxuRydmIMgv42Xmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdWw-00085z-3V; Wed, 15 Apr 2020 08:36:22 +0000
Received: from mo6-p03-ob.smtp.rzone.de ([2a01:238:20a:202:5303::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdWJ-0007su-3f
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:35:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586939732;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=Snu2lfs5+eWozVmWM7qfzq3eVbADpaPGPxUvfNGf0AI=;
 b=H4pIfZuwNJkFIuoXroa/6yd+vgrW2IIJ6CJy+0NeFFVnH93XoX8uDS5zZH5Ix4CZ5u
 gM63w9P1EoIsyXEhmtLmVPNzhSnQDIJnQMTpN0A71R867qGvC2xs0RMVz8VODS8uUFMQ
 hyZ/aFrMxXaNDTDcgHds7QgJKWeE7fnacDcFuKEJMQobgcMJjh1kUpFoiyQau5hvF87D
 K193AZKHUhEydTNAvnbGm6osbXUpBFK+HBAxUYAX1z6cQZCEhGqhtT4J3XKXFksuQcCY
 wmt4ECPm44XrkRsxdel9zm9unu0RWT++2M+LLJYqC/ddcLbnD8uUAJbcEiGsgOHXbj8E
 hPCw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1OAA2UNf2M7O2CKN9ej"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 46.4.0 DYNA|AUTH)
 with ESMTPSA id 6028a2w3F8ZO0Iq
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 15 Apr 2020 10:35:24 +0200 (CEST)
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
Subject: [PATCH v6 05/12] ARM: DTS: omap36xx: add sgx gpu child node
Date: Wed, 15 Apr 2020 10:35:12 +0200
Message-Id: <c47e1d9256392fcf69ae399558008bfe1f5b302d.1586939718.git.hns@goldelico.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1586939718.git.hns@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_013543_797634_9A9DC099 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5303:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 openpvrsgx-devgroup@letux.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, kernel@pyra-handheld.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

and add interrupt.

Tested-by: H. Nikolaus Schaller <hns@goldelico.com> # GTA04, BeagleBoard XM
Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 arch/arm/boot/dts/omap36xx.dtsi | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/omap36xx.dtsi b/arch/arm/boot/dts/omap36xx.dtsi
index 71f3c8f1f924..b308dbb3b1bb 100644
--- a/arch/arm/boot/dts/omap36xx.dtsi
+++ b/arch/arm/boot/dts/omap36xx.dtsi
@@ -211,10 +211,11 @@ sgx_module: target-module@50000000 {
 			#size-cells = <1>;
 			ranges = <0 0x50000000 0x2000000>;
 
-			/*
-			 * Closed source PowerVR driver, no child device
-			 * binding or driver in mainline
-			 */
+			gpu: gpu@0 {
+				compatible = "ti,omap3-sgx530-125", "img,sgx530-125", "img,sgx530";
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
