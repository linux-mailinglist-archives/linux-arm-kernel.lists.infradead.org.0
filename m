Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CEA87B05
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 15:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kmAlruSuGVvo7uUAfySTQYSj7NRdb4Ke0wL31srAVus=; b=LQI
	y7cPNY74v8aMEMwh4LPuHykuap8L9NioKaG5htexXxWyg6CgAssv6avaoEsq47U1sIh/NYOxZc+rU
	e4dgYKd9S381gA1iUwx+6uHeoj4ljWvzo9WpLi5CvRl3jBV3EE2SJkaR2cXxzyHTg/fSa7WXSvdZd
	LJ94LDlTtL/VyRAAog88w1uFd2uMf0sb0gbl8noJq1//MHMKuF/kGkMBkheCSqXna0nRD+0LEnpRi
	y0fNk+yZgMoBv4v3tCqeJ78zvLyjyG27GhkxbZQFDKuN94263bi/mYW1dtIAz95QZV1RDhGUcHWlR
	GV8daSht4UKGbUhWAHUXDmEBSS8BbqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw4rc-00019Z-Ut; Fri, 09 Aug 2019 13:23:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw4rB-0000yt-3C
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 13:22:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83A051596;
 Fri,  9 Aug 2019 06:22:53 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2CB043F706;
 Fri,  9 Aug 2019 06:22:52 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 0/6] arm/arm64: SMCCC conduit cleanup
Date: Fri,  9 Aug 2019 14:22:39 +0100
Message-Id: <20190809132245.43505-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_062257_182198_C2364546 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, suzuki.poulose@arm.com,
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux@armlinux.org.uk, james.morse@arm.com, robin.murphy@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, the cpu errata code goes digging into PSCI internals to
discover the SMCCC conduit, using the (arguably misnamed) PSCI_CONDUIT_*
definitions. This lack of abstraction is somewhat unfortunate.

Further, the SDEI code has an almost identical set of CONDUIT_*
definitions, and the duplication is rather unfortunate.

Let's unify things behind a common set of SMCCC_CONDUIT_* definitions,
and expose the SMCCCv1.1 conduit via a new helper that hides the PSCI
driver internals.

Since v1 [1]:
* Rebase to the arm64 for-next/core branch, atop of SSBD patches
* Fold in acks
Since v2 [2]:
* Rebase to v5.3-rc3
* Fix up arm spectre-v2 code
* Drop acks where significant changes have been made

Mark.

[1] https://lkml.kernel.org/r/20180503170330.5591-1-mark.rutland@arm.com
[2] https://lkml.kernel.org/r/20180531173223.9668-1-mark.rutland@arm.com

Mark Rutland (6):
  arm/arm64: smccc/psci: add arm_smccc_1_1_get_conduit()
  arm64: errata: use arm_smccc_1_1_get_conduit()
  arm: spectre-v2: use arm_smccc_1_1_get_conduit()
  firmware/psci: use common SMCCC_CONDUIT_*
  firmware: arm_sdei: use common SMCCC_CONDUIT_*
  smccc: make 1.1 macros value-returning

 arch/arm/mm/proc-v7-bugs.c     | 22 ++++++--------
 arch/arm64/kernel/cpu_errata.c | 61 ++++++++++++++++-----------------------
 arch/arm64/kernel/sdei.c       |  3 +-
 arch/arm64/kvm/hyp/switch.c    |  4 +--
 drivers/firmware/arm_sdei.c    | 12 ++++----
 drivers/firmware/psci/psci.c   | 24 ++++++++++------
 include/linux/arm-smccc.h      | 65 ++++++++++++++++++++++++------------------
 include/linux/arm_sdei.h       |  6 ----
 include/linux/psci.h           |  9 ++----
 9 files changed, 99 insertions(+), 107 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
