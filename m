Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B71CC177
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 19:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I0Oiut5Q2Yxx+TELrz0lyI22UvWA7ulTYWOhHQ6SlBo=; b=KVETZo0aJTs5Rs
	+APeVdBHnf6ZzCkttISwPgKTpx6Fx00Qik2AWF+oNsgiRkZ3wLLbtcXmgbh/OeyfjDHUVnx2T7ti+
	8zbzDr+qnBmsmnmj6+JVviG0Lm9R2qSYsxngkwAivyaySGpsD3J3zUPCFoty7tq3PKr71aT3gytpw
	Q7H15fnVhwV8sr2d8VHIX+W+LZLvBoKfACV7kT54FX/LPRZGF5JOO8RViTtWVnWmX5GYrpbKt3VH/
	YfIDoi+eQrFSeKKmsGDQ3NlQO6c0xlfWhWntvIatOhNjRNHgCYAGsisHXf5m4TcFhF6zPAzxaPxU4
	ZEBj9714nzv85UMskDWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGRCG-00005g-Ns; Fri, 04 Oct 2019 17:16:52 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGRC5-0008WO-Jl
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 17:16:44 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Cristian.Birsan@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Cristian.Birsan@microchip.com";
 x-sender="Cristian.Birsan@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Cristian.Birsan@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Cristian.Birsan@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: d0aGSb/7YfeQDRGpZ7qzkTUS57vxpPVB6jYd3meyu/pZo8VLdozIGUweKW5KZWVZyssXSDeit2
 EYPsBzzdb6xtBxWdGjr4H/5cciq4G9UBq4c8AHnd8MTGVuGdDj2bMF4MZOPwm95WqTyNBzfD8x
 PU9uOmFyBrxEd11g2qB/i1Mm6pcdv/r6iGTrj8WEgB7O1uKVPuKD3m+XYNkWtJlwstjGJ5zgI/
 L8SlIHo1VUgNSRGrJ+LU+MY51d7cRpE6JTQP2UHWIe7tf6SmXuTsTiXdo1RJAW1cCKp8N00wyp
 JXY=
X-IronPort-AV: E=Sophos;i="5.67,257,1566889200"; d="scan'208";a="50474067"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Oct 2019 10:16:34 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Oct 2019 10:16:34 -0700
Received: from cristi-W530.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 4 Oct 2019 10:16:30 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH] usb: gadget: udc: atmel: Fix interrupt storm in FIFO mode.
Date: Fri, 4 Oct 2019 20:10:54 +0300
Message-ID: <20191004171054.19453-1-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_101641_683217_D31A6D8A 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Cristian Birsan <cristian.birsan@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Cristian Birsan <cristian.birsan@microchip.com>

Fix interrupt storm generated by endpoints when working in FIFO mode.
The TX_COMPLETE interrupt is used only by control endpoints processing.
Do not enable it for other types of endpoints.

Fixes: 914a3f3b3754 ("USB: add atmel_usba_udc driver")
Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index 86ffc8307864..1d0d8952a74b 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -449,9 +449,11 @@ static void submit_request(struct usba_ep *ep, struct usba_request *req)
 		next_fifo_transaction(ep, req);
 		if (req->last_transaction) {
 			usba_ep_writel(ep, CTL_DIS, USBA_TX_PK_RDY);
-			usba_ep_writel(ep, CTL_ENB, USBA_TX_COMPLETE);
+			if (ep_is_control(ep))
+				usba_ep_writel(ep, CTL_ENB, USBA_TX_COMPLETE);
 		} else {
-			usba_ep_writel(ep, CTL_DIS, USBA_TX_COMPLETE);
+			if (ep_is_control(ep))
+				usba_ep_writel(ep, CTL_DIS, USBA_TX_COMPLETE);
 			usba_ep_writel(ep, CTL_ENB, USBA_TX_PK_RDY);
 		}
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
