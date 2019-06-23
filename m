Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E14E84FA0B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 06:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50uCSxGUF/XGipZHlUU0RRI5hUc8sz9IoglTG2nRFSc=; b=ZwdaqIAo9jzIGU
	v4z/gMy70QfwMUg9SFTFxxeVsvw+8PNZaOoYqFaYbSezOyvmigEAd2e/fTPXmYgSPpt7SzrpvYstS
	jtD59MBvqNtdKZ6i19OyYnS2a6YL+ZsPsEGltzf5ijaG4CRtM3I8CT8NfFDBfxdVIJTGWD31oX+Fb
	gmphnL7XLCRQLAEB0chtuA2pCGW4nm6/JylzzMlTClSTgb7cWIeQXZAPuwiqvgmvDkyrpyfMEEZg7
	XRtI9j0Vr49FAcSMw2Em2LHMEnrLjmbRXEMI9rLSRIwjucLHd9S4aO3/4YbYMls1yyfXFK50xCW6t
	y/eHqZ0Abe8ZFnvEmTWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heuJ0-0000MK-LW; Sun, 23 Jun 2019 04:40:42 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heuHq-00072L-Q3
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 04:39:32 +0000
Received: from [199.195.250.187] (port=43028 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1heuHn-0000Qd-BN; Sun, 23 Jun 2019 05:39:27 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 965B76212D;
 Sun, 23 Jun 2019 04:39:12 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 3/9] dt-bindings: clk: sunxi-ccu: add compatible string for
 V3 CCU
Date: Sun, 23 Jun 2019 12:37:55 +0800
Message-Id: <20190623043801.14040-4-icenowy@aosc.io>
In-Reply-To: <20190623043801.14040-1-icenowy@aosc.io>
References: <20190623043801.14040-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 65
X-Spam-Status: No, score=6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_213930_945918_726FC42C 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Despite Allwinner V3 and V3s shares the same die, one peripheral (I2S)
is only available on V3, and thus the clocks is not declared for V3s
CCU.

Add a V3 CCU compatible string to the binding to prepare for a CCU
driver that provide I2S clock on V3, but not on V3s.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Reviewed-by: Rob Herring <robh@kernel.org>
---
No changes in v3.

Changes in v2:
- Adapt to YAML binding document in linux-next.

 .../devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
index c935405458fe..1bde87fc94c5 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
@@ -31,6 +31,7 @@ properties:
       - allwinner,sun8i-h3-ccu
       - allwinner,sun8i-h3-r-ccu
       - allwinner,sun8i-r40-ccu
+      - allwinner,sun8i-v3-ccu
       - allwinner,sun8i-v3s-ccu
       - allwinner,sun9i-a80-ccu
       - allwinner,sun50i-a64-ccu
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
