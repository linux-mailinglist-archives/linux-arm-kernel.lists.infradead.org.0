Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6DF1A0DA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 14:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knSGhmsR9fH+Wj/SuInps9zJc6OvjNXoGjjaIpXCs8I=; b=qkiQx90cnoE7t+
	9+u/HZJaWfkOAV7pOD1Ad7sBzTcBit4RKxna7BpaNXQjhW+YMfdMIQZZozn9U7cCLXVov3OmKv4BZ
	S3Q/eI0m3/RxV8R5JbcAnSxgrwKVnfgbqG3bBcwS+0VgBL1U1Owohcl89//RUkRLKN1r7XyB3i20N
	ZXz4FBKHu0P0NIycxuIswj7Bn1AaTXLyQbKeHp/mLe2Bhp29VwLIrEe+P/VN+2qf8KiTUKLZ2gXFN
	AxDfH7u+kF06/1g2krs4DxBzN/mTxape+pZQJUZNT2u9Vmq0/qNOsMtt+TtH7C+K02+PZ5d9AUtLL
	pZ2PEv7qYxePNSGQGfkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnOC-00033U-Cj; Tue, 07 Apr 2020 12:31:36 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnMO-0007lX-Ub
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 12:29:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586262584; x=1617798584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=5tHbCVV6N4tgdVdrHys4d0EWJHVdHgwDEcQ6SvD2Tt4=;
 b=j85GSKkxeNymz9np6/vg8+U62/0FwwLS9X6HgfKPKcnIBuEjGuzvSnpY
 7V8Kllchl33wVFTnWWCQKbgtaw72eSpbZRBI9wkyMKOsHeRiXR3BqtAq/
 37zG3zmAYuzumBI0/xKMU4jKrx/N6h7nMFmAoNBtvG5DOa2YJYMlGt3hQ
 oz/ktb8anDK43CRl0Lw71gyAo2DczWu9GiSoaxKWvRle97KxOJtjEqOpC
 1tyEAUzb1+YKPkvPLJfdz3Vw4/SLEnT3QnYrqQQlXkkTONpRB+8K2neph
 rxVGV87fvh4xq7W7wqbF1Qc02X0yPy6KjtKd/Iy4xYwgteyf6AjCooeRw g==;
IronPort-SDR: z9miHr9GYeetv0nHWCnswn2u4RsGiP3ywilfFYrcEYXaX1tMoCeQryyvXZ0k8bwY9K2r+8DFiM
 TSyXFT17VcyX7dXINP5HFYlEwjRXMOhi4AB6D/M1D62cdu2qOfqAAOMSOAv3zEafUmLyJKGy7z
 9clJGI58GHt6V/y31H9Wm/kBl4aGjopsXkK7r1hubsJyGhh/qvNOHkJJKD7fnGSWb6znokbA7J
 pjrKrKo3WKiWwixGCxvISjJPd2WjJvrduapV/lIGpVUERJ9zFe6Byr9nJ+iA86MWFAPk8voRRA
 uN0=
X-IronPort-AV: E=Sophos;i="5.72,354,1580799600"; d="scan'208";a="75013437"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Apr 2020 05:29:44 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Apr 2020 05:29:56 -0700
Received: from cristi-P53.amer.actel.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 7 Apr 2020 05:29:42 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 5/7] usb: gadget: udc: atmel: use 1 bank endpoints for control
 transfers
Date: Tue, 7 Apr 2020 15:28:50 +0300
Message-ID: <20200407122852.19422-6-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407122852.19422-1-cristian.birsan@microchip.com>
References: <20200407122852.19422-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_052945_008777_91F1B3D2 
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

Use 1 bank endpoints for control transfers

Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index 7011438f91d6..1e2194fe06cb 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -1061,6 +1061,7 @@ static struct usb_ep *atmel_usba_match_ep(struct usb_gadget *gadget,
 
 		switch (usb_endpoint_type(desc)) {
 		case USB_ENDPOINT_XFER_CONTROL:
+			ep->nr_banks = 1;
 			break;
 
 		case USB_ENDPOINT_XFER_ISOC:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
