Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C14162504
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=414XAQu1y2hiWMM37bdtRHx3TOVNhib0sLndZTqLh04=; b=PBw
	25bODFsdIBHbsM5X4dJJXS3gasVhfiDf2OUr6rAwRpANgvlugEWvz1chF0o6gohBVq8WLHhJXpCWM
	nO4YrWLhaTF1IiGS0K9GzrUaFAYh4DnNcA6zHD2HZs/C6Sj1Q50dE5akYsyCr83JWrxbFKg1Rkoct
	gtxssoa1W6npDdtj1mk/dhPTOoFb6tWM9FIwWPhY3xBLjAshiSjPOVHLr5xDvy8ql+3uhmG4WIeQw
	zB3BKIVDCWmOrjCWM1huwvazCRiwXojHFRJObJVM84v+Rl8AbIuCMXwT8e896Za8tBJFEBWnj0xwZ
	s0jdpjW7yBdSkNqNYJckAnXMK4ob/lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVry-00046I-Dq; Mon, 08 Jul 2019 15:47:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVrh-00045j-Og
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:47:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5864F360;
 Mon,  8 Jul 2019 08:47:41 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5442B3F59C;
 Mon,  8 Jul 2019 08:47:40 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 00/11] firmware: arm_scmi: Add support for Rx,
 async commands and delayed response
Date: Mon,  8 Jul 2019 16:47:19 +0100
Message-Id: <20190708154730.16643-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_084741_844561_F7FCAE18 
X-CRM114-Status: GOOD (  10.10  )
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patch series adds SCMI infrastructure/core support for recieve(Rx)
channels, asynchronous commands and delayed response. It adds async
command support for clock rate setting and sensor reading based on the
attributes read from the firmware.

The code is rebased on the cleanup series[1] and is available @[2]

--
Regards,
Sudeep

[1] https://lore.kernel.org/lkml/20190708154358.16227-1-sudeep.holla@arm.com
[2] git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git scmi_updates

Sudeep Holla (11):
  firmware: arm_scmi: Reorder some functions to avoid forward declarations
  firmware: arm_scmi: Segregate tx channel handling and prepare to add rx
  firmware: arm_scmi: Add receive channel support for notifications
  firmware: arm_scmi: Separate out tx buffer handling and prepare to add rx
  firmware: arm_scmi: Add receive buffer support for notifications
  firmware: arm_scmi: Add mechanism to unpack message headers
  firmware: arm_scmi: Add support for asynchronous commands and delayed response
  firmware: arm_scmi: Drop async flag in sensor_ops->reading_get
  firmware: arm_scmi: Add asynchronous sensor read if it supports
  firmware: arm_scmi: Drop config flag in clk_ops->rate_set
  firmware: arm_scmi: Use asynchronous CLOCK_RATE_SET when possible

 drivers/clk/clk-scmi.c              |   2 +-
 drivers/firmware/arm_scmi/clock.c   |  23 +-
 drivers/firmware/arm_scmi/common.h  |   6 +-
 drivers/firmware/arm_scmi/driver.c  | 346 ++++++++++++++++++----------
 drivers/firmware/arm_scmi/sensors.c |  32 ++-
 drivers/hwmon/scmi-hwmon.c          |   2 +-
 include/linux/scmi_protocol.h       |   6 +-
 7 files changed, 280 insertions(+), 137 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
