Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17441D4C44
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3b3p53oBpIqvFuXGUH18LnrU0A4ZXUNWcX5wL+ozl4Y=; b=llFZxHNcI2vavS
	1JXUUTHJhv3mEzU8Cs/vqCoj1sxaG3ExZjQaH/C5xaEX0MsGVZUth0joiG7OFu0qMX9ssytZ4CKvm
	kCRWrr/HsiFgprzytAUGlx60VWcYUQACOyJOaosJRd0al7JSuUStiddCuCeYZ0TK3hdrL/ZuhJfXs
	ChAH5j77Nm80vZW8XVURORpWux1Ya5bAXIPjAq1yyG5JZJFepzemqmBsWm3BaQnssPESAnNcZd2DM
	mkxuFBb60nM3gsi9qm1PeWKCgbMLHZSl+kBsVCHO1DL2Vqvi+B0DRgJ5VjJMNjZ9yiLl3GZAuc0/2
	Xro8hYZQoFRGnu3swSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYKZ-0005Hb-Ht; Fri, 15 May 2020 11:16:43 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYKJ-0005F7-Cj
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589541387; x=1621077387;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=ABwPSOt6Vn+yadZj5yycUyO4VKdjl4WcH7rpms4LysM=;
 b=wa2jPehecrLACtJCmRbXl9G8ndrirgy0v2BvVgWEr1p0myyy+xume62I
 4dGs3BYBDI3Bqs5i0AAp4OjE9IbIFlsGLmxIguobraSqQHF8+4++1GWjX
 CYuSSo2Yu7PLOFgYu7Cu6pwhK6cjuI5sWfsPRxroZdIXAlHdsQuFa6V++
 QjAO+QUHJGvFfGDMFH9BX+PV8vBJvZWbdNCjwmFw/kUySJn0nDHfBh96U
 YxDajTKbhtGYdjeF9oUY01gyRlByReVfdGYqfHlgnCjlJrPONSn5d181v
 rZq2NIIIcgsQiAuQ38G2b2C9vRFJjBmLTb85sUlIMxS45CasVCz89FrOH w==;
IronPort-SDR: d1Ro/FnxzZNikeDUdQz/SltJMJxGFcl/zWK39dHh0MfNPIZD37uVX1zLfG3rF4HuUkePUfyT25
 w898hqe9GAvk4PHvCnXJ1shgJuVxQBN6scp70tlGwiucor15kWAtBQvclnIVtX2GfdQ7m8NgcB
 s0GalkDVsbOYWDopm6KBKlsK01D927pMnPQM4FPpB9NtIaXstLqjXSQbEP4LxjNbgo2g1gRrFq
 H2yF02dUkYL6EuYvXbRaHcBkQIoxsD8OjPy0xsWEdLcd7+gFjuDms5NMGgR/yljeuvvHzjKQoq
 stc=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="73566865"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 04:16:23 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 04:16:26 -0700
Received: from cristi-P53.lan (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 15 May 2020 04:16:20 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/7] usb: gadget: udc: atmel: add usb device support for
 SAM9x60 SoC
Date: Fri, 15 May 2020 14:16:24 +0300
Message-ID: <20200515111631.31210-1-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_041627_511132_E8847034 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Cristian Birsan <cristian.birsan@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Cristian Birsan <cristian.birsan@microchip.com>

This patch set adds usb device support for SAM9x60 SoC.
The DPRAM memory for the USB High Speed Device Port (UDPHS) hardware
block was increased and the allocation method is changed. This patch
series simplifies the endpoint allocation scheme to acomodate this SoC
and the old ones.

Changes in v2:
- drop the patch that adds reference to pmc for sam9x60
- use dt-bindings: usb prefix
- enable usb device in device tree

Claudiu Beznea (1):
  usb: gadget: udc: atmel: use of_find_matching_node_and_match

Cristian Birsan (6):
  dt-bindings: usb: atmel: Update DT bindings documentation for sam9x60
  usb: gadget: udc: atmel: simplify endpoint allocation
  usb: gadget: udc: atmel: use 1 bank endpoints for control transfers
  usb: gadget: udc: atmel: rename errata into caps
  usb: gadget: udc: atmel: update endpoint allocation for sam9x60
  ARM: dts: at91: sam9x60ek: enable usb device

 .../devicetree/bindings/usb/atmel-usb.txt     |  1 +
 arch/arm/boot/dts/at91-sam9x60ek.dts          | 13 +++
 arch/arm/boot/dts/sam9x60.dtsi                | 74 ++++++++++++++++
 drivers/usb/gadget/udc/atmel_usba_udc.c       | 87 ++++++++++++-------
 drivers/usb/gadget/udc/atmel_usba_udc.h       |  6 +-
 5 files changed, 145 insertions(+), 36 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
