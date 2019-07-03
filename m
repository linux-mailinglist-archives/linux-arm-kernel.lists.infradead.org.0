Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D9D5E9BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bP0t1OgmgDi1talH3LRdUwnJ4OFyIWhUSnE0eifbH1w=; b=Tl8
	Emlh/+vwIwWrQGifYki4VGNNj0GxXerffh8xiC+vqAOz1xCYqD98fxAlKVp2Ur471hKNQGpQcXtR+
	4H1QDDy2mW5qre0yBaIe4VWtOA88eB/UnDs+ESNn72uR+eeyBmuFKACQR+TI+AFX72QJTZROxADK9
	PS92d/lmIIgMy8AkfzNXAqb3IpbemJMKoYgJFjSs1ngWBjqQUUJILAS//hK+WH0k6llDvKDoM5I7H
	RWJ54B8DuGOHbuqT6bWRDNzyI3lF7kucWMgrIgNuFh8K1OnEf//NdyOrhd4kV4JdOp+k2mD3Tfbjn
	ZQa0Po8S7SvPgOKgynvvy36lMxIfEvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiUM-0004Et-Rv; Wed, 03 Jul 2019 16:52:10 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiRr-0001DH-1N; Wed, 03 Jul 2019 16:49:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562172510;
 bh=Me1SvsLDyMMGaUAM+H2U6QR3rP8Y3XVwEjAtU6m8VUA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=MV6Va6oTlm89ruMxAxb87nEE2pPoh3n4vLdyHMS/pwe0XAqsgXSoh6piSJ85L+fZ+
 sgvmA53g2n+XMMAAp0AJk0bPzDzrj4b4WNENRhxpuD3EyGTX/635+Twttk5ALFoVPE
 XNxzEw/MJF8MVJWtuWJW4wXKFLb44ksoCMESeWpA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.158.204]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mv2xO-1iZJ3G21eS-00r1tZ; Wed, 03 Jul 2019 18:48:30 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Richard Fontana <rfontana@redhat.com>,
 Allison Randal <allison@lohutok.net>,
 "David S . Miller" <davem@davemloft.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>
Subject: [PATCH v2 0/7] implement poweroff for mt6323/6397
Date: Wed,  3 Jul 2019 18:48:15 +0200
Message-Id: <20190703164822.17924-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
X-Provags-ID: V03:K1:Q7bwDdrEsaphQYrmHhp90HE//kekmdWGTaievfmTLBQ650JdlG0
 ZFc89t3IpqF6r+6VIT+crsEBq/Xze1pedGbOYkWYQfBHJcBZWJae3I7ecQ1H/v2yoJF8OpX
 Pf8SwioVIe5yR86V2HhD2iyrRPnU9EZxKaK/fDp6sj/cNdKzfwD7IhaXPNReS4u11f3x2QB
 D7KWSsmavk+XqjXkrbOpA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:80cN8sB+jW0=:MrqNVi7o1rXFaCcRKYMpMr
 w42OIhPPamz4BFUxxD4WMAHwfFtF5Af/vkftOIq7mwDnmmLVjvzpDCY9WCe+26/fmhm9ILqrW
 FlaWUzNwCyTbmexafmmy0f91BemYMTQny1Fh37Gy7/GX3Xw+J5/nUfZOCJ2exG/XYIluMDmy1
 0q4mBFg7UmyUtQO+ytaMzkxVjE2oF/JKKZ5drh/6iOFGqbGHl6EbrcaI0NGLIiQXE3xynUQaY
 WW1Yre6qDx+HjMJ9Lk5dJMbEI57lMR5YuwgjOebQDEBq6Xe1uYXOrzQR1wkevI09OhmGYYLlT
 AimTIiXaIOSqccv46iS0RLais/yHBL82Mz0q6lDrlsJNUJsxltDWWK8DBL2OcuT4ruWkeM1ea
 BRuglTOqIvDTmPPygFhbdvUPT6iPFC7afxNXsGefI4bbjeNhYX6nS0F6cwLQ2LIWga4XZkEZd
 z6sIuSnVYTe+hqvFwc+wKCzx53SS1hI7i5L0KpagtNitCMJqykKo0ImhRAKAg080rNWownjRu
 IPF/cHMBG0dPqoq4tjWbz8fm1ABB8geWNY2G5YJw+XustSCnZIeRDuYUn3vntf3hSxyCvx/h6
 MUbKc6EOnU3cwHaV2hAPdxdQaQVe0v5g5AqlyYzLoEe7LdHwl/8Ck/aMLs/1/dJgRKxLbPsgC
 UyZqBeY7unxw19J2xnG0Rh0BmWuPeaNKNP+zSqXTSQtW0xKi6IF4r3mcK8qS4aF+fx1jPOjPU
 FJ/4FPuvumLOfqR2xMCUtQ6ttO9gm7EQrFRiOoerJYoin92K1LI3mvoWpSnTnqjVhQycnPTH1
 MeV3DKDczqlWEV/1LfDYSeSftVblK3KgGgG4cTpn710t5TFBO5gsiAHq88wJmaWek/LpO45iM
 lfH96Cnhp+nsfsx6Zf44h1aGTG813Gh62z+M9mCsiiKkDVkBwA8dthC2A5gYrTY8a+bpgDYYq
 a/PprCwYWXTxAJDQUXN9vx6seI1oJ1RF8Dn4qKzj8/2YFP3OpbfqnIVlrgV52vYoI/gQq8HBW
 EDEaEam7lcXmITZU6/tZX/iLapG/9XXkG0MhyT4QusnNpUDoDd0WocRAYIjyBDgPfyREQFliV
 HSgBUVFAVXoG6U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_094935_402367_EBFFBAFC 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

mainline-driver does not support mt6323

this series adds mt6323 to mt6397-rtc-driver and implement
power-controller on it.

with this poweroff is working on bananapi-r2

Original Patch from Josef Friedl

changes since v1:
	- splitted into functional parts
	- more infos about changes

Josef Friedl (7):
  docs: dt-bindings: add poweroff
  rtc: mt6397: move some common definitions into rtc.h
  rtc: mt6397: improvements of rtc driver
  mfd: mt6323: some improvements of mt6397-core
  power: reset: add driver for mt6323 poweroff
  MAINTAINERS: add Mediatek shutdown drivers
  arm: dts: mt6323: add keys, power-controller, rtc and codec

 .../devicetree/bindings/mfd/mt6397.txt        |  10 +-
 .../bindings/power/reset/mt6323-poweroff.txt  |  20 ++++
 .../devicetree/bindings/rtc/rtc-mt6397.txt    |  29 +++++
 MAINTAINERS                                   |   7 ++
 arch/arm/boot/dts/mt6323.dtsi                 |  27 +++++
 drivers/mfd/mt6397-core.c                     |  40 +++++--
 drivers/power/reset/Kconfig                   |  10 ++
 drivers/power/reset/Makefile                  |   1 +
 drivers/power/reset/mt6323-poweroff.c         |  97 +++++++++++++++
 drivers/rtc/rtc-mt6397.c                      | 110 ++++--------------
 include/linux/mfd/mt6397/core.h               |   2 +
 include/linux/mfd/mt6397/rtc.h                |  71 +++++++++++
 12 files changed, 325 insertions(+), 99 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
 create mode 100644 drivers/power/reset/mt6323-poweroff.c
 create mode 100644 include/linux/mfd/mt6397/rtc.h

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
