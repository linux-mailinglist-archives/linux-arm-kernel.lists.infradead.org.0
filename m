Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920F375843
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 21:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y2FwSNyTdC1wDTjY9laOswJn/f5gRacA2hwaWoYuXx0=; b=J70PykblIS6qzDBw3untpz0k4o
	9sPognOuoxC4vjsJyln89+ngSeaV/5F97roQzby0m+hTbubh1NWAolv0gZcAhTmkavkFptyZlVBRn
	sGYwaDaED0R8iTE+HbC0tmfypFnqe+q5xaDx9s9ZzCsFd0cg3hZIT4Ek6amSG510NJriDQDW/RP6Q
	RM9kn987XpdvYYHpVF+6ApOJ1kuQK0giVJGqCkUVKw8HYjXdFYOYtZLfoqRuLj2KpL44FzL8MkxQ2
	vScrdIrPliBLCmxb8XpZQO7YNrFZg3DNHUtPfmowGCNmL3+FmpViaF0K1DuIb1bxzv8rMee5OAktT
	U0ACIkoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjf8-0002Ng-6f; Thu, 25 Jul 2019 19:44:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjdw-0001TP-9c
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 19:43:14 +0000
Received: by mail-wm1-x341.google.com with SMTP id l2so45729005wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 12:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fJc1atiQz5OEztuHQqSGjdoiIKBAFWAgorgVo68gaaQ=;
 b=jxH8gQG9+QwY+aN4xvMC+QDz2s4wMg21chw6VUnY+kxHdY2WvCjNGfGPBrhfBFzWED
 PqnVkdS5vFVbeJFcHbIl4afpzVwhUtRzuDyrEoleiOCY8EPfczuGBdd5zJEOqLykBeNY
 uAivAzxlDx9irmBuIlLER532F7awvAWTgiuRkWOstlaNGi28VPfD0AIaAiZLYqtC2bpS
 uwmIuM8W1TPTAVbn7HlUokavL3V8UtQ7RoYciJ5CmbASfsPgTscUXuDSOghTjyZZu1R6
 vPep7y8JFYDjYKwCIlHXGWO0SorSaNN9XjZrIqlhNr6MRD8w/bjWzjRbAfuvMLd5cNXH
 MLHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fJc1atiQz5OEztuHQqSGjdoiIKBAFWAgorgVo68gaaQ=;
 b=aEbqcBk4Zu3crep9x+Yq/8auy3I0C5nKW/wc9DarM18rbfKjfuIb3biaJvZXaA51kr
 xNVusIook5uz1kIZhmjOw6e6aLe09XOoUhw3CXoachrDKiTOvAPJe2z20fiCLLQL57RN
 vN+R/X4fUCZydMhRUtnt/qVooboQBae/tdyMpJjWX704BTk8e9n+KDWM9JmdByYOYgzS
 ky16UeRVnGqbtBR/qOFjgTrDNVX2o97Bmmqb98uDwTWmQ+zm8xU26cAfzB1h1eT+4pFF
 QscRrbhEx9AlF1avL+Zu7pEnGhwSAVOiUG2cGTH9b6VcOGN1hRGf5jUpsEddCphKrhCf
 M6jw==
X-Gm-Message-State: APjAAAX1q8hjtMJlNjGVEpgIzAO3shaXJ6g35SZDkrCCxAUYG2NsF0I8
 qFUN+UHI7cxHUE/TLNWWPcYr/A==
X-Google-Smtp-Source: APXvYqyQwu1nmcB4abCQ5zAFUj2iSjiM9xVcT8A6OcXmoRgvpTb6oyQWmgU37KVPZS42Kw0Z+zWV8g==
X-Received: by 2002:a1c:a7c6:: with SMTP id
 q189mr82252637wme.146.1564083790917; 
 Thu, 25 Jul 2019 12:43:10 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id
 y16sm103410662wrg.85.2019.07.25.12.43.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 25 Jul 2019 12:43:10 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org
Subject: [PATCH 4/4] ARM64: dts: amlogic: adds crypto hardware node
Date: Thu, 25 Jul 2019 19:42:56 +0000
Message-Id: <1564083776-20540-5-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
References: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_124312_369415_337047E9 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, baylibre-upstreaming@groups.io,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the GXL crypto hardware node for all GXL SoCs.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index c959456bacc6..fdcda12a7113 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -36,6 +36,17 @@
 				phys = <&usb3_phy>, <&usb2_phy0>, <&usb2_phy1>;
 			};
 		};
+
+		crypto: crypto@c883e000 {
+			compatible = "amlogic,gxl-crypto";
+			reg = <0x0 0xc883e000 0x0 0x36>;
+			interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc CLKID_BLKMV>;
+			clock-names = "blkmv";
+			status = "okay";
+		};
+
 	};
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
