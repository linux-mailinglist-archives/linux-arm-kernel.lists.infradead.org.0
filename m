Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA9D1CF309
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 13:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o+lJvkc5YsbSJCGMnryP2Gc6x35vllV+BKRYZ65XoM8=; b=tIuq2h360mFrGo
	Gjjry1im4GbgKP+M5bQZnB8Cnh035OE543O7d5LRclJibEscLH7GIdAN99swgOlgGa8TslsqBB1Ig
	tUc2v8adA6kIupZKCs19AOL9QI4xtcFd5eWehMkqRu/PJyyVM6k7beo1yGlDFddN6+ukJHLK8DDXP
	anbun+jOQGUi6uzrEGf0g47xS6V7hyGzfStw7dPUiJhN61XBSiYw7fhE0fcW00xcXt34zz1zG4kvI
	fqhCPET69HeeEQNOPSJdrLLsvWXb/3tCw1hARovPmESuifYybRWyQT0pfLJt9YO4kD1d8BvwtbGhG
	2hPahx7jTj6mhITKYBuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYShr-0000yy-A6; Tue, 12 May 2020 11:04:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYShj-0000yG-Ec
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 11:04:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6EF4B30E;
 Tue, 12 May 2020 04:04:04 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F5E83F71E;
 Tue, 12 May 2020 04:04:03 -0700 (PDT)
Date: Tue, 12 May 2020 12:03:57 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] firmware: arm_scmi: updates for v5.8
Message-ID: <20200512110357.GA26454@bogus>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_040407_534044_D62DDEB2 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Olof Johansson <olof@lixom.net>, Sudeep Holla <sudeep.holla@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC Team,

Please pull !

Regards,
Sudeep

-->8

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-updates-5.8

for you to fetch changes up to 5a897e3ab42942e0fff51738357b1e0f91690dcf:

  firmware: arm_scmi: fix psci dependency (2020-05-07 16:28:56 +0100)

----------------------------------------------------------------
ARM SCMI/SCPI updates for v5.8

1. Addition of ARM SMC/HVC as SCMI transport type with required
   abstraction already in place
2. Initial infrastructure support to add SCMI notifications from
   platform to agents
3. Miscellaneous fix adding header include guards

----------------------------------------------------------------
Cristian Marussi (5):
      firmware: arm_scmi: Add notifications support in transport layer
      firmware: arm_scmi: Rename .clear_notification() transport_ops
      firmware: arm_scmi: Clear channel on reception of unexpected responses
      firmware: arm_scmi: Clear channel for delayed responses
      firmware: arm_scmi: Fix handling of unexpected delayed responses

Peng Fan (2):
      dt-bindings: arm: Add smc/hvc transport for SCMI
      firmware: arm_scmi: Add smc/hvc transport

Sudeep Holla (11):
      firmware: arm_scmi: Make mutex channel specific
      firmware: arm_scmi: Drop empty stub for smc_mark_txdone
      firmware: arm_scmi: Check shmem property for channel availablity
      firmware: arm_scmi: Drop checking for shmem property in parent node
      firmware: arm_scmi: Add include guard to linux/scmi_protocol.h
      firmware: arm_scpi: Add include guard to linux/scpi_protocol.h
      firmware: arm_scmi: Add receive buffer support for notifications
      firmware: arm_scmi: Update protocol commands and notification list
      firmware: arm_scmi: Add support for notifications message processing
      firmware: arm_scmi: Fix return error code in smc_send_message
      firmware: arm_scmi: fix psci dependency

 Documentation/devicetree/bindings/arm/arm,scmi.txt |   3 +-
 drivers/firmware/arm_scmi/Makefile                 |   4 +-
 drivers/firmware/arm_scmi/base.c                   |   7 +
 drivers/firmware/arm_scmi/common.h                 |  11 ++
 drivers/firmware/arm_scmi/driver.c                 | 133 ++++++++++++++----
 drivers/firmware/arm_scmi/mailbox.c                |  17 +++
 drivers/firmware/arm_scmi/perf.c                   |   5 +
 drivers/firmware/arm_scmi/power.c                  |   6 +
 drivers/firmware/arm_scmi/sensors.c                |   4 +
 drivers/firmware/arm_scmi/shmem.c                  |  15 ++
 drivers/firmware/arm_scmi/smc.c                    | 153 +++++++++++++++++++++
 include/linux/scmi_protocol.h                      |   6 +
 include/linux/scpi_protocol.h                      |   6 +
 13 files changed, 340 insertions(+), 30 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/smc.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
