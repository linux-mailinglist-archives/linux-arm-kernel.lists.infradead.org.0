Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DA2C4404
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7g2EGml02gQOMWuLMmE02h+6PVbIyzn12/muKGwO9/I=; b=LyoaAoi6q7xgECc2GBZPT/vSpz
	tY/pN8+G5JUbZb+hi/57asfDsG73QH7y5FOU8TpQmD2zfyAQtOm5dC9ybY43BSil0j0MugW092XKC
	CmZWzyD/LYr6uSHGO9+JDzWXzOowgUDSdZmNfTaP/dgkcYDt3HpKPPSmvnPpR4/QAAyn7qvgMRILy
	Mf8GZiFXjjDD+NbP+/Pt70F7zFlxapRVZ18bMkb03fk6kC/LtmqUEzKTEHQ1DSDYK/U2gIaFr65XM
	yAyI4T3kq5zk+RNd4VKx5IyRD93c6Tp1kX09R20Bbxmyg+x3TSpSq6HNsoEaxFK0lTXitox1oXb2E
	PMnrTP0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQxe-0005lB-Lk; Tue, 01 Oct 2019 22:49:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQx0-0005E0-RP; Tue, 01 Oct 2019 22:49:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id 205so9181823pfw.2;
 Tue, 01 Oct 2019 15:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MmmruYs8eLLY9TVJPuXrREyshp3NHm54X/4qVh/jdCE=;
 b=t2gIYStIo7EvVeIu6qgRKCQj05e3VScNvXYgE/q7zJYjc7ohseAY+M8DvdBFlWgw5T
 2FodYA90XfoyXlFgDJj86rC/vBcSFP28bvv+t2dEx0okKZzoGQPmJmCq0oJ1qrnkFbJF
 UuujmtaBm5j9LQGWmdlahf25QNGo046c1yJLAMUSAkv5044TM75nHV2e9cvgAMILuLzC
 lQQq+l2CdWjUeQM4Z6G9qJoU/GiPpHmocgGaSfijjwSj8VdmoDwNnykDtzj1MieYiq1R
 mBO7XG+R0x/z2GEiAYcgayT3W/UO/y/ln4IIAeCbdZBGBGsT0IswilDEdfSn8ILvpQl6
 TNDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MmmruYs8eLLY9TVJPuXrREyshp3NHm54X/4qVh/jdCE=;
 b=mO6orXrlr9gtwyYGJq7pNjpW57Oe3PvuBiLWo6w1eVLypw/SZLzvarmAMf6Uy2jGsn
 KqgEPhEyBv+0A/eFBld0OOeBlQJkp/Ee/V0ncqf2tzPfbffzkbUoP5cpWT8QwoWypG3k
 h5jfTT4fGm7q53qo2fhI6rFWKWvJKp1/jg+BmpSLbm6jwv0FcHBCZFDKnp40gZOvdWXF
 J8Yb+dnS51FGWuaQOtuby5fbA1nfKldluVG0oj5K2gMCmpo3N1NHa8yf+RTI8RyRm2Lu
 Ut0Znl3ERw7GkrAUwHS1vSvw3c/2bY5df4KwX7fEbAqtIwxXevGtuXy+dwyRL3XoV2Sm
 pikw==
X-Gm-Message-State: APjAAAW9iiOF7yg+Qy8FFlcBctmLXsXbot+QDUMv8RLEYfU9qtOJSbPk
 hqNoZAZHE1h5TKHk+aGj8iQ=
X-Google-Smtp-Source: APXvYqwhgl5YTOlRsYIJipNujsEavjL7imf4qlNubaxLu6R3vxIAUZv7WzUYsDaYY6Me7w0ebcmRvQ==
X-Received: by 2002:a17:90a:24a1:: with SMTP id
 i30mr702873pje.128.1569970137924; 
 Tue, 01 Oct 2019 15:48:57 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c128sm20913506pfc.166.2019.10.01.15.48.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:48:57 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/7] dt-bindings: interrupt-controller: Add brcm,
 bcm7211-armctrl-ic binding
Date: Tue,  1 Oct 2019 15:48:37 -0700
Message-Id: <20191001224842.9382-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001224842.9382-1-f.fainelli@gmail.com>
References: <20191001224842.9382-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_154858_901880_B2A18980 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Scott Branden <sbranden@broadcom.com>,
 Marc Zyngier <maz@kernel.org>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Ray Jui <rjui@broadcom.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BCM7211 features a second level interrupt controller similar in nature
to BCM2836, with a few modifications to the register offsets, document
that specific compatible string.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../interrupt-controller/brcm,bcm2835-armctrl-ic.txt        | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
index 0f1af5a1c12e..0b07845b46e4 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
@@ -12,7 +12,8 @@ interrupt there indicates that the ARMCTRL has an interrupt to handle.
 Required properties:
 
 - compatible : should be "brcm,bcm2835-armctrl-ic" or
-                 "brcm,bcm2836-armctrl-ic"
+                 "brcm,bcm2836-armctrl-ic" or
+		 "brcm,bcm7211-armctrl-ic"
 - reg : Specifies base physical address and size of the registers.
 - interrupt-controller : Identifies the node as an interrupt controller
 - #interrupt-cells : Specifies the number of cells needed to encode an
@@ -25,7 +26,8 @@ Required properties:
   The 2nd cell contains the interrupt number within the bank. Valid values
   are 0..7 for bank 0, and 0..31 for bank 1.
 
-Additional required properties for brcm,bcm2836-armctrl-ic:
+Additional required properties for brcm,bcm2836-armctrl-ic and
+brcm,bcm7211-armctrl-ic:
 - interrupts : Specifies the interrupt on the parent for this interrupt
   controller to handle.
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
