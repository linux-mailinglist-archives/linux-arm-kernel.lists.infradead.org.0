Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A07E1F50D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syT5l3hboGa3lepyYEOYnPOeGSvKA6zZg1g4L9cxuVA=; b=Is0jAUhmwRyVaW
	36JqBk1JZt/lGDMBCUA10Qorf62lpQTWhd3GPvt5hA4R8Oopn+pS8VaSsqP3YzHoKdJDmSQYgpVqJ
	iV1xYJqhG1iyBJDB45IcCXX2E6pm1crMhpYp6dOxVqZqUxX8hjR/hRC3sjbRc46KXsQ/Cvr08i76D
	Slf06YFZoxY7DVh8mYbjBUKPcX1AI+ZY41KQmJl4UoHn5FZowLPB+JdRdpaBz65z9h2wuZ7pXnJTo
	af8POFXKM5Y2eALZlu1DcsFA6HXXJjTmgBkxsEGzDIgocsr0DrfRJ2G2vXRA9//EMpbxgomfs99pa
	jhy+fPvjwobFI6g5rT9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwi0-0001pF-2U; Wed, 10 Jun 2020 09:07:44 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwhs-0001oj-Lj
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:07:38 +0000
Received: by mail-pg1-x542.google.com with SMTP id d10so718405pgn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tV8bIAKkwRNCkckVOYeoYlebWo0ebt4dV9pe/7DB+wY=;
 b=d0gmA+SXA5MhEmNQkobfbSzB0bc1wk6GXWffGFVKkkVjlFYV7rTvNNqSeuKazD2eOb
 qvprZ9QGvxPQNw2aIZzNzycenLIp7znKJ7y+cH7XQ3eyunqrr7LaQLf9eTzIxYcfztvz
 GsYspG0NeiDtRz/Z93hX7HDkmtn6ePW4RSa08=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tV8bIAKkwRNCkckVOYeoYlebWo0ebt4dV9pe/7DB+wY=;
 b=f6qH8BxlFmY2wZv/fGwafGrf/bZKAX7T03xBcH24TB0BGVnLhdPvmPGkMwXaR5ZJKR
 85DdaNN2X5xUyUNkw+bB2S05u15qkeS7DrmZDA3NTr7kbaCqEdj3RDWuwW6NYe8D5+G4
 hWCvDe2hax1w2RwRk81bgD50MTqqHYvb4/VJV+mgeF6W8N21ef/dCabKjff+4fNjIb2K
 Vdkrc1X9s6+DtgITY0A9LVByaj54t6A6vlWY4OZm/1ng/v4L/lDIfPB/oUy8gwdaYdp+
 rRR9J43Exfi0+WdkLaVEtXE810xN47PQMESssP3SzxBWTK1/CdOJ9brbj0CRoBlE4PAK
 crfw==
X-Gm-Message-State: AOAM5301GPIFmjwpX+rWyWaqWm3gfaBHRlzPIEXZ6OQd7/sNkvVF0zHN
 z8tNUh/nINeqPaO+CS7o4ZWcUQ==
X-Google-Smtp-Source: ABdhPJzGBt+BpcpNsPtkyLtX6Fhe6c/50y9943yUlx9gwDZf978+h///xXi53aR8z+77tF1GSG3Klg==
X-Received: by 2002:a63:5644:: with SMTP id g4mr1760871pgm.381.1591780055442; 
 Wed, 10 Jun 2020 02:07:35 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id nl8sm5191620pjb.13.2020.06.10.02.07.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 02:07:34 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: 
Subject: [PATCH v2 0/5] Initial MStar/Sigmastar ARMv7 SoC support
Date: Wed, 10 Jun 2020 18:03:58 +0900
Message-Id: <20200610090421.3428945-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20191014061617.10296-2-daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_020736_813710_EF7EF1EE 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, daniel@0x0f.com,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 Nathan Huckleberry <nhuck15@gmail.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, allen <allen.chen@ite.com.tw>,
 tim.bird@sony.com, Maxime Ripard <mripard@kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, k@japko.eu,
 linux-arm-kernel@lists.infradead.org, Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set adds initial support for MStar/Sigmastar's
