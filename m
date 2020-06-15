Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F671F90C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2ktg3mLAbjWJO73yhl3skdImODfV0OC095FjhAJJcvc=; b=g9YjRqRWxlscuG
	m00ypWmjuZ0crIvv/zoP7M2eMCnw8dRfe5EtLbHOvxgcce/mCEgvvVPquqw3KoVTfL5StPzkThVnJ
	O3jFXnqDLgjSGO/940/X9pd0RkCdydVI5qC9e/qst/W5CHkGAu5q2zZODUcCOXo/9f2OrbcWOW1Lq
	lfdc0Wy4uuq7czC79iA8fMnZH6HVBRAObWHKBabtsRT1Imp6o26fYK1mhljFQuUfQIxM/QhnPhBjI
	bXwOYb7QuGpQIA8hCJDWxxED5OuGYGLMcvs2qSFVnxqzSJUYuEC5W/Rkuk6queJTN8ZEqnT9gSjAg
	/dwMC/FKlsf+4dMpjDHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkk1C-00047Y-LS; Mon, 15 Jun 2020 07:58:58 +0000
Received: from smtp.asem.it ([151.1.184.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkk13-000436-Kg
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 07:58:51 +0000
Received: from webmail.asem.it by asem.it (smtp.asem.it)
 (SecurityGateway 6.5.2) with ESMTP id SG000317057.MSG 
 for <linux-arm-kernel@lists.infradead.org>; Mon, 15 Jun 2020 09:58:39 +0200S
Received: from ASAS044.asem.intra (172.16.16.44) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 15
 Jun 2020 09:58:37 +0200
Received: from flavio-x.asem.intra (172.16.17.208) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Mon, 15 Jun 2020 09:58:37 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <bgolaszewski@baylibre.com>, Rob Herring <robh+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, Jason
 Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>, Guo Ren
 <guoren@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v1] doc: devicetree: bindings: fix spelling mistake
Date: Mon, 15 Jun 2020 09:58:35 +0200
Message-ID: <20200615075835.15202-1-f.suligoi@asem.it>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-SGHeloLookup-Result: pass smtp.helo=webmail.asem.it (ip=172.16.16.44)
X-SGSPF-Result: none (smtp.asem.it)
X-SGOP-RefID: str=0001.0A09020A.5EE72A2D.0065, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0 (_st=1 _vt=0 _iwf=0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_005849_870140_3EDC8F0A 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [151.1.184.197 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-csky@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Flavio Suligoi <f.suligoi@asem.it>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix typo: "triger" --> "trigger"

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
Acked-by: Guo Ren <guoren@kernel.org>
---

v1: add Acked-by: Guo Ren <guoren@kernel.org>

 Documentation/devicetree/bindings/gpio/mediatek,mt7621-gpio.txt | 2 +-
 .../devicetree/bindings/interrupt-controller/csky,mpintc.txt    | 2 +-
 Documentation/devicetree/bindings/timer/csky,mptimer.txt        | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/mediatek,mt7621-gpio.txt b/Documentation/devicetree/bindings/gpio/mediatek,mt7621-gpio.txt
index ba455589f869..e1c49b660d3a 100644
--- a/Documentation/devicetree/bindings/gpio/mediatek,mt7621-gpio.txt
+++ b/Documentation/devicetree/bindings/gpio/mediatek,mt7621-gpio.txt
@@ -12,7 +12,7 @@ Required properties for the top level node:
    Only the GPIO_ACTIVE_HIGH and GPIO_ACTIVE_LOW flags are supported.
 - #interrupt-cells : Specifies the number of cells needed to encode an
    interrupt. Should be 2. The first cell defines the interrupt number,
-   the second encodes the triger flags encoded as described in
+   the second encodes the trigger flags encoded as described in
    Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
 - compatible:
   - "mediatek,mt7621-gpio" for Mediatek controllers
diff --git a/Documentation/devicetree/bindings/interrupt-controller/csky,mpintc.txt b/Documentation/devicetree/bindings/interrupt-controller/csky,mpintc.txt
index e13405355166..e6bbcae4d07f 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/csky,mpintc.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/csky,mpintc.txt
@@ -10,7 +10,7 @@ Interrupt number definition:
  16-31  : private  irq, and we use 16 as the co-processor timer.
  31-1024: common irq for soc ip.
 
-Interrupt triger mode: (Defined in dt-bindings/interrupt-controller/irq.h)
+Interrupt trigger mode: (Defined in dt-bindings/interrupt-controller/irq.h)
  IRQ_TYPE_LEVEL_HIGH (default)
  IRQ_TYPE_LEVEL_LOW
  IRQ_TYPE_EDGE_RISING
diff --git a/Documentation/devicetree/bindings/timer/csky,mptimer.txt b/Documentation/devicetree/bindings/timer/csky,mptimer.txt
index 15cfec08fbb8..f5c7e99cf52b 100644
--- a/Documentation/devicetree/bindings/timer/csky,mptimer.txt
+++ b/Documentation/devicetree/bindings/timer/csky,mptimer.txt
@@ -8,7 +8,7 @@ regs is accessed by cpu co-processor 4 registers with mtcr/mfcr.
  - PTIM_CTLR "cr<0, 14>" Control reg to start reset timer.
  - PTIM_TSR  "cr<1, 14>" Interrupt cleanup status reg.
  - PTIM_CCVR "cr<3, 14>" Current counter value reg.
- - PTIM_LVR  "cr<6, 14>" Window value reg to triger next event.
+ - PTIM_LVR  "cr<6, 14>" Window value reg to trigger next event.
 
 ==============================
 timer node bindings definition
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
