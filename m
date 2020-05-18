Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D7F1D738E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uyirSMrVP+0JGgjNMbEc1l7VrprzJIW9B6DFfDPBFTk=; b=H9V
	JwV5CHdP4KgtXx+XYaVYJRkMemd9EHchEbFWvQFThdPhHUZYz3mE2+8vPqvr+ofXzB5e4flvcOFwl
	EZhkmBCKvNr5HzpfbVbtdU0FVg4JR0NmRYsmz2GxBzu/kBndBd1UZAxOVzSPOXqsf/9k9APbHdfMK
	O1/uLfTTEr9SDdXxXqEUKde5VZI2jQI3sYsnzE8kqAZRdSqbGZEncMbDDwTVbow/ZW22QlxphgaaF
	2hLThNUszio+VOvmxSxB9hIrwnZ1NA7tnTJFH8WWZx+gaiKwUvU/n39rNMND2+bTrvc3CxtWRqiPu
	BIZfNA+4Iz3h0eyg/2lfkKovvByCLGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabp8-0005ls-8j; Mon, 18 May 2020 09:12:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaboz-0005kv-9D
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:12:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA456106F;
 Mon, 18 May 2020 02:12:27 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 699F43F68F;
 Mon, 18 May 2020 02:12:26 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 + ARCH_SOC_ID
 support
Date: Mon, 18 May 2020 10:12:15 +0100
Message-Id: <20200518091222.27467-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_021229_366024_B89E8C9E 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patch series adds support for SMCCCv1.2 ARCH_SOC_ID.
This doesn't add other changes added in SMCCC v1.2 yet. They will
follow these soon along with its first user SPCI/PSA-FF.

This is tested using upstream TF-A + the patch[3] fixing the original
implementation there.

v1[0]->v2[1]:
	- Incorporated comments from Steven Price in patch 5/5
	- Fixed build for CONFIG_PSCI_FW=n on some arm32 platforms
	- Added Steven Price's review tags

v2[1]->v3[2]:
	- Incorporated additional comments from Steven Price in patch 5/5
	  and added his review tags
	- Refactored SMCCC code from PSCI and moved it under
	  drivers/firmware/smccc/smccc.c
	- Also moved soc_id.c under drivers/firmware/smccc

v3[2]->v4:
	- Incorporated all the review comments from Mark R

Regards,
Sudeep

[0] https://lore.kernel.org/r/20200430114814.14116-1-sudeep.holla@arm.com/
[1] https://lore.kernel.org/r/20200504092905.10580-1-sudeep.holla@arm.com/
[2] https://lore.kernel.org/r/20200506164411.3284-1-sudeep.holla@arm.com/
[3] https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/4002

Sudeep Holla (7):
  firmware: smccc: Add HAVE_ARM_SMCCC_DISCOVERY to identify SMCCC v1.1 and above
  firmware: smccc: Update link to latest SMCCC specification
  firmware: smccc: Add the definition for SMCCCv1.2 version/error codes
  firmware: smccc: Drop smccc_version enum and use ARM_SMCCC_VERSION_1_x instead
  firmware: smccc: Refactor SMCCC specific bits into separate file
  firmware: smccc: Add function to fetch SMCCC version
  firmware: smccc: Add ARCH_SOC_ID support

 MAINTAINERS                     |   9 ++
 arch/arm64/kernel/paravirt.c    |   2 +-
 drivers/firmware/Kconfig        |   6 +-
 drivers/firmware/Makefile       |   3 +-
 drivers/firmware/psci/psci.c    |  22 ++---
 drivers/firmware/smccc/Kconfig  |  25 ++++++
 drivers/firmware/smccc/Makefile |   4 +
 drivers/firmware/smccc/smccc.c  |  31 +++++++
 drivers/firmware/smccc/soc_id.c | 151 ++++++++++++++++++++++++++++++++
 include/linux/arm-smccc.h       |  27 +++++-
 include/linux/psci.h            |   7 --
 11 files changed, 256 insertions(+), 31 deletions(-)
 create mode 100644 drivers/firmware/smccc/Kconfig
 create mode 100644 drivers/firmware/smccc/Makefile
 create mode 100644 drivers/firmware/smccc/smccc.c
 create mode 100644 drivers/firmware/smccc/soc_id.c

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
