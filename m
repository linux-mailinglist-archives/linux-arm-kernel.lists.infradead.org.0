Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF1519B84D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 00:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZTlGnnMgMlVxppD6xv9UYGk4OmBH9G/bHVuKu8t3WU=; b=hJ9pHdYpC7qhLb
	0oNwOPSRzgORPPSFYPAKAfArL5j5IRLb01+DqlFEMf2Hgw1tHJYpLPODgMsiww7SC8cVgBBry7eF2
	4o+ymMvByxdpJpb4TlR8WB3k7ONgACKGf/CzVXMSVWCsOtwdi54vmOS8glpj02/nR8hILhbznmhze
	o9VdpkapneqGLY+PG99hEDYHQkufA5YvjpLcF9+6fvb/B38erB+evYuUZrbmMwpC37AWg8qDKXLsz
	XMzWowEtyxLlvputFE/ddE69PEzI3u16sXXj14Hk4rJP6Ros9Z9cKucuvd5h1/nf+3rmJkCl6Sjy8
	EIvnVmur17areJKWvO/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJleq-0006tA-Am; Wed, 01 Apr 2020 22:16:24 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJldu-00060d-0Q
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 22:15:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585779325; x=1617315325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q+aU/iQQvfxk55cYhF+FMj4swDv1lcqm+CLLatN93uY=;
 b=Jx3HoFHBgN5qMeGfO95NCzOgb5W3Fcxc+tJI/W63WpPk+eNnO/slpCiT
 b+hI5rQ5YndewS/YXStwwC2Rg+cj5Nca6Pu6pYK5gPxSima61wGbDgRjM
 qRD+AQm6AfYmNIhbCbnkbXsGjSKeo/OwEHuXZV6V0MXZkNueXboEuP9ZP
 dCGVnBoL6beEEvTKN4KHgjobdST2VJMrQgpnA6e2KqHH6aoOiGUZk2kUm
 GUQz+kVeYCqBSLwXMjH/Oli2VvdzpK09SJkCBHBS5REbVvaib1Cj7MCch
 PyWPM33/3gVLm/7qkyy3pCmjGUUokSsFPNKwq68srGsL902+X+WXjXKNe w==;
IronPort-SDR: VTuWgp/h+Vn0LpBSElgsPr6YWRBP/bAZd9DJJ0BkXaVblqc/GdNoXNmeWXOI9f2NUCbe68SP0w
 d28svC8oc/BX8fb+ZI39q2LVnhOKH2XYQaafLiDY8hf1tvVte3ZqKj7xbO/IZFkutpis1Smyvv
 d3IdXkE283D8g6BHLwqsIYO/bVsRataKpG2Xz8PQ28wXaTKM95KcoLy22YIkVYh4+Lc/Z5Tm/V
 wPFXJM14P3AqTNlKaX9GLSnde9DCPHgkQHVxnKxj/BRhSerWD5sTDQNWaPyKVxiY9MEG6fqtKv
 pEY=
X-IronPort-AV: E=Sophos;i="5.72,333,1580799600"; d="scan'208";a="72005464"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Apr 2020 15:15:25 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Apr 2020 15:15:31 -0700
Received: from sekiro.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 1 Apr 2020 15:15:28 -0700
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>
Subject: [PATCH 5/5] ARM: dts: at91: sama5d27_som1_ek: add an alias for i2c0
Date: Thu, 2 Apr 2020 00:15:04 +0200
Message-ID: <20200401221504.41196-5-ludovic.desroches@microchip.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200401221504.41196-1-ludovic.desroches@microchip.com>
References: <20200401221504.41196-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_151526_088883_47A753EE 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, Ludovic
 Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, Codrin.Ciubotariu@microchip.com,
 Cristian.Birsan@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add aliases for i2c devices to not rely on probe order for i2c device
numbering.

Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
index 1a26e1a129319..535627c6045b6 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
@@ -20,6 +20,7 @@ aliases {
 		serial0 = &uart1;	/* DBGU */
 		serial1 = &uart4;	/* mikro BUS 1 */
 		serial2 = &uart2;	/* mikro BUS 2 */
+		i2c0	= &i2c0;
 		i2c1	= &i2c1;
 		i2c2	= &i2c2;
 	};
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
