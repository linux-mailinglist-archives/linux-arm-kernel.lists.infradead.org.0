Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEB4E3D09
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PN9h1ONgUF37JE9HcBg8Q9UAi+1w30Cc45o1zVp/OiU=; b=mCyhcNshPMTGagnDNZqyWUxFqc
	uE1RgCYZW0X8P9nQh3XeuHDYUuAckYpeQfFcBW+7veIZIJo69L8W+4ZUIA8eYDcZy1RQ0DkfVFlQ8
	uTIB6JWMjs6sdjy9B/Qib6ucDE+lFTtF76/okfRZe+ju4KHdcubACVcwIdU64MFn84x5Cnq7gqFGK
	j1Car7H7EozC09FVuGx62+rzT4qf+gjV5P5tOvuzFf2oBc8ps5U7XVJTD7MQMjd6qQHsrENEWA4yb
	7G/zqvS+JD30lDh5SZeXWMatYxMAPf7c3c4pqVlkwm+zLOSu5o1+6FCKV2xGW3vLnDh21OlDzmSSX
	7gzOrjoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjXR-0002fD-VA; Thu, 24 Oct 2019 20:16:53 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjVF-0008D5-6G
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:14:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id r141so3809761wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 13:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0EJBLcVaxO20ievCKQMdrfQYhGLJzUvVM7Sr/xv2sbI=;
 b=Nxrmw1bgQn4EKcMU5lgVjre/4937BYB1kLzxodwIDsbj/2QkEm4LnYABrlKBJQgFmF
 uCwcU3BSGTCF63Buf/+lJrdOgfO28tX+0OzQ9oJtfYkQTDjWcAUH22LnVA619AKeNk4j
 OgN9xE2jgyXvJUie2ioTS7/ZgFzWKaF8lvq8EANYZx2AZQ1gNKBCQkqwo1zHkK4s4J05
 ONs3GQD9SUvv2HNKQpvdHtFzLFhBKIOuHvI6QwOdZ5kXIIioSYIrE2vWlWko2Pi6f7UT
 Q7jMLaDzV5jureGpMuYn3Vae4s2J5XqSdxlk7GGeWwAQMW/UaAPxRw32viEX0fZyBtNa
 NtWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0EJBLcVaxO20ievCKQMdrfQYhGLJzUvVM7Sr/xv2sbI=;
 b=B5IvcD1ZXO5JyvJRTnr7TBVnzWTYm7jjaja/42pNn4zmiVkkiDu82UkZVT17bQkeqr
 vLMfYnezn3QQKHdtf7o++mdDPTg6Is/WDQaeCqw+CxiMs8X1Kdb3WjM3W4cBH9P77p2B
 XJFfxvtvjHBySZrVUkeHZxevowAOrk9nshtUAPByMtpAH6kk87VIhzbyNLy10N00dVjX
 0E1auPkW112sZ1ZJdl4WFknBCsNIgKySx4VJdIVgi0LnfoQ7s1jM5y8dRlS1ovi0UFHf
 OB3z2pzjV4MB7gmvISe6FxIITMb8oHcUlQKUGpioe5cu8L+QbinJirTPZoqwl0eWjRn0
 bgaw==
X-Gm-Message-State: APjAAAXjQKMLKWodqqbGAxlfDOCKPluJhPdTDLD6O7+19pSxXZJPWJXe
 oqfucuwlJGokubIKJsz0wh8=
X-Google-Smtp-Source: APXvYqwKuM/JCZjbCC5QWOg82IPxIi96oCJABnrF8tRG1t76AYkoDs+kap8Ebyj7mSsvJ2erG9/tpA==
X-Received: by 2002:a7b:cb03:: with SMTP id u3mr146972wmj.126.1571948075189;
 Thu, 24 Oct 2019 13:14:35 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u21sm4788536wmu.27.2019.10.24.13.14.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 13:14:34 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/5] dt-bindings: Document brcm,
 int-fwd-mask property for bcm7038-l1-intc
Date: Thu, 24 Oct 2019 13:14:14 -0700
Message-Id: <20191024201415.23454-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024201415.23454-1-f.fainelli@gmail.com>
References: <20191024201415.23454-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_131437_269170_89EB796C 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Indicate that the brcm,int-fwd-mask property is optional and can be set
on platforms which require to leave specific interrupts unmanaged by
Linux and need to retain the firmware configuration.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/interrupt-controller/brcm,bcm7038-l1-intc.txt  | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7038-l1-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7038-l1-intc.txt
index 4eb043270f5b..5ddef1dc0c1a 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7038-l1-intc.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7038-l1-intc.txt
@@ -36,6 +36,12 @@ Optional properties:
 - brcm,irq-can-wake: If present, this means the L1 controller can be used as a
   wakeup source for system suspend/resume.
 
+Optional properties:
+
+- brcm,int-fwd-mask: if present, a bit mask to indicate which interrupts
+  have already been configured by the firmware and should be left unmanaged.
+  This should have one 32-bit word per status/set/clear/mask group.
+
 If multiple reg ranges and interrupt-parent entries are present on an SMP
 system, the driver will allow IRQ SMP affinity to be set up through the
 /proc/irq/ interface.  In the simplest possible configuration, only one
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
