Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F6EF30FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:14:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=emp1gRGKVOlk5fSBYk2l7gZqsMyF1ZNl7HWr6VzPSv8=; b=ALG
	TRNzuaUO2/RQ1LaVfoPoDyGbOmKkEawfec9bioLH5OdorzG2607bgqQXuJ4rqjiGCxXiuLLdtdApl
	cdxogA84aMoNE8NUcH0chLP5VPLwMsDueT7DmKRHPkl0mAj4hsXlyut1lfYIYsRifusTtTBtJzAgG
	1vgdpTmh873+ccBc7KmVHJ3TaIVmjVa46RiyH5JRmBEDOQSb2BPDgoCLi+jH7F4DVwoGuEfFrsJNt
	hbMLnadlDW9TVfu0+/J3vWGcnBfQZVdQca/XzTrlI3BrlOF2U2P9C8TrAax8X+mABcVpuGwsVvPl7
	33LOamY+s4hEsvdneBRzdx8tBS6BisQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSiYX-0007Gv-7K; Thu, 07 Nov 2019 14:14:37 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiYN-0007GK-5J
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:14:28 +0000
Received: by mail-wr1-x443.google.com with SMTP id j15so3201878wrw.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 06:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=SySlf9LlN4iQ5DOxcm689bd9gGZWJLbEiQiXadmQ1Pk=;
 b=UHfr/Fy0eKNYcLbTRmDFkD8ByLbeJuZ98PewgJnQ9K47BY1w6YNNND/1frcRFyjHYs
 ykqLJocw8egu1fRyxlZkcz9UWGaPlleM7yTcft6cZIXFqB6A2yo6aIBWX8+R1hM2XhWo
 5exEx26Z6Qvoo62u6gmzfkHWLvNa5ncHQKYxImXIWbhffMRQHk/bhDwe2ysIVZWakJW0
 h+f/th2fALLj8N3unjhmpXSGtR/s7yp5oMwkriW9fTWoGEZYrexFikYEyjesQM9Zm65Q
 YWO4i+iMmmOAAOTOBhzi8THEfdgTj6R9BqZiik9wy7sHGRchD4hMvevOHnGJua2e6gap
 2W9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SySlf9LlN4iQ5DOxcm689bd9gGZWJLbEiQiXadmQ1Pk=;
 b=Y0QTevP5wRiJPBqSzIiB1ivmBYf3uPWDR/aOFS68s2bFreu024fL06xBc5lfb+zXQN
 jXV4mR/JJI3BMh4EBmcsBVR++1YSG2NBO0F1t3Ad8aLBROx37laXkhdzmAzseAlN2iow
 Ijwq47XJzHiUx3O9O5ygNWGhcehYQ1ruLIIdrgGBhk/g/3IGjomSdIL52AAr75PrXBOm
 XGgFjkWecEv9cQ9vpvc7teTjDrDm6mr5S29TfEMqgKgZmjMdRjkhuxnFr8NdAnBzfEBP
 p02UTL6vJMl90I///r4nOT7vnik1GxEAlGfOjXO3NyyTo8YV9O5gnHqxoGizOKfkYprQ
 5YCQ==
X-Gm-Message-State: APjAAAVDuP26F4oPJE31SMG151jf5/W2im1udVbSmRYnHpzn1AUaWKiU
 coKjTHRYMcwDZJ96cjwOs8Mm27uc6HI=
X-Google-Smtp-Source: APXvYqz3a62TlecYMknedHe56Nzvz4QPMUm0c4y7nxYBP+UKHA+WI3HCrJm0EKZ9PUZYV+Hho7vQ5w==
X-Received: by 2002:a05:6000:11c4:: with SMTP id
 i4mr3054296wrx.277.1573136063599; 
 Thu, 07 Nov 2019 06:14:23 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id b1sm2453888wrw.77.2019.11.07.06.14.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 06:14:22 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 00/13] phy: usb: Updates to Broadcom STB USB PHY driver
Date: Thu,  7 Nov 2019 09:13:26 -0500
Message-Id: <20191107141339.6079-1-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_061427_202284_35DFEA73 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

- Add support for 7216 and 7211 Broadcom SoCs which use the new
  Synopsis USB Controller.
- Add support for USB Wake
- Add various bug fixes.

Al Cooper (13):
  phy: usb: EHCI DMA may lose a burst of DMA data for 7255xA0 family
  phy: usb: Get all drivers that use USB clks using correct
    enable/disable
  phy: usb: Put USB phys into IDDQ on suspend to save power in S2 mode
  phy: usb: Add "wake on" functionality
  phy: usb: Restructure in preparation for adding 7216 USB support
  dt-bindings: Add Broadcom STB USB PHY binding document
  phy: usb: Add support for new Synopsis USB controller on the 7216
  phy: usb: Add support for new Synopsis USB controller on the 7211b0
  phy: usb: fix driver to defer on clk_get defer
  phy: usb: PHY's MDIO registers not accessible without device installed
  phy: usb: bdc: Fix occasional failure with BDC on 7211
  phy: usb: USB driver is crashing during S3 resume on 7216
  phy: usb: Add support for wake and USB low power mode for 7211 S2/S5

 .../bindings/phy/brcm,brcmstb-usb-phy.txt     |  69 ++-
 drivers/phy/broadcom/Makefile                 |   2 +-
 .../phy/broadcom/phy-brcm-usb-init-synopsis.c | 414 ++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.c      | 226 +++++-----
 drivers/phy/broadcom/phy-brcm-usb-init.h      | 148 ++++++-
 drivers/phy/broadcom/phy-brcm-usb.c           | 264 +++++++++--
 6 files changed, 938 insertions(+), 185 deletions(-)
 create mode 100644 drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
