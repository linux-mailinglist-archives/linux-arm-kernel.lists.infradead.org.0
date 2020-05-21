Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 922C51DCBE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 13:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/wK4SaHi814cTv5LpThMSw4RZy7AQwBxftKIn9xB6oI=; b=MgJbAGpyBU7XdC
	7g44Xh98/aCkf1WBUabPVybpCTpOUSAovIc00dziveHKEoDC0W099WuvjqRYiJInwQqLH0vJLzadP
	eAs89nQBUeVk5y6sTFfLlTBCw6P+L77aQ0KTdockEVoOtnMb45+pnPg3BcRQennsax5ZCBMakDm0l
	HQzh8qNVaIIIOogTMV9YGPa9IHPNF4WgAy/YWGvDWEer+VufmeqZ3b6NWUeHybkzZepkVd0PPkNsu
	GJgiwkx/boU02Ur4m4H/IBGmm+ljEroclTg7NgPLkMm7G75KcocNrczUcTr/pJuv8BJMFry4XfCBp
	yEF6OO92rGrGOHD0CHBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbj6O-0005GY-Gl; Thu, 21 May 2020 11:11:04 +0000
Received: from 212.199.177.27.static.012.net.il ([212.199.177.27]
 helo=herzl.nuvoton.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbj5a-0002S9-Uj
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 11:10:16 +0000
Received: from taln60.nuvoton.co.il (ntil-fw [212.199.177.25])
 by herzl.nuvoton.co.il (8.13.8/8.13.8) with ESMTP id 04LB9XhP018632;
 Thu, 21 May 2020 14:09:34 +0300
Received: by taln60.nuvoton.co.il (Postfix, from userid 20088)
 id CCCD7639C0; Thu, 21 May 2020 14:09:33 +0300 (IDT)
From: Tali Perry <tali.perry1@gmail.com>
To: ofery@google.com, brendanhiggins@google.com, avifishman70@gmail.com,
 tmaimon77@gmail.com, kfting@nuvoton.com, venture@google.com,
 yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
 wsa@the-dreams.de, andriy.shevchenko@linux.intel.com
Subject: [PATCH v12 0/3] i2c: npcm7xx: add NPCM i2c controller driver
Date: Thu, 21 May 2020 14:09:07 +0300
Message-Id: <20200521110910.45518-1-tali.perry1@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_041015_441350_78E75FB3 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.9 (++++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tali.perry1[at]gmail.com]
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
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
v12 -> v11:
	- Fix according to maintainer comments.
	- debugfs simplified (usedebugfs_create_u64).
	- slave read fifo split from master read fifo.
v11 -> v10:
	- Fix according to maintainer comments.
	- Init clk simplified.
	- Comments in c99
	- Split master irq function.
	- debugfs not mandatory.
	- yaml file fix.

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
 drivers/i2c/busses/i2c-npcm7xx.c              | 2426 +++++++++++++++++
 4 files changed, 2498 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
 create mode 100644 drivers/i2c/busses/i2c-npcm7xx.c


base-commit: b9bbe6ed63b2b9f2c9ee5cbd0f2c946a2723f4ce
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
