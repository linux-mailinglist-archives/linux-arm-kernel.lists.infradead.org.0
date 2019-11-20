Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAF610458D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 22:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGVWPUp25sxCoZ9BRWAbhQbcmcKL9QI30wfMP9j0JLQ=; b=AQENlZZHU7kz2O
	HUfw1qDjM680CLIOeBJSIpn6QHHbF6FlCORbKAhc+XSckKR8VNyF+UCdvTRyKSg1LR2K7I3r//+2g
	CMcJ/HdceQebp/j+WXCf2Nh0lGkpjVTGh4q6nOvNBx72iM4fT5l+BYMdtlMAwUpo5Jse7gW8GnI0Y
	IRk9UUf/RLM5aYzcaBaoYOquyXujg+m4HS8yrkh3ZHCJXEjB+q5JMI5LmYXLI0eJdHd455pyGmUDZ
	Viv8QzY2DRaIuy2TG3hIMHipPKqxlyez3akzk7ShfHSLyldp5WVBwOgXHTXUGBIavP1H7v5ERJO0n
	nbyEvA7ClR8CCToTDAtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXXIu-0002zk-Bq; Wed, 20 Nov 2019 21:14:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXXIh-0002xk-PV
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 21:14:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1iXXIU-0001J2-Nq; Wed, 20 Nov 2019 22:13:58 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1iXXIQ-0001XW-9i; Wed, 20 Nov 2019 22:13:54 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: shawnguo@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 kernel@pengutronix.de, festevam@gmail.com
Subject: [PATCH v3 0/2] ARM: dts: imx25: usbhost port1 improvemts
Date: Wed, 20 Nov 2019 22:13:32 +0100
Message-Id: <20191120211334.5580-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120082955.3ovsoziurntmv7by@pengutronix.de>
References: <20191120082955.3ovsoziurntmv7by@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: mgr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_131411_831576_9A6682B2 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Michael Grzeschik (2):
  ARM: dts: imx25: consolidate properties of usbhost1 in dtsi file
  ARM: dts: imx25: describe maximum speed of internal usbhost port1 phy

 arch/arm/boot/dts/imx25-eukrea-mbimxsd25-baseboard.dts | 2 --
 arch/arm/boot/dts/imx25-pdk.dts                        | 2 --
 arch/arm/boot/dts/imx25.dtsi                           | 3 +++
 3 files changed, 3 insertions(+), 4 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
