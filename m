Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50880239D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=m3QnDUO5g1XzchJcBnvkAkKyd/dXpsV4+JajVwdIDBY=; b=nIc
	8BdKfBY0VDtG5sxy5PfujgdQ/B8TioAuJk7gr+NNFzypmCOiSyWazO/U6guYXavPbGAyZkv7c5c4i
	5aw9+H5uP10dVI5cbxDK1Llw49+GgxzAJYZZT+MjEihVwPwyCzGn/ewVIqzT6QPNNcsGYlrHmNjIE
	d6pJmzTr3pk5ToVoHadO+H65CA056wlDbEQI6bZG1sirKDqybD4IsfeLTHHGqUoSE0Sm3o80R4QQs
	XmtlbldTegJ2CbeV+BNhRd+6dol621MK/uT4TQbMxkGceTKxSmcvVlOC5GQKgQMxtdV4i725x1XWI
	UQEto6RBitSarm+19a2sm9FIN6igzlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjCd-0003bu-As; Mon, 20 May 2019 14:23:47 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjCV-0003ZX-Bc
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:23:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id 1361C4E2050;
 Mon, 20 May 2019 14:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1558362217; bh=G2Vdy13QIkFIn2iPLmyuVNcUUNMCI/db3LBbV6MRJEk=;
 h=From:To:Cc:Subject:Date;
 b=Kjo6Kb7ZmxLVZjIeIfTkLB1dGRUV1qcCDqE8vAQlabnm/uYRXAvo3SS2fp26xw8fY
 oisT8vZlngAAOimxSy9z9JPo+N9TcXTmstV8TytW+Y3Dxa75Er7rTfTP0w2U1ehUuj
 AKYGc9LaxVVrJGb6aTnQ+tg/EHaT7bb5hz4mL3mU=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q3UmeccXOK6x; Mon, 20 May 2019 14:23:36 +0000 (UTC)
Received: from midas.localdomain (S0106788a2041785e.gv.shawcable.net
 [70.66.86.75])
 by node.akkea.ca (Postfix) with ESMTPSA id 1C28B4E204B;
 Mon, 20 May 2019 14:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1558362216; bh=G2Vdy13QIkFIn2iPLmyuVNcUUNMCI/db3LBbV6MRJEk=;
 h=From:To:Cc:Subject:Date;
 b=adzEcZn1QtJXjm0Yefg2uovysubSND5dI2YFskOxj4YcJkTH4SzdrFu2cC8pxtGKR
 vTGp0JtkLmVgfQxSSrs44r5QTtsVwo9HLR3Iu288XNJgruFHPso0QnUJE7kBOQWEV9
 QlXG0dXihxjR3E64pLh2u/mdt8wV8m0Tj0WeYsUg=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH v13 0/4] Add support for the Purism Librem5 devkit
Date: Mon, 20 May 2019 07:23:26 -0700
Message-Id: <20190520142330.3556-1-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_072339_449818_4A8672F2 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Librem5 devkit is based on the imx8mq from NXP. This is a default
devicetree to boot the board to a command prompt.

Changes since v12:

Updated patch to vendor-prefixes.yaml.
Dropped always on from regulators.

Changes since v11:

Added reviewed-by tags.
Fixed subject typo.

Changes since v10:

Moved MAINTAINERS entry to "ARM/FREESCALE IMX" section

Changes since v9:

Added a MAINTAINERS entry for arm64 imx devicetree files.

Changes since v8:

Fixed license comment.
Changed regulators to all lower case.
Changed clock frequency for NXP errata e7805.
Dropped blank line.

Changes since v7:

More regulators always on for USB.
Add vbus regulator.
Drop vbat regulator.
Replace legacy "gpio-key,wakeup" with "wakeup-source".
Add vbus-supply to get rid of warning
imx8mq-usb-phy 382f0040.usb-phy: 382f0040.usb-phy supply vbus not found,
using dummy regulator

Changes since v6:

Dropped unused regulators.
Fix regulator phandles case.
Dropped extra whitespace.

Changes since v5:

Added reviewed-by tags.
Moved USB port links to USB controller node.

Changes since v4:

Compiled against linux-next next-20190415.
Added imx8mq to the arm yaml file.
Re-arrange regulator nodes to drop undefined supplies.
Additional ordering for aesthetics.
Split some long lines.
Added lots of blank lines.
Moved pinctl muxes to where they are used.
Cleaned out reg defintions from regulator nodes.

Changes since v3:

Freshly sorted and pressed nodes.
Change the backlight to an interpolated scale.
Dropped i2c2.
Dropped devkit version number to match debian MR.

Changes since v2:

Fixed incorrect phy-supply for the fsl-fec.
Dropped unused regulator property.
Fixup Makefile for linux-next.

Changes since v1:

Dropped config file.
Updated the board compatible label.
Changed node names to follow naming conventions.
Added a more complete regulator hierachy.
Removed unused nodes.
Removed unknown devices.
Fixed comment style.
Dropped undocumented properties.


Angus Ainslie (Purism) (4):
  MAINTAINERS: add an entry for for arm64 imx devicetrees
  arm64: dts: fsl: librem5: Add a device tree for the Librem5 devkit
  dt-bindings: Add an entry for Purism SPC
  dt-bindings: arm: fsl: Add the imx8mq boards

 .../devicetree/bindings/arm/fsl.yaml          |   7 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   1 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx8mq-librem5-devkit.dts   | 810 ++++++++++++++++++
 5 files changed, 821 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
