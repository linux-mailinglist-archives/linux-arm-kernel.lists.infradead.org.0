Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585601A0DA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 14:31:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kxzhcI/NzSA8Gdqoam4Ni2KGKFJUkbcLL0oTf1IoDOo=; b=ooUfAIJ74dqly8
	INxwftfMnFlavI5BQwLYoWkauWxpQxxFeYoIryS7C8Gb505NKZEOJ/P8YjlLj+46TpWb9setCMTt1
	HXOKOUNv3ryFcBllz4ETOYUk0dzk5csW6u9s652SnEInSUqN01wn7mqOAC3sP0LjQHczXhgt+iA+K
	8tKAeUibEmNAh5Dau0NjFszB/7JL0N2mhVeMF2H6+tJqGscc/BeQjKxB9+KJbckyAaTfougg+atVL
	JfnE+E8a3iJmVENThNWzkmUp1LHHm6upuE12CtKlB5EGermaMBrfAOyWp47TVE6rpcXVlgAB/aKJN
	CFT2ECO5ZP3uJqM2Pr8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnNX-0002WB-L6; Tue, 07 Apr 2020 12:30:55 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnMK-0007fb-Ci
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 12:29:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586262580; x=1617798580;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=mwrqDeZZFPwdOZQAzDue552yl4u2PTg8dL3CuhCIRD0=;
 b=XREAxwVHqAahzFqJJZ1YtTLApub/7HZqW0gRJ0YMjQvSYgv/xQtykwh5
 LygnDNxTZBoMXnRsLSpw4KpyYadyGmx4RS0Ow2DMAsE/yXdNg1zB5IJlA
 asF8OcO7YO99WEkwUO+pxZnEL5fbrqWz7C0mfz0DIL3RHm/9wuHvi373j
 UEPTsk7WClj1sSMclV349JQ9DNfDznaVVfUOm7s/A0ovEBjSjR8ETSmkF
 JunFk+eGZ+iRj4WsRg7NYpfRXnsfhNHkIvXs3qQNiiMuHeWlKXHjIGJrs
 Y6ipPh5+WKbXE0OAuir5cfl4qEiiRBIyfINHD2ayl+KVQZl8AtRflp6SQ g==;
IronPort-SDR: eHcVGlQPapM0erpoDIa3ogDoNhu9Y1m7vz119BJjbiF1QmLcmp/aHB+3LjwuNjS5U+NicQJtje
 SaL7FbFUUz2CY2TsnwHYNB6drmR/GxR+7zKKT26XdkmhoY/toNxYdftDJefmB3hqSHhnrWat7V
 GE3vtzT7ofkQ3Rm+lfAvYXN1a6stvjO2MAtoa7sEDyawq6bxbOmUWi0XWMhJmSEVU2tJ54vGeS
 sFz0+mihLtjW9nTooH19R8c0QflvKZfjLSYGeSc4WbYovxLxZNKpdzT1oRPdbaIyNsW1L7N6WI
 Yok=
X-IronPort-AV: E=Sophos;i="5.72,354,1580799600"; d="scan'208";a="75013395"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Apr 2020 05:29:32 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Apr 2020 05:29:43 -0700
Received: from cristi-P53.amer.actel.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 7 Apr 2020 05:29:29 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/7] usb: gadget: udc: atmel: add usb device support for
 SAM9x60 SoC
Date: Tue, 7 Apr 2020 15:28:45 +0300
Message-ID: <20200407122852.19422-1-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_052940_436669_C96C5D92 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 Cristian Birsan <cristian.birsan@microchip.com>
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

Claudiu Beznea (2):
  usb: gadget: udc: atmel: use of_find_matching_node_and_match
  usb: gadget: udc: atmel: add compatible for SAM9X60's PMC

Cristian Birsan (5):
  usb: gadget: at91_udc: Update DT binding documentation
  usb: gadget: udc: atmel: simplify endpoint allocation
  usb: gadget: udc: atmel: use 1 bank endpoints for control transfers
  usb: gadget: udc: atmel: rename errata into caps
  usb: gadget: udc: atmel: update endpoint allocation for sam9x60

 .../devicetree/bindings/usb/atmel-usb.txt     |  1 +
 drivers/usb/gadget/udc/atmel_usba_udc.c       | 87 ++++++++++++-------
 drivers/usb/gadget/udc/atmel_usba_udc.h       |  6 +-
 3 files changed, 58 insertions(+), 36 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
