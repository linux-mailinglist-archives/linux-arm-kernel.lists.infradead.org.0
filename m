Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F03F3365
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PDHDmEUB3jTRUyy9kU54m/su/3nGOhAU8ZVF8NX3MMQ=; b=d9M22PFRnuZ+Q4
	/3B8mlrn+e+wt/lsp5Y0e4O6EMHwJI4+OmkFBgjX0KyxSaX4GqLiLKLhlFqACPMiJDthGEdqGHkH+
	nq6JdPAhqC5cBkprIBOhaEM5FCDjczLLvbuESLqDKeMPYUKQD8XRSBhd2rJS5cvxRSanzI9cR3T7e
	4P1KFtWpzWTXKOglWZKY7O8yvungvfG8uArVTf+Wb3Gae/Ccnz7RzV9DFt1HYZCbcZ94LY4XDyXsV
	9ROpBv+T5PaX/lYRAKuy7NylmfAa3EkDAWjXCEAUC443JwDQhZX/5iaraChtioTse/JJkYXmHZYJM
	8/JS8kwM8EGnyhwtAYHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjod-0001QN-Cx; Thu, 07 Nov 2019 15:35:19 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjoI-0001Nq-Oa
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 15:35:00 +0000
X-Originating-IP: 92.137.17.54
Received: from localhost (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 938F14000E;
 Thu,  7 Nov 2019 15:34:45 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Remove the USB EP configuration from device tree
Date: Thu,  7 Nov 2019 16:31:25 +0100
Message-Id: <20191107153128.11038-1-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_073458_935263_F62BC8B7 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

The Atmel USB device controller is the only one having the description
of the End Point configuration in the device tree.

This configuration depend on the version of the controller used in the
SoC. This variation is already documented by the compatible string of
the controller.

In this series the configuration is associated to the compatible
string which allows to remove the EP child node from the device
tree. The main benefit of it, beyond the simplification of the device
tree, is the reduction of the size of the dtb which was too big to be
managed by the bootloader.

The first two patches should be merged through the USB subsystem while
the last one should be take by the a91 subsystem. Moreover this last
patch should be merged only once the change in the driver is merged.

Gregory

Gregory CLEMENT (3):
  usb: gadget: udc: atmel: Don't use DT to configure end point
  dt-bindings: usb: atmel: Mark EP child node as deprecated
  ARM: dts: at91: Remove the USB EP child node

 .../devicetree/bindings/usb/atmel-usb.txt     |  56 +--------
 arch/arm/boot/dts/at91sam9g45.dtsi            |  52 --------
 arch/arm/boot/dts/at91sam9rl.dtsi             |  52 --------
 arch/arm/boot/dts/at91sam9x5.dtsi             |  52 --------
 arch/arm/boot/dts/sama5d2.dtsi                | 118 ------------------
 arch/arm/boot/dts/sama5d3.dtsi                | 105 ----------------
 arch/arm/boot/dts/sama5d4.dtsi                | 118 ------------------
 drivers/usb/gadget/udc/atmel_usba_udc.c       | 112 +++++++++++------
 drivers/usb/gadget/udc/atmel_usba_udc.h       |  12 ++
 9 files changed, 87 insertions(+), 590 deletions(-)

-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
