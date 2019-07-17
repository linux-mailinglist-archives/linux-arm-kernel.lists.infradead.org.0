Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7BE6C1C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AwnYS5wQ7vVq3D/R+FKcr9mNdKYtMOHrBiA0t0GUZzc=; b=hYP6Co0AdWGG8uJgNvotz4lhUb
	b34yE71mwll6L5XT1PFwNef8DgdzI2tl0O9wrfBE63bMS8aBCwVMMqU0yFFP5EcdXyPxiDRw7pmo6
	FSPr+mGze8JIxS/tQWHa0ts+1qQOSoQoIB8Ka9ka/ZBzPYv29TH1iz4J69Ki9FTASoh5VYJapdSlX
	AR8XgpE3Ma3bs62S8IHwQRlj/3smOK+ZjPPBttyAc/byX9H7ZeP3wOIGbQXvgXlclrmODdb07clhA
	bNd9HA+glyJPl6lNHneHHq0QgvmtVveFjmq7Px5m5nYITGoKGTuNezJJvrBqA/CsNFW7X0tUMBQaB
	R1P1lQ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnpzh-0004ds-2I; Wed, 17 Jul 2019 19:53:41 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx3-0002tK-R0; Wed, 17 Jul 2019 19:51:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393043;
 bh=1E1WYZ9UNXig/XjZbrNwH2B/Uz0L71XIHibc51jpswM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ay8CZ/2quxkRrjGfJkjdNVC6PtL5emHaXbpeaZJT6EPxrNRQcH6rM1j0RBBFEkmN3
 kVYo3L/IKNMxv2rITpsbrQgYoZUrUBAVzCCjNV/+ea0BNnomNqLYYntELQP2hYb44x
 u2VOFWGL2MBHVTWdfOKk+RthHCF4LF0yPOjPSN28=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LhB9P-1iGnNk1k4F-00oYFU; Wed, 17 Jul 2019 21:50:43 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 06/18] dt-bindings: bcm2835-cprman: Add bcm2838 support
Date: Wed, 17 Jul 2019 21:50:14 +0200
Message-Id: <1563393026-17118-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:otG1bhmBIpT4ePgWexdXOh6jWbIk6hLbeRBVV7g/EvQ0SPzgNmm
 pB2ELjR445W2htcYtD7+pIRijISaun31bKLNZRZlY/G4h+QQupCDKBxhF9XRwAb8NLKFrdX
 acgvhavysceFMzQDmcg5pNJki2PO1G1PrUyA467p8O+7fZRmqe5Rxk1JWSxut+SGeoa6z0T
 65kVq9Fs5CQubt5W/u8/A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:phn0F9BrgZY=:TFY2ntK3hwWEUmvEUuK8yL
 JYIYMoBB6jorvtcS6K8kh1Up38KTe5lxMQsaSveZX4E9gY8m+/5EO/ttJsZwgIDZojvVvKFdw
 0sZnRnAKqfCpKwS0rytmEBr3jU87yNG6jx8P1/uiSxhQvgHw+Be55k9ylt0DpJT8vZoN22aoK
 cpIVXxQEWEwOpWW+Egb7jMF63m/waXl8pTVVUV5EJZyOAKROCSJTUArLUslRYIUVKpHnFtwr7
 ehNpDyB29trql1tLd/cAXgjtKMCMvq33A15MyR7U0k0pVwc3lBkrokfp20RPmNNbdFVUnO4JT
 AQO4YwrY3Avrs2njcymQr8JWfxsQsLWCs3wQJST6nBYOCrYp/K9KpEk5bU1PlNsF963w4x1Me
 HwRHHwanOJGWSUNUN268mOvx841H5Px9CO/npuDsSKQsuu4OguwcBLkU/b9rX8dgDPUfu8MQu
 aKl8ONUNXhWKsArOT0pvohKMssqFOBSuuDNPsUBujTkT72oM/KN9BpFiKeL8/EwQCTpPlEoh8
 7qiZbj6PVGImV60VKgb9Ys/eV5qKM7ZKsN1hLOvV+ZBrT1GJ0yxoGuLwFRZPJFRykE72a/zXR
 BgAyYJUxf5gQsftL9enXkBz2KGbal02dJO5l5f1Ye1YgKOLgEcxgeHiPyTdDhcm9gTW0O+Ngu
 ehbW+fdZGuzIEnpz50A2vIdFlp+UK4Kx4EIwHl1j9ETKM4drVYpM+OEpaPZqO483XVTXqIe8n
 Az/maY7h7EWdiqkBpZV3AQF2/pKnmJOq9Nv8lJC0pD1OOKqwj/1Rs0cFSAfkfx1OXcCdcg9Ar
 gWVaaHdIxiFzySnKGVmgjJ9SGVNuksNZb+0QrA6aQJh2HJkKoNMNOgogemPxumBRtOfCy39xE
 VMRTUUBEujaLjuFFUNcQgjbl8yXO4XzxykMueMvkTLO0B+Fl+GAHoM2hykTo1b/4OzsJAIueT
 5gVguBWXqrG1Kr7nmQ3pIuIMNEYDexv8C/GNawW25BgQNwnxYpXKBdAvzjzpbq26rtTmhPbUP
 610ubaBOVX0KqGJfhpi/irWSYDLllV4NSKIOwmzAXJ2m6e5IqJ4P/7v0MdWI5SnBYe1ilMq9U
 yCF/bHgVNxeHwg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125058_164260_502C4E99 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new BCM2838 supports an additional clock for the emmc2 block.
So we need an additional compatible.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 Documentation/devicetree/bindings/clock/brcm,bcm2835-cprman.txt | 4 +++-
 include/dt-bindings/clock/bcm2835.h                             | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/brcm,bcm2835-cprman.txt b/Documentation/devicetree/bindings/clock/brcm,bcm2835-cprman.txt
index dd906db..e395795 100644
--- a/Documentation/devicetree/bindings/clock/brcm,bcm2835-cprman.txt
+++ b/Documentation/devicetree/bindings/clock/brcm,bcm2835-cprman.txt
@@ -12,7 +12,9 @@ clock generators, but a few (like the ARM or HDMI) will source from
 the PLL dividers directly.

 Required properties:
-- compatible:	Should be "brcm,bcm2835-cprman"
+- compatible:	should be one of the following,
+	"brcm,bcm2835-cprman"
+	"brcm,bcm2838-cprman"
 - #clock-cells:	Should be <1>. The permitted clock-specifier values can be
 		  found in include/dt-bindings/clock/bcm2835.h
 - reg:		Specifies base physical address and size of the registers
diff --git a/include/dt-bindings/clock/bcm2835.h b/include/dt-bindings/clock/bcm2835.h
index 2cec01f..d73acd8 100644
--- a/include/dt-bindings/clock/bcm2835.h
+++ b/include/dt-bindings/clock/bcm2835.h
@@ -58,3 +58,5 @@
 #define BCM2835_CLOCK_DSI1E		48
 #define BCM2835_CLOCK_DSI0P		49
 #define BCM2835_CLOCK_DSI1P		50
+
+#define BCM2838_CLOCK_EMMC2		51
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
