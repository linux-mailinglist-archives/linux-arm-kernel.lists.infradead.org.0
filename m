Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E04C1038E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 12:41:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Iqm6upgB0g5H9W3N5ShhCMBfSAqkjbE8bOxGejvFndc=; b=adqQK1qd1Vx5hv
	rL0u9jwIEO2kJmXqepZeGDrZJ3cm8o7/zMAK16Q2yVLqw15lZc4q2giClgMHM8wlBqmC3lu0zZsWO
	sJaWtPt4cV6nw9Dew6W9O+g/a0IlNQXW0Z2HF5bICI4d23RxG7vb6gjTiz7Dzy/sntnTq4g/pgxE+
	ut7emoWS6DMm1JOidyikOYXKeFXullV1TGVWQa+rh303ad0P1K83Bhx37fb4MG3LkE5clXA6T01dK
	jXRZhBXSE4LPxbxSV7RaKcNA145T+bSHlKED7rlH0+u48TAHTZEuKty1r3hCQ7RYJQ4niGgCU9GGt
	5dveTOl1e+mWv2YMW0eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOM1-0002f4-Nr; Wed, 20 Nov 2019 11:41:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOLs-0002e7-JB
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:40:54 +0000
Received: by mail-pf1-x441.google.com with SMTP id 193so14079836pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 03:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EPJkuGz+JSjzJ50nZ26ldWX3k6k/FLUFZmlBSMSkXIM=;
 b=GtZuKo/YXhZDfFx2Fg6eTUxxwhtdrqfhNSiftIvxAboMj7Abz8xhbA6gApZCbFjKhx
 6++Cl8pLFZDZ+HgBc2POt6G2l1ZCWOYmPlqQwsubN7RSEa7EtG3XmIAtld4tulVCrEBP
 oSBFwZNYGG/AP89b5q2JMQOwDl/CE1NVR36xE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EPJkuGz+JSjzJ50nZ26ldWX3k6k/FLUFZmlBSMSkXIM=;
 b=HpSGFVgg00TzE4lnN9f7Nx4lK84IcEtFHFP/v4ojlr8qSlmlgHBUGy7wflNFhFgtvW
 l9YoCnZu491YxapxM+COLOmsxIq7jXp7n8X+E6vuEJnL4OOcuAII2fDlnF4eFlG+mg6e
 4G+ftml3nf4X3ig9FsE1POGq5cnrzquZI2GdADvBW8U8AvJ+5RcTSBHoeKFY1oO5NQyo
 xWhfIEkA7BnNMDEoK2GMu17sZ2sjQ4sWwpDuEa/prtnfLz4Ez6P1fm/FkQ0ILn2oOTv6
 IIw8Km69Ms/h6+xLsbaLxzWEaKaf8qfXsAwhFsBw3qra8jAe1r28uhC8gUD3qRI0tBNB
 jojg==
X-Gm-Message-State: APjAAAVdExltay6dAWB6U4Qto4NL5vzK7yIQ/I1yFZSkFZOCt7sqRlHz
 1U9RMmj8WtB4QYbLtnJawrx+qw==
X-Google-Smtp-Source: APXvYqwEZ56JDZTPJcrZRd6NoxeRu3wg9RK57Xc3CqoGcBA0SsoP47nnmr5ufV5AVYg+p5xqSb8IRg==
X-Received: by 2002:a62:e818:: with SMTP id c24mr3459856pfi.125.1574250051807; 
 Wed, 20 Nov 2019 03:40:51 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id h185sm13492850pgc.87.2019.11.20.03.40.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:40:50 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 0/5] arm64: dts: rockchip: Add Rock Pi N10 support
Date: Wed, 20 Nov 2019 17:09:18 +0530
Message-Id: <20191120113923.11685-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_034053_056823_6365E032 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unlike, other Rock PI boards from radxa, Rock Pi N10 SBC is based
on SOM + Carrier board combination.

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

This series add initial support for Rock Pi N10.

patch 0001: dt-bindings for VMARC RK3399Pro SOM

patch 0002: VMARC RK3399Pro SOM dtsi support

patch 0003: dt-bindings for Rock Pi N10

patch 0004: Radxa carrier board dtsi support

patch 0005: Rock Pi N10 dts support

Tested basic peripherals and will all more in future patches.

Any inputs?
Jagan.

Jagan Teki (5):
  dt-bindings: arm: rockchip: Add VMARC RK3399Pro SOM binding
  arm64: dts: rockchip: Add VMARC RK3399Pro SOM initial support
  dt-bindings: arm: rockchip: Add Rock Pi N10 binding
  ARM: dts: rockchip: Add Radxa Carrier board
  arm64: dts: rockchip: Add Radxa Rock Pi N10 initial support

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../boot/dts/rockchip-radxa-carrierboard.dtsi |  81 +++++
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399pro-rock-pi-n10.dts    |  17 +
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 339 ++++++++++++++++++
 5 files changed, 448 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
