Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BEAB296B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 04:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JW+x41TpVf69AOEb/lb3FGJj0DrjzzFVj6cZ0OqgXiI=; b=i//
	jrH5+ZnnTdc8WsAOOaNIMu4+rhaJsCy9vAUMOOzG170IuOwwYhp63KwE66TEV6T1hjw53f7eVEk24
	D6Sg7viSxXJzU5JbTPhVf2zEGKQLIaFlNQFxatBJE2bOr287Z+N7/TGVnm/0d02op69RkR4l3Ussj
	V+Ygd4PT+acFhwEF3ZzOaWUFfoYQ48D5du06YVOl/JcnSMMKHhhtULeP+GrsQ+WlhX0pa3TIySeil
	vGzYAWPcArfdRwirAbNuU7MNdRJYU0TzCMy0sMPqD8Dpa+ab1EAR82fC9ZeTevXinePEgoaYYjuqC
	mdTijpydQOArGXD5TM1CD0mK0GlNp2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8y96-0004E4-PD; Sat, 14 Sep 2019 02:50:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8y8v-0004De-Jk; Sat, 14 Sep 2019 02:50:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id q18so4520613wmq.3;
 Fri, 13 Sep 2019 19:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=GS7w/y6KJAb3XTE0KF7ABnXR9mrrpjuRKRosNLWca4k=;
 b=R6bdzcJT8EwKY5tWap4/olAlQ7hs1E4s+GBJLbiuDt4EwM8gP7LvCkx6jEPrtlhJye
 DaakYeAmQT6pj9+gFqb596LidBMo+Ee6hnZEyYARU7XpnYjMco3qws+rJQ9W0DA4qgGR
 08+eGs9wqW1Hl2JuQ9mA9tGvRc8ctkDkVGTFKcsokJ81rXbmqzy8xhlB14gzs0gzG9uv
 jfly2I6yezhVPIUGOnBJhVPUEZXiixmz5Vga/aRnXsebEN+OSgXyIhebmjvH8QssVXlQ
 y6e5DxPcZBirYV7sC1Azs3dvoKVCOEOlDsJDViV0SlFz7G0Uu0s7ulr8awdJ8Lu5kBPv
 bWiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=GS7w/y6KJAb3XTE0KF7ABnXR9mrrpjuRKRosNLWca4k=;
 b=fQ6QZ13PDlOCFCaRzVu6wcz5ULbV5E/I/9pUspPyMyaFCuJU9XGqG84PAWIzTKW8Gp
 QyF44e/mgW1xfckYieSI/rXmle4o3zmd7/VcKOFfTJhkUvSYKt14XEr11qwomFvgSZ7Y
 vK9QCTIdymbp72rChPq3A+rrB+L0qs/GohUct/EFZu1Py7gCN57ENs4wqcQB7edcnDha
 zlOrMMJbxVQ0zWF3GolEx8cRjEJ4qCfzUT2J/M3M6Kxww4qmcuu+cQRuYw7KIR+V8ffm
 5WgHr7tdijd8jV4AvK0vGyhamHKvqYZS4s6Q6KDhE7uZ2vvWnL+npqC1q3txiLdp3Iqn
 lQBA==
X-Gm-Message-State: APjAAAWARHQieKEUsJPlcY/JITstiqHO8HQ+j2GaZ+Ktlr8H/ztKQsKX
 tTZuhHC30ZhnbaTGah24uA+5z6WW2MM=
X-Google-Smtp-Source: APXvYqwB05poL5fOL99ZeWfMh78cUbx0D7bxu+a2Q3PAAqYMlYAVR+BCMsAYJWeMmExJeouvuihnEA==
X-Received: by 2002:a7b:c045:: with SMTP id u5mr5588396wmc.139.1568429431295; 
 Fri, 13 Sep 2019 19:50:31 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id h26sm2345320wrc.13.2019.09.13.19.50.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 13 Sep 2019 19:50:30 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: Add capacity-dmips-mhz attributes to G12B
Date: Sat, 14 Sep 2019 06:49:40 +0400
Message-Id: <1568429380-3231-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_195033_687622_83AB6993 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Frank Hartung <supervisedthinking@gmail.com>,
 Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frank Hartung <supervisedthinking@gmail.com>

From: Frank Hartung <supervisedthinking@gmail.com>

Meson G12B SoCs (S922X and A311D) are a big-little design where not all CPUs
are equal; the A53s cores are weaker than the A72s.

Include capacity-dmips-mhz properties to tell the OS there is a difference
in processing capacity. The dmips values are based on similar submissions for
other A53/A72 SoCs: HiSilicon 3660 [1] and Rockchip RK3399 [2].

This change is particularly beneficial for use-cases like retro gaming where
emulators often run on a single core. The OS now chooses an A72 core instead
of an A53 core.

[1] https://lore.kernel.org/patchwork/patch/862742/
[2] https://patchwork.kernel.org/patch/10836577/

Signed-off-by: Frank Hartung <supervisedthinking@gmail.com>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
index 5628ccd..7f78d88 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
@@ -49,6 +49,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <592>;
 			next-level-cache = <&l2>;
 		};
 
@@ -57,6 +58,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x1>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <592>;
 			next-level-cache = <&l2>;
 		};
 
@@ -65,6 +67,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 			next-level-cache = <&l2>;
 		};
 
@@ -73,6 +76,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x0 0x101>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 			next-level-cache = <&l2>;
 		};
 
@@ -81,6 +85,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x0 0x102>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 			next-level-cache = <&l2>;
 		};
 
@@ -89,6 +94,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x0 0x103>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 			next-level-cache = <&l2>;
 		};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
