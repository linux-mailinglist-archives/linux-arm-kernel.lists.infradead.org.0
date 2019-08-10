Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CF68893B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 09:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/6pekPBdw9DiLszgPsqL8XflWLkRbkndTWxBwwIepU4=; b=TAURx0ArZJazjT
	jSZVcgmKJuPCc0vDGuCbcoCwuA0Y7h9MMl+sgDg3oGRy7jNxy7kF7AK7X8gcPe5D2c9ZjOPeZVPWA
	TiW6o5NkueVks0NKuDDffTfLSJK4Zya+7TbpEhnPXwbtbn8QaGBNslrKdQx/y7pIbW4FLnmdncYVV
	HD8nY5pdGyDGlZn8mvM+xevi2Ahhaglmy87u1NcYIvvLchKHpY5Yv3ek2664TAGjRsdUt9x6Wcd5w
	qEZXi9LLz6IFWhyBmENSASddHvhvSJY5Ft0lAQ0xnzmV7naR0dbrAF27Lg4jfOVr/yzFGqiDGTkVq
	wQ2o8JFCZ/WRg1UbTn/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwM3f-0006Ey-2p; Sat, 10 Aug 2019 07:44:59 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwM3S-0006EL-By
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 07:44:47 +0000
Received: by mail-lf1-x141.google.com with SMTP id p197so71082393lfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 10 Aug 2019 00:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Six650CGYED+DXOzyNp3iBnKKWHPIIBktk6FJnj69SU=;
 b=uClazznsZoAmgowWus4ayVfeZSCL7Fy2JSEiwp4YeMi/FDpqdg0K76HNIBgnAc0B6W
 9+t+Xd1W2bG5Omipk9QC5BPamfA6dNz5Uu+aMy1pkw7J8vSuQZ7rP9uBe5/qDtoCPC7M
 GpyrQ1/BQC4XRDDTcWhHj2XO6iTgmLWffDZTgqRzk5HG1jQgGDwNoUShZ2IC6A0ZxZAH
 Vv55gMT2H7C5wkI8AMMx3To8xSRJMK3npIRtAnaTmqMu5E/sBwjvQBFD7ErQhRLh4rQC
 dGQhtI7eRZbqbzxwr2UWno3t8A6YFGMdIf2T8uB53YQq5YG0C86kPuTZeMghrjw2jjU5
 IFFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Six650CGYED+DXOzyNp3iBnKKWHPIIBktk6FJnj69SU=;
 b=Jl03z+kotY1ZDzk/9NaYdYny93YiqcJVPm1u+2iVesonYGdrkz7OX/gox4023qP+qa
 272GOkoqjDq8P8ivYpGymaIpX8i2TlcLC9BXqru+jx1vs70/tW8Qk7lUMCPYbWZVvDBM
 Z4IEdHwsOaCabaEMpPz8GVan2DjC+5f8SWPjlVS7Ci/myKf2uZYOMkqn2x4iKrjHGU46
 WKtsMoM+ceKykqWiVvyhgWCI/IB3N3aNYyg4wwNv7A/PUMqaNLiYf2uHYCakxeAMafvq
 PmNyolJ3WQsJsVHJXQyCPX+dPj8D2OMlnvZMhrC2wtlsn4Du82CBDhPpTdf8pVTa0Jem
 xF7g==
X-Gm-Message-State: APjAAAXtlDvbOLythd4o2GZUO3NAjUDmPoiNwzt6x/q+HM50WxUGrc23
 rWr+8KdA+wbS7ei39OgjhH5Z4Q==
X-Google-Smtp-Source: APXvYqySGFyIglAWN4uEVP+MOttk/fZ2q7ITvdRG7rO/Dv8RIkyDnGyxNZm105t0a+l0vsuvC5c9WA==
X-Received: by 2002:a19:ac41:: with SMTP id r1mr14827077lfc.100.1565423084305; 
 Sat, 10 Aug 2019 00:44:44 -0700 (PDT)
Received: from localhost.localdomain
 (c-2ccd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.44])
 by smtp.gmail.com with ESMTPSA id a70sm19771242ljf.57.2019.08.10.00.44.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 10 Aug 2019 00:44:43 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: dts: Update the NSPIRE DTS files for DRM
