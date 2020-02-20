Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 603A416653E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:45:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FSNhKjrv9ekG+aN2VEX/y9McnWcRxJ/sv2CsKtOfua8=; b=c0Y
	LYmdhoOY5ySF4UEY8NMPBRemdlJ+OxqMZDJqRj4wZFRbiTj7f8fL1GX24hOxcYBv3diUF7EF1WRAr
	Xycz2k2rcFGb56rITKjd1uTWI7nP2x4xLYOAlyzjsg5SZmgOPiZXqua87w5ywXXjcKwNcmQuRNwKp
	JOuRK9F2zWld5UScIuZz0koVDWgFiB+lPysl5lVvdYZYtIGQvPUJCREr1YJL5NAOnO9rl26TAJInS
	wNqS4ClUB4Tr2ETVp/JeToU0aIMv4eg40+Hj+w/QmVx4CnpYUMkd5WlobA0JomcIPReJIAKeChiIG
	yBskQ/MZD7qzmDGlu85LN9YhStOLeBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pso-0000LI-8H; Thu, 20 Feb 2020 17:45:06 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4psd-0000Ke-D8; Thu, 20 Feb 2020 17:44:56 +0000
Received: by mail-lj1-x242.google.com with SMTP id o15so5127108ljg.6;
 Thu, 20 Feb 2020 09:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rV1XEtpZtytxn3w6ko1TLTaLmkmnSDIr9qXrTQZTYWE=;
 b=BpD+X4QoLKjyH6kvt/7+xt+hQM+Ik/EsvrfGiMB2TLbJwOalDuNR5oRZFE+j+0ZbA2
 Ul1QzmJldYkEI2kww6ZJJjN4xHRpQHpfHZ/fPHAAsoDGfwXn8+AE1Rg+8Sc6gXudomGU
 n9brCHReIYWA4PgsgfqflEVuZ4GJ6lWaF052D2aNHg/q0u28XvUgp2wdvdojQoPPl1Z9
 BH/Vw66ZTsAqQBX6bVdWAdXvL+dQA7tIormQDbudqqY8Bi4AXJB1IZshFyY/N7xJNvQs
 f9BFgyJKpYJxdLacpwYj1tI9DJa7n3YJ6Vnk/y2gAygvGdvJQtunhVU6JRTITS2gpMMG
 XidQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rV1XEtpZtytxn3w6ko1TLTaLmkmnSDIr9qXrTQZTYWE=;
 b=j404jyoMOIIxVsQki3CgBKaqLSch2qmrdrkPeHgE1CoFgIGAlbwg096KYrWDBbebS/
 /mDNBZR/Mykv5NuT4OmW8d8MylZs2biwnnWP8dUp7Y6VaahJPZ1KV2TOPAA43v+DSDMx
 Q2UYpudXgz7RjuwBvF+v9r7Kmb+Wyg1IfAKxUbM77eC2PAMVphUvVCXziRjBfOPEPOXP
 1KE0LJAsH0lkFK8Z5r26sM9QVlcK5G6XqBFWGqakEJNwp2C8MIYhvmFpJEKK+BOEf1E3
 tpdX24Vud2+DF2lKm9L9g93QmxW3R4/ayBsmgDJcAR4BwsG2N0PVwi24oTQ5WwkclOU0
 SDXg==
X-Gm-Message-State: APjAAAXc/IDRN1S7UgysThVUUReFbymVW/Tddx/dCV5kdA+ctmgmXhJ2
 I9+EJ+B4dLQDYVFKTpchjtE=
X-Google-Smtp-Source: APXvYqw/tdEvgcTCzHUJeaGUS3Ai//UQlxfJJSIRykk/sUvdVtE3Xu/NJzzTIgnkC6/5Y8gKf4u+jw==
X-Received: by 2002:a2e:b044:: with SMTP id d4mr18994708ljl.159.1582220693627; 
 Thu, 20 Feb 2020 09:44:53 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id v26sm74501ljh.90.2020.02.20.09.44.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Feb 2020 09:44:52 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: meson-gxbb-vega-s95: fix bluetooth node
Date: Thu, 20 Feb 2020 21:44:02 +0400
Message-Id: <1582220642-14133-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_094455_441195_3CA106AB 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This was missed from the previous fix.

Fixes: b07a11dbdfeb ("arm64: dts: meson-gxbb-vega-s95: fix WiFi/BT module support")

Suggested-by: Oleg Ivanov <balbes-150@yandex.ru>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index 5eab3df..45cb836 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -245,6 +245,9 @@
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		shutdown-gpios = <&gpio GPIOX_20 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
 	};
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
