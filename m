Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BD9118BA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:54:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KLL0ixgudah5sgBXzNwvNaVF6en0H7JEe7WTFUWYS3o=; b=VLM
	riTLNFZzbIjYNWsTEVafIBd5lbvimaxJCl5LHCr07tAARvmFE8UXTLa4mGiB9tLZ+3B//js8C5v1n
	aKc29k/slocgIVlbBVQ3LP/PgdArQhR0Ze7xGx3yPFkn3HNpmvx/RHRew3N4qolIbhQ0jx0yDAjEb
	/c9bkSUNr/rGGfmcRChmp3hGZTU1er7yiJioRWZ/K8L0kd/oGFdYtLU7hVnSzJTjuTNfAvy7ITuH0
	OanPqaU9L8ZWKT9wkQi1nyfdIwfU1JqhC3FyHJccNApOnGn3kT4qnCwTRjQVJENJQ31MaYTyf6wv3
	hNPRAeUMOjA4YgxNY2EErlryHzueJBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieguU-0006K0-6a; Tue, 10 Dec 2019 14:54:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegtr-000609-RF
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:54:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D02F2113E;
 Tue, 10 Dec 2019 06:54:04 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2B6B13F67D;
 Tue, 10 Dec 2019 06:54:04 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 00/15] firmware: arm_scmi: Add support for multiple device per
 protocol
Date: Tue, 10 Dec 2019 14:53:30 +0000
Message-Id: <20191210145345.11616-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065407_956004_ADE4307F 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
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
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently only one scmi device is created for each protocol enumerated.
However, there is requirement to make use of some procotols by multiple
kernel subsystems/frameworks. One such example is SCMI PERFORMANCE
protocol which can be used by both cpufreq and devfreq drivers.
Similarly, SENSOR protocol may be used by hwmon and iio subsystems,
and POWER protocol may be used by genpd and regulator drivers.

This series adds support for multiple device per protocol using scmi device
name if one is available. It also updates existing drivers to add
scmi device names to driver id tables.

Regards,
Sudeep

Sudeep Holla (15):
  firmware: arm_scmi: Add support for multiple device per protocol
  firmware: arm_scmi: Skip scmi mbox channel setup for addtional devices
  firmware: arm_scmi: Skip protocol initialisation for additional devices
  firmware: arm_scmi: Add names to scmi devices created
  firmware: arm_scmi: Add versions and identifier attributes using dev_groups
  firmware: arm_scmi: Update scmi_prot_init_fn_t to use device instead of handle
  firmware: arm_scmi: Stash version in protocol init functions
  firmware: arm_scmi: Add and initialise protocol version to scmi_device structure
  firmware: arm_scmi: Add scmi protocol version and id device attributes
  firmware: arm_scmi: Drop logging individual scmi protocol version
  firmware: arm_scmi: Match scmi device by both name and protocol id
  clk: scmi: Match scmi device by both name and protocol id
  cpufreq: scmi: Match scmi device by both name and protocol id
  hwmon: (scmi-hwmon) Match scmi device by both name and protocol id
  reset: reset-scmi: Match scmi device by both name and protocol id

 drivers/clk/clk-scmi.c                     |  2 +-
 drivers/cpufreq/scmi-cpufreq.c             |  2 +-
 drivers/firmware/arm_scmi/bus.c            | 53 +++++++++++--
 drivers/firmware/arm_scmi/clock.c          | 15 +++-
 drivers/firmware/arm_scmi/driver.c         | 92 +++++++++++++++++++++-
 drivers/firmware/arm_scmi/perf.c           | 15 +++-
 drivers/firmware/arm_scmi/power.c          | 15 +++-
 drivers/firmware/arm_scmi/reset.c          | 15 +++-
 drivers/firmware/arm_scmi/scmi_pm_domain.c |  2 +-
 drivers/firmware/arm_scmi/sensors.c        | 15 +++-
 drivers/hwmon/scmi-hwmon.c                 |  2 +-
 drivers/reset/reset-scmi.c                 |  2 +-
 include/linux/scmi_protocol.h              |  8 +-
 13 files changed, 202 insertions(+), 36 deletions(-)

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
