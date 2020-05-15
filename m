Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB141D4C5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYuryGotZGrB1fEUDe/KTDEAm7eCl0z7HdN0yVYWAcU=; b=QMVe+0sthJ74oT
	YTumSquMVAXqnAJw0AEUsOQI5HwaCow7Zeg8Y9UQn4mNgVjvnS6WD7uvP33CGfBrVNUYF4G+01LQv
	ozJiwQdAOPgjaNyC8Ki/zBaZ0rA11+sW1Xfom7M2Ue5h1OmsrFE/l5VIDinfNZQEPv8MJ3AsdN7a/
	P0KZtbqdbKQWDYidrw755Jmz8b9+jh15nr1R8yzYGaQduHjYD1tKoZV5Km2xBvJaHAI3Lj3N7HJyd
	ABzzJXQarSfAG2whp1erUZvUhC1tmWMQVJa+2LJGe6jzZM5Yj7dniExcm2NOKQMPdN7aJ1k0nV+Q4
	aDQnVG7O24bYcQbPaJmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYLL-00061U-Ce; Fri, 15 May 2020 11:17:31 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYKQ-0005Jm-Sl
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:16:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589541395; x=1621077395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=NM+S8OMTmsMYRTLlSMp9bGaPdfxmccXI/+aoH5UKQmY=;
 b=MMjc4j0cEyeZOmSKWrfwHbIVRGTOGC7Z6lxvLKL5KD66P/E1Cpoqf4K7
 fPNviUfPriNKlrHW2oGK2n8y1lcAvbGCFQ9OQQVOKwyl3aZrBJADC1+b5
 nCII3xJ8qZ+6TAZQ7KyISHQ9oHEQPh9nBjurRpICvdFyy/nK0iYpju0fj
 GpQPxvvXhuoDDhP6456cSXpGURAAMAcS5zohiXXj34vrZFbfIT7Kv9DOI
 bHcghfYzJYGYBzXX2eXIaKqNheRHvXtRngCwrhldKSrv+serDj2shy8Bo
 O8cEXMejXBva9TBp24yXxTSt/RouN+ePqjdC1ulNDDBauTvVvA00SUs5A w==;
IronPort-SDR: CdLWEe7E4LxivjZ4UG+P6hnBSPXZ+sOsohJl8T/n6fIosdWxU9OrfZu8YOCEOIDgBeyHTS4yaa
 GSlYgI+X3J8Ql4lI1gfPOw8qCPW4nDov+GmuufP0ePD4152C1DQTZy1SneGxTPmx/Bdt+kF3J1
 KGIu3NPVBdIPuUz7nlIjmAw+avMhzLj/HUKPAZH8mXrmYdDTyeVSZBPvoi4KEG+ey5/GMvNODy
 oW+qxXq+LPWwOQ8ffCELkN6qJfWA9K5SgicR5wQh86REfSxas27JQ2wvs1uGW12s18xK3y38eq
 5/I=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="76028022"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 04:16:30 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 04:16:29 -0700
Received: from cristi-P53.lan (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 15 May 2020 04:16:27 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/7] dt-bindings: usb: atmel: Update DT bindings
 documentation for sam9x60
Date: Fri, 15 May 2020 14:16:26 +0300
Message-ID: <20200515111631.31210-3-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515111631.31210-1-cristian.birsan@microchip.com>
References: <20200515111631.31210-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_041634_946896_94009748 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
