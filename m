Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF973123E65
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 05:21:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QbKSBrU7tOAikIF+qjWHH/X3RfgYDKHI2xR9JyM+XQU=; b=cvD5gdOEDaRdoR
	f+VFQzZ/CI0QSGkre5hsBbtp14WW9eoTMZTvqbAztaNAEtMHVnIzWJfmYyjyMIwV35FaqHAaBPCNk
	82JXceXgy36FbNDrLIXKmG8rflNG8kcJXvjqkpxFiTRbavwZIeM3cvil67qoMXRnptyMtAEc5njhQ
	tThGDxMnFCDmn6G6PJ78KRn4so7QtnEcvQIwsyv+fg6/PvN/mdixff/IMLHDyG0BYgx2e3Q0p4qrO
	7xAK2BPeJMpCauqlEAcR26uS0pfya7fqnlBzVHqPFhWKS31fXYThZWp7S03jWTNRISojMlBSN3hc/
	KcSPiLp7HfjYk+3qQwSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihQqD-0000dw-3M; Wed, 18 Dec 2019 04:21:41 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihQq0-0000cg-Fl
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 04:21:30 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s7so262071pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 20:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vc6z5DPJPT9ALawH8QND33wnUvYXhhLWLJZgfzSJFrg=;
 b=SvfIVgN9NeClfQeCI10AFnpQYUl3FnazSMMz1/rl4JjHEw1fMvsx7Et0DMnAzpNOsy
 ujn71aA22qgCZ1mfshtnAz0bjoMYajnVM+QJ3g4NiU4um38MsIIwHbTywSPbzQbbgdpw
 LS83zmnW4qqEsyBHhq+aVSPtqHMdWcne1APVgn+bIE4YOIK/GGyIHjbcVkp5M4kY7xRU
 mfklRjIH6HBmQ7FAXh956dRpj888AbABKesyOYYo0+7LQawFW+DP5frm3t90+LOCk63f
 1w+cwWJxqTmdcFDFgq1GTeXQABJuWVnGlPbWC8s+3gk0GH1ieX/t+xCfM00RNfXiWGKZ
 ZrWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vc6z5DPJPT9ALawH8QND33wnUvYXhhLWLJZgfzSJFrg=;
 b=Jv+ItBL3oRMEOkkGrh1m4BIHzLKVcHBCdPhGJDT6sV06j4YavkOGhebazPg4KKgKsK
 rII2wHE2j0P4m8nOQZMfPAXTpma+/qdpr67BL0d56zDyqoHjoTuwgwRb2R19n2D3uDio
 RHaCgwgEwsC5Vem6v5X5lNxd2WOJ24j/hZeXNNSS6hgFi8/ir0l/lukXrJfrgwaUAXfX
 8pHh5rZFG+um5C/TE2tYq2vUTi6yk+LuZWV2psQtcAm+wxRRkLRrr8F9fIV1Q6JkiVqL
 8b/TS2dXoKpR9cuxiRlQOov6EZNSinzwCuRHFNgK1afTV1+zUOBCivyU3v/GFkkEHtu+
 IwRg==
X-Gm-Message-State: APjAAAVJ0YBD+hq+gyHR7z1u8LyttO2W2N7iDEXLeHsPk9vCMn1UIf9p
 BKa6UuVrJ3aQxVETP6pquzw=
X-Google-Smtp-Source: APXvYqwTR3pgu+o0enOy3at0duZYlX8shhM1VsQw1/kknsBLvwDGktqgYi8h9dEeJbUeLAYMVJCFFQ==
X-Received: by 2002:a17:90a:8001:: with SMTP id b1mr286774pjn.39.1576642887310; 
 Tue, 17 Dec 2019 20:21:27 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id g17sm775380pfb.180.2019.12.17.20.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 20:21:26 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megous@megous.com>,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/7] add thermal sensor driver for A64, A83T, H3, H5, H6,
 R40
Date: Tue, 17 Dec 2019 20:21:14 -0800
Message-Id: <20191218042121.1471954-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_202128_584664_514F08DB 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds driver for thermal sensor in A64, A83T, H3, H5,
H6 and R40 SoCs.

v7:
	- [vasily] Address Maxime's comments for dt-schema
	- [vasily] Move common part of H3 and H5 dts into sunxi-h3-h5.dtsi
	- [vasily] Add Maxime's a-b to the driver patch 

v6:
	- [ondrej, vasily] Squash all driver related changes into a
			   single patch
	- [ondrej] Rename calib -> calibration
	- [ondrej] Fix thermal zone registration check
	- [ondrej] Lower rate of sensor data interrupts to 4/sec/sensor
	- [ondrej] Rework scale/offset values, H6 calibration
	- [ondrej] Explicitly set mod clock to 24 MHz
	- [ondrej] Set undocumented bits in CTRL0 for H6
	- [ondrej] Add support for A83T
	- [ondrej] Add dts changes for A83T, H3, H5, H6
	- [vasily] Add dts changes for A64
	- [vasily] Address Maxime's comments for YAML scheme
	- [vasily] Make .calc_temp callback mandatory
	- [vasily] Set .max_register in regmap config, so regs can be
		   inspected using debugfs


Ondrej Jirman (4):
  ARM: dts: sun8i-a83t: Add thermal sensor and thermal zones
  ARM: dts: sun8i-h3: Add thermal sensor and thermal zones
  arm64: dts: allwinner: h5: Add thermal sensor and thermal zones
  arm64: dts: allwinner: h6: Add thermal sensor and thermal zones

Vasily Khoruzhick (1):
  arm64: dts: allwinner: a64: Add thermal sensors and thermal zones

Yangtao Li (2):
  thermal: sun8i: add thermal driver for H6/H5/H3/A64/A83T/R40
  dt-bindings: thermal: add YAML schema for sun8i-thermal driver
    bindings

 .../thermal/allwinner,sun8i-a83t-ths.yaml     | 146 ++++
 MAINTAINERS                                   |   7 +
 arch/arm/boot/dts/sun8i-a83t.dtsi             |  36 +
 arch/arm/boot/dts/sun8i-h3.dtsi               |  20 +
 arch/arm/boot/dts/sunxi-h3-h5.dtsi            |   6 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  42 ++
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  26 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  33 +
 drivers/thermal/Kconfig                       |  14 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/sun8i_thermal.c               | 639 ++++++++++++++++++
 11 files changed, 970 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
 create mode 100644 drivers/thermal/sun8i_thermal.c

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
