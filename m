Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6561E3A5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0l5jWDWWngpYH6wftotE1R4d7V+cCu9fW5xw0t4IQbQ=; b=OeObhOO0zO7RRn
	+aoJ6uZNrGLE4iu/ro1V/RLCyO4a1xpJevPd/40ufrzwhR9EnJQ3Uj+a1LCk7pqYdYagOC2be6ohk
	DdwgG4YKu30lhlS1tMJUgwqH1y0gwwhIUF1XwOSK8SMvlzrKlz3nzwsX07nV4gmBXKjSfY2mn2Pqj
	lkNH6XclGYoXU9JyPJ6zDl1Ne7xxqUGHHMwJ/N1ZUZaq7YE7gjBRvjBRGW9qTzxq1oRpe8qOGokGc
	2oLHQQvib2Pq0FI5GxeRa8ZcE2MJQQl5yFDtSwUlnNxxRVwNyi0QUC2ciPBIM5HRUI3/lx2jrp5tc
	qICCMGVKGwsrPPvjVPow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqTf-0002X0-44; Wed, 27 May 2020 07:27:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqTV-0002Wf-GX
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:27:42 +0000
Received: by mail-pg1-x544.google.com with SMTP id 124so5176877pgi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 00:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8/pnqpOF5kxfkVhRDe0RiihBA49v54di4gIOur7X7TI=;
 b=LLxklYnNzudxPlgcrT/fJNH2MPem+uGxJgHfy7oOISPLHa6ikpirtHb4EbdRGht7SY
 WvJUMfY8ftB39R8dNXZmU0Tsi2+8gVyzbQCdw8JVrCCtOYOTkA4VPmul/BxC4cxSn7b2
 pJcm00a/TAQ3Hkvjqm+ckwrHB8AcyPl9jNbg/EnnpbvIKqDkgcQMjJZnehn3ZjSV+LbB
 YopiG1L1bRkwjA1To3JPFquX6uVMApyoXGMGTYtvF5qp8ill3bfFy8od9hHGwd+ADjFS
 C4AH+ZC+zqbKPpKFcdUQ4GzSfrAoHBsQ5Drwozv/8sGHx5h3hzJvvdBCpRm14Hg22v5Q
 a5Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8/pnqpOF5kxfkVhRDe0RiihBA49v54di4gIOur7X7TI=;
 b=rhn1vvU0MOoyDCOYTWf9laP0LKqud7Wvbe9hCQYkwKGKfFdWfup8JK6e7H/8SyOZ7a
 wVwFCfLbQBqN4JvU3uktW82AzaoqpcZac+lVEuCXNtAp5biqft3zuabXLl7OMTJ0aOXd
 cfteyCTOHxwh/Eg8ehTDYD5GJQbipm4HO7obRy5C13cjhU8hYJNrpu3YneDwqUblvDiO
 5wqQcDCiQte1zGJQH++2h+8FQu8xwRDAp5D2gQeU4KzD+nNEFllKpba0OZcixFan7o3n
 BqXFgNT9eqRoqCQqk7Db7fPsQVKDvEBaPOf+WjiFw3a0062BTC4F8NRuJb1Su1kIw55f
 n+ow==
X-Gm-Message-State: AOAM530sWZLdFYtbg9ACrnc6x5rL7BfiCS/Sx3aua99REijmtICWydfG
 B6nDFTajVnph90VYcmFC1lw=
X-Google-Smtp-Source: ABdhPJxTLPr+jP/ArwpWxHxmn/pRT0kb8dD0HedLtdqVNcsMKzf6roH/kNinnVypb58H7dXiI1M8vg==
X-Received: by 2002:a63:fd57:: with SMTP id m23mr2859284pgj.325.1590564460640; 
 Wed, 27 May 2020 00:27:40 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id q201sm1371842pfq.40.2020.05.27.00.27.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 May 2020 00:27:40 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, thierry.reding@gmail.com, sam@ravnborg.org,
 airlied@linux.ie, daniel@ffwll.ch, mturquette@baylibre.com,
 sboyd@kernel.org, andy.shevchenko@gmail.com, noralf@tronnes.org,
 linus.walleij@linaro.org, broonie@kernel.org
