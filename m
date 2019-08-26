Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214639D7BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 22:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XVMFjmcAWpuel/CnV8cBQ5eY9D/fS5ePeoLGkP8zeB4=; b=d7I1Pe8FkCCBJs/emCw+56qgPp
	k2Wa898i9hvtWlEKDSPKd6ECu4j5/s0Qsb8/TN3EUNe0w+9ZsqWAzcm0kw3WdLbgdVEfFvyYDFoN6
	rKiNSvQYIFhYdVdOoTvxfnlm1BZk123aWXIG87nRI6u+bc31d5oYOqzk6taFM7xdIbO4F12Zl5TMd
	eR9zyPXBPlwkLV0QKHCQZjN5R18KiEJ/v+rp9orENX5kVeY0LWAz8ul/ufXuXSAiMDBvxGN/qV/PK
	uH6dhGx941RApuBSQAcIC7nbcSJ1LBYzdPSmo8qCB7mdcsqR1HvTkBiBoFdhVbc1rFtLUo+Sr6U/T
	0fNDz9sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Lvm-0006Sb-3G; Mon, 26 Aug 2019 20:49:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2LrM-000317-TI
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 20:45:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id f72so785628wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 13:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=46OI48aknCO8xnHiNKqbTqHhcC3QBVezddPBiW79IL8=;
 b=t4oVhmR+oEEVFvTBVetR2kz0/3Vk+qOebroB6rEXmXbS3C5c7DmvoLtkR/XNcYPLes
 zRljos8wGxhV5FMc917+mc3iMPQHHDfyYh755S+nYbyMGDbMYc2jJSUEdkwn7lLlu4lb
 aqfJlwnYyiBuMcwpF9BrlSQ6XbvFE+X6y1ffhp9fgHrtU0vif8r5YGwd/r9efZYKcL//
 GTgiIzAieaWGJTQMsho97OqfgtL0BArhkgD+YIpT3WxKEuuW3hKWD4PlFj5QsrM+8sl1
 BPCxWcg52FcmVNt5sU2eiav3lxk3sjSHs1tw3unGZRUXBEPfRD+jbX8TYcucYmvla/Wm
 G96w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=46OI48aknCO8xnHiNKqbTqHhcC3QBVezddPBiW79IL8=;
 b=btglt+gIofu3Er8SJd41UU6YnficB7YcD57d0Vf4cmSEnVO9arNaP4CTKPXRzp44yM
 jRBfkW70jMtkKYGwPGGhhOjEVh2RSNu8hScRE6/ci4H3FakcentTY0S+l0F9jELkZmY3
 lpk+AlMdquzjPwFZ5K/NeHKFSP7fbHoOqoozgTC4/A+Q5oTCAAmAnh9A45cKMoKapuPx
 /i2O7xnNqfJ6H1O8vzXvrQ49zCXEqRamyXq+i7oD8PkNDgqfsWZsJMwTjkU7NEiqR8WE
 +5ATlvD+vvMfyr0VOt0vzaWyq8vFzzmMOnFLstw3h5xlUc5NQkZ49zwp2r2puItl9maT
 mWXw==
X-Gm-Message-State: APjAAAWIf36/oub4VxU0vnmbJzsM247uMEKeAYkUlKx2CKavWpQp6t/M
 WroUweLa/jBRdYJTLSp1bz+khw==
X-Google-Smtp-Source: APXvYqy/MOnLdsZqPivoqO1dTZcmcuw9cOf0HcH7tX9csv0OGT8Z+QaquXD03St2y9wJ6nH2wxfRDg==
X-Received: by 2002:a7b:c244:: with SMTP id b4mr23459241wmj.125.1566852302984; 
 Mon, 26 Aug 2019 13:45:02 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:f881:f5ed:b15d:96ab])
 by smtp.gmail.com with ESMTPSA id 20sm549557wmk.34.2019.08.26.13.45.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 13:45:02 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 09/20] arm64: dts: imx8mq: Add system counter node
Date: Mon, 26 Aug 2019 22:43:56 +0200
Message-Id: <20190826204407.17759-9-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826204407.17759-1-daniel.lezcano@linaro.org>
References: <df27caba-d9f8-e64d-0563-609f8785ecb3@linaro.org>
 <20190826204407.17759-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_134505_089245_452882C2 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Add i.MX8MQ system counter node to enable timer-imx-sysctr
broadcast timer driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d09b808eff87..b4529773af51 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -635,6 +635,14 @@
 				#pwm-cells = <2>;
 				status = "disabled";
 			};
+
+			system_counter: timer@306a0000 {
+				compatible = "nxp,sysctr-timer";
+				reg = <0x306a0000 0x20000>;
+				interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&osc_25m>;
+				clock-names = "per";
+			};
 		};
 
 		bus@30800000 { /* AIPS3 */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
