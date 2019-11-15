Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D7AFE50D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:43:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=54vkyoBmoVQdXbNhKfEDqg3NPgeE4YjG9dpWDmzXbhE=; b=KsT
	RScbsUjjUudBmTRXe86iRUuPbB9mqXYMqFzo+M8YnjiXubvV7b8bcUFRkc8GYrwB/QoCDFngp0HHv
	rKLStpUD2eFRaPkz0goZTvmefYuTMcHEqw+k7a0qB2LEw/oV+Smsc3QovjjE37HzLyPXXWRx9Ryek
	8cjAaNFf1ao+/tQ3zf2+YJjE2vQFUng4oGcNymut+6e4zRjVkmUhRkn1INmWZyq70fhOFZsePPRuC
	S4VOV2SfbLdcAioT4Yj8WpjXlRfKAI/FCFK4cFNn01WEkqh6vdi/PrQSih3nsQ0CfAPMgl52fJvSL
	z/9wU8om3ENnarhAqvy7Tq0SOt4nn/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVgZN-0003Tv-UR; Fri, 15 Nov 2019 18:43:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVgZA-0003TB-UL
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:43:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id r10so12058253wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 10:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=agn5/+Ff+txwdkMYcl4dOnRhb7wogId0OeGIrqnhFKE=;
 b=qghhLRcUIuP5ShnvL5clvj3Ew+W2ALCsWLbLPM5QqviPGCT6qn4NScW27VVUpaWPBk
 oRX4p3UTPSZyh7vPQiuQ1wf/uuMAaSy/g22p8175W0zkubhz2MyZjvTCHzgj6jix46DC
 bsSZj457R7IXZ5QzFQt2gdQG/XYQPgwMUdMOW/bLoTjvagllAaG4FWlUBcyf3svP2Uos
 zhucpOF6ai8fgq8revALwXVvlcgwOrDZhSHakMbY5qClrkRHY3ZQ22jTwkqBtahuWNA4
 c6A7xwWeg3hkZc4EeObtUrt1h/lff185xMTq6j/LVzK43QgO87l8qh5NkIeM2Af7kbr4
 EzNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=agn5/+Ff+txwdkMYcl4dOnRhb7wogId0OeGIrqnhFKE=;
 b=DxAMaMk0s+StU91AGe32yTSFdLpRfkLY5ja5X/jbiaKsfnj/eYEgibxGoWXj7OXUPU
 uovWwtR6zjQiKgOJ62X9IJI9d/mDvKtrOgNYIKtOxiGmzKAXDX9MqNdQxpptt6B2UaCF
 DHDdCD+Wka7m6MgREJSUdU2pL8gqctGpS3uyKpjoMepGy8pyv5k8yI9l9AJuxJCBnMEO
 OzgNmzGn2IJqK/G01LcnMNSMUdRzs9F7yMlj9bhvdLeS0g0CBldSv6E3QEFeqII7cJLk
 Hu7M1PQbhdoOsdZkxnCEtYRTr/1l++U7CCI6pW5frmm51EBlNrSAsRRkfbukoNT7gEqr
 SM7A==
X-Gm-Message-State: APjAAAVLtTA0WrxOLvf8943FuH4KqCi197Hmj1sZb4tm5gwyeZYssvIN
 qd+aVWLT8otsEXohANnE5Jk=
X-Google-Smtp-Source: APXvYqy8rxlKN7DI2hT1o5s1rEAFlbHl7k3byVewAXowFyTRy4yq+mLGaWY+rDbAndFm3NdD3POjTg==
X-Received: by 2002:adf:e386:: with SMTP id e6mr16077536wrm.397.1573843410941; 
 Fri, 15 Nov 2019 10:43:30 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id g138sm2620989wmg.11.2019.11.15.10.43.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 10:43:30 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/13] phy: usb: Updates to Broadcom STB USB PHY driver
Date: Fri, 15 Nov 2019 13:42:10 -0500
Message-Id: <20191115184223.41504-1-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_104333_001728_7D8AEE9A 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This patchset contains various updates to the Broadcom STB USB Driver.
The updates include:
- Add support for 7216 and 7211 Broadcom SoCs which use the new
  Synopsis USB Controller.
- Add support for USB Wake
- Add various bug fixes.

v2 - Changes based on review feedback
- Add vendor prefix to DT property "syscon-piarbctl"
- Use standard "wakeup" instead of "wake" for DT "interrupt-names"


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
 drivers/phy/broadcom/phy-brcm-usb.c           | 269 ++++++++++--
 6 files changed, 943 insertions(+), 185 deletions(-)
 create mode 100644 drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
