Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F87410DF0B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 20:49:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2jvdvr1SkfQerIcW1b83axD+OmNzh53m0WKfWpSwMSs=; b=OMeGIU5BUAGQW2
	WysF8WuKl34gQQ4gzu76YgQNFY7W5zP4IRRULnIok/kbT9Tm3BFzq46Una5ywk+ShIIcVsE6bNbAZ
	M28mipZPec7L+M1q8EuxNG8jk7+f10O9S9d8BoSZKSbQtr3ZUxPOJp5a2DT8ClkCG9Wly8rRtsjEj
	sTBB9lAtMuHGvumoFNMgdYNkJz86dfBm98Z2lj1zQa15UFxo8yJ6RV6wuxhmPlX43t82vnCxa9bjU
	GNuwMMCbscc8jy2dTcAIYfCiTYRdw3ExPZCt4Z/udxMsFiATPhZ+gklTo56mFaH+sH9uB8ctbbK+z
	3ig97cK4SblDRI9bcNDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib8k3-00068Z-MM; Sat, 30 Nov 2019 19:49:19 +0000
Received: from vault.bonstra.fr.eu.org ([51.158.68.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib8ik-0005Cf-C7
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 19:48:00 +0000
Received: from val.bonstra.fr.eu.org (unknown [192.168.128.2])
 by vault.bonstra.fr.eu.org (Postfix) with ESMTP id C2ED5BFAE7;
 Sat, 30 Nov 2019 19:47:41 +0000 (UTC)
Received: from localhost.localdomain (vlad.gr1 [IPv6:fd7b:45cc:aa3d::3])
 by val.bonstra.fr.eu.org (Postfix) with ESMTPSA id D075D60881;
 Sat, 30 Nov 2019 20:47:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bonstra.fr.eu.org;
 s=dkim1; t=1575143260; x=1576352860;
 bh=RkCtF3t+mrY07Rlpt9woNbDrN8gZErWsL76QRxLrVI0=;
 h=From:To:Cc:Subject:Date;
 b=noO0lae0Y45sumrYnKpQuZxnJvzL0cTz5j0c7kLPlXmxoycC9RwgHNrUp/b/FkUQh
 gUpVeNodS5y6bg7mFlqnHFqit4XcY/ksVC+6pcZ+9NMVW1SxvcW7uK/TVVcWsN4jQw
 5yPh65M2AUOOi2jx9dK3L6SkktF8YeDmffOxP4lHYICIHHnzOw84IHMLAXbvMaTnEN
 OY0akwTfPjr3aVO5ET99FrbaJfuPpW1bnkc9jCsN/R87g5QvAPX0qUPCIj1DTqnN5u
 ZGyRbqswWLwH9floSvLtlXUCGU3OpC2Hv0H4k/+rurGozpKeUsckiJJDuXHBuH8MR5
 jU45UN8EWE0zg==
From: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 0/3] Add Bluetooth support to Teres A64 I
Date: Sat, 30 Nov 2019 20:47:16 +0100
Message-Id: <20191130194719.112335-1-bonstra@bonstra.fr.eu.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_114758_543493_E36E3C7A 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Teres A64 I laptop comes equipped with a serial-attached Realtek
rtl8723bs Bluetooth controller. This series creates the DT binding for
the the Realtek vendor extension of the HCI H5 driver, for which ACPI
bindings already exist, and enable support for the Teres A64 I board.

The first patch adds the DT binding documentation.
The second one implements such binding in the HCI H5 driver.
The last patch adds the appropriate device node to the Teres A64 I dts
file to enable Bluetooth.

Changes since v2:
- Convert bindings to dt-schema
- Update GPIO property names
- Rename "enable-gpios" to "powerdown-gpios", and invert the logic in the
  driver code
- Use the "firmware-file" property instead of "config-name", and adjust
  driver code to accept a full file name instead of a postfix

Hugo Grostabussiat (3):
  dt-bindings: net: bluetooth: add DT bindings for Realtek controllers
  Bluetooth: hci_h5: Add DT support for rtl8723bs
  arm64: dts: allwinner: a64: Enable Bluetooth on Teres-I

 .../bindings/net/realtek-bluetooth.yaml       | 52 +++++++++++++
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts | 14 ++++
 drivers/bluetooth/Kconfig                     |  2 +-
 drivers/bluetooth/btrtl.c                     | 75 ++++++++++---------
 drivers/bluetooth/btrtl.h                     |  3 +-
 drivers/bluetooth/hci_h5.c                    | 65 ++++++++++++----
 6 files changed, 161 insertions(+), 50 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/realtek-bluetooth.yaml

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
