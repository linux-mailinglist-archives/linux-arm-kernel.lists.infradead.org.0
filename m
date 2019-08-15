Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F8F8E2FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 05:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dQ4HfzP5BLFpJWITNLGzSIlU78qZ2Yz5gprpWOE/N+Q=; b=Spb
	113FpIy5XXpVr/dxK7M5EKlyyNdNFxqiteO4cEM7dUqza+reAQByq5V2TFNw8vVRNltEvj9YMPif1
	t2crhRPrJrNahFais65jv8AAh4SmdXhGt61NdiHq/GdWrjUxlaGy16H7Sonqz7kVfUs4O7tct+dRf
	UqjENYzQASdfh5UXMjViOKVGvNzY7RiwWk59Wkos1Og5fNOwUkO/IqCxYQ3TrN54dKHcQVKteFeVk
	0lQTI6Vfr0F73A6Om5TogmkcwN588jeAGfJJCmpszT8FDIWQMTZkYDMTk5CPQYRiGxVEpJttyzVgn
	XP6H1IekbRJhuWmu9OJZSNgyyiDZhGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy5zr-0001OG-St; Thu, 15 Aug 2019 03:00:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy5zL-0001N2-GM; Thu, 15 Aug 2019 02:59:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so530144pla.7;
 Wed, 14 Aug 2019 19:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=jtcbQSdvzy5cT1Z921sK+U6eJuTaITvB/5Row+mcI0c=;
 b=VPyImWLVUBR+YJhKD3akvkpU0i5ENU919XA+N261pXNLUFFifIFgh984CAi1BGK4vs
 lsmnqso8RLiJ5hSxAWHUja3jeCIOxoGHPfWnJrn/ovMXJpj1WRuNX3c75AJSx0/FKszp
 hJAAFWhE0XnpJm7uZ9mmm2LOPKDYV/PtMHUuZa6siu7IYpg/BQ8eGkZAbHfGeNJXuSpJ
 qZeRdMNSciFbNM8VytVYUqIkSC0J+/9HhlcbAEmm69zb06ksFXU42GNGPno9eAHvtbYJ
 ImoEBwmnFdXq0/QO62cuWxg+JxAHIe9UZFsxbrod04OUUk9CQAXBMJN8OsJE7pXhtlp8
 G/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=jtcbQSdvzy5cT1Z921sK+U6eJuTaITvB/5Row+mcI0c=;
 b=HkIe6T13U8N3Me+1nhDMK8qksvauA1Rf7XciNqiHNrT1ZNLrdZVmEP+sZaDlDuJES3
 8HnoEV7xU4ElRoJGsV6+CgmZdmHvICVgBXXwXCDatHTSP1W65+6t1qtJjcM3fFZ5paqF
 +eaeUvP2V/hBBxO/Hk+6wQJDJU0zpfoRr1ScQFwgp1/yAbE7lo6PZ8BzyW56eggamoOV
 y/QFQEd0fDOl7sOZKSkAMaoceC+RokPdKEJgSe7zO4/FupOYQ/RnwGTS7RuCRy8Lj3SQ
 JEPU4fdFwXGQ1oGbd5hKukFF6Tfs1oRAKxWRAj6jFyK8synuVvzpChjCX6+ia7Q7kgLn
 AHSA==
X-Gm-Message-State: APjAAAXR/z3AJ0OTEc1fmJhbhHABgBPExrtxkTZDP4+LpYk7HHhd08rC
 eNOGxGW3nggvM0xzzTCZGZQ=
X-Google-Smtp-Source: APXvYqwQlvrnAQc0lPUHt/zfuAZ+tW3qd3Tcao4Wz1WqTtmVKnHjXDaxSx8tYi4gb6lsRg/sGGftXQ==
X-Received: by 2002:a17:902:d715:: with SMTP id
 w21mr2413435ply.261.1565837982100; 
 Wed, 14 Aug 2019 19:59:42 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
 by smtp.gmail.com with ESMTPSA id k5sm954439pgo.45.2019.08.14.19.59.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 19:59:41 -0700 (PDT)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH] arm: dts: rockchip: fix vcc_host_5v regulator for usb3 host
Date: Thu, 15 Aug 2019 10:59:19 +0800
Message-Id: <20190815025919.5194-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_195943_550355_EC333659 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kever.yang[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Kever Yang <kever.yang@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Tomohiro Mayama <parly-gh@iris.mystia.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to rock64 schemetic V2 and V3, the VCC_HOST_5V output is
controlled by USB_20_HOST_DRV, which is the same as VCC_HOST1_5V.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 7cfd5ca6cc85..bd4ad1635e0b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -35,9 +35,9 @@
 	vcc_host_5v: vcc-host-5v-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&usb30_host_drv>;
+		pinctrl-0 = <&usb20_host_drv>;
 		regulator-name = "vcc_host_5v";
 		regulator-always-on;
 		regulator-boot-on;
@@ -320,12 +320,6 @@
 			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
-
-	usb3 {
-		usb30_host_drv: usb30-host-drv {
-			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
 };
 
 &sdmmc {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
