Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865033C02C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 01:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y49lzpR29OggJsPo8r24W/XARrTZGfERFDTnyUjQ/bA=; b=ZZmUCHxpr/jzDR
	QPg960hMMm2FWUYMo81Z607ubI6grRrBWJP4HkKsVeOqwSZyTvIMOKXZG80reYEcaz/TgYVe4ZsUP
	I60xpUP7n6O1ezWtu3Y/e05MBcFUYQAVmNgRAsPOEEIGo1weL4Xhh5gYvgGBJWfSXrnyYBtFer1VX
	C/F7KdX0nMRZqNmA2ySRpQciSsxdS7GC4aKPZCCVGgXClfmc8MgiPgWD5Dkmf4mHzbboal/kgkd3x
	kxIVL5kcJ6tr22KXBcad7yJA5vWh9kSkUMlUHHW8FalcE2ZurCky4X70bkPQnYo7TjmzyWRRDRigy
	eCaNG9mZU82M9lKu4NPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haU56-0002qU-NK; Mon, 10 Jun 2019 23:52:04 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haU4s-0002p0-E1
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 23:51:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id a186so6201510pfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 16:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vqMs2GH/xtfTYsmih0pOOnY0fKcqNqNR+gJpdBUA/eM=;
 b=oTu/idBfwM1cB4tIJjf+zl14e9kVwF5wKkGI8f0gWvPvtxvoBBHvRGa73qrU+yzSHq
 KPNSfe+fwoY0dUPsoQQ3MDKwGQ+3l/w99DFGQKnWvDxraTmV8fFUjFINoYjoaLZ46Owp
 S53g33290impJ+/PSJ8HoyI5Qe/jQyR9QAr+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vqMs2GH/xtfTYsmih0pOOnY0fKcqNqNR+gJpdBUA/eM=;
 b=q9D7/y71FN4p5p5TdKIe12PIhYd0lkRRy9NVXtOxBaRHsvalzNSZJp5b7n2ubF4t2D
 wJK3ttAJ7zCvR+P38yaCyhUIrz+fStTq51s4oQhP4dUIFOkBt65FhMcPusOTppiBQ0Di
 SCSx9q1OOGr/NA/kXULupbq2m/CRPYasnwdFnsrsNqgLt/tPVel6IKuvfvwJov3FIWOz
 QNg6bCJ8PKw8YHePUfH0tTUOxULnKQYchZhUU4Oxr/u/npA+GND3EO0rXoD4VKpKeQkg
 FHecq7r8Ss4wEnPrPK968JjmJwwXEjTwGodxz/TpQHcMBpY+pnZcIurZSls5njE9/lIV
 VsAw==
X-Gm-Message-State: APjAAAWlJCVH9fZHgfPWULKOlOhUSXqd/WXiPJj/jbkfOaw5/jWpXELy
 kGiaWJ2DxM1vntbfaogeCwRp7w==
X-Google-Smtp-Source: APXvYqzD2cF4pnRnha2FFCgMkbGrdDrfEXK5tQFC7u4b2ZqJZuPKjGHTPolqdv2vdZK1NcfWeh5WLA==
X-Received: by 2002:a17:90a:d983:: with SMTP id
 d3mr23473225pjv.88.1560210709380; 
 Mon, 10 Jun 2019 16:51:49 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id y5sm11427325pgv.12.2019.06.10.16.51.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 16:51:48 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2] ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up
 signal on veyron
Date: Mon, 10 Jun 2019 16:51:44 -0700
Message-Id: <20190610235144.34261-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_165150_502794_971F1997 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: devicetree@vger.kernel.org, Brian Norris <briannorris@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Doug Anderson <dianders@chromium.org>

This enables wake up on Bluetooth activity when the device is
suspended. The BT_HOST_WAKE signal is only connected on devices
with BT module that are connected through UART.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- attributed authorship to Doug
- use constant instead of literal for pin number
---
 arch/arm/boot/dts/rk3288-veyron.dtsi | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 3257ca90f0e8..e2635ad574e7 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -23,6 +23,31 @@
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
 
+	bt_activity: bt-activity {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake>;
+
+		/*
+		 * HACK: until we have an LPM driver, we'll use an
+		 * ugly GPIO key to allow Bluetooth to wake from S3.
+		 * This is expected to only be used by BT modules that
+		 * use UART for comms.  For BT modules that talk over
+		 * SDIO we should use a wakeup mechanism related to SDIO.
+		 *
+		 * Use KEY_RESERVED here since that will work as a wakeup but
+		 * doesn't get reported to higher levels (so doesn't confuse
+		 * Chrome).
+		 */
+		bt-wake {
+			label = "BT Wakeup";
+			gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_RESERVED>;
+			wakeup-source;
+		};
+
+	};
+
 	power_button: power-button {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -549,6 +574,10 @@
 			rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
+		bt_host_wake: bt-host-wake {
+			rockchip,pins = <4 RK_PD7 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
 		/*
 		 * We run sdio0 at max speed; bump up drive strength.
 		 * We also have external pulls, so disable the internal ones.
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
