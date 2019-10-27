Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 550EAE6428
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 17:24:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wo+j/bjdPWf1QCY69biKgHMpXjKsFYjzqjztAwCUWM8=; b=iHd+7O1O91a72t
	8+g8DTX1U28hsYoI13sIGGQGPu1X2mOtSxiSKGbOGNtTdwBc3xmfRPPp8Fak7vYhbUO+KcVQZGNIg
	C4qBMXZdsShNx7kRQAaQju0uwoB57c6p9erIcBfnmyloTecXZwCfRmyFrwq3lLS4qtZVyfDSYQybu
	oMgyqYYf4a16CLdg0sZjeAJbE6K2qlfeglVHGBp6j67k/8zD6h2n1wZ2gVaalPgtzp6pCQIejIJv7
	wf8Rhl/5DYDw3ZbhzwoB35gYE5j+VUrhVv2WCYhirmJGC6tSWeSRNxVKhy48/sbvWuoAmSyPH/pjo
	ixmnpI7r6hx+0Dr4v7Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOlKj-0001EU-Tp; Sun, 27 Oct 2019 16:24:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOlKP-0001CP-9n; Sun, 27 Oct 2019 16:23:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id z11so7347865wro.11;
 Sun, 27 Oct 2019 09:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VHh2wTvDV7QQYeDnQO2gSOBLNsofT3XUbH0CNdaqVwQ=;
 b=KUlQvi090P07yc00xZbpnA38RqozC6gRBuSVoaFEKscMs68UnSExgUqVsSQHQc2uYJ
 IpZUIUqNdvpapTouYOP74UN7kLw7dO+gsAi6bYSKXS+5kqC2zcaBnJvhwbxoZYOHt2ZA
 8eXPaUzfYQ04gsezKrtuPaIQUXlbdtaVdLpytujuklJliVD+dP5lMqkSXQOf9jPOBVVt
 fgUSME/UKfvLRTzgwKghLba7fF1q42UIGYZkiwYapnTwcjyP0TbBC79Ia9thpIjHOmQ8
 qWEbEjOn6yrEmW7vaz0FsjRfQ99Z2ki3dCOllrn029X21iSTG1Vxp+8lmsBagasc8MAT
 I7vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VHh2wTvDV7QQYeDnQO2gSOBLNsofT3XUbH0CNdaqVwQ=;
 b=no6m3K4vpZ3y2IrlcJDfX9TdplJqp2xOIp6ed87Rf1Af+XwKJCGiBWx8/BVFJi0tLn
 vBSWYyGNx2I9+/ZO7c0wnSaVHLR7GBe1cyX86RzJyO/gnt0DHR5R7KIImQyFZKZ2uDnZ
 +AUgPY9mcte5KNKXHAKepl4B785sg+A+Bu30TUgSnwQka8xKIEo8I15FwFMS5zoe1vqT
 Mzdk/gCvIK0coF1DRdsccxB+7UyW6xU2J9V3X4PHzkvYaoiUng9DLYaj0y/LPcXOaprc
 fQ5mD4ZjBc33rnRcHv+6Ycbr/uSSOr5veuzKZjiAal8TmAuNncE/PYfd1TFPpcF8lDOk
 Ut6Q==
X-Gm-Message-State: APjAAAWUyITteveAh7X4eFjwa/DJdzIZ+rbVA7Sy6u3iOQ9Rc67rPDYL
 wVlsOccisQdgi3kL1FWT0o0=
X-Google-Smtp-Source: APXvYqyCYGYmCvPNcNbH87Xqtct4wBPQgN4aJcAyg1RyMkX/chRC6UMEk/wYRQMsMbtgwGug5mVA0w==
X-Received: by 2002:adf:ce87:: with SMTP id r7mr11522180wrn.307.1572193419899; 
 Sun, 27 Oct 2019 09:23:39 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F133D01300428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33d0:1300:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id 1sm8243299wrr.16.2019.10.27.09.23.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 09:23:39 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org, khilman@baylibre.com
Subject: [PATCH v2 0/5] add the DDR clock controller on Meson8 and Meson8b
Date: Sun, 27 Oct 2019 17:23:23 +0100
Message-Id: <20191027162328.1177402-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_092341_365744_C10A7015 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Meson8 and Meson8b SoCs embed a DDR clock controller in their MMCBUS
registers. This series:
- adds support for this DDR clock controller (patches 0 and 1)
- wires up the DDR PLL as input for two audio clocks (patches 2 and 3)
- adds the DDR clock controller to meson8.dtsi and meson8b.dtsi

Special thanks go out to Alexandre Mergnat for switching the Amlogic
clock drivers over to parent_hws and parent_data. That made this series
a lot easier for me!

This series depends on v2 my other series from [0]:
"provide the XTAL clock via OF on Meson8/8b/8m2"

Changes since v1 at [1]:
- fixed the license of the .yaml binding and added Rob's Reviewed-by
- drop unused syscon.h include (spotted by Jerome - thanks)
- drop fast_io from regmap_config and add max_register as suggested
  by Jerome
- dropped original patch #4 "clk: meson: meson8b: add the ddr_pll
  input for the audio clocks" because I could not test that yet (that
  patch was a forward-port from Amlogic's 3.10 BSP kernel)


[0] https://patchwork.kernel.org/cover/11214189/
[1] https://patchwork.kernel.org/cover/11155553/


Martin Blumenstingl (5):
  dt-bindings: clock: add the Amlogic Meson8 DDR clock controller
    binding
  clk: meson: add a driver for the Meson8/8b/8m2 DDR clock controller
  clk: meson: meson8b: use of_clk_hw_register to register the clocks
  ARM: dts: meson8: add the DDR clock controller
  ARM: dts: meson8b: add the DDR clock controller

 .../clock/amlogic,meson8-ddr-clkc.yaml        |  50 ++++++
 arch/arm/boot/dts/meson8.dtsi                 |  13 +-
 arch/arm/boot/dts/meson8b.dtsi                |  13 +-
 drivers/clk/meson/Makefile                    |   2 +-
 drivers/clk/meson/meson8-ddr.c                | 152 ++++++++++++++++++
 drivers/clk/meson/meson8b.c                   |   2 +-
 include/dt-bindings/clock/meson8-ddr-clkc.h   |   4 +
 7 files changed, 230 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
 create mode 100644 drivers/clk/meson/meson8-ddr.c
 create mode 100644 include/dt-bindings/clock/meson8-ddr-clkc.h

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