Date: Sat, 10 Aug 2019 09:42:30 +0200
Message-Id: <20190810074230.6492-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_004446_416224_C84C2950 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DRM subsystem graphics drivers require more granular
definition of the connection between display drivers and
panels, and a proper panel compatible. This utilizes the
bindings merged to the DRM subsystem to properly define
the display on the NSPIRE devices.

We also do away with the undocumented DT binding
"lcd-type".

We add both the clocks to the CLCD block so the driver
have full control over its clocking.

Cc: Daniel Tang <dt.tangr@gmail.com>
Cc: Fabian Vogt <fabian@ritter-vogt.de>
Tested-by: Fabian Vogt <fabian@ritter-vogt.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks:

Please apply this directly for v5.4 DTS changes.
I have negotiated with the NSPIRE maintainers to do
this change.

This is a split from the v3 patch
"ARM: nspire: Move CLCD set-up to device tree"
so you can apply DTS changes separately.
---
 arch/arm/boot/dts/nspire-classic.dtsi | 15 ++++++++++++++-
 arch/arm/boot/dts/nspire-cx.dts       | 15 ++++++++++++++-
 arch/arm/boot/dts/nspire.dtsi         | 10 ++++++++--
 3 files changed, 36 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nspire-classic.dtsi b/arch/arm/boot/dts/nspire-classic.dtsi
index c53f42777851..41744cc2bc72 100644
--- a/arch/arm/boot/dts/nspire-classic.dtsi
+++ b/arch/arm/boot/dts/nspire-classic.dtsi
@@ -8,7 +8,11 @@
 /include/ "nspire.dtsi"
 
 &lcd {
-	lcd-type = "classic";
+	port {
+		clcd_pads: endpoint {
+			remote-endpoint = <&panel_in>;
+		};
+	};
 };
 
 &fast_timer {
@@ -69,6 +73,15 @@
 			#interrupt-cells = <1>;
 		};
 	};
+
+	panel {
+		compatible = "ti,nspire-classic-lcd-panel";
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&clcd_pads>;
+			};
+		};
+	};
 	chosen {
 		bootargs = "debug earlyprintk console=tty0 console=ttyS0,115200n8 root=/dev/ram0";
 	};
diff --git a/arch/arm/boot/dts/nspire-cx.dts b/arch/arm/boot/dts/nspire-cx.dts
index da95c3736651..0c16b04e2744 100644
--- a/arch/arm/boot/dts/nspire-cx.dts
+++ b/arch/arm/boot/dts/nspire-cx.dts
@@ -9,7 +9,11 @@
 /include/ "nspire.dtsi"
 
 &lcd {
-	lcd-type = "cx";
+	port {
+		clcd_pads: endpoint {
+			remote-endpoint = <&panel_in>;
+		};
+	};
 };
 
 &fast_timer {
@@ -106,6 +110,15 @@
 			};
 		};
 	};
+
+	panel {
+		compatible = "ti,nspire-cx-lcd-panel";
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&clcd_pads>;
+			};
+		};
+	};
 	chosen {
 		bootargs = "debug earlyprintk console=tty0 console=ttyAMA0,115200n8 root=/dev/ram0";
 	};
diff --git a/arch/arm/boot/dts/nspire.dtsi b/arch/arm/boot/dts/nspire.dtsi
index c35fd6667716..d9a0fd7524dc 100644
--- a/arch/arm/boot/dts/nspire.dtsi
+++ b/arch/arm/boot/dts/nspire.dtsi
@@ -95,8 +95,14 @@
 			reg = <0xC0000000 0x1000>;
 			interrupts = <21>;
 
-			clocks = <&apb_pclk>;
-			clock-names = "apb_pclk";
+			/*
+			 * We assume the same clock is fed to APB and CLCDCLK.
+			 * There is some code to scale the clock down by a factor
+			 * 48 for the display so likely the frequency to the
+			 * display is 1MHz and the CLCDCLK is 48 MHz.
+			 */
+			clocks = <&apb_pclk>, <&apb_pclk>;
+			clock-names = "clcdclk", "apb_pclk";
 		};
 
 		adc: adc@C4000000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
