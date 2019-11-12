Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4616EF8928
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 07:56:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eKbUi+O3shFsp/2Pj/BIkSg7k3PgscK7wMjYV5y2hA=; b=Pt3j0wMAYgmcDZ
	yt9M5YINZwOmISuqawnKDe0hVZX3cpoX3ALuccVzTqt4wPDDBP9fxCtydGOEEZwIh5g8Chbg0IRdA
	MuSTtZrUnyKwswXD0TaGTO5loWkoN4loJxyzof/upYBq9HZaDwrMDHa8MNAKDPoWbvKLeCWvs0gYV
	xzmIsQnRDk7SfCjQUnT4vvUNCwUE/koFgU/LedXEQZDlE5y3abIxu5FeZwHJv2ETsVANLSdIhEZ5Z
	B9gYs9Sy8yugiKoCk9BL+M+EKFjMR50EvaeGZHWM2C/1sGP7XokGlwlA3QGeYpqdjtWCRktlwu8Zk
	FowxWZWsn1DOQrNtI02Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQ6B-0007gQ-8A; Tue, 12 Nov 2019 06:56:23 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQ2c-0003CY-Cq; Tue, 12 Nov 2019 06:52:45 +0000
X-UUID: 8e2a50c729584277b338707f4c611ac2-20191111
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=/mhqk9fLi9/KVcPCMgekIyIUjjBb+ybIqt81wIcZElg=; 
 b=bkaSbQaeL93iCv3ALfC5+PR4FUhdBID6V17Y5XiUHQ6LOYV6usc5CGWJHQ3Rkdg4Y0Ohitl/oJTbzHaGHwtXjeSHKqYhXjvB4K0fdBEUto7zcMvjhdYgmYwHS6faq0CZ0dFGaK68spLypJ67l86XCCARR4edPt1KaVN1FibRIW8=;
X-UUID: 8e2a50c729584277b338707f4c611ac2-20191111
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 840714245; Mon, 11 Nov 2019 22:52:39 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 11 Nov 2019 22:52:18 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 14:52:16 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 12 Nov 2019 14:52:15 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Felipe Balbi
 <balbi@kernel.org>
Subject: [PATCH v2 08/13] usb: gadget: bcm63xx_udc: create debugfs directory
 under usb root
Date: Tue, 12 Nov 2019 14:51:54 +0800
Message-ID: <1573541519-28488-8-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1573541519-28488-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1573541519-28488-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_225242_519120_769B46A8 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Peter Chen <Peter.Chen@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org, Minas
 Harutyunyan <hminas@synopsys.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Kevin Cernekee <cernekee@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Cristian Birsan <cristian.birsan@microchip.com>, linux-media@vger.kernel.org,
 Fabrizio
 Castro <fabrizio.castro@bp.renesas.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Stephen Boyd <swboyd@chromium.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Bin
 Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org,
 Biju Das <biju.das@bp.renesas.com>, Yoshihiro
 Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-usb@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Colin Ian King <colin.king@canonical.com>, Shawn Guo <shawnguo@kernel.org>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now the USB gadget subsystem can use the USB debugfs root directory,
so move it's directory from the root of the debugfs filesystem into
the root of usb

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v2:
  1. abandon new API usb_debugfs_create_dir(), and use usb_debug_root
---
 drivers/usb/gadget/udc/bcm63xx_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/bcm63xx_udc.c b/drivers/usb/gadget/udc/bcm63xx_udc.c
index 97b16463f3ef..166df4215042 100644
--- a/drivers/usb/gadget/udc/bcm63xx_udc.c
+++ b/drivers/usb/gadget/udc/bcm63xx_udc.c
@@ -2248,7 +2248,7 @@ static void bcm63xx_udc_init_debugfs(struct bcm63xx_udc *udc)
 	if (!IS_ENABLED(CONFIG_USB_GADGET_DEBUG_FS))
 		return;
 
-	root = debugfs_create_dir(udc->gadget.name, NULL);
+	root = debugfs_create_dir(udc->gadget.name, usb_debug_root);
 	udc->debugfs_root = root;
 
 	debugfs_create_file("usbd", 0400, root, udc, &bcm63xx_usbd_dbg_fops);
-- 
2.23.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
