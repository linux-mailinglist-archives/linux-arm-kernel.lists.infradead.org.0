Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D792FB9E8E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 17:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DrJRbVuJPA98ewWygWyJSYLVbMVrM0Ap5NE8oNqudZk=; b=l3SOAAEYXjH2+5
	fKXZ2kBFGa2qsJEyy/l8jNLAujhmHWhVgGAjcdgqak3dIih7i63k1T+0pHlYv8YJb8AneHF5NtsT/
	aWgMLWnBeP2LziOyMOnah/JlCcFTGBIic6zQIOcWNOVve5RNWiYNz3L4UlkIU1XrgG/xCevxa08Hg
	NDMD7ztpjTP6GNNXgI3nUj68aFeRL6IH71/ky+GllBb7JEIdlBNzUfYyD/AwMDbagHO+1CJo4JJyh
	7VJbie3zSoo85z/8aXWcbtl+gknRqiG0FjnKcUMbnYZAJAw/B++FDKtTBLUfWDVGYg7w/9e3ZGQ9g
	Kyb8cq9cDHLYb34UsG8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBhAc-0002UI-1E; Sat, 21 Sep 2019 15:19:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBh9w-000266-0C; Sat, 21 Sep 2019 15:18:54 +0000
Received: by mail-wr1-x443.google.com with SMTP id h7so9588579wrw.8;
 Sat, 21 Sep 2019 08:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5OzBxZ0+t9wPFf+C2nN8hPMeCG+6RrzJB994YNsSPow=;
 b=JoExe4w00+RQX07OVlrkNWAZ+jqPrWWMn48DHOqgsVcWwFyn0HG3+LxNK4j4btrwPb
 RwcxKjLaRQyOsW5QhswDb6Bua+1o4gIWqvofch6Tp+fsdMQF4kjKlZXeBj3u8YOcmcZQ
 k0YRb5NKvPR8ybhIJHwFv12zoFj8fy2YhJ0FhE+9MtZtlx+cyIGitCSJmCoq78jpIad/
 hCfaP2kjMobcXwN0ahzom+Lj95/Qi9JhGblOIpeDpOEhCkMEQl96Pv2AhXIONST7t+J9
 nlpvKVRjN+CHd6JY+Kaba4pnncYqmYASPyfMAnR5Uk11K73r4mKWqeqD2otLsbzGsq9B
 i73w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5OzBxZ0+t9wPFf+C2nN8hPMeCG+6RrzJB994YNsSPow=;
 b=NpGIMViv8MEHAspRRtu2FGIPMJ6QTiwYv5XyBOLJ/oNa3+yhrI+hGNKH6FqQhXG8Gx
 Heu4ApAmlW6T1AVudU0rPqmw7apb1pv4q0ATRPwMvC70hmHTdCPauAwOTav543NuU/Ar
 Da7gmicf+qbAZ/w9+Pu3B2epcRA3VTLQttFooW351moRdZG/wmHXhFrnHhonfsxOFV+s
 0Vhz1Cj6li1l7RNbfiDbTgEf217P+QQ7FCyRHmTE6CHqo0wFM3yzKecqlZ5H+H9bOgOi
 tvlWBrVL2FkSQbrueSkkh2pEHx0tKdSyQzBtyWh7O1HHGsH6QwBRA/vWX/y8g20Jo+0e
 YYtA==
X-Gm-Message-State: APjAAAV35aGzGX3VTW5hYtt0q2yyQS2f2KVzfncmABdqfZllpfao80/r
 zoFyGQB1EH08X4ntYhpB1os=
X-Google-Smtp-Source: APXvYqx5rx1KF5E+8Mnl8pYNnX5dBt83NmBM6M4uxpyja5jdFKCCDRdrsXVrRIOaK1Jc/1Qk47lG9w==
X-Received: by 2002:a5d:4fcf:: with SMTP id h15mr15997165wrw.237.1569079127155; 
 Sat, 21 Sep 2019 08:18:47 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133CE0B0028BAA8C744A6F562.dip0.t-ipconnect.de.
 [2003:f1:33ce:b00:28ba:a8c7:44a6:f562])
 by smtp.googlemail.com with ESMTPSA id c6sm6003120wrb.60.2019.09.21.08.18.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 08:18:46 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, khilman@baylibre.com
Subject: [PATCH 0/6] add the DDR clock controller on Meson8 and Meson8b
Date: Sat, 21 Sep 2019 17:18:29 +0200
Message-Id: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_081852_648586_DC54D973 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
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

This series depends on my other series from [0]:
"provide the XTAL clock via OF on Meson8/8b/8m2"


[0] https://patchwork.kernel.org/cover/11155515/


Martin Blumenstingl (6):
  dt-bindings: clock: add the Amlogic Meson8 DDR clock controller
    binding
  clk: meson: add a driver for the Meson8/8b/8m2 DDR clock controller
  clk: meson: meson8b: use of_clk_hw_register to register the clocks
  clk: meson: meson8b: add the ddr_pll input for the audio clocks
  ARM: dts: meson8: add the DDR clock controller
  ARM: dts: meson8b: add the DDR clock controller

 .../clock/amlogic,meson8-ddr-clkc.yaml        |  50 ++++++
 arch/arm/boot/dts/meson8.dtsi                 |  13 +-
 arch/arm/boot/dts/meson8b.dtsi                |  13 +-
 drivers/clk/meson/Makefile                    |   2 +-
 drivers/clk/meson/meson8-ddr.c                | 153 ++++++++++++++++++
 drivers/clk/meson/meson8b.c                   |  36 ++---
 include/dt-bindings/clock/meson8-ddr-clkc.h   |   4 +
 7 files changed, 245 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
 create mode 100644 drivers/clk/meson/meson8-ddr.c
 create mode 100644 include/dt-bindings/clock/meson8-ddr-clkc.h

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
