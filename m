Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A095EDDEB6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 15:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t5IP8JZ76c9cu2ie+m6S528vOybi48F+/NtFzhtfHC0=; b=NJNDMTkC+/gfos
	Dm86RodX6kcOKYs+wed2KY2pcXIHvZi9JNlVibVjmFNL+94IrpD/zqW3V67Z50AIj+hCpNC91y+tC
	fhx5nqMi6/FsfxDV332Q0/xlOHnGVzZ0HH6hOgpxzkQrzk71FqRVDDteD8PzlfezAqXtYC5JTYkGy
	bDXu5LIaJPDh44xiTUaQhjegZkp18JMyDdWKNwXfWAr7F7oaN2DWBCvHFSv+lptmOUiYAq7D69jFS
	sJL6nRaiKvLUx8v78FY8q0wj/VU0DdZNrb3aNrd1Wrutd54I/zEhX29YwkmZPdTxHbiQd7tdJH5WG
	dQ0SNz1U2ZHmfyo5h1cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMBUa-00053j-Gv; Sun, 20 Oct 2019 13:43:32 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMBTh-0004PO-TW
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 13:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1571578951; bh=hofiJnVP7aDAhfypTNm/xBHKoQaxIAs/RXYARGH7SXc=;
 h=From:To:Cc:Subject:Date:From;
 b=rL0PJD9+XJttVWgq6PD++yB5Sj29S7dDgQLRKYExvDwtHfsFge/DBYBBg32DHDc3h
 uFt7Kll3lqRdpvBCmi1LsqpI0gVdL988W7mcdgp/2yBqEDdg6Xt1f6/Hipb/Rc017j
 eBYOK1eBGMgpotIXKAPN/Iy0Dq4rBZghfte9nFRU=
From: megous@megous.com
To: linux-sunxi@googlegroups.com, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Icenowy Zheng <icenowy@aosc.io>, Thomas Gleixner <tglx@linutronix.de>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 0/4] Add USB 3 support for H6 and Orange Pi 3
Date: Sun, 20 Oct 2019 15:42:25 +0200
Message-Id: <20191020134229.1216351-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_064238_119097_526E092F 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

This series implements USB 3 support for Xunlong Orange Pi 3 board.

This is a re-hash of the Icenowy's earlier USB3 work[1] without code
that caused controversy previously. Orange Pi 3 board doesn't need vbus
supply to be dynamically enabled, so that code is not needed to support
USB3 on this board.

Most of patches are already reviewed. I've converted dt-bindings to yaml
format, and added the Orange Pi 3 board modifications.

Hopefully with this series we can get USB3 support into mainline for
Orange Pi 3, and build on it later to support more boards, where
supporting them is more complicated.

Please take a look.

thank you and regards,
  Ondrej Jirman

[1] https://lore.kernel.org/patchwork/patch/1058919/


Changes since Icenowy v5 series:
- use earlier patches that did not include VBUS regulator/connector
  code
- converted dt bindings to yaml
- added patch to enable usb3 on Orange Pi 3

Icenowy Zheng (2):
  phy: allwinner: add phy driver for USB3 PHY on Allwinner H6 SoC
  arm64: dts: allwinner: h6: add USB3 device nodes

Ondrej Jirman (2):
  dt-bindings: Add bindings for USB3 phy on Allwinner H6
  arm64: dts: allwinner: orange-pi-3: Enable USB 3.0 host support

 .../phy/allwinner,sun50i-h6-usb3-phy.yaml     |  47 +++++
 .../dts/allwinner/sun50i-h6-orangepi-3.dts    |   8 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  32 +++
 drivers/phy/allwinner/Kconfig                 |  12 ++
 drivers/phy/allwinner/Makefile                |   1 +
 drivers/phy/allwinner/phy-sun50i-usb3.c       | 195 ++++++++++++++++++
 6 files changed, 295 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml
 create mode 100644 drivers/phy/allwinner/phy-sun50i-usb3.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
