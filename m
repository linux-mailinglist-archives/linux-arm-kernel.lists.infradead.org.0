Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C0F1CED98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+aXPzk6AGaaQKF+mvQslMok9MLX9C7eRmaoqHy+PM50=; b=oTRTJblyYsYzZyUcrFNuV8gY/T
	oTEoZrHhyEknm5icwX2FTLYVQNlhd853Ypp8F04qhpiUgzPyE3NIfBIBR+l5B0j+pyUPxLoY4/i3l
	rVOwCVEO1dfVlcZ5DkjdNG8zaKzDVTHr0mFMMhylCLfkHMiy6r/UulvG/lmt6rCIY3r3K/XIAblm3
	4gzJg/OIw1Jn6qeWcEgwc2O5/Lwh5e8WF8EYAbctn7JluzbHKq8L5o0XWyJXEgyPdmTL+tGF69++p
	YcpNLtApdIg7/aRF3dZjHRNLPf5UDiLPt0OFr/Oo3rbuyWYIEPqjmvduPIxz7Vt86paF2GL43xiEP
	+1x3xajQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYOy4-0008Ch-8N; Tue, 12 May 2020 07:04:44 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYOxO-0007jZ-7T
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:04:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id 9so191381pgr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 00:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KnWhTxSokldqb010DnL4ORytzuGapXn7Hq520J7Za+c=;
 b=IjYwOS6yRJWzajwfxnyfRcGRgJufp90e2oizEGjmBih5am4Peqs//yI9PBpIboOzU2
 CZO7EDNpWbHzsF18edURJPTllwO9BZ79aBFYNtwcsZc6DFIZn8+alqC2s201mzhMJIkp
 3TcZmcgqnP3O5Sm7JeURdw7TyVUFJLRHTd4KqVs/bfP71TM6mTago+ifRJxbMabCZ5RU
 J7Rr93CevBl/XszLMpKAZXHFq488StrTbq+2a4M6QafQj1cDTCotx7X+cLzxoodu9eff
 fQnABVAI8DBaYWFsxbNkWlX8fqB/s7u68B+d7DEwdHDMFVEM8vQPZzyRaKh7wm1EUakk
 jn9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KnWhTxSokldqb010DnL4ORytzuGapXn7Hq520J7Za+c=;
 b=ZYakGZLHf8+V9vx58Yq3iFKYBb4v1J4vFwu/dyI0v0gd3j7tAbipxB9ZyEKiN8XSit
 ubCpHUiqOr5uxVsSev0F5sHfNU3yApcamLd1rF2YFe07spvk05tbOfPh6WVPFoMLe9Ql
 mzUAHtUuzu4ZtvNmvarvfO1yQveUFZ4CAxdOrN83fcsNbdpDaMKHgSxWglrjOUoqz+kB
 RirhA9cLbwmcs/zVF/xyltiR0aXPX7KWGXZvpK2QvGJnweGYkcEXEpApM7xl038R6ItG
 Rt1r9WEPRfm9oXeZuOkcZF+6QSnG+6DZCvYNopJ4IRJTCYGCk4XPbx8QDuvVmx30RURY
 L0jQ==
X-Gm-Message-State: AGi0PuZnppuNP8mISag8ruUyuuteU6e8TwMr/BgsbozJjqOkNbXsBw6e
 Z1GDt37EpVK5mh803xOo+CE=
X-Google-Smtp-Source: APiQypJgzsQrvrMxxxS1gIKRvHu2KK37xvZy80d20Mc2DmCk4cb+KwcWxqzPiseDTD0DXbnIzfEGlQ==
X-Received: by 2002:a63:9801:: with SMTP id q1mr19050050pgd.447.1589267041774; 
 Tue, 12 May 2020 00:04:01 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id 62sm11016369pfu.181.2020.05.12.00.03.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 May 2020 00:04:01 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v3 3/5] ARM: dts: stm32: enable ltdc binding with ili9341 on
 stm32429-disco board
Date: Tue, 12 May 2020 15:03:35 +0800
Message-Id: <1589267017-17294-4-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_000402_295097_B9855AC1 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 dillon.minfei@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Enable the ltdc & ili9341 on stm32429-disco board.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---

Changes:

V3:
    change dts binding compatible to "st,sf-tc240t-9370-t"

V2:
    none

v1:
    none

arch/arm/boot/dts/stm32f429-disco.dts | 39 +++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
index 30c0f67..4475e40 100644
--- a/arch/arm/boot/dts/stm32f429-disco.dts
+++ b/arch/arm/boot/dts/stm32f429-disco.dts
@@ -49,6 +49,8 @@
 #include "stm32f429.dtsi"
 #include "stm32f429-pinctrl.dtsi"
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "STMicroelectronics STM32F429i-DISCO board";
@@ -127,3 +129,40 @@
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&ltdc {
+	status = "okay";
+	pinctrl-0 = <&ltdc_pins_f429_disco>;
+	pinctrl-names = "default";
+
+	port {
+		ltdc_out_rgb: endpoint {
+			remote-endpoint = <&panel_in_rgb>;
+		};
+	};
+};
+
+&spi5 {
+	status = "okay";
+	pinctrl-0 = <&spi5_pins>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	cs-gpios = <&gpioc 2 GPIO_ACTIVE_LOW>;
+	dmas = <&dma2 3 2 0x400 0x0>,
+	       <&dma2 4 2 0x400 0x0>;
+	dma-names = "rx", "tx";
+	display: display@0{
+		/* Connect panel-ilitek-9341 to stm32 via ltdc*/
+		compatible = "st,sf-tc240t-9370-t";
+		reg = <0>;
+		spi-3wire;
+		spi-max-frequency = <10000000>;
+		dc-gpios = <&gpiod 13 0>;
+		port {
+			panel_in_rgb: endpoint {
+			remote-endpoint = <&ltdc_out_rgb>;
+			};
+		};
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
