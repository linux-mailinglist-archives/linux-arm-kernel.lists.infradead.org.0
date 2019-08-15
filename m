Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9018E5FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tmjt4Y3FZuY85C4Ot4t0mTUCzRfAOt1JStPz9L8WiQU=; b=H/I
	Q372ISfWugxQ8b9IwcyBFM/TtxUWfhM/IHbTd1EGVr2M7kSW/N5/Y4jB5dPg9VuUoAImCBqkrPNiV
	Tl2cZVlDQ2zX0bzbvRBmYXXKgI0iLhL0i5sVbwrljZozALy3wHzy/5aXv6WQPMbqVev5Xj1bYHSba
	I3aU3iERpN8+Pg3NAExxPe0vlJTOqp7KBbGiPB6EiJiC1zvZmZzQ3uSzoVvEbT39lGJTiT0htZE2x
	cSE8rDfOOe9kS53aRkVvCU6dnph/audStmQXXTzT07MfvIFU7PTTMLvbLvSYaTLeKse7Q1MXgvTj1
	0m+xWdXnk7AIPibEnE82peuR686egmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyAt5-00081Y-F6; Thu, 15 Aug 2019 08:13:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyAso-00080U-V9; Thu, 15 Aug 2019 08:13:20 +0000
Received: by mail-pf1-x444.google.com with SMTP id g2so1016821pfq.0;
 Thu, 15 Aug 2019 01:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=wLap0Zy+ci+CJDpmUhxVRnZnzzmq1nqEQXj4qyza1yk=;
 b=Um9fSX9fZr03aGVR9n/2L2BbbywQnKhRAh4QrS5sagL2hVLXlD30pHM3LuzL1BoIn5
 YCrlu6fk5e5H6Lheqo7PNWlDFf6NLgVhZdsYutua0Ut3l68Z79njZbJFc2JHVVZYWGBy
 /t6FZeHHUFhkK6e4+44v6dEliHtgZoLYzWfsa1bmGMaO42B62KyF5R5+eYRQpGPJyjJJ
 jRSkPUvCfTYGWCkW/P1N/xf4Nq+cHCVXScD+coc2PtThtU+itgJWTF/Yf1AhDDzyF4j5
 tdaLxbEzEeohf1Fx+5bxzYU0kl/WD0nk04iUR3HxlzL0b6SDcpY0IFuCcJ2ddLqvD5l3
 cOFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=wLap0Zy+ci+CJDpmUhxVRnZnzzmq1nqEQXj4qyza1yk=;
 b=hU8ZQEV78/z2LaZBXWgCQzZIxJMC682ytxbD9K1hFdgzxJyLAIeLtlrJoeKRQg7lwv
 F/2o7ryrktWU7176Ua6D1AnMH8W1UtpbULrIEOk5auDBGY3NOm1HTn6jBzmm7zGAiXew
 IEfcxYkV257zVgWh6DYgIvGAa0ciJv3cXgxdISD0WOGNZZvgaNUGbWs9V1T6mMCZCXbi
 8RnLFa94c4SozRtJSjmO90QANXDwXgvrZ2Ip2MUn4qV5iNRK1fTbuu/PUwQG+fcn81l5
 W2SkMQ3ZJnUjZ/hRCJ3UJGTRK+mXEkPhlIrdSMdq0+1sJgL+QVcNGavDDUGngUgXRD4K
 wQ7Q==
X-Gm-Message-State: APjAAAX/X+Mn0IY2PLQCcGjEno0+ZUkaIWu7pzL3LkUT4dz0jatgQ/tN
 IbegcHD4XYSAbz7m2d+fSz0=
X-Google-Smtp-Source: APXvYqxhSkqTwo55kHvwOxePBRXqzxO0xgOzn16baZ6D28WYL4ASlLZ/C50ueZXOn/sduDjLE5annQ==
X-Received: by 2002:a17:90a:35e3:: with SMTP id
 r90mr1195041pjb.34.1565856798082; 
 Thu, 15 Aug 2019 01:13:18 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
 by smtp.gmail.com with ESMTPSA id h17sm2084786pfo.24.2019.08.15.01.13.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 01:13:17 -0700 (PDT)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2] arm: dts: rockchip: fix vcc_host_5v regulator for usb3 host
Date: Thu, 15 Aug 2019 16:12:52 +0800
Message-Id: <20190815081252.27405-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_011319_030144_34ECC551 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Changes in v2:
- remove enable-active-high property

 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 7cfd5ca6cc85..62936b432f9a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -34,10 +34,9 @@
 
 	vcc_host_5v: vcc-host-5v-regulator {
 		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&usb30_host_drv>;
+		pinctrl-0 = <&usb20_host_drv>;
 		regulator-name = "vcc_host_5v";
 		regulator-always-on;
 		regulator-boot-on;
@@ -320,12 +319,6 @@
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
