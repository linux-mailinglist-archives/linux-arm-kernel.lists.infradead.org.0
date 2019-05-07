Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB5916437
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KPXb1Pd6VsDsnQjgmuUkkqXtVfKP8aME7d7bu1GbfFI=; b=MwSJYoKMBTCiBh
	1xwOnUhyeZZ5eB7jtgQgpYeE1v2TFPXHjW0deVFODdRN9CyX1pVZ5ZPFX5c+JdkAfFi0aY4HTMYdW
	dJxpJkbJKz0RoSCLOrXP+uC+8dAduEXjPlinsvrj0z65hiEaxBn7/SJFsxqQQK2CXvl/tHUvC6kxf
	+35bO0/VSbGKqTJPt/FbprpcFrhd3Lw8Pyh1ANRCMA4Kfz+t4wJcSAsXg50z/jJDd10ZvEY0GQCbE
	Ex20ogNiq8hfriyg1+l4cHnVZ88DrXlNGF07BHfX6loU5LvUCHRRXcxEcOIc1PXaE01nE/itnLLUc
	g3joizSEepBXRI2tLVFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzoq-0000Zd-Du; Tue, 07 May 2019 13:07:40 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzog-0000YP-AB
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:07:33 +0000
Received: by mail-pl1-x643.google.com with SMTP id p15so981451pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 06:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zVEShq2r+HH1dqUKjsY/tIvQnR4fC4lx62sAnv2cszQ=;
 b=jm+TvJfNFt6JoZDpIcsdQYCpeFYqOblkOGI08ywsGy57x+8/bmkSF4Jiva803NbPKE
 s7m5WLd6gfL1+tbGQjSyYmf3uBgqOudNS4xmd/KNNKzha6oI95GWuIDU4syC1mQ+66W8
 lrUJaarBqXPhwdumssK7oXfiCQKiWLW3S0Kas=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zVEShq2r+HH1dqUKjsY/tIvQnR4fC4lx62sAnv2cszQ=;
 b=kWs8aOdO3LL2mqPyoUhPBK8N2C8QhmXx5DqI7PwuSEQnrpXwvPiH6qD7F2fwp2WmpR
 O2ejp7Y9g0PPFkoKz72PyejsBoE1Q7B8Ecpla6G05Y6+Rrpkg0f9RFHuZAuZwDLbT9cE
 xEGB2IK6FjLyhPrOOyWWitI73j3bBPyHkJ2C0+1Oxu2QX4D2Z0z1J+nt3d3AMsREE7dR
 /Z9hRdi/If+cF2QlzF4UHsLdIY/iz2jigDuet39R7DpFRjXTVP9uLQPtnW4dUzLQfVE5
 D4q/RfFJXgkZvfEP0K1Gyq3hkShbmnVQ8LC/oLP7zGIFxuG7RDTl0XJl5cNNjDcgeIbT
 piIA==
X-Gm-Message-State: APjAAAU2K64il/DlanNun2VsuZD0samkjTjmyG1bXlxm9O6k4M7cZnn4
 NjwzY1CW5AwXwigHQEsYik4wcQ==
X-Google-Smtp-Source: APXvYqxTNLStKgWqhFuYnzLAEpQKZaTXrhsWJy7MmuW5PcblTQp6f4JovNxg5jyNfUeBBZ2VP2/bHQ==
X-Received: by 2002:a17:902:2a:: with SMTP id 39mr39639547pla.64.1557234449180; 
 Tue, 07 May 2019 06:07:29 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:3682:cdb6:452:ecda:bdfa:452e])
 by smtp.gmail.com with ESMTPSA id w190sm21889823pfb.101.2019.05.07.06.07.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 06:07:28 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/3] dt-bindings: display: Document FriendlyELEC HD702E LCD
 panel
Date: Tue,  7 May 2019 18:37:06 +0530
Message-Id: <20190507130708.11255-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_060730_359302_582BAFF3 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Sam Ravnborg <sam@ravnborg.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
resolution. It has built in Goodix, GT9271 captive touchscreen
with backlight adjustable via PWM.

Add dt-bindings documentation for it.
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- separate binding patch from driver
- Add simple-panel compatible as fallback
- Add text info about simple-panel bindings

 .../display/panel/friendlyarm,hd702e.txt      | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt

diff --git a/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
new file mode 100644
index 000000000000..6c9156fc3478
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
@@ -0,0 +1,32 @@
+FriendlyELEC HD702E 800x1280 LCD panel
+
+HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
+resolution. It has built in Goodix, GT9271 captive touchscreen
+with backlight adjustable via PWM.
+
+Required properties:
+- compatible: should be "friendlyarm,hd702e"
+- power-supply: regulator to provide the supply voltage
+
+Optional properties:
+- backlight: phandle of the backlight device attached to the panel
+
+Optional nodes:
+- Video port for LCD panel input.
+
+This binding is compatible with the simple-panel binding, which is specified
+in simple-panel.txt in this directory.
+
+Example:
+
+	panel {
+		compatible ="friendlyarm,hd702e", "simple-panel";
+		backlight = <&backlight>;
+		power-supply = <&vcc3v3_sys>;
+
+		port {
+			panel_in_edp: endpoint {
+				remote-endpoint = <&edp_out_panel>;
+			};
+		};
+	};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
