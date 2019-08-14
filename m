Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C038DB77
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 19:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dCBhEVkjz4PC8KY53ThvX+8+DzVhdm/iAOuHrLPuUpI=; b=ZiS
	PoP9M/7q/u+bfNXarLYm11NqznMnRe31/b/ahYc9CUjYC0WNnJnGyRAdLX8R3DIJqHP7xCBl8UcS5
	7WfI6mZuZPgTlOwpE4dXXZFww/3UCSTbNvC0+v7FOCIKTPjK37KK24mNUTvCeVWkDflI3q13jmTLj
	t9eqW53nlCewDQUutX+2ZoB1vzZOJgB/En7ZfBnIC9N6/BfjCdMKodrqqbLQWGlTqlS02JwiK/v9W
	jw50xDcXyM5yZ0+RUq0QuIMqDyxCYvrlBpSnI5U/t/6fwQZc+E4ALv0E9OJFPNN/Pjtt02fXs6zL2
	NIfn6A0PXZWzMoB0Zy3zsckK6Q1H4VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxx1m-0001T1-2n; Wed, 14 Aug 2019 17:25:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxx1C-0008FK-5S
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 17:25:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79B50344;
 Wed, 14 Aug 2019 10:25:01 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7705B3F694;
 Wed, 14 Aug 2019 10:25:00 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] firmware: arm_scmi: updates for v5.4
Date: Wed, 14 Aug 2019 18:24:54 +0100
Message-Id: <20190814172454.26191-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_102502_415693_A6BDE2E6 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Olof Johansson <olof@lixom.net>, Kevin Hilman <khilman@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC Team,

Please pull !
There are minor changes in clock and hwmon subsystems that are Acked-by
Stephen Boyd and Guenter Roeck. It also contains a new reset driver that
is reviewed by Philipp Zabel. Further all these are in -next for a while.

Regards,
Sudeep

-->8

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-updates-5.4

for you to fetch changes up to c8ae9c2da1cc5d18b6d51d10160508a3dc3436bf:

  reset: Add support for resets provided by SCMI (2019-08-12 12:23:02 +0100)

----------------------------------------------------------------
ARM SCMI updates/fixes for v5.4

Handful of fixes/updates including:
1. SCMI v2.0(recently released) support for:
	- Performance protocol fast channels
	- Reset Management Protocol
2. SCMI infrastructure/core support for recieve(Rx) channels,
   asynchronous commands and delayed response
3. Usage of asynchronous commands for clock rate setting and sensor
   reading based on the attributes read from the firmware
4. Miscellaneous cleanups(typos, naming alignment with specification,
   and SPDX License identifier)
5. Couple of fixes: removal of extra check for invalid length and
   additional check to ensure platform/firmware has released shared
   memory before using it in OSPM

----------------------------------------------------------------
Sudeep Holla (22):
      firmware: arm_scmi: Use the correct style for SPDX License Identifier
      firmware: arm_scmi: Align few names in sensors protocol with SCMI specification
      firmware: arm_scmi: Remove extra check for invalid length message responses
      firmware: arm_scmi: Fix few trivial typos in comments
      firmware: arm_scmi: Use the term 'message' instead of 'command'
      firmware: arm_scmi: Check if platform has released shmem before using
      firmware: arm_scmi: Reorder some functions to avoid forward declarations
      firmware: arm_scmi: Segregate tx channel handling and prepare to add rx
      firmware: arm_scmi: Add receive channel support for notifications
      firmware: arm_scmi: Separate out tx buffer handling and prepare to add rx
      firmware: arm_scmi: Add mechanism to unpack message headers
      firmware: arm_scmi: Add support for asynchronous commands and delayed response
      firmware: arm_scmi: Drop async flag in sensor_ops->reading_get
      firmware: arm_scmi: Add asynchronous sensor read if it supports
      firmware: arm_scmi: Drop config flag in clk_ops->rate_set
      firmware: arm_scmi: Use asynchronous CLOCK_RATE_SET when possible
      firmware: arm_scmi: Use {get,put}_unaligned_le{32,64} accessors
      firmware: arm_scmi: Add discovery of SCMI v2.0 performance fastchannels
      firmware: arm_scmi: Make use SCMI v2.0 fastchannel for performance protocol
      dt-bindings: arm: Extend SCMI to support new reset protocol
      firmware: arm_scmi: Add RESET protocol in SCMI v2.0
      reset: Add support for resets provided by SCMI

 Documentation/devicetree/bindings/arm/arm,scmi.txt |  17 +
 MAINTAINERS                                        |   1 +
 drivers/clk/clk-scmi.c                             |   2 +-
 drivers/firmware/arm_scmi/Makefile                 |   2 +-
 drivers/firmware/arm_scmi/base.c                   |   2 +-
 drivers/firmware/arm_scmi/clock.c                  |  33 +-
 drivers/firmware/arm_scmi/common.h                 |  18 +-
 drivers/firmware/arm_scmi/driver.c                 | 366 +++++++++++++--------
 drivers/firmware/arm_scmi/perf.c                   | 264 ++++++++++++++-
 drivers/firmware/arm_scmi/power.c                  |   6 +-
 drivers/firmware/arm_scmi/reset.c                  | 231 +++++++++++++
 drivers/firmware/arm_scmi/sensors.c                |  57 ++--
 drivers/hwmon/scmi-hwmon.c                         |   2 +-
 drivers/reset/Kconfig                              |  11 +
 drivers/reset/Makefile                             |   1 +
 drivers/reset/reset-scmi.c                         | 124 +++++++
 include/linux/scmi_protocol.h                      |  46 ++-
 17 files changed, 981 insertions(+), 202 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/reset.c
 create mode 100644 drivers/reset/reset-scmi.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
