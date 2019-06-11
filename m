Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7247A3C069
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 02:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOAizeajip4I49w2o0O3vfzTxaoVOXpJus5h1LIOuhE=; b=HrBcyBj5fnl+7D
	AfoieaedZQkNry29QL0D+KSQLPjKuxErMvputVqP9Pm7rSJyau5BoJXYcKC1s4dRolnwPyWbqOYRL
	AJHQocyumg/4ThmXTOHq2ikB3SJwYjp16xYZ2nbHiIdqy9IEyezgbvef0UXWcmUmUp79f9W/Z/SG8
	kZzG6FYDf5eB12weXwd4Ja5g8hTbaeqwRKI4QZANuFXVLlHL0usxciJpvFPHZqmaK1OuOtVE+wvAC
	kdv6m6sNc+LgUuevsXENbuD9KQxE/VZRJfDMb3lVEXU09rbMTLFW8bsITZiRq1isR66NFn1+y94SZ
	QDaTNYDKG3a6cC58wXVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUZy-0004uV-U0; Tue, 11 Jun 2019 00:23:59 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haUZ9-0004Lb-SE
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 00:23:09 +0000
Received: by mail-pg1-x544.google.com with SMTP id v11so5886226pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 17:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ys0DSil+WvCMaDGevz2dSiLwFPZR4jwAs4InRe1vZNA=;
 b=X12Jn3AUd//JNQCTWSBR6eh9r650AWw9Xjg7KpO0V+0SA2HdJEsEae1jQkqDPHyQKe
 F9jkL7x/7/FbANfIR4mwRASAg6AXFvQesI26VoF7tgXODbVqSvH4TDWixSqzy/8t/2Oe
 o6kb4qUN0UwhrIOg/a3lFqtIXvRAqNQYOcNrA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ys0DSil+WvCMaDGevz2dSiLwFPZR4jwAs4InRe1vZNA=;
 b=TyfSb8LpVkOAjU7sQ5kWgfBkVlyls5nvbPJblwsxh6rzNgY8OwVbqFBoII9unSAhg1
 4Ft2LKaTKbUZmGUwePjnjF2BZmsDpZ0wkvEsHBw7ipdXh/htd8uuUYl0KojvfNrS2Kuy
 p+/QxMSLowhWM/0DpN5SLPukaBZ8Uy/NAXwDcXGfTKgxJCZ5DAsJPKDKMCVI7H0gioTf
 c98xvw8VocExrRQxKOoG7pzlbHgTJ4BTVhuWtLnduWmOvDQzQG6Z9VXA4okrGS7ifIMO
 5Hn9qQmKl5UHs1Zc0GrQuWk3ffNR2rA5w8M6ndSY8BfSozQdI6vJQ91pakaf/p2nBIxU
 QUdA==
X-Gm-Message-State: APjAAAVL4DCL8zp9+drr3GYpKO3vbcGtEzO5lZNN2Y2P1XbDGajDqDhK
 HVJR/Q/LlPU0Ci73otebu3yykg==
X-Google-Smtp-Source: APXvYqxAc42hyNbAAjVSUHVWNoM3DB7fjZVsqMVi9qbCUz/7kQyXOOCdI5Fe02ZPTYUapCArvj8xLA==
X-Received: by 2002:a62:7552:: with SMTP id q79mr57521992pfc.71.1560212587343; 
 Mon, 10 Jun 2019 17:23:07 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t4sm540317pjq.19.2019.06.10.17.23.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 17:23:06 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] dt-bindings: display/panel: Expand rotation documentation
Date: Mon, 10 Jun 2019 17:22:53 -0700
Message-Id: <20190611002256.186969-3-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611002256.186969-1-dbasehore@chromium.org>
References: <20190611002256.186969-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_172308_061703_A5E4FEE0 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Derek Basehore <dbasehore@chromium.org>, p.zabel@pengutronix.de,
 maxime.ripard@bootlin.com, sam@ravnborg.org, intel-gfx@lists.freedesktop.org,
 joonas.lahtinen@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@linux.intel.com, airlied@linux.ie, thierry.reding@gmail.com,
 matthias.bgg@gmail.com, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 rodrigo.vivi@intel.com, ck.hu@mediatek.com, linux-mediatek@lists.infradead.org,
 sean@poorly.run, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds to the rotation documentation to explain how drivers should
use the property and gives an example of the property in a devicetree
node.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 .../bindings/display/panel/panel.txt          | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel.txt b/Documentation/devicetree/bindings/display/panel/panel.txt
index e2e6867852b8..f35d62d933fc 100644
--- a/Documentation/devicetree/bindings/display/panel/panel.txt
+++ b/Documentation/devicetree/bindings/display/panel/panel.txt
@@ -2,3 +2,35 @@ Common display properties
 -------------------------
 
 - rotation:	Display rotation in degrees counter clockwise (0,90,180,270)
+
+Property read from the device tree using of of_drm_get_panel_orientation
+
+The panel driver may apply the rotation at the TCON level, which will
+make the panel look like it isn't rotated to the kernel and any other
+software.
+
+If not, a panel orientation property should be added through the SoC
+vendor DRM code using the drm_connector_init_panel_orientation_property
+function.
+
+Example:
+	panel: panel@0 {
+		compatible = "boe,himax8279d8p";
+		reg = <0>;
+		enable-gpios = <&pio 45 0>;
+		pp33-gpios = <&pio 35 0>;
+		pp18-gpios = <&pio 36 0>;
+		pinctrl-names = "default", "state_3300mv", "state_1800mv";
+		pinctrl-0 = <&panel_pins_default>;
+		pinctrl-1 = <&panel_pins_3300mv>;
+		pinctrl-2 = <&panel_pins_1800mv>;
+		backlight = <&backlight_lcd0>;
+		rotation = <180>;
+		status = "okay";
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&dsi_out>;
+			};
+		};
+	};
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
