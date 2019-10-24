Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B9CE2F8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G5YMIBmrHtLgyrHNPgGz/BMot59gsLW8lglZozd54HE=; b=Igwv0Z3EeCcdLc
	/Kc3HuEz7uG0uS4P3R49w3foehQHKDKT2vww7T3iRiH1qtqEaOBsKVXwjEvwy0n/OUG1wbob+E3wU
	DGKUkv10EE6I5/JHB/Sg57FNg3WjYVYN+NhsTSQvYxak9znzHtNrEx+VQTzyMF9TxfSUV+58w/gHT
	eaP5iumLC0AxgLXWlml6gSb/7ierjg20gQUSuUztT5ElFgoLl/wHsY2ggIFyFumKhfQNpQHNxo/63
	D81gQk3pxA8ej4rF+ysvLgADFt47ul+l9sU4lS9XwMUA30EWiwhWwG9IHfqA88voq9WokBFOKmkVs
	jhlSGh/rL2Np7aHAOamw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNamO-00030w-Rp; Thu, 24 Oct 2019 10:55:44 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNalr-0002FI-HR
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:55:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1571914506; bh=1EYHhZa3jmmFFim3CNdXdWqGggwNarNck0+eiGZhSdU=;
 h=From:To:Cc:Subject:Date:From;
 b=XYbnHjp+wt4niF1BOdOuTn1CKEEUtjd5UaC6KAyEc4QWCXi7opj09D5URcrsrO1FN
 ZWo05sWeiM/7f+RrZBggguVUQUxmcEdQjNO0cAAWEkwILKQWyatoPCQH1UdMADM4wG
 t7ELJtQRA2B/wiAc5iU4Kc86XCJIFsJ3LevethF0=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Icenowy Zheng <icenowy@aosc.io>, Thomas Gleixner <tglx@linutronix.de>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 0/4] Add USB 3 support for H6 and Orange Pi 3
Date: Thu, 24 Oct 2019 12:54:56 +0200
Message-Id: <20191024105500.2252707-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_035511_752478_F1F08450 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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

Changes in v2:
- Added Maxime's Acked-By's
- Fixed title of DT bindings file

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
