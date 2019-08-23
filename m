Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC949AD33
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4hfl5pnTPrhV273gEF2nnyZVWcWU/3bGfvdOyyABtu8=; b=KGcmb/tnpZMzVb
	mrw1SumlHz6pP2Zyo/0kn4PekXlyGcat5lx8p92t7oheCjVa32LGgAZ200xI/SPThxWDgL9tW3zR8
	RxmEtIiiQKrzKoivBKk7HycCUaV5T246a8r3LIbxJTOBTpr31Zvz944O6ooOx7T/oht8TB+NjPsL4
	eK0ugWb2aM0UfCG8WdibSRyevUxXBdUN+QkZudawOCMr42rRhRBy4jxvukDOsYb3LS1FPb8GUBelP
	rOc7RGER3PG3lrxHbJm9EVVVzZ+rdiKwu+e8QU09g4ImcDVU/LFdV3+ATO5s5XJ1CazuQQvQWvz9H
	iqpGUNJZGHd2H/xSJj1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16rL-00037q-Q3; Fri, 23 Aug 2019 10:31:55 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16rD-00036D-VN
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:31:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566556306; bh=yUYphsfGd/2aYDGopZa37BQyG22wCozSNaBWz/Gf3VA=;
 h=From:To:Cc:Subject:Date:From;
 b=CLBm2jf8h4JtgS5SxCdnyB2k5v8MbkLorcykkkZZPMcfFyOYh8pAvI9yMkkJw4NGU
 mqsWw8GoynR+GBSYaUVHdBRcRQwBvHHLND7+NgL963Bh7n32Mzfe2iyE4G9Whqdn+/
 +M3v7tWKaN4Xieu16idwAgjEUyowSPLPrarww1V4=
From: megous@megous.com
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>
Subject: [RESEND PATCH 0/5] Add bluetooth support for Orange Pi 3
Date: Fri, 23 Aug 2019 12:31:34 +0200
Message-Id: <20190823103139.17687-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_033148_179555_4804D5B5 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ondrej Jirman <megous@megous.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

(Resend to add missing lists, sorry for the noise.)

This series implements bluetooth support for Xunlong Orange Pi 3 board.

The board uses AP6256 WiFi/BT 5.0 chip.

Summary of changes:

- add more delay to let initialize the chip
- let the kernel detect firmware file path
- add new compatible and update dt-bindings
- update Orange Pi 3 / H6 DTS

Please take a look.

thank you and regards,
  Ondrej Jirman

Ondrej Jirman (5):
  dt-bindings: net: Add compatible for BCM4345C5 bluetooth device
  bluetooth: bcm: Add support for loading firmware for BCM4345C5
  bluetooth: hci_bcm: Give more time to come out of reset
  arm64: dts: allwinner: h6: Add pin configs for uart1
  arm64: dts: allwinner: orange-pi-3: Enable UART1 / Bluetooth

 .../bindings/net/broadcom-bluetooth.txt       |  1 +
 .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 19 +++++++++++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 10 ++++++++++
 drivers/bluetooth/btbcm.c                     |  3 +++
 drivers/bluetooth/hci_bcm.c                   |  3 ++-
 5 files changed, 35 insertions(+), 1 deletion(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
