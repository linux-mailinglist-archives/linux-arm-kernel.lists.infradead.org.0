Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1E711422D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:03:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eJD1Rust3OF6eNHqXdAR/XVV4wg/156skajSvc68S84=; b=LOvLP56DDha0qb
	aFyYlt1I0SVGKdZcCu3RL3RgnekwPvGcB+L+zphM1Pz4XyMWn60dzEomZWUqDoaP87zdHbz/2Z1QE
	fQDRfclEHPEASkOPV7DznbkL5e+92oCCC1837keIh9erH17CUtEzoig2LJ7vtRshSZx1U5gTJcWIk
	B487PQYWlCu4aPyqWnFYVB4WhaMhyc/osADkfeLMPYPhM1611ZKT7UHbeZNPsr6ETvedn6MWd9wEF
	jqReSm6c0hMziqVP9QIs2iDjBzqsRF+JouN97nqAKHm6EZ1/tHfHLzydYUFL2VgDs+cLarXLF5e9G
	7X7zjqO6QW0Vx2ov3lDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icrj6-0002TJ-Gl; Thu, 05 Dec 2019 14:03:28 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icriz-0002SN-EL
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:03:23 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 24079E000C;
 Thu,  5 Dec 2019 14:03:09 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Codrin.Ciubotariu@microchip.com
Subject: [PATCH 0/3] SAMA5D2 i2c bus recovery testing
Date: Thu,  5 Dec 2019 15:03:02 +0100
Message-Id: <20191205140305.1144788-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_060321_617050_DE3C2BE1 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here are the sama5d2 patches, as there is not pinmux defined in the
dtsi. I choosed to only apply it to derivated board as the i2c
configuration is specific for each.

Of course, it could be great if could test it on the ptc board as well.

Best Regards,
Kamel

Kamel Bouhara (3):
  dt-bindings: i2c: at91: document optional bus recovery properties
  i2c: at91: implement i2c bus recovery
  ARM: at91/dt: sama5d2: add i2c gpio pinctrl

 .../devicetree/bindings/i2c/i2c-at91.txt      | 10 +++
 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts     | 33 +++++++++-
 arch/arm/boot/dts/at91-sama5d2_xplained.dts   | 33 +++++++++-
 drivers/i2c/busses/i2c-at91-master.c          | 64 +++++++++++++++++++
 drivers/i2c/busses/i2c-at91.h                 |  8 +++
 5 files changed, 142 insertions(+), 6 deletions(-)

--
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
