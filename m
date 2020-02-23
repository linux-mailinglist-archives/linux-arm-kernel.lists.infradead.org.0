Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC4816957F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 04:16:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFVG2mmFtNxJ/rjp2dW5hTAF1Wrd4kzAeMcY0/8NwPQ=; b=jKo0J25FvhXwqL
	yauXNAxXj+DV1/MsAeiQH/DdS6PuWFiX5Hie3geIlOUUIxGi8PfNl20IV7Y8cGdy5f9foPbPbEmP7
	LuMpzBhyc+g+yRTtn7yAdQ0c1nXza+cx/F8j+4gj6CHBkllL39e6fb7mPbNUt6j+bcG301Zq/XcMJ
	c4Qfrnu5BMuFVF09jsOUxR9++EkB0gq3eGIyxNw645xuVQkqjlqAEhy0IEG/KaXJZzCO5jG00jvA0
	6YYaPyYQCTD3lsuZYukOHyiZnP3i3h5Aohm9M8vhPpLUWa6QfSi+gi54V+NnN1T5ATQmawZoAqY7l
	ZKpPwthiH4fqOZ12ZXwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5hkt-0007Hl-GU; Sun, 23 Feb 2020 03:16:31 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5hkh-0007GG-3P
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 03:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582427776; bh=tDnwYEW9GEDNmkZUKddg1nhKcHJVjXNH6bPtCqGCOp0=;
 h=From:To:Cc:Subject:Date:References:From;
 b=HuM57RWFdI2ZY7MHHYC1x7XzTYzPYsuReQuZAjAE0sDuVdb7bZfCBNsF1nRK2vRzs
 MaVAolXkqtwLPMo8ulUS8d2wNLD/yoE+Ut0x4EhoxyS7Fn+yNRpB/2ZpSteph6vUBE
 cPTIlwYcZgawCLuGePBc3Xk4hvneTLQhAv2Sbm18=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add prefix for PocketBook
 International SA
Date: Sun, 23 Feb 2020 04:16:12 +0100
Message-Id: <20200223031614.515563-2-megous@megous.com>
In-Reply-To: <20200223031614.515563-1-megous@megous.com>
References: <20200223031614.515563-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_191619_484964_357674F4 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 Stephan Gerhold <stephan@gerhold.net>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, Sunil Mohan Adapa <sunil@medhas.org>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Call it "pocketbook".

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9e67944bec9c6..434cf7de691d2 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -761,6 +761,8 @@ patternProperties:
     description: Broadcom Corporation (formerly PLX Technology)
   "^pni,.*":
     description: PNI Sensor Corporation
+  "^pocketbook,.*":
+    description: PocketBook International SA
   "^polaroid,.*":
     description: Polaroid Corporation
   "^portwell,.*":
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
