Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B16F179735
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 18:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yWlVG2u43qggosETxXtePi0NTSR4QOt5mSEyOs2Svg4=; b=LaEjO/ygXpHukd
	HJ6dX3He6kPAqM4Tmy3AOcWTDw3/IpiyJ/EaNGix1LCrgGGEuqVXMQe8N/isgFEL6D0gJ6oTnvFsa
	kSQdusuVmuUCkE3svTynSHo1OebPTV2p2wIj+5xHBltnXh5NkH4EHjSW1CUX9LBYAYHEoDED5ZBmA
	f7d5IUFDhfDTNMjoq41msMp2Sj263DxLpkimin2ETodYmImY7yU6KTYfSvm7lFK3g/rJ1/KRYaUA6
	fz+3v22qOQdd3iT50TrFUHscww9TZ0/EbA1X2YTSwkjfu8z3O9bJLRq4JbbH0UgKXJugaiDzvAW4n
	jEJHctwEJa9W8WOZWeSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9YCe-0001WR-Hr; Wed, 04 Mar 2020 17:53:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9YCV-0001Vr-TH
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 17:52:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 26E0E31B;
 Wed,  4 Mar 2020 09:52:54 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F9433F6C4;
 Wed,  4 Mar 2020 09:52:52 -0800 (PST)
Date: Wed, 4 Mar 2020 17:52:47 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] firmware: arm_scmi: updates for v5.7-rc1
Message-ID: <20200304175247.GA5402@bogus>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_095255_988298_7B2F134B 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Note that I have pulled in one vexpress syscfg fix in this pull request
itself instead of a separate one as I think it also falls under 'driver'
category in your pull requests. Let me know if you prefer to keep it
separate.

Regards,
Sudeep

-->8

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-updates-5.7

for you to fetch changes up to 57c45d4d8a9d78c962e9ddfc4fb2d3210f34f966:

  misc: vexpress: Replace zero-length array with flexible-array member (2020-02-20 17:15:04 +0000)

----------------------------------------------------------------
ARM SCMI/SCPI updates for v5.7

1. Abstraction of the scmi transport type from the core protocol driver
   which enables addition of other transports like SMC/HVC, SPCI and
   virtio apart from the existing mailbox
2. Miscellaneous fix for minor formatting issues with the kernel-doc
   style comments
3. Replacement of zero-length array with flexible-array member which is
   part of tree-wide cleanup

----------------------------------------------------------------
Gustavo A. R. Silva (4):
      firmware: arm_scmi: Replace zero-length array with flexible-array member
      firmware: arm_scmi/perf: Replace zero-length array with flexible-array member
      firmware: arm_scpi: Replace zero-length array with flexible-array member
      misc: vexpress: Replace zero-length array with flexible-array member

Viresh Kumar (3):
      firmware: arm_scmi: Update doc style comments
      firmware: arm_scmi: Move macros and helpers to common.h
      firmware: arm_scmi: Make scmi core independent of the transport type

 drivers/firmware/arm_scmi/Makefile  |   3 +-
 drivers/firmware/arm_scmi/common.h  | 115 +++++++++++++-
 drivers/firmware/arm_scmi/driver.c  | 293 +++++-------------------------------
 drivers/firmware/arm_scmi/mailbox.c | 184 ++++++++++++++++++++++
 drivers/firmware/arm_scmi/perf.c    |   2 +-
 drivers/firmware/arm_scmi/shmem.c   |  83 ++++++++++
 drivers/firmware/arm_scpi.c         |   4 +-
 drivers/misc/vexpress-syscfg.c      |   2 +-
 8 files changed, 420 insertions(+), 266 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/mailbox.c
 create mode 100644 drivers/firmware/arm_scmi/shmem.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
