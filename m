Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A757C43FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oFKwXX3wV8YDxhrSjCZt05cSBn9Q0cj+/4jKfJXkKic=; b=C3z
	rAJCppunH/YTi0CZmILhbMbOpgoSLNI7aWdzGWElB/YjUqjAQpDXcKIs3Gwip7faDTkZjLbD9fzNl
	6yM1wFu5eg9wxZIcr9upWtN9ROw3kdk+f8Wy34NZQxxKuaFqiExB95ctW8g7avR7T+EOjOJvZsk38
	haJXqc0HmhSXF3aQ6htbEWItZZ0rr4QXH7LDlsQIlwFf9blUB7lJ14THZg5ePDTnTB1C5cssiMxkS
	UsteCcbDg9zBTEkPeLAfij3edMjwQ/Db9gUYcp/pV3zBr5iydzByDNsmyxrbNqCOuIR67DMk/pa9Y
	CZR3wZeOQFhTKd7ygKsnc/kNL+s8YlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQx6-0005EH-Or; Tue, 01 Oct 2019 22:49:04 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQwy-0005D8-Bw; Tue, 01 Oct 2019 22:48:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id c17so10746699pgg.4;
 Tue, 01 Oct 2019 15:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=oVtuzVl6ZjuJjeRxwc0/jxd04my4e+lydovEVmuMVYs=;
 b=Bl8xAjeE3EtYICbGBQRBv+POzG3Qaf+rm2W53Xabjh7OTZrjeBiWX7hShF0T5daf9V
 jluZ/4xeOEaHpHU4h8qK5p9pqWhdqxOWw8BnZMb5ATmvaqbk81GqC5QlSnDyeeENuxze
 Hm8hvavGFtH472/aD81H5ZffdglIpMqSU3wU2b8m3c8OW+78UVMr4TWRNDFNbaPGXU8w
 oWLY6Kl99uQf/p900Q/UapnSlyLClmR1pne6HwsTEz9SL9ETCKR3JUSxk8T7fROIGhsI
 NiySa70k6m6sipKMnhBFwW/B25+vldYj4FvBhwuhuLK4ydaZ08ah0lFQQ8SbNwj3Ca4t
 jf6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oVtuzVl6ZjuJjeRxwc0/jxd04my4e+lydovEVmuMVYs=;
 b=aoPR7fy+9LnI427sYPFmrIpoPOBmOqXXN5wP7lrDIi+pYTfTU+iy5PqFwH27RxQEMb
 YJHZVUWd877EtAjx+b0NsePmAKQi2LcgcfeuWjVWEPptauts3V1BCR+7F/uPm2jZdwCX
 75y21ACO5YNgTjiEbnDF74yZze4+seiOiQaq66R6vz3HfppLHYmVaHXqLTJMcMkccMbn
 yqsh9OCdBjzya5ckW9vHl3KcitzJaewYrm6avdEvY64yHcBsUidOXPAO15nYp1hUsq9X
 DajnmXd+gdkXZBV3sHVvC6SHHj+PmVqLV1ngrDBKp7JgyE0V6wP8JYD7KC2aa3SXcUid
 gCJA==
X-Gm-Message-State: APjAAAVZNPj7ckWBJ69IqDFx1A67O6NIf5HhdHuHMej6SlV9XhEQfdtD
 +22ySUnrqZ0RD2z/uR4j7Hk=
X-Google-Smtp-Source: APXvYqzli23oNviMyvGn+Gp3uJ37fGRBFmEjnh33GzKxgmnZUVWdib9kqCkXJ2MQo2afcOBWhnK7zw==
X-Received: by 2002:a17:90a:c8a:: with SMTP id v10mr694468pja.4.1569970135129; 
 Tue, 01 Oct 2019 15:48:55 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c128sm20913506pfc.166.2019.10.01.15.48.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:48:53 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] irqchip/irq-bcm283x update for BCM7211
Date: Tue,  1 Oct 2019 15:48:35 -0700
Message-Id: <20191001224842.9382-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_154856_431960_E6C5378C 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
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

Hi Marc, Jason, Thomas,

This patch series updates the BCM2835 and BCM2836 interrupt controller
drivers to support BCM7211 which can make use of those drivers in some
configurations where the ARM GIC is muxed out and the legacy ARM
interrupt controller is used instead.

Thank you!

Florian Fainelli (7):
  irqchip: Introduce Kconfig symbol to build irq-bcm283x.c
  dt-bindings: interrupt-controller: Add brcm,bcm7211-armctrl-ic binding
  irqchip/irq-bcm2835: Add support for 7211 interrupt controller
  dt-bindings: interrupt-controller: Add brcm,bcm7211-l1-intc binding
  irqchip/irq-bcm2836: Add support for the 7211 interrupt controller
  irqchip: Build BCM283X_IRQ for ARCH_BRCMSTB
  irqchip/irq-bcm283x: Add registration prints

 .../brcm,bcm2835-armctrl-ic.txt               |  6 +-
 .../brcm,bcm2836-l1-intc.txt                  |  4 +-
 drivers/irqchip/Kconfig                       |  5 +
 drivers/irqchip/Makefile                      |  4 +-
 drivers/irqchip/irq-bcm2835.c                 | 95 ++++++++++++++++---
 drivers/irqchip/irq-bcm2836.c                 | 27 +++++-
 6 files changed, 119 insertions(+), 22 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
