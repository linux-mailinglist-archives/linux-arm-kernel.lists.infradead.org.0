Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1973810AA21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 06:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jDqP+auLDGLxhP7AwgyofnlwfCFKZ7QOeuVKxLUbYN0=; b=rYsKaZXvI2B9kb
	TcskiDTz0JVAwUAO9ascMGxK/9amgiWwyU95sTAk2HBXjNwqxidY3hBr7Z/Zau6fSXQn3vYfr1eV2
	IuTd334gHVK9/WUhHj9a+J5KWNICv+QB5qPbZoO2E+w1P5YMXDi8pLTUX2yQFavtPrSzjmwVIkNgb
	fxFoh/QOs0k8i5p+y5pkfwxqnu5nY/OKorePY33Ol8b3PHA4UwsLzV6Bm9gaStbJOPL9ThqJGs2yN
	2uq8DYxgy3NqemavvB5qoI/KvOGJjW3YQPUYeNJWHSwt1CwKvKCdKzZqw49q67+Uk8aMc8BJ1S2wA
	sF8dob4LEzbk+kpZ3w9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZpu3-000191-5F; Wed, 27 Nov 2019 05:30:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZptq-0000Yt-Le
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 05:30:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id k1so1836985pga.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 21:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NVGiAl8Dh/YJ44QiDFm1FDcXCaNLT2bn+snjxKuoTiA=;
 b=dmYX4ABNhxkr2PDMHvkxaLU7lLez5GCZu36zShR+3opCKFN9xeiZHjRdw0yvUmECpd
 9IJ78wFOqlX2x45ribrm3k863gfoujqH4thQ5z/gfGfNgKH+Yc3L0ghF5xgdjEwmsj1a
 dHsU5oWZN5iBk6fOJFjRr3yYzApMJ29a4ikM/5m7Px0UR3APBSCJTfRa/hAC+awCfghQ
 SvrCWbqxtzW7RkHF6yqmv0O50JohkCD9yMeJIdbGaWZmLsxsKxMjQjSOit6kup4wX9lG
 rl+Ui/SnK5/M4l49KpS+dBDqs6GucaBe250umeJegqjkJ3Mn/vaw7pMWsLNNfKS9dvFR
 Y/7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NVGiAl8Dh/YJ44QiDFm1FDcXCaNLT2bn+snjxKuoTiA=;
 b=azJdjNmz1wcu7y1F/m/rs0mDSOIK5EmK1ntzxer6p89SeunJNlMJ+D3qwCu1V5ABEm
 ZEZBQViPImzpp78md1Bm6E3jgclF0OzV4/GXB6EsHiO80RPYKXPQ/Gf+VjGXclLj20vs
 xR3m05dYQz0UvMyC1nJ6zRaVyFEaiBIiYWL6a0qcJ6VT5ukqfWv984trLDnvbHpvJvO8
 UjVHvu8d37xT8hsRkwdfCquAKCUG5iuSel5mX6oAsmsDDvBe0GJen7f5lFih+Kep2dOI
 Fn9dnUvH+uUKrBHoAuzFk+baho98Ybj5iC0xjcwYF9x3cOfB/RjfU0Z63Y0c2E9qyWDb
 sFXA==
X-Gm-Message-State: APjAAAU/0TLIdAJ0tVTa0ldQL4VSYQLHNNWqk+tLqjftPtPip2m+33Qc
 eOxMkpX16Y8jNTw/t0zIw7w=
X-Google-Smtp-Source: APXvYqxxWXVOcqEI6A8tpVbbrr0/wVcFJgHw1+FRuXU1s33USdwQLQ4LqEiCt9x5VHRbZA5i2b76xA==
X-Received: by 2002:a63:f702:: with SMTP id x2mr2611989pgh.300.1574832601637; 
 Tue, 26 Nov 2019 21:30:01 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id p38sm4360825pjp.27.2019.11.26.21.30.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 21:30:00 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>,
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
Subject: [PATCH v6 0/7] add thermal sensor driver for A64, A83T, H3, H5, H6,
 R40
Date: Tue, 26 Nov 2019 21:29:28 -0800
Message-Id: <20191127052935.1719897-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_213002_714872_7F5F36A7 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
  arm64: dts: allwinner: sun50i-h5: Add thermal sensor and thermal zones
  arm64: dts: allwinner: sun50i-h6: Add thermal sensor and thermal zones

Vasily Khoruzhick (1):
  arm64: dts: allwinner: a64: Add thermal sensors and thermal zones

Yangtao Li (2):
  thermal: sun8i: add thermal driver for H6/H5/H3/A64/R40
  dt-bindings: thermal: add YAML schema for sun8i-thermal driver
    bindings

 .../thermal/allwinner,sun8i-a83t-ths.yaml     | 103 +++
 MAINTAINERS                                   |   7 +
 arch/arm/boot/dts/sun8i-a83t.dtsi             |  36 +
 arch/arm/boot/dts/sun8i-h3.dtsi               |  26 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  42 ++
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  32 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  33 +
 drivers/thermal/Kconfig                       |  14 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/sun8i_thermal.c               | 643 ++++++++++++++++++
 10 files changed, 937 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
 create mode 100644 drivers/thermal/sun8i_thermal.c

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
