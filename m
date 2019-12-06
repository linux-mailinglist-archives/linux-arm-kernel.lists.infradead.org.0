Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F14115745
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=syQM8Fn+CjOfQ9TlRJA8I/ESI4UOdNS6YmR4vfCXBp4=; b=Z2ChCKroY5Wi3j
	eFa1HSJ1xUrARru/gugpSHXUosjL4DgbdeI0KC7Z+qAB55ugvTRNqs+YdLOLyHIVEyVnO+xxSwvto
	j5LDGNducqhFIFQJAmS+XWkcbp+T+0JOHP3Sl4cL2Xvj0kG+WSvYBknKl5WeVeUJ/chD7Xz+Y3gNm
	eBZva4ERtsXfLaB4GgJ6yKzpywQkumXsuDPdE5ThuzD90A5EJ3R+hsR3sluso6QY72gpuCB/fupGi
	rFNyFMxLAb07Yei5ZsuBtZZUC/rB4fqcdVUARbfnSLs1ZnmB9JI9w9j0Vmjr5WTTSxmjpfVxXzfeq
	3PPPlGmj0bbfXDB5tF/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idIc4-00030B-28; Fri, 06 Dec 2019 18:46:00 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idIbu-0002zH-7P; Fri, 06 Dec 2019 18:45:51 +0000
Received: by mail-pj1-x102b.google.com with SMTP id ep17so3101392pjb.4;
 Fri, 06 Dec 2019 10:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Fi0v276DytflAY2h044Dlr4Bh1mkN9HRCT9MVIFntkY=;
 b=kUh88S/sioS4h6odf8ciymAoRA+iF6r6am/1niCdnSLdPozYU9dH9/TqVtEM0FdTqJ
 DvARn1aA34ayQ9UgeiGdEylxIUc+/5D7F2McVzdOShdS6npIMJf73uC1lZABX0pr9ve1
 em8TXNYcm/OxQkkFoL9030k/+5snXhw1KXnB2Ys5jiDv2BGTLwNtZ1DKQ7EBGPPuWvz6
 a2IVyzKZnPoryhDfFVikzF01PPJiDI4yV2DXl0/pe2zEqnPK29qUY+kQkLjPfXeRtMQt
 re7GZ7QNKP3dHIooQsBlP0V8NxxJEchC4kj2a6TnD+5uPLpOMnQ0a+Bm2M6HtEhFwXDx
 3tEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Fi0v276DytflAY2h044Dlr4Bh1mkN9HRCT9MVIFntkY=;
 b=GMEfehUSmIgiTmzHdFWUusipweLNPQelzDNE+cfMc5quDxy9dEfhVsFibgxBN+SOor
 fY8R6ZE6i0/BsUFp75zdaBYpjf+1N1W69kWb1FgtxYrxXKO5suzOE8YQN8lczOOJwU2d
 H+V9U2GV0mLai7CT7fUc3hBr4k/9keSoQLB0Z+ir+pk1xI+r1DQKaD4TZ+FWFteBwPum
 dIYUqwF7j2nZzJRTJFXb+1Ypu3wL/NGdz5ptYvK62kdO+YwVAYk5PRooxRGHgimC2PIH
 Ja76vWrzpBgAKeEyI2YSILMM9gv4fUA3qXKXAP0jfDFk9Q3DInzEWKtZ2U3LhIxQxgVg
 zi8Q==
X-Gm-Message-State: APjAAAXkwjBFYanLhJNEV0TGusQVVP4OpA2J/fK4rp0Sa8m1L15O8ghO
 S6W7qhgaZwDSF/3XO75HmPc=
X-Google-Smtp-Source: APXvYqzFULyrWU1raYozRu6SwmVgDm85vacQym1/ejWbOJHlKBERhL2ywaXfNAK4/2L+wy8DtxUqpA==
X-Received: by 2002:a17:90a:868b:: with SMTP id
 p11mr17241511pjn.60.1575657945401; 
 Fri, 06 Dec 2019 10:45:45 -0800 (PST)
