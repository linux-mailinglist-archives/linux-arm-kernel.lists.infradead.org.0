Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836541A0DA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 14:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYuryGotZGrB1fEUDe/KTDEAm7eCl0z7HdN0yVYWAcU=; b=j5NJtYcUvBSc1a
	4Ftza7bzAeHWEzoc+qGZGyPrGtKurXaiqsJpTHzwohVrUVcmHIg1ZerXxl5tIsQyjoH2+hfRtnSYN
	zcU46tvTKD/THdEq0tCa8RVNlzU+FG77FO8ck7kcFRHQsCpMndzT/4qOhmQBGKlDPG5sTTpthp5iy
	9xTQMOEyKmVpEeK6pDuq2m+bOdAh1Lm7e42+VjOBnCMsjEfqjhLwpVmWrOa2s3fFhCQNxI3G192N0
	tn17gJbO36H3/StQ/bUfEy/TvPM/7uoEjyw31Vn7whScJUqcmlp2xUo4VZZx623guGwgZgpw5J5XD
	OJ9YjnZ7e+zFnUUIbfZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnNI-0002JT-9a; Tue, 07 Apr 2020 12:30:40 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnMK-0007hA-7n
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 12:29:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586262581; x=1617798581;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=NM+S8OMTmsMYRTLlSMp9bGaPdfxmccXI/+aoH5UKQmY=;
 b=ARTkUIkPQ89J+jvLV/6RwIC+m3CRVLP9uqeUPoc4LVGb9UPDcqyw/Hna
 6SLhxQ9iFn0SmKeF4ZxXvymjTtE4adwnB4pbeM9ErxzqpBGmYa2ItQcwl
 0pFu2A7lqpzbQa4VIMG7bHm5MapAQaZ183fjoe101YL0wm+aMHMv77Lrx
 Wifw9McoNF1LJpsuDo7mQmevMKvPE3nfhLIKylgy7MdCfni9FT10nBR77
 fNWpMTBvOsYINJGLWiWxG+xeNBsD9yP+ElDhpq6Da8EXxYyvqgYbOrA0X
 N78icLfZSrG3dMRSL0qwfklvut0FjFn1QeIZ1EGTZyRQiY78t81qkg2hD w==;
IronPort-SDR: iUlV/m0red8C47RO7L5KQr8rbp6swxs+xdLN7tIAtARdQcTP7m6avMkU6oMHHT2XS1Fp8CoS5J
 7jYJ0XP93JKicD3AJb7YNQ0UBk/BEoBS7OtENmRoqAGx0fWxvNnQpmntazIGpFW6H6BL6028GN
 m4cyZrPnixcUfJpnP4S2iH7+L8odZHvp9aBQDPGz3/hGUQSrEwe1ldvYCiU8ZJoGZfRd3V4OCS
 t0FcSPKHM4QOpN6demaPby1e9ppSbvgaI7Z6qUSREAYntXQiyJvwzzKM59C0cq1uqF+AxV+x7Z
 L3c=
X-IronPort-AV: E=Sophos;i="5.72,354,1580799600"; d="scan'208";a="71684386"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Apr 2020 05:29:40 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Apr 2020 05:29:39 -0700
Received: from cristi-P53.amer.actel.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 7 Apr 2020 05:29:37 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/7] usb: gadget: at91_udc: Update DT binding documentation
Date: Tue, 7 Apr 2020 15:28:48 +0300
Message-ID: <20200407122852.19422-4-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407122852.19422-1-cristian.birsan@microchip.com>
References: <20200407122852.19422-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_052940_287197_CE4A2E7C 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

Add sam9x60 binding.

Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 Documentation/devicetree/bindings/usb/atmel-usb.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/atmel-usb.txt b/Documentation/devicetree/bindings/usb/atmel-usb.txt
index 44e80153b148..bae2b928a014 100644
--- a/Documentation/devicetree/bindings/usb/atmel-usb.txt
+++ b/Documentation/devicetree/bindings/usb/atmel-usb.txt
@@ -82,6 +82,7 @@ Required properties:
 	       "atmel,at91sam9rl-udc"
 	       "atmel,at91sam9g45-udc"
 	       "atmel,sama5d3-udc"
+	       "microchip,sam9x60-udc"
  - reg: Address and length of the register set for the device
  - interrupts: Should contain usba interrupt
  - clocks: Should reference the peripheral and host clocks
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
