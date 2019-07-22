Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A287E6F984
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9seYPSkzoz9ZdNSY06I1nx2TjNo0iqJ7OHMLvLE+0mA=; b=Zo6WttuUGt07DbcLeFXa5OTFim
	F9F69r9sq5xC0YWAFcR3+enFt2dKrt65bJaHNqBKz5hgg53GVuawOPrbzQoPrMamc5GyOYiexN9fU
	oKOk1PPaM9M0bI+vYXAzSUr88H/dbjWILja3XSELvpE+zgzXkim0CtDJGuPGbs9c8BApMnAnIVBhd
	5BYXUpPauwGCMlVpjam+sCQ2x2lwZ8NMk6qug3dB6yU50OF3v5EjVrxLKjZrukWVEVFczT27Ju4eI
	7p6coRPQtY1jtE84Qj5YJ/Z8uKZhIXRa22u9aDITSmJL7gE+5uOHdg7lBLuDMQC94dvHIuI7qkgUh
	nTAXvRRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRk2-0002IP-O8; Mon, 22 Jul 2019 06:24:10 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRjm-0002HI-6w; Mon, 22 Jul 2019 06:23:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563776616;
 bh=p7EuEN+WXnzmcDfw8Q5gWYTDfwT+rrLjIA0t4iR5+DU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Fs7+OVDivi+bxt7RG4MgsXL9iMFsdsFLsu8M/Ofw0D3bG2jayz7C5BLqxT0Jz7ChV
 xfSd9tEIGIK0/QkidlIkkj75mePWfRAai0gs2I1knyTADe0T6oKDWoRHiy6gawpFiA
 JqIYS6XbhH7MFrv06OwjEF/7cW4bl9/PpAgNiDvo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.98]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MaV3V-1i8uWX2ZBZ-00KCgz; Mon, 22
 Jul 2019 08:23:36 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 11/18] dt-bindings: pinctrl: bcm2835: Add brcm,
 bcm2711 compatible
Date: Mon, 22 Jul 2019 08:23:24 +0200
Message-Id: <1563776607-8368-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
References: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:L6MvCiJSUEBAg1rTPB7ACRbeRDXsOwcCOZcjaEYDTpcasQM/U5z
 3+lW4tcXkM8Ok5cyjtm399i4Fiin6mdeNhwTW8WSrDg4LkG9sXABaWVT7PNX5VjBaS2Oe+m
 qfJNByhfka/+Pn7gu74tdiZ60bAd+LH3IleO0W+0Rr1Ut2+3yAGprJDmJMjKR+1P54l7v2I
 DFjYVlyuh3cTv0FNKCGIg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MJTh9r2apxo=:iwLc9ZJ3pv2oOMTOXOcVge
 I9yPnQoAGYB7VvLujM0XRTWRzYaDGW4JBSR/9CVMI/KP9szSSAFVsF1IFFeJXqD0Sc60mwSLF
 BwO4AhkEUbvo4tdx/7dhG780XfC9wNkSE4Hld9prwxaZW7Mw6+coZBi6pfxmRKDB8PEI++dy+
 SXHt9d9A2jTwY1k7xamdHOBDkgrxVIaywxHvImhzCxx82RvZCAg7xgb2faAVHLUMF45Jp41Ap
 B97Y8dBBk43dejfqln2C8iKdbH04YnTxzARdUZInRacl6JyO5px44kJhG9meTJ7zXISls5mhB
 Xw7gAwZF65p7eqhhM8ELp3lRE4omt8XCrXWmxgO2H0j1edeKFdZ4QWBLYw000UoL8LmSxD6ia
 c19xye46n7nWEE/bCuXPgYrepKyZlmaz0YZHUZ9E+tru35fOm1gMZk+Dj0r0Mc9mO1O1Fey64
 fVZMwREad/Pko4gXl3mSeVzECi/GUNn+UPASk8yJXUY1mP8Vh6wnkefdWVomTtGsu7aa+fSLb
 JzWLq2hYWAMYLQRW3ioihAQVgsp+2EoZwKiEg/AIB1JY9UbRjPg3+RLNGS9eDWTIHF1cpoPVC
 HaNrIqDL9YBxl9pTmk6V2jRAwqsHe+LpwXPH20Ug5VzWstd3tMbbO+U9twwVBAuLW2t1LRZY9
 2f1nS2+UWqCRgKTpyyP5mYjShHKzpOcn11lUomyoDj261j6AotDFCGIHnasTbOjXAvoDXqMfi
 DcyYFJYLj1a4AnFBZ5tr89H/HZy3xNrjWiaxKEEW7furQ9U9kS8pUGVsD7qW4n2a2cS22d0T/
 CPveiO/8mgjF6ApfsVWCuFZn84if6SmqUewB1Yrv93ZZpsgMOcLgU0H/iiOVGUh5GtHHKKDca
 w0ySOjNFi2LKkRF4iwQHJe6DQuOi42H9Sou+fQmkm0nDCBPa4WtCfTmQSHDbS/zquaTXcUzP3
 B8qwWJMDZGekfEmnBIf2OvFDQ38pjdb3XOOeCP37b+VyYD13j66Zgtq28LamiEbwlnyZgWcuv
 OmbTgKBzmetHA/mjgkR5vpNQF6ShB88cLDK19LNIiImiTVfVeX9/35OwHVMfwCUr5CpRp3elI
 sshxoWksxyjM38=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_232354_588267_0B161E05 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new compatible for the BCM2711.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
index ac6d614..3cab733 100644
--- a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
+++ b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
@@ -8,6 +8,7 @@ Required properties:
 - compatible: should be one of:
   "brcm,bcm2835-gpio" - BCM2835 compatible pinctrl
   "brcm,bcm7211-gpio" - BCM7211 compatible pinctrl
+  "brcm,bcm2711-gpio" - BCM2711 compatible pinctrl
 - reg: Should contain the physical address of the GPIO module's registers.
 - gpio-controller: Marks the device node as a GPIO controller.
 - #gpio-cells : Should be two. The first cell is the pin number and the
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
