Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727B01C95AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7PDd2HpbcuNNuhAysRqG3USoJb0yyHDYjfsy4/4StpM=; b=ufwLIGxMAYDcud
	CTdnaR7wwY9jcqxSDGmjxCF4uEwsYajZgavpvPWXhQKoeA1GqhbXw6whd3B+53baKU+9FevyiaErV
	YJBmokcHuXl008QS9hydBwm9bR64TT0DEJNlqXLjwf7sd7Hlsrv+9yPTwn4beNBGJ7Ue8ybqRgw9b
	VW5qUdPgbgiUmg5WMPERKyjnygTov9OLETcVHbWeE0a+qRER+R4mzuLF54XU5C7rUtEeMzknlIsWu
	4T4HxYul639X3yNhlnP6UvxRsAmCLxUWXUCGnk5Tt864MOk2yHP1RLI8e+h79i88YNjMZHMHzq9uG
	D6sEYTtooVE9JCcnvNaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWitp-000232-BM; Thu, 07 May 2020 15:57:25 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWitf-000213-Ap
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:57:16 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A6436C0002;
 Thu,  7 May 2020 15:57:09 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3]
Date: Thu,  7 May 2020 17:56:48 +0200
Message-Id: <20200507155651.1094142-1-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_085715_510537_6E3F463D 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

A few month ago this series was sent and has not been merged while it
didn't have anything against it. I've ported the series onto v5.7-rc1,
added the acked by and reviewed by received on the first series and
took into account the comment from Robin Murphy for the last patch.

For the record this the original cover letter explaining the purpose
of this series:

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

 .../devicetree/bindings/usb/atmel-usb.txt     |  56 +-------
 arch/arm/boot/dts/at91sam9g45.dtsi            |  54 --------
 arch/arm/boot/dts/at91sam9rl.dtsi             |  54 --------
 arch/arm/boot/dts/at91sam9x5.dtsi             |  54 --------
 arch/arm/boot/dts/sama5d2.dtsi                | 120 ------------------
 arch/arm/boot/dts/sama5d3.dtsi                | 107 ----------------
 arch/arm/boot/dts/sama5d4.dtsi                | 120 ------------------
 drivers/usb/gadget/udc/atmel_usba_udc.c       | 112 ++++++++++------
 drivers/usb/gadget/udc/atmel_usba_udc.h       |  12 ++
 9 files changed, 87 insertions(+), 602 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