ARMv7 based SoCs. There is just enough here to get to a shell
with an initramfs but support for a lot of the hardware is
in progress and will follow.

MStar also shipped chips with MIPS cores and ARM9 etc which
are incompatible so I've tried to make the distinction in the
code that this is strictly for the ARMv7 based chips.

Differences from v1:

1. v1 only really supported two specific chips that were known
at the time of submitting that patch series. Since then it's
become apparent that there are a few families of SoCs based
on the same ARMv7 core, clk blocks, interrupt controllers etc
and this v2 attempts to make support more generic so in the future
more SoCs from this lineage can be added. Support for some other
chips is already in progress and will follow.

2. v1 only added support for the BreadBee boards that I have been
working on. v2 also adds support for a readily available car dash
camera.

3. Support for the BreadBee board has been split into two top level
dts to cleanly support if either the msc313 or msc313e is mounted on
the board. The chips are pin compatible but some of the internal
hardware is different. The u-boot port for these SoCs can detect
which chip it is running on and select the right dts so the user
doesn't have to care which chip is mounted on their board.


Daniel Palmer (5):
  dt-bindings: arm: Initial MStar vendor prefixes and compatible strings
  ARM: mstar: Add machine for MStar/Sigmastar infinity/mercury family
    ARMv7 SoCs
  ARM: mstar: Add infinity/mercury series dtsi
  ARM: mstar: Add dts for msc313(e) based BreadBee boards
  ARM: mstar: Add dts for 70mai midrive d08

 .../devicetree/bindings/arm/mstar.yaml        | 30 ++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  6 ++
 MAINTAINERS                                   | 10 +++
 arch/arm/Kconfig                              |  2 +
 arch/arm/Makefile                             |  1 +
 arch/arm/boot/dts/Makefile                    |  4 ++
 .../dts/infinity-msc313-breadbee_crust.dts    | 25 +++++++
 arch/arm/boot/dts/infinity-msc313.dtsi        | 14 ++++
 arch/arm/boot/dts/infinity.dtsi               | 10 +++
 .../boot/dts/infinity3-msc313e-breadbee.dts   | 25 +++++++
 arch/arm/boot/dts/infinity3-msc313e.dtsi      | 14 ++++
 arch/arm/boot/dts/infinity3.dtsi              | 10 +++
 .../boot/dts/mercury5-ssc8336n-midrive08.dts  | 25 +++++++
 arch/arm/boot/dts/mercury5-ssc8336n.dtsi      | 14 ++++
 arch/arm/boot/dts/mercury5.dtsi               | 10 +++
 arch/arm/boot/dts/mstar-v7.dtsi               | 71 ++++++++++++++++++
 arch/arm/mach-mstar/Kconfig                   | 26 +++++++
 arch/arm/mach-mstar/Makefile                  |  1 +
 arch/arm/mach-mstar/mstarv7.c                 | 72 +++++++++++++++++++
 19 files changed, 370 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mstar.yaml
 create mode 100644 arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts
 create mode 100644 arch/arm/boot/dts/infinity-msc313.dtsi
 create mode 100644 arch/arm/boot/dts/infinity.dtsi
 create mode 100644 arch/arm/boot/dts/infinity3-msc313e-breadbee.dts
 create mode 100644 arch/arm/boot/dts/infinity3-msc313e.dtsi
 create mode 100644 arch/arm/boot/dts/infinity3.dtsi
 create mode 100644 arch/arm/boot/dts/mercury5-ssc8336n-midrive08.dts
 create mode 100644 arch/arm/boot/dts/mercury5-ssc8336n.dtsi
 create mode 100644 arch/arm/boot/dts/mercury5.dtsi
 create mode 100644 arch/arm/boot/dts/mstar-v7.dtsi
 create mode 100644 arch/arm/mach-mstar/Kconfig
 create mode 100644 arch/arm/mach-mstar/Makefile
 create mode 100644 arch/arm/mach-mstar/mstarv7.c

-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