Received: from localhost.localdomain ([103.51.73.190])
 by smtp.gmail.com with ESMTPSA id p4sm16777039pfb.157.2019.12.06.10.45.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 10:45:44 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Subject: [RFCv1 0/8] RK3399 clean shutdown issue
Date: Fri,  6 Dec 2019 18:45:28 +0000
Message-Id: <20191206184536.2507-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_104550_268447_3ACD9DDC 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most of the RK3399 SBC boards do not perform clean
shutdown and clean reboot.

These patches try to help resolve the issue with proper
shutdown by turning off the PMIC.

For reference 
RK805 PMCI data sheet:
[0] http://rockchip.fr/RK805%20datasheet%20V1.3.pdf
RK808 PMIC data sheet:
[1] http://rockchip.fr/RK808%20datasheet%20V1.4.pdf
RK817 PMIC data sheet:
[2] http://rockchip.fr/RK817%20datasheet%20V1.01.pdf 
RK818 PMIC data sheet:
[3] http://rockchip.fr/RK818%20datasheet%20V1.0.pdf

Reboot issue:
My guess is that we need to some proper sequence of
setting to PMCI to perform clean.

If you have any input please share them.

Tested on SBC
Rock960 Model A
Odroid N1
Rock64

-Anand Moon

Anand Moon (8):
  mfd: rk808: Refactor shutdown functions
  mfd: rk808: use syscore for RK805 PMIC shutdown
  mfd: rk808: use syscore for RK808 PMIC shutdown
  mfd: rk808: use syscore for RK818 PMIC shutdown
  mfd: rk808: cleanup unused function pointer
  mfd: rk808: use common syscore for all PMCI for clean shutdown
  arm64: rockchip: drop unused field from rk8xx i2c node
  arm: rockchip: drop unused field from rk8xx i2c node

 arch/arm/boot/dts/rk3036-kylin.dts            |   1 -
 arch/arm/boot/dts/rk3188-px3-evb.dts          |   1 -
 arch/arm/boot/dts/rk3288-evb-rk808.dts        |   1 -
 arch/arm/boot/dts/rk3288-phycore-som.dtsi     |   1 -
 arch/arm/boot/dts/rk3288-popmetal.dts         |   1 -
 arch/arm/boot/dts/rk3288-tinker.dtsi          |   1 -
 arch/arm/boot/dts/rk3288-veyron.dtsi          |   1 -
 arch/arm/boot/dts/rk3288-vyasa.dts            |   1 -
 arch/arm/boot/dts/rv1108-elgin-r1.dts         |   1 -
 arch/arm/boot/dts/rv1108-evb.dts              |   1 -
 arch/arm64/boot/dts/rockchip/px30-evb.dts     |   1 -
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |   1 -
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts   |   1 -
 .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |   1 -
 .../arm64/boot/dts/rockchip/rk3328-rock64.dts |   1 -
 .../boot/dts/rockchip/rk3368-geekbox.dts      |   1 -
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi |   1 -
 .../boot/dts/rockchip/rk3368-px5-evb.dts      |   1 -
 .../boot/dts/rockchip/rk3399-firefly.dts      |   1 -
 .../boot/dts/rockchip/rk3399-hugsun-x99.dts   |   1 -
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi |   1 -
 .../boot/dts/rockchip/rk3399-leez-p710.dts    |   1 -
 .../boot/dts/rockchip/rk3399-nanopi4.dtsi     |   1 -
 .../boot/dts/rockchip/rk3399-orangepi.dts     |   1 -
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi |   1 -
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |   1 -
 .../boot/dts/rockchip/rk3399-rock-pi-4.dts    |   1 -
 .../boot/dts/rockchip/rk3399-rock960.dtsi     |   1 -
 .../boot/dts/rockchip/rk3399-rockpro64.dts    |   1 -
 .../boot/dts/rockchip/rk3399-sapphire.dtsi    |   1 -
 drivers/mfd/rk808.c                           | 144 +++++-------------
 include/linux/mfd/rk808.h                     |   2 -
 32 files changed, 42 insertions(+), 134 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
