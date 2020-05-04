Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415B01C35B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 11:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mFhOplXnfWmbTHZWIkPKonVVscVHFxZvqNXhCTVG1wE=; b=Wn0
	rZWO+MxbASzAt1CvRDKJhr/6eAXj/alN6bIN73uxPZP0884lsZMHUkWsCKS2FV1fbYrWOOXAMKWd7
	ko7pS8WunxQvYAgbPgO2GxiDtJQjIw+kdXhwUQc47FVchXylAJrz0HRxNoO2QPw4wEr6R57AAT2y8
	h/ctHHb9P3l3RF/LTHuFWnmHZS00ZSnENTgl9n9unedutoGsj1YdIKCrlj8iApWCXLcXL/EwHeOSt
	4Wz4bCcuJtQNvMKCnbm2R7IAGxbje8Di38513lP6ut/5R3ODuWVIRtDiBUcCXY4oCYCdQl+rPqrcJ
	DZlrgwQhJAXw4UkZXtv6zshli3g95MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVXPi-0001w8-U3; Mon, 04 May 2020 09:29:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVXPY-0001sh-NI
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 09:29:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F86D101E;
 Mon,  4 May 2020 02:29:12 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6A2253F305;
 Mon,  4 May 2020 02:29:11 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/5] arm/arm64: smccc: Add ARCH_SOC_ID support
Date: Mon,  4 May 2020 10:29:00 +0100
Message-Id: <20200504092905.10580-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_022917_856217_07B37F0B 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
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

This is tested using upstream TF-A + the patch[1] fixing the original
implementation there.


v1[0]->v2:
	- Incorporated comments from Steven Price in patch 5/5
	- Fixed build for CONFIG_PSCI_FW=n on some arm32 platforms
	- Added Steven Price's review tags

Regards,
Sudeep

[0] https://lore.kernel.org/r/20200430114814.14116-1-sudeep.holla@arm.com/
[1] https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/4001

Sudeep Holla (5):
  arm/arm64: smccc: Update link to latest SMCCC specification
  arm/arm64: smccc: Add the definition for SMCCCv1.2 version/error codes
  arm/arm64: smccc: Drop smccc_version enum and use ARM_SMCCC_VERSION_1_x instead
  firmware: psci: Add function to fetch SMCCC version
  arm/arm64: smccc: Add ARCH_SOC_ID support

 arch/arm64/kernel/paravirt.c   |   2 +-
 drivers/firmware/psci/Kconfig  |   9 ++
 drivers/firmware/psci/Makefile |   1 +
 drivers/firmware/psci/psci.c   |  13 ++-
 drivers/firmware/psci/soc_id.c | 165 +++++++++++++++++++++++++++++++++
 include/linux/arm-smccc.h      |  23 ++++-
 include/linux/psci.h           |   7 +-
 7 files changed, 207 insertions(+), 13 deletions(-)
 create mode 100644 drivers/firmware/psci/soc_id.c

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