Subject: [PATCH v6 0/9] Enable ili9341 and l3gd20 on stm32f429-disco
Date: Wed, 27 May 2020 15:27:24 +0800
Message-Id: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_002741_565729_0B16F542 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

V6:
1 separate '[PATCH v5 5/8]' patchs to two, each one has a Fixes tags according
  to Stephen Boyd's suggestion
2 fix panel-ilitek-ili9341 compile warning 'warning: Function parameter or
  member xxx not described in xxx' with W=1

V5's update based on Mark Brown's suggestion, use 'SPI_MASTER_MUST_RX'
for SPI_SIMPLEX_RX mode on stm32 spi controller.

V5:
1 instead of add send dummy data out under SIMPLEX_RX mode,
  add flags 'SPI_CONTROLLER_MUST_TX' for stm32 spi driver
2 bypass 'SPI_CONTROLLER_MUST_TX' and 'SPI_CONTROLLER_MUST_RX' under
  'SPI_3WIRE' mode

V4:
  According to alexandre torgue's suggestion, combine ili9341 and
  l3gd20's modification on stm32f429-disco board to one patchset.

Changes:

ili9341:

1 update ili9341 panel driver according to Linus's suggestion
2 drop V1's No.5 patch, sumbit new changes for clk-stm32f4
3 merge l3gd20's change to this patchset

V3:
1 merge original tiny/ili9341.c driver to panel/panel-ilitek-ili9341.c
  to support serial spi & parallel rgb interface in one driver.
2 update ilitek,ili9341.yaml dts binding documentation.
3 update stm32f429-disco dts binding

V2:
1 verify ilitek,ili9341.yaml with make O=../linux-stm32
  dt_binding_check
  DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/panel/
  ilitek,ili9341.yaml

V1:
1 add ili9341 drm panel driver
2 add ltdc, spi5 controller for stm32f429-disco
3 add ltdc, spi5 pin map for stm32f429-disco
4 add docs about ili9341
5 fix ltdc driver loading hang in clk set rate bug


L3gd20:

V3:
1 merge stm32f429-disco dtbs binding with ili9341 part

V2:
1 insert blank line at stm32f420-disco.dts line 143
2 add more description for l3gd20 in commit message

V1:
1 enable spi5 controller on stm32f429-disco (dts)
2 add spi5 pinmap for stm32f429-disco  (dts)
3 add SPI_SIMPLEX_RX, SPI_3WIRE_RX support for stm32f4


dillon min (9):
  ARM: dts: stm32: Add dma config for spi5
  ARM: dts: stm32: Add pin map for ltdc & spi5 on stm32f429-disco board
  ARM: dts: stm32: enable ltdc binding with ili9341, gyro l3gd20 on    
    stm32429-disco board
  dt-bindings: display: panel: Add ilitek ili9341 panel bindings
  clk: stm32: Fix stm32f429's ltdc driver hang in set clock rate
  clk: stm32: Fix ltdc's clock turn off by clk_disable_unused() after
    kernel     startup
  drm/panel: Add ilitek ili9341 panel driver
  spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX' support for stm32f4
  spi: flags 'SPI_CONTROLLER_MUST_RX' and 'SPI_CONTROLLER_MUST_TX' can't
    be     coexit with 'SPI_3WIRE' mode

 .../bindings/display/panel/ilitek,ili9341.yaml     |   69 ++
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi             |   67 +
 arch/arm/boot/dts/stm32f429-disco.dts              |   48 +
 arch/arm/boot/dts/stm32f429.dtsi                   |    3 +
 drivers/clk/clk-stm32f4.c                          |    7 +-
 drivers/gpu/drm/panel/Kconfig                      |   12 +
 drivers/gpu/drm/panel/Makefile                     |    1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9341.c       | 1288 ++++++++++++++++++++
 drivers/spi/spi-stm32.c                            |   19 +-
 drivers/spi/spi.c                                  |    3 +-
 10 files changed, 1508 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9341.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
