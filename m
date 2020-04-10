Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D97D51A4878
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 18:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZTHVbXWTT/4yHpAnWFJMYGAAYMENTTH1sPOXlYTQT5o=; b=iBPB2S9PUjHbVt
	wcMLqdtIbYDFFDnlO42w8DSS4lDHDg7tCrxe7irNzU+FtReghCU4B3xxzuvP6Ordy0LO4z4F0iVGf
	Jv2O+gGfL8Ckz20nc9oMd2JjWN4w+QKjPLfsEujOJFtBbWB96nozBEiYxW+WIE/9EfaxZn8chY/5i
	bz0fQd83oKo9K5o5emEhU6Oh93V4yFz4g1+9pbu/hqrk90lEd+IKAm8lt2M2bcukNTl/NaOhQi4zV
	RKjTOlTZ3s1lUkBb9w98NfTGrv2yZU2Sl0tgAbKLHQzViRNZzui3BhT1cJWTJi6Wi0nreNSme+MIL
	Vgy+Jei+EsVpG0hol06A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwVi-0004AP-9O; Fri, 10 Apr 2020 16:28:06 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwVL-0003yb-I6
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 16:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586536063; x=1618072063;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=zr0Ggw5HD1A8LRe/mt3YAqOJsFRxxBVnqpuZVViM2tY=;
 b=VxGhjLqyAm+c4pwLncESDUGDwdBhmjxslwraW+NjwTMXVd81mFtJJ5LX
 eY9D3AgQoWX26XcaY0gHw3u5cAMdH44OhcviR25laMjnHW6pbuFMnlM97
 Mi2Lpc1ukONWETTzfY9Ku9P5LcwS/shr4h5arhQPv9GAt0xgwf/hjqAY1
 kXKz8V3R33K19VlDYXYzLnGTIFcHlXi3Yc2L/zSfItiXhgDTKHfu0UKDg
 Wi1ZhPQ1JO/jZ0wjUGBgcjsK9S0FQ/yulTc1H+tNNLdqW6t8ivW7dc87R
 Mtrevojc5Zv9KCdhFAD5ts078tj3yUo6fglepXqs8qP1r6Lw2ZRnjlJn1 A==;
IronPort-SDR: dcQHvo1Tp+DwO8ph7m4XMUxGX8s3fRDJf307Wju2OXU0I8VAGZ+0cPP5Br/thD7Xa9DYAIEwnu
 CqAV2L3cOcdKzmmVsPYk7FA4QMUL1QzL9PX18cSv35NtmjosZH2LioRQGuKSc3/Z2kAnvNHBs4
 Y2YypEBUytMFVZZ7J4brZOcj0uoS/Dxnqlm/F7031oukA/IUqrbFJ0UGd8QhTHf80IEkXaHR+g
 Hd/loSkz16ZVl0dj60XKaOjvOxqps1aReqmc8MNxB7SGeWJ7AyZmQyywL0NrhY0efEfkFgED8l
 LiU=
X-IronPort-AV: E=Sophos;i="5.72,367,1580799600"; 
   d="scan'208";a="8791173"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Apr 2020 09:27:27 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Apr 2020 09:27:38 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Apr 2020 09:27:18 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <tglx@linutronix.de>,
 <jason@lakedaemon.net>, <maz@kernel.org>
Subject: [PATCH 0/5] add RTT support for SAM9X60
Date: Fri, 10 Apr 2020 19:26:54 +0300
Message-ID: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_092743_678013_4371DFBF 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds RTT support for SAM9X60.

Claudiu Beznea (5):
  irqchip/atmel-aic5: add support for sam9x60 rtt fixup
  rtc: at91sam9: enable driver for sam9x60
  ARM: dts: sam9x60ek: enable gpbr
  ARM: dts: sam9x60: add rtt
  rtc: at91sam9: add microchip,sam9x60-rtt

 .../devicetree/bindings/rtc/atmel,at91sam9-rtc.txt |  2 +-
 arch/arm/boot/dts/at91-sam9x60ek.dts               |  9 ++++++
 arch/arm/boot/dts/sam9x60.dtsi                     |  7 +++++
 drivers/irqchip/irq-atmel-aic-common.c             | 36 +++++++++++++---------
 drivers/irqchip/irq-atmel-aic5.c                   |  8 ++++-
 drivers/rtc/rtc-at91sam9.c                         |  1 +
 6 files changed, 47 insertions(+), 16 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
