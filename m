Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4B81CCA45
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 12:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kMUTxyIKC3uLb0r5vg16QRE/Ffy4MH9zeJciSb8qIwA=; b=E9gTJ0dDswTr8C
	f32gEdbhJgWHftd2jHaLrZ0ufwrlpvwTx3lyI7/hX59W/Yb32LB20GI/J2qAMu18cNTrRFPlEb/rK
	Oy8OiIGNYLeE5co+RAtj0Sn3SMGqKy32GLM5n/sr+uD2renRYIj7wRoy/tTNXDtP7EJpzgBxTzhAs
	6V0Aq+WpIfmilsGoelh/ih8Nt3DxiQuvjPB9+/42K1nSx1+dgXXmZJUxRnno8Mtp7axkjUexI2p/G
	EagnL2IA+8ElDNXXFafY4IyQYNrzKzW3etkkLZ/X5uT4bMbDgOf6pPfAuGqDTcS3Stdaos/FePM5y
	YhZypHcEqAYWBKyVUk4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXjCb-0002Ji-U5; Sun, 10 May 2020 10:28:57 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXjCW-0002JW-9S
 for linux-arm-kernel@bombadil.infradead.org; Sun, 10 May 2020 10:28:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=WSdlP4bhd2BTZ2E2L2qzf6BwEaoV8h8beYDzb5zZRQE=; b=wRsBBKoaE7z5ZpuXdS9lFTDkkd
 U9I0wcDYCaN3w6TzzDHzMOJJnQzAwi7iY7xPobD6LKS3KmuAFCeqYtHZjXrxeW0sSLLIZ5F4Mwaxb
 stspokPAoJZf4zgSKxWeTw/uidaYgYSauZAZi4GxNRFP5oVC+JObk6/EeEg8hXO8WRdfKTfXS5fdG
 bNMSPeyp9DQTGhWy3TiBlAd/0H39S/3v9oEJe1bul927SkFXOsIEBaREy67MEA03bg3f7A6kUYCKb
 Wb1bYED+UWDk4+WIhQa+csg2KWXyNLhJHugaiUBYI95SOC/xFFYDYC+vwqOjO3iyudv/5VYngNVRM
 lKy5Ht9A==;
Received: from 212.199.177.27.static.012.net.il ([212.199.177.27]
 helo=herzl.nuvoton.co.il)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXjCR-0002Bs-Td
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 10:28:50 +0000
Received: from taln60.nuvoton.co.il (ntil-fw [212.199.177.25])
 by herzl.nuvoton.co.il (8.13.8/8.13.8) with ESMTP id 04AANrFe015175;
 Sun, 10 May 2020 13:23:53 +0300
Received: by taln60.nuvoton.co.il (Postfix, from userid 20088)
 id 94DF6639C0; Sun, 10 May 2020 13:23:53 +0300 (IDT)
From: Tali Perry <tali.perry1@gmail.com>
To: ofery@google.com, brendanhiggins@google.com, avifishman70@gmail.com,
 tmaimon77@gmail.com, kfting@nuvoton.com, venture@google.com,
 yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
 wsa@the-dreams.de, andriy.shevchenko@linux.intel.com
Subject: [PATCH v10 0/3] i2c: npcm7xx: add NPCM i2c controller driver
Date: Sun, 10 May 2020 13:23:27 +0300
Message-Id: <20200510102330.66715-1-tali.perry1@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_112848_569703_6B6F3F5C 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (2.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tali.perry1[at]gmail.com]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.9 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 2.0 SPOOFED_FREEMAIL       No description available.
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
Cc: devicetree@vger.kernel.org, kbuild test robot <lkp@intel.com>,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Tali Perry <tali.perry1@gmail.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set adds i2c controller support 
for the Nuvoton NPCM Baseboard Management Controller (BMC).

NPCM7xx includes 16 I2C controllers. This driver operates the controller.
This module also includes a slave mode.

---
v10 -> v9:
	- Fix according to maintainer comments.
	- binding file changed to yaml format.
	- Shorten recovery flow.
	- Add support for health monitoring counters.

v9 -> v8:
	- Fix according to maintainer comments.
	- Split lines of iowrite..(ioread..) to separate lines.
	- Use readx_poll_timeout_atomic
	- resolve various style issues.
	 
v8 -> v7:
	- Split to two commits, one for master, one for slave.
	- Rename smb to i2c.
	- Remove global vars.

v7 -> v6:
	- Rebased on Linux 5.4-rc8  (was Linux 5.4-rc7).
	- Fix issue found by kbuild test robot (redundant include).
	- Note: left a warning related to fall through. This fall through is
	  intentional.
	
v6 -> v5:
	- Update documentation

v5 -> v4:
	- support recovery
	- master-slave switch support needed for IPMB

v4 -> v3:
	- typo on cover letter.

v3 -> v2:
	- fix dt binding: compatible name: omit "bus"

v2 -> v1:
	- run check patch in strict mode.
	- use linux crc.
	- define regs in constant offset without base.
	- remove debug prints.
	- no declarations for local functions.
	
v1: initial version

Signed-off-by: Tali Perry <tali.perry1@gmail.com>
Reported-by: kbuild test robot <lkp@intel.com>

---
Tali Perry (3):
  dt-bindings: i2c: npcm7xx: add NPCM I2C controller documentation
  i2c: npcm7xx: Add Nuvoton NPCM I2C controller driver
  i2c: npcm7xx: Add support for slave mode for Nuvoton NPCM BMC I2C
    controller driver.

 .../bindings/i2c/nuvoton,npcm7xx-i2c.yaml     |   62 +
 drivers/i2c/busses/Kconfig                    |    9 +
 drivers/i2c/busses/Makefile                   |    1 +
 drivers/i2c/busses/i2c-npcm7xx.c              | 2467 +++++++++++++++++
 4 files changed, 2539 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
 create mode 100644 drivers/i2c/busses/i2c-npcm7xx.c


base-commit: 262f7a6b8317a06e7d51befb690f0bca06a473ea
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
