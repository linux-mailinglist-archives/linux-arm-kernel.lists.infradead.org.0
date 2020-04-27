Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF441B98B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 09:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83cMAt0foEB4VQvqEwy+5oBMUWpBcvHL+hFq9CbsHfY=; b=KZ+p3VHKBDOob7
	mqW0FvMMZvHapvW/CUcjX+PkI7Ea90yKVCwxX1f35Y6SWguuLScswZ9+PJAa/fF4t4am2pFl21Jd+
	NKD5WzBeg5WJ7+FdhQP3ySngHJMTZhYT8xMK/ug9fEOJdQlq/V7UgCvG0Bw5Svg+oQPUmVUft6VIR
	upebofP+4W5e+RXyYwvxcS3Uz+xZwCPa4MgxLMG25G0pFHF10ra9r06fmZfgZFgNYQeEyxYIZmMGs
	B0gnTSQjwsW0CyZSCfYDqhT3YwC8Nsb25LIbvJitW9TKEEMCyUQHyBYTWYqk0xLGfeoULxrcUS9fx
	qlGk2BcD4NX4fzMusNWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyFp-0008Uj-Nj; Mon, 27 Apr 2020 07:32:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyEz-0007yY-Kq; Mon, 27 Apr 2020 07:31:48 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9AE3220728;
 Mon, 27 Apr 2020 07:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587972704;
 bh=W3coOJ/9IbQlK6OGsMXbje2kmeFvSqao3U4W5PN7U+0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2nvhZUVCE5MBhKyCf/PDJo9ooUIzM6DS9en+pF9MuQi3vO4D2cqssJiJzPGZw5al1
 3SuUIyTgfFyOYEHBHIbjliqJKPcCV1drJWkvtSbw/EM+aXoIU/zXKiVoRwqboKPC8m
 +uQ90S8bQyV6GACWIOQEwlt05WMT9rQ2dZULr4i8=
Received: by wens.tw (Postfix, from userid 1000)
 id 682645F81B; Mon, 27 Apr 2020 15:31:42 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Dan Murphy <dmurphy@ti.com>
Subject: [PATCH v2 1/3] dt-bindings: leds: common: Drop enumeration for linux,
 default-triggers
Date: Mon, 27 Apr 2020 15:31:30 +0800
Message-Id: <20200427073132.29997-2-wens@kernel.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200427073132.29997-1-wens@kernel.org>
References: <20200427073132.29997-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_003145_695470_19CF547A 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The bindings currently list a very small subset of valid triggers for
LEDs. Since many drivers or subsystems in Linux register custom
triggers, the list would become very hard to maintain.

Instead, just drop the list and allow free form strings.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 .../devicetree/bindings/leds/common.yaml      | 21 +------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index 4c270fde4567..3b3cdab3fc15 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -79,26 +79,7 @@ properties:
     description:
       This parameter, if present, is a string defining the trigger assigned to
       the LED.
-    allOf:
-      - $ref: /schemas/types.yaml#definitions/string
-    enum:
-        # LED will act as a back-light, controlled by the framebuffer system
-      - backlight
-        # LED will turn on (but for leds-gpio see "default-state" property in
-        # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
-      - default-on
-        # LED "double" flashes at a load average based rate
-      - heartbeat
-        # LED indicates disk activity
-      - disk-activity
-        # LED indicates IDE disk activity (deprecated), in new implementations
-        # use "disk-activity"
-      - ide-disk
-        # LED flashes at a fixed, configurable rate
-      - timer
-        # LED alters the brightness for the specified duration with one software
-        # timer (requires "led-pattern" property)
-      - pattern
+    $ref: /schemas/types.yaml#definitions/string
 
   led-pattern:
     description: |
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
