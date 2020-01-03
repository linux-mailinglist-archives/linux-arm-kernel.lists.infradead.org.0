Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C2412FC35
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 19:19:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tU4KfhrQEzy4ntBW3IVGBRMprlhOoz4mmplh3yiohm8=; b=iQk
	+ecn95HB9O1Z1fIvasAom1iiGvhntnojlGabCTqu6xK+seewrnnl0TSVw9X8UPQwiaGa4pUvWaJLv
	pkHY+EkIDinl2vQBE3vIB0kaAtwzXHHrZ849+dq4rn/MQ48GrTJz3m6Fm+vfgp63W8GuQgZ0qSQU6
	1EZQMNr4tR/vA66xRQiPHvSTiCV4tIZuSGaWcJv7fz7igYr7tmr5MwlCuG9aq6lAsyjjSRV1xhUqN
	p8SIydAyyj8+x4ZRmSOS9Zued5QWcztTlakYLxJOIUm+JgYdkIauD1w4wgRzi02M5ZKELD9sFH2MP
	/K4VMMMROPreZeB/dGbWyvmU9vdPKhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inRXr-0003zk-5d; Fri, 03 Jan 2020 18:19:35 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inRXf-0003zD-5v
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 18:19:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id z124so23739672pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 10:19:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/bkVpKLcARihH63b9lhuj6u+KHSXhqLrTec8GSi2HiQ=;
 b=U3aWBB0eAPUe5/1UmDixtix7tccIYAwaS17+7kxEE/IPIq1dTHL4znhs+SfRfybZ+3
 GV3s0wALIainuvKZqN6MlT0jug76jR1lo/R4e++MEmgSTJ7qhU3VcsDC3rsB7myoGjjb
 kWiBDQxKsYtAQGHqscCgLdcTdbGv1GSrAELRwmzyj47s9WdqcL6qOZrEcweQL/k9SCiV
 7Lrj/y/qIqJa4XIUx+7JpEnUOXK4Hx+Pwc0qbsktlPvrETHhpFmyROOE+6juFjchrJ98
 07kWC6B/RR0Eu4BCizRJ+ET24shStGA4Jj2yMSJ0y5nL1jUyeaI5e5FJ21AVm0+wI1h6
 ZRLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/bkVpKLcARihH63b9lhuj6u+KHSXhqLrTec8GSi2HiQ=;
 b=Le+vWj7XERO+zBgjupY8NEpgnlsAYH+Z4PsOPRINH2xqeCC4K/ObSPWlJyCLTVXLbB
 lBRYLAD9kBg5r2AocT/2bII94U1fLRWYzFtd7qlHYPXcfAhLMfHMSncy6GBtF9/6EwZn
 cZslw6UXttjWvcxufl9GNzg/LS/qTbONzxlsUAg6XvgkoJDBdH5flQOVi06Jg3bi41Z8
 1UmKK/rB2VCJrZG0yd5buaULdPZuiWEzUu3jrFTn8dEWXnaNwFb8oXHIXjkYLUj85Wvg
 EUC2mpZRGA3Y7EZ8Y4L9UFUe/ml9JsbYU6r3asyNbDEHV59IlaLjxv8kDEXbN1RNbolZ
 kuFw==
X-Gm-Message-State: APjAAAX6GdlEXZ9M/NekpCsyDpEgXUokldmwDUAHWetzlrWeh/uxGpYW
 eshPAcg4STGH4tTejby1XpY=
X-Google-Smtp-Source: APXvYqwAf9b3wmXwzbSi1jvr+9Q5jQiDl+xXarqGzrWNzpwlxn5PP+a7oVWcFRe1BR53uq/8uLsjJw==
X-Received: by 2002:aa7:9829:: with SMTP id q9mr88211919pfl.231.1578075562347; 
 Fri, 03 Jan 2020 10:19:22 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id j8sm41783602pfe.182.2020.01.03.10.19.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 10:19:21 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 00/13] phy: usb: Updates to Broadcom STB USB PHY driver
Date: Fri,  3 Jan 2020 13:17:58 -0500
Message-Id: <20200103181811.22939-1-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_101923_244413_CE4EEFBF 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Al Cooper <alcooperx@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset contains various updates to the Broadcom STB USB Driver.
The updates include:
- Add support for 7216 and 7211 Broadcom SoCs which use the new
  Synopsys USB Controller.
- Add support for USB Wake
- Add various bug fixes.


v4 - Fix mispelling, change Synopsis to Synopsys. Also add
     "Reviewed-by: Rob Herring" to bindings patch. There are no
     functional code changes in v4.

v3 - Rebase to v5.5-rc1

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
  phy: usb: Add support for new Synopsys USB controller on the 7216
  phy: usb: Add support for new Synopsys USB controller on the 7211b0
  phy: usb: fix driver to defer on clk_get defer
  phy: usb: PHY's MDIO registers not accessible without device installed
  phy: usb: bdc: Fix occasional failure with BDC on 7211
  phy: usb: USB driver is crashing during S3 resume on 7216
  phy: usb: Add support for wake and USB low power mode for 7211 S2/S5

 .../bindings/phy/brcm,brcmstb-usb-phy.txt     |  69 ++-
 drivers/phy/broadcom/Makefile                 |   2 +-
 .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 414 ++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.c      | 226 +++++-----
 drivers/phy/broadcom/phy-brcm-usb-init.h      | 148 ++++++-
 drivers/phy/broadcom/phy-brcm-usb.c           | 269 ++++++++++--
 6 files changed, 943 insertions(+), 185 deletions(-)
 create mode 100644 drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
