Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2819632A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlRnvUCyU/OCmc3ceM7sIi2iGjeDRtVysncAZtquJL0=; b=sfzFHbYXDPLpHP
	OAQO0HI83hNR5ZRe8U4s25s7jkv9elIB/LmA9DMUf4DqO6bFqni/bWgHROqHE5euFq9IhXoKvJOp8
	bWAhpe/bS9ZnGRUviUlX2zCXCvdjAkNygAo7uyjE80xdN5A5ZceN6UTR+sl2MCDCDv2cZgye7eUmL
	22jD/BiAo35hpxafOoQ0pJulog87r4Peq4r5SWyssaehXoX/nQ4K+ulurvYfe6dhrNtNcRqCRAXUW
	LOB7Kux6tfG7nJcwhJ1WTZxadowZoKSI81g5bW29+UG05UfEHINs4brbh/suwOovgtFmEW2c4YNjn
	c6GGm4QZr3sK4qIdfC0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05Wd-0001HE-P0; Tue, 20 Aug 2019 14:54:20 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05W7-00013R-Bc
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:53:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566312825; bh=wIAxljKfYwADgH+42GDkJIwLygOIg7HG/xvcRvcY98U=;
 h=From:To:Cc:Subject:Date:References:From;
 b=JQloAJ9JgxomMDFTbsLxbkyZJgYGUbjBaehlsq8CDjjsR5kp8P2V0WYdgIg7+puj6
 AFMc4kQ/MwZPB+37mMTvujOxThMU3fqh605btYUrm9Kj8JtaQRpcl2rhfqL4tJ35CM
 I13XbUfgxDkjIsR5LBRq5X2HaxW5C+MsAGAiCREI=
From: megous@megous.com
To: "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH 2/6] dt-bindings: net: sun8i-a83t-emac: Add phy-io-supply
 property
Date: Tue, 20 Aug 2019 16:53:39 +0200
Message-Id: <20190820145343.29108-3-megous@megous.com>
In-Reply-To: <20190820145343.29108-1-megous@megous.com>
References: <20190820145343.29108-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075347_738030_8E84F7B8 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

Some PHYs require separate power supply for I/O pins in some modes
of operation. Add phy-io-supply property, to allow enabling this
power supply.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
index 304f244e9ab5..782e202aa124 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
@@ -47,6 +47,10 @@ properties:
     description:
       PHY regulator
 
+  phy-io-supply:
+    description:
+      PHY I/O pins regulator
+
 required:
   - compatible
   - reg
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
