Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1A7E3D03
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1q28LtMyNdXvsL4BxkC/b8ngB9SgvTDTSxHYxNc4OLg=; b=YsA2NY3WRGeU6MF2mhb1olxrrd
	Bgu5FqrBMv1dzbYJpSOjE1Gv/Dqh6E2FFYEkQmXsRIMjtuuE92Kjvhi4/7VF6O9623C9v/Rdr9J1r
	dOqt6uI66n3vUN40lsk2/TZVEIKYLnk0lEKIpV8X3/HCgnp9ry/YhRetCcOyX8JQtc2t0OEmy5pd1
	cDJziRSNuc/sSG0MZxNe+tC/wNCV+him57jESC86IN740H3yZx2tptDD00FelzL/YsU0I8rOVqLod
	PxthxXy1kwEoDiZRfiUV7Xsh6lJkDIiG2Lt7sZpHlhzK2bwJZfj0cJRQyM/IrGcuprE4cQUlc/Aij
	fk9ODVeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjWw-0002DN-CJ; Thu, 24 Oct 2019 20:16:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjV9-00088Q-PV
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:14:33 +0000
Received: by mail-wm1-x343.google.com with SMTP id 11so721460wmk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 13:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MxFvyutT3TeFv9tuYgjWUXMmMJVTn8dALM+g0eVelPM=;
 b=QdI9CBo+X3LUGiOOarfRIMRoq2d0UEbzIKkPRidHPHuATjOrDAp1Cc9P59zxqPyVk1
 +uHrHz5C2konAMC6RmntdYQbCDGcmhyFNO9uNYMqb7BEIKujCGrH1wQ8JnzXHISjPa82
 EBwczDq6hUEypGCchTG7LNMJcRJ1GCYqc8A3A2W5RqtY2nz4PU1tdwIKxZWP5JMQtm/K
 HpqR31IFn1yEozVoKLek4XlZ9MDUYqW+ji+VKDw7zK9uyChTHYixNMlag88At4Mr3GAE
 VRPiMPy5UBz4Vehksda8NyfBxIc+H4bANFvsoDVDSppATcfOOQPi19wvxgKHDzhx8ugr
 XEEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MxFvyutT3TeFv9tuYgjWUXMmMJVTn8dALM+g0eVelPM=;
 b=W77n6QFsT8gAf4WRdeb3xmoYRdMmKCX05ChTfYRt2XXNddOEtZ2IuNt75FazLXE1Iw
 SVqHsa/z3QBnBJj+OjhF0dqIbjLN/Jn3hvD3Bgrj3x8isNvDxbFnIPYpfEmNEJMiuu2D
 v9+8O3jOPbUisa6G9IB4rHO3Kk0RigBWBOC3pTg5MjspciMmxbv9L1kuZ3FVTcJmZXkm
 qvSOCUzNjmjAFXyKS1lgtwVIHUty130speFbhyVzBjBmTVQenTD0/WLv+Nk5rRQ8jouU
 NF1n/4TdXfy92ksa9OIuYUqrfJV4yLIrYSxVUtulEuQEOk8ssKo9OKvV5ndCygsd3BBR
 zsRQ==
X-Gm-Message-State: APjAAAXq4nhdrp+39Wb1tkZVwuFK3Y2Wr8rNfbS0wxSJZMCYqHvY2wrt
 5a9Gv5wsxKlzF2YvF+16kX0=
X-Google-Smtp-Source: APXvYqyhSCLxWJYmS/l2UlSbZ8O72LLkwjqVf7Bxc6RIqRSE5mZrgfoLL9O4u9579TOgwUabK+FJ+A==
X-Received: by 2002:a7b:c186:: with SMTP id y6mr137363wmi.67.1571948069688;
 Thu, 24 Oct 2019 13:14:29 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u21sm4788536wmu.27.2019.10.24.13.14.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 13:14:29 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/5] dt-bindings: Document brcm, irq-can-wake for brcm,
 bcm7038-l1-intc.txt
Date: Thu, 24 Oct 2019 13:14:12 -0700
Message-Id: <20191024201415.23454-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024201415.23454-1-f.fainelli@gmail.com>
References: <20191024201415.23454-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_131431_865016_DAA96522 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

The BCM7038 L1 interrupt controller can be used as a wake-up interrupt
controller on MIPS and ARM-based systems, document the brcm,irq-can-wake
which has been "standardized" across Broadcom interrupt controllers.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/interrupt-controller/brcm,bcm7038-l1-intc.txt   | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7038-l1-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7038-l1-intc.txt
index 2117d4ac1ae5..4eb043270f5b 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7038-l1-intc.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7038-l1-intc.txt
@@ -31,6 +31,11 @@ Required properties:
 - interrupts: specifies the interrupt line(s) in the interrupt-parent controller
   node; valid values depend on the type of parent interrupt controller
 
+Optional properties:
+
+- brcm,irq-can-wake: If present, this means the L1 controller can be used as a
+  wakeup source for system suspend/resume.
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
