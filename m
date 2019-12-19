Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F4004126803
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:28:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fV12mLUR+F5YYJxt/cdUxbIhr4ViCGaeuOkuMba+iNQ=; b=mXewfqSS1aCcrL
	NQAVmbPt2KZ9FcEjoQ8ylQKwO1fuaSM02uSW6CiUgH3myetfXmEKx+yK5UinVFJDL0Mb25yF4EcSJ
	pZ7edSqVkCQKTDE4sT1JJuo6JNxudO1Shro3P0/HgHmM2waM3/uakU63DgrzNnKPl4DtqL2Rd7OoY
	nLOZgF4j4tWHWg7tbNZOnkjoLEDCd4P262EN7e7PHaI/7yG+ud02rrEK1SB8uaAaRGN6sPPJTLH99
	gU3AxUrh7tmG5JTX/7N/hKMZ3dlVn5mWyztRnQ8MHF/ALktxoiT0lkmWCMphONGQ/PH4EKE6iYDHz
	zTTRKfcelZdIFXx8T/Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzbU-0004kj-Ji; Thu, 19 Dec 2019 17:28:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzbH-0004iX-KM
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:28:37 +0000
Received: by mail-pg1-x541.google.com with SMTP id b137so3469618pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 09:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FC3/QPaa5PZhaNcHhuFDAdfq0OHIUK1TdSdCzAHajCc=;
 b=dy9R8z7vc/XXAEH3Rhv/7Zz2UzI+4YT7FYRMRYG4QOIcJ85CI0668ysW86zR7kZEwp
 ryjCWDY/mOdSghg39/lNRhMPhF6u8IoZhXyvn5ahot+dLntHgepthUNUhRhty3H1FN1d
 PEsSKcw8HruBh2pyfrfxxPgInCOU0e55yG3nARfoUOeTZGSUdHRBoOgSKkHs+1a5UkKr
 Xs415JZcJ9xGShIbk4spwpHIOR93+/gIGju4C2xG/sQcxD0Ew9Ruudwr0dCJq5b5Kllp
 NhI914BZRknzkfc+PSNBTN9GqkTfw8me85QmidXJQtJBx5stTy4O5krcjCjikPWHkvsg
 WUeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FC3/QPaa5PZhaNcHhuFDAdfq0OHIUK1TdSdCzAHajCc=;
 b=crI6EFughVO/YOzgP3ljRljyu6BAb3pAViyXldQSc7PYuqQ84midcjzyGBrahb28F4
 +J0iD5zHZ/7ljctvVVtXbTT9Sj4XDXmxYhqTJTd1AKpNzfpXy86XR8+4NYcPKnA3g1j5
 nVcW04QYZM5WXdkmL4T07YAfJlC1l2TTSEp2449le04PWWL9/+62NpRW+8ELWz+JREz1
 rhTnIMXkjhgAFB4Hg+VHsTxUzO82J4L3Uz18I+dbXmTmigpt8cAsShLa9tbaZrvL7bcy
 cQDFR+EPySxg1f5uNpnTO7vWqbeUAti9zcyhCrpWyxL6jsl5hyU+a9QyBIsGDipjbF+P
 vFFw==
X-Gm-Message-State: APjAAAWxTVNTbvVT2zu/occqBrqiTG8YE0oY/ogLwNpl377qP2qOBiyK
 iOaQKSXKiABFaYkwOeuCX8I=
X-Google-Smtp-Source: APXvYqwsCwPHwOMp7hPK2BsRkPhtgmogTJE3yEjGSSPfL3FD3QcZJks5+w9l7rUtELd8fzk8Qz74UQ==
X-Received: by 2002:a62:5547:: with SMTP id j68mr11289653pfb.6.1576776513100; 
 Thu, 19 Dec 2019 09:28:33 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v143sm536209pfc.71.2019.12.19.09.28.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 09:28:32 -0800 (PST)
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
Subject: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5, H6,
 R40
Date: Thu, 19 Dec 2019 09:28:16 -0800
Message-Id: <20191219172823.1652600-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_092835_694538_B555447B 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

v8:
	- [vasily] Address more Maxime's comments for dt-schema
	- [vasily] Add myself to MAINTAINERS for the driver and schema
	- [vasily] Round calibration data size to word boundary for H6 and A64
	- [vasily] Change offset for A64 since it reports too low temp otherwise.
	           Likely conversion formula in user manual is not correct.

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

 .../thermal/allwinner,sun8i-a83t-ths.yaml     | 160 +++++
 MAINTAINERS                                   |   8 +
 arch/arm/boot/dts/sun8i-a83t.dtsi             |  36 +
 arch/arm/boot/dts/sun8i-h3.dtsi               |  20 +
 arch/arm/boot/dts/sunxi-h3-h5.dtsi            |   6 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  42 ++
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  26 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  33 +
 drivers/thermal/Kconfig                       |  14 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/sun8i_thermal.c               | 639 ++++++++++++++++++
 11 files changed, 985 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
 create mode 100644 drivers/thermal/sun8i_thermal.c

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
