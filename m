Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D71311AE313
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OZ2iKzxsb+PQdKHDrWd5NK4Wi58Eq+VTGTAzxI6RnmI=; b=PaBejXiIDgd8/d
	4wmg+zGbS5H7R/Zc0iUTioYC22cA8gWVko+YJqM6fcd/EqBeSVWnXI726Pb6mbhlwczaguW9UhiZ0
	DyPEUTfuLsJ4MIz5aL8pJ89ZLmMK0taebCnxPgsUedll1xSiK8aFKWMC2tYUu/5xuY9rlX9MATjIF
	ZkDJAMGG3cQ0cwPvnJVkUN5zkOGrPWaVxbAssRvfJg5uktl33RgNaQxoCgz3Zv8PrT0np4wiSO+9J
	7TYKgnQjXvaOt4yh9TTiqgYj1ZoHxTZZCZQ8x0SAadpWADA/P6wxFdmoKFk/RGyiy+0mo2SucHEcQ
	AA8ZBVAYze8YFXDIK+Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUPf-0003Tw-HS; Fri, 17 Apr 2020 17:04:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUPW-0003S1-Co
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:04:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 339C2C14;
 Fri, 17 Apr 2020 10:04:08 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AC873F6C4;
 Fri, 17 Apr 2020 10:04:07 -0700 (PDT)
Date: Fri, 17 Apr 2020 18:04:05 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 fixes for 5.7-rc2
Message-ID: <20200417170403.GA15479@gaia>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_100414_477450_5193F129 
X-CRM114-Status: GOOD (  10.59  )
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull the arm64 fixes below. Thanks.

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

for you to fetch changes up to c9a4ef66450145a356a626c833d3d7b1668b3ded:

  arm64: Delete the space separator in __emit_inst (2020-04-15 13:07:12 +0100)

----------------------------------------------------------------
- Remove vdso code trying to free unallocated pages.

- Delete the space separator in the __emit_inst macro as it breaks the
  clang integrated assembler.

----------------------------------------------------------------
Fangrui Song (1):
      arm64: Delete the space separator in __emit_inst

Mark Rutland (1):
      arm64: vdso: don't free unallocated pages

 arch/arm64/include/asm/sysreg.h |  4 +++-
 arch/arm64/kernel/vdso.c        | 13 +------------
 2 files changed, 4 insertions(+), 13 deletions(-)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
