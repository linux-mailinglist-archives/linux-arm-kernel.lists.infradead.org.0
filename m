Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 625A992417
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=64wCaeDCBg8odoJFqE/ogSGkp+LqA20VwnuLgxd3CFQ=; b=Srl
	BcWj0X64uU8IieTvoWwNKReWrWqZttJlKeENfstbdP7J3HiGaCiT24bwcONMw7Ba5LqXBB6ehtvOt
	N4u1OjwG9BhUSR1EWSFwdrAC9gFe5h3j+omA3sfMnB7nL4aK3V9m7eGGUHBskF4I0kl5RxdXb+PXF
	LzqEws1iqZe1NGx3BUEKdrBLkYtTUITOiIfVyXf9P7lT5D5D9/PiflT1dAtTfW/sfzXVAv+Fp8aV7
	YPgh6wdeSS/GYNyKeZxlWLmQ5UDrzAhvGW/CAWBCc/9uo9/1jSdvzXmg/uJhgAzfNASNxLdeergfi
	LdV29UTn6X2i3pbhtVFR/dF7o7ETKJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhIV-0000rN-P4; Mon, 19 Aug 2019 13:02:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhIN-0000qd-VU
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:02:01 +0000
Received: by mail-pg1-x541.google.com with SMTP id u17so1193863pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 06:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ro8NKFkgruYUmO3tKNMvPEE1StisH9qvZFC7x6V6Dyo=;
 b=uhcA35N59KiYak0FvJjaWA0JqdakHYRgV6udX5bKaVu2FDZ/jyGdZf/xD07iEIzxPr
 Rek11IDX2I/K530tekaf8eUX26/KRrB2BxoSdpym84viDhBcmw5C7LwHhPGOLRLypYhZ
 mHOzkzjnk4RLJh1pJa4wDOaY/8kK6XMfeTzN0ymvzEsIkCj0GqCr+36J6S4izQ/qeB3g
 +H08Pv2/SBzDAJccPaJ7St511RS7JB1ZuPmjhHSy4BQUswfxndPWftka8HBiVjmUwq2k
 yzIL21ejhxM+sU0E6ss7bxhu7BGfcS3U2O6os7QSuIN2nCJsU6FdDWCZgmkkWP/WqSvE
 9tMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ro8NKFkgruYUmO3tKNMvPEE1StisH9qvZFC7x6V6Dyo=;
 b=TYBLh5q/3ATJH4tlLGBRB5410oYqj3uFilHnHAmozPDgczzaBL0t7EGaDEBY2f0wKN
 j+vNIDb4Aj/BnwhAa4CVXmLHwUtZ1EvGKCJrVDRgxM179k1r0WHXMCYjgWdNKNyF+Dxw
 kr0xUrent7krJOQG0dv4yWUMWm+vWiTYB/2bA0kVV48lmKIVXhNwLoqzm3TmRqJcJ40u
 sXJCaXxSHe5sUazfilX+5X5IzkiMf4UOnpJyG2jTiGKBZP9dw8zhvrM4hGbJZdMaGLJ0
 9fOH+3YcgNIA3xVBu5i/77lJi3pEk7oxqnD8b2nkZ/dgRqpV3fTmChdlEiqfAScnFZ9R
 0grA==
X-Gm-Message-State: APjAAAUNu4eulhKxbbzuQtkWwufy2Z/rxq42E2F39k5tQ80Lucoo+KRj
 K36PKTMYg0jqAKZk9FszbOuF
X-Google-Smtp-Source: APXvYqzsUBOFxMEmt52Se2k/zQQ92PZSTwH/Xijj4LZlyCnpj925m8T8I5xgjlepjNv5jH4kugl9Cw==
X-Received: by 2002:a63:5b52:: with SMTP id l18mr19716563pgm.21.1566219718474; 
 Mon, 19 Aug 2019 06:01:58 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
 by smtp.googlemail.com with ESMTPSA id l123sm20626464pfl.9.2019.08.19.06.01.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 06:01:57 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v3 0/8] Add Bitmain BM1880 clock driver
Date: Mon, 19 Aug 2019 18:31:35 +0530
Message-Id: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_060200_021030_0F8DA5F5 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds common clock driver for Bitmain BM1880 SoC clock
controller. The clock controller consists of gate, divider, mux
and pll clocks with different compositions. Hence, the driver uses
composite clock structure in place where multiple clocking units are
combined together.

This patchset also removes UART fixed clock and sources clocks from clock
controller for Sophon Edge board where the driver has been validated.

Thanks,
Mani

Changes in v3:

* Switched to clk_hw_{register/unregister} APIs
* Returned clk_hw from the in-driver registration helpers

Changes in v2:

* Converted the dt binding to YAML
* Incorporated review comments from Stephen (majority of change is switching
  to new way of specifying clk parents)

Manivannan Sadhasivam (8):
  clk: Zero init clk_init_data in helpers
  clk: Warn if clk_init_data is not zero initialized
  clk: Add clk_hw_unregister_composite helper function definition
  dt-bindings: clock: Add devicetree binding for BM1880 SoC
  arm64: dts: bitmain: Add clock controller support for BM1880 SoC
  arm64: dts: bitmain: Source common clock for UART controllers
  clk: Add common clock driver for BM1880 SoC
  MAINTAINERS: Add entry for BM1880 SoC clock driver

 .../bindings/clock/bitmain,bm1880-clk.yaml    |  83 ++
 MAINTAINERS                                   |   2 +
 .../boot/dts/bitmain/bm1880-sophon-edge.dts   |   9 -
 arch/arm64/boot/dts/bitmain/bm1880.dtsi       |  28 +
 drivers/clk/Kconfig                           |   6 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/clk-bm1880.c                      | 966 ++++++++++++++++++
 drivers/clk/clk-composite.c                   |  13 +-
 drivers/clk/clk-divider.c                     |   2 +-
 drivers/clk/clk-fixed-rate.c                  |   2 +-
 drivers/clk/clk-gate.c                        |   2 +-
 drivers/clk/clk-mux.c                         |   2 +-
 drivers/clk/clk.c                             |   8 +
 include/dt-bindings/clock/bm1880-clock.h      |  82 ++
 14 files changed, 1192 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 create mode 100644 drivers/clk/clk-bm1880.c
 create mode 100644 include/dt-bindings/clock/bm1880-clock.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
