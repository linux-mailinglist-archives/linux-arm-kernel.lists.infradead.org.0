Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1850412D369
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 19:30:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qr57eIqoHuQnu360wKpJf1uD8C0N/51d2/35DklnaHM=; b=lrgMK92Plji1t9
	U9ypxS57KUhvNYZcmTyEgHSLL9VpWGcEsuNxT6fvQhRYIpcDwsvVlRG8Gpf2+EMN9uHLqp6HuqTvT
	CXs3kAU73O/ClufA6yivxnYrVT8fsMnamuzALJbiXlj2nkaFrJUvgfhIxdqWdckti8VKgMVYH3CRe
	0Hwun6T9gsIgAKExMiPM5cw4nraVdnt+OEShQJEPPLnuWkij5N5/ihQCA7fPTw2cJ4ui8zykHL4Lv
	1F0s63ReFIwuV1G2YEbej3Wl2p1mh5DxJRcsiuPcJyuwIFz1I49ubluGMm0KgfWFEQxm+GrhK4FrO
	JAy+GWiQhRqC62o0XTqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilzo3-0003Q6-I6; Mon, 30 Dec 2019 18:30:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilznt-0003HI-Ud
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 18:30:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A953328;
 Mon, 30 Dec 2019 10:30:03 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4AE453F237;
 Mon, 30 Dec 2019 10:30:02 -0800 (PST)
Date: Mon, 30 Dec 2019 18:29:56 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] firmware: arm_scmi: updates for v5.6
Message-ID: <20191230182956.GA29349@bogus>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_103010_037084_06CED268 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-updates-5.6

for you to fetch changes up to 729d3530a50417a88f3f485ba2dc88ff8adfeacb:

  drivers: firmware: scmi: Extend SCMI transport layer by trace events (2019-12-30 12:34:37 +0000)

----------------------------------------------------------------
ARM SCMI updates for v5.6

1. Addition of multiple device support per protocol to enable use of
   some procotols by multiple kernel subsystems simultaneously and
   corresponding updates to the existing scmi drivers
2. Addition of trace events around the scmi transfer code to measure
   any delays and capture anomalies that can also be used during
   investigation of some platform firmware related issues

----------------------------------------------------------------
Lukasz Luba (2):
      include: trace: Add SCMI header with trace events
      drivers: firmware: scmi: Extend SCMI transport layer by trace events

Sudeep Holla (11):
      firmware: arm_scmi: Add support for multiple device per protocol
      firmware: arm_scmi: Skip scmi mbox channel setup for addtional devices
      firmware: arm_scmi: Add names to scmi devices created
      firmware: arm_scmi: Add versions and identifier attributes using dev_groups
      firmware: arm_scmi: Match scmi device by both name and protocol id
      firmware: arm_scmi: Stash version in protocol init functions
      firmware: arm_scmi: Skip protocol initialisation for additional devices
      clk: scmi: Match scmi device by both name and protocol id
      cpufreq: scmi: Match scmi device by both name and protocol id
      hwmon: (scmi-hwmon) Match scmi device by both name and protocol id
      reset: reset-scmi: Match scmi device by both name and protocol id

 MAINTAINERS                                |   1 +
 drivers/clk/clk-scmi.c                     |   2 +-
 drivers/cpufreq/scmi-cpufreq.c             |   2 +-
 drivers/firmware/arm_scmi/bus.c            |  29 +++++++-
 drivers/firmware/arm_scmi/clock.c          |   2 +
 drivers/firmware/arm_scmi/common.h         |   2 +
 drivers/firmware/arm_scmi/driver.c         | 110 ++++++++++++++++++++++++++++-
 drivers/firmware/arm_scmi/perf.c           |   2 +
 drivers/firmware/arm_scmi/power.c          |   2 +
 drivers/firmware/arm_scmi/reset.c          |   2 +
 drivers/firmware/arm_scmi/scmi_pm_domain.c |   2 +-
 drivers/firmware/arm_scmi/sensors.c        |   2 +
 drivers/hwmon/scmi-hwmon.c                 |   2 +-
 drivers/reset/reset-scmi.c                 |   2 +-
 include/linux/scmi_protocol.h              |   5 +-
 include/trace/events/scmi.h                |  90 +++++++++++++++++++++++
 16 files changed, 245 insertions(+), 12 deletions(-)
 create mode 100644 include/trace/events/scmi.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
