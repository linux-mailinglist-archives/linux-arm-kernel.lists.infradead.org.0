Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B3A1E94A2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 02:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0pgheh4Dtpivo+qfMHE68B0YuhH2NiB8y1ZgBVByxA4=; b=RN0
	M6EzxjpKFT1erVuIOlwb2bGq9PwntMlJ+kro5YujHmUz5cdH+UzvAdepLJhCCTVq1liURiPcWYxQy
	OXzrL+IonNpRuIuIzkEf+MLGSRXslvMO64cItF6UnNschLkJpTdW7GiD7n2WAT842Ikb3S1KE0wAW
	4vnBKXR9QXkroWlLBreCmcUVlClTGChkLrChRQ06b6ItsBLmoqNpYenuo4CYMMuDfBs6xk8gp/4io
	gSL8Ux+0n7wWdemlJ8uGs8OwzRsLUEvABrDIClmmmAMJQ8nqCoBKCzR+EzRLSWIgIrg2vPztIYWMW
	aOTbzSrpl1/i6wszUIfIoZPjo/uCNxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfBZU-0002qT-FL; Sun, 31 May 2020 00:11:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfBZI-0002pi-4O; Sun, 31 May 2020 00:11:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id u13so7328709wml.1;
 Sat, 30 May 2020 17:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=N1fNAY9W8nEz1STCUYqUNen8ccMRBFwNRvnI1O2D6Bk=;
 b=nR7OkrMZbdF68Iig0EWwolS+t4nAgQo0fHFUPfd4w53QSAJ2eZN+YOkwNLb+xWMglN
 gyn4w4FCEUqufm1WT5z7sik8zMY8VXHULDiqoqj6mIYOIIYLgNjERhh3QWtzVQ87JHD2
 Wqza2uvs0nfFPt36iilhAkM3gMUCZ0FMAGFYITBDbte2kFFXJACind9sKBZHoy52LzJC
 hJt5JmImr9MGLqV3rOUDCZ/bgz5Qegk/lUhn/I/VcvvKuO8zQ//+pzZxMj18f2tlMIlS
 faHXl49Kg59qeOiG76ciJxAYyKM8ZXWaCvMdn1WLV742dQTTG+YG/AXhV77GNhKEKRzQ
 8HyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=N1fNAY9W8nEz1STCUYqUNen8ccMRBFwNRvnI1O2D6Bk=;
 b=EWTnzSx1ve47rKtp2DCYwER6if05Q6iMVB7MGCqBSws9vtojaMXwozXXPJECjZDqGX
 Ck/naAfF5PfGlnMOnHSVG2L9RodzZ+8qGMJAKA8o20AX3FgZebxXTZf9ebyeYUIv+DO+
 ka/PC3RRs7SG5JljtTSKJhy9kQWz/xS15WhHTE/6vuclbLy0wLtEnVRTRWGxj8t+VQTG
 +Pzg0NDN9tMyVKCp6ejJnAeHKmWqnLhWxX8vfnPnyF+JFABzQxxD/MNutKL75Gk/73sB
 4xg/SO5u7/3/1fNvCTLdTl57rfd0dq8dR8W4kANcRjjsBAgFlNJD4SQhHD3HEbpMOX+E
 UE0w==
X-Gm-Message-State: AOAM533ngv6/SVEYH9yNM/owLpUs9u2Eb5O1B21kxZdIsE73ZyBmcCR3
 K6RCAlRxAQtrohN7UgxvbV4=
X-Google-Smtp-Source: ABdhPJzYEz/vDQ+dGMjZgZtLaTL+hqSIOROHuJY7+wHyuEMVcZKdl/wOm+YoLtweprg5342Kl8toOw==
X-Received: by 2002:a1c:6244:: with SMTP id w65mr13515496wmb.82.1590883869773; 
 Sat, 30 May 2020 17:11:09 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d17sm15455807wrg.75.2020.05.30.17.11.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 May 2020 17:11:09 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] pinctrl: bcm2835: Add support for wake-up interrupts
Date: Sat, 30 May 2020 17:10:57 -0700
Message-Id: <20200531001101.24945-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_171112_188755_CED5C17F 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

This patch series updates the bcm2835 pinctrl driver to support
the BCM7211 SoC which is quite similar to 2711 (Raspberry Pi 4)
except that it also supports wake-up interrupts.

Thanks!

Changes in v3:

- added Rob's Acked-by for the binding patches (#1 and #2)
- correct check on the number of GPIOs in irq_set_irq_wake (Stefan)

Changes in v2:

- fixed patch #3 to reference the correct data structure (Stefan)
- fixed patch #4 to use conditional initialization and fetching of
  interrupt resources to limit the memory overhead for non-7211 chips

Florian Fainelli (4):
  dt-bindings: pinctrl: Document 7211 compatible for
    brcm,bcm2835-gpio.txt
  dt-bindings: pinctrl: Document optional BCM7211 wake-up interrupts
  pinctrl: bcm2835: Match BCM7211 compatible string
  pinctrl: bcm2835: Add support for wake-up interrupts

 .../bindings/pinctrl/brcm,bcm2835-gpio.txt    |  5 +-
 drivers/pinctrl/bcm/pinctrl-bcm2835.c         | 80 ++++++++++++++++++-
 2 files changed, 83 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
