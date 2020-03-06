Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A5B17C167
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 16:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/hFI2lKcLhcjlzCUdwtRvqOkk4XpSathoafrU3eHr9o=; b=D9rrWcKez5KdH9
	05pQpVSsmB+a4WTPYKFUQ/e/NdXdeNcbXsCQaKOcWuVn1gTF8L8rz/kt4IYqn130HnLLRxRl/HQqY
	ilf07BeasbFOTxiQZRqMh3GD3ogObpcXLudvUcJ+kEejmhQk69JV9XEXpNHGRJ1VFTtNQsgxwQmmp
	EgC6CUBDnMbG2qMr9C976AM1ZH2FowY0DWCdw0Ef97BD8o3mKvKgR753Aca/XC/m4hqVr/7utepmN
	EIrAEo2fp0tBPeNys0uzvoEFLTlIavY2uKY7xkyPR2+T62YmKtU703w1q6b0vFSCEKiGggLXDgrsW
	rL3E/tXJAu5V5fmLs6Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAEeO-00074v-KW; Fri, 06 Mar 2020 15:12:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAEeH-00074Y-Av
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 15:12:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 940DD2073D;
 Fri,  6 Mar 2020 15:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583507544;
 bh=UQeODx1wp4BqMIAVR0zSKtHv0AGBddff2t3nWTesA/Q=;
 h=Date:From:To:Cc:Subject:From;
 b=pd7TM5m2KanjZIsnsLqrg9eMqY3ne2LV//mj+WvBitRL8KIXd6ZZ9VVJyuIB+TXFq
 P17sMqLIUcDHmvAggDqk5OWRrXI5Dz9OdKVLvl39inxQ8S5EpolX+jtRt4uISOgRsj
 sQQX4Vta4BhX8TWpq2ctuXPO/0MDGURYrWrGufiA=
Date: Fri, 6 Mar 2020 15:12:20 +0000
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64 fixes for -rc5
Message-ID: <20200306151219.GA8409@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_071225_395733_AF0E7914 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: catalin.marinas@arm.com, kernel-team@android.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Here are another three arm64 fixes for 5.6. Summary in the tag, but all
pretty minor. Main thing is fixing a silly bug in the fsl_imx8_ddr PMU
driver where we would zero the counters when disabling them.

Please pull.

Will

--->8

The following changes since commit dcde237319e626d1ec3c9d8b7613032f0fd4663a:

  mm: Avoid creating virtual address aliases in brk()/mmap()/mremap() (2020-02-20 10:03:14 +0000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 9abd515a6e4a5c58c6eb4d04110430325eb5f5ac:

  arm64: context: Fix ASID limit in boot messages (2020-03-02 12:10:38 +0000)

----------------------------------------------------------------
arm64 fixes for -rc5

- Fix misreporting of ASID limit when KPTI is enabled

- Fix busted NULL pointer checks for GICC structure in ACPI PMU code

- Avoid nobbling the "fsl_imx8_ddr" PMU counters when disabling them

----------------------------------------------------------------
Jean-Philippe Brucker (1):
      arm64: context: Fix ASID limit in boot messages

Joakim Zhang (1):
      drivers/perf: fsl_imx8_ddr: Correct the CLEAR bit definition

luanshi (1):
      drivers/perf: arm_pmu_acpi: Fix incorrect checking of gicc pointer

 arch/arm64/mm/context.c          | 20 +++++++++++++++-----
 drivers/perf/arm_pmu_acpi.c      |  7 ++-----
 drivers/perf/fsl_imx8_ddr_perf.c | 10 ++++++----
 3 files changed, 23 insertions(+), 14 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
