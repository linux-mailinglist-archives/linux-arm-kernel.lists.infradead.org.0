Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E221A3846
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 18:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VOwW2IHjLg4Hq0mYGsIlr5pib+7R8PiHoDW9seF70yk=; b=ZDY1LbP3nc6f7f
	1V7yE57nznp5OcFULAqOKvG5dTg/1KQCsFPXeuZVd9JqzcZcnvUyYlE4YaSTLgIcM6GvBtAp/xjDS
	Is3omMbt/+7/Dir3bawZ6faqsrRzfXtK4fvzjioAUhMcEJjUti8/W5rm/PLUJDCE1VjKcHf4giBZM
	hhKqVxVefpQqIzFnsz8jBVVaD2MU4i0eudgQd5L3WSpglIBk4hQ0JrbJSy1DlaDOCZRKV8zN/CsH+
	mNT/D8M316XsV98pp4TLQFLYAhP7AeKskysDW4eWE+0n53RCIWjd+xH/a/nl3Vf+3WkRabObXyxKw
	6fVx9m/JdMwrhjIcxJvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMaOR-00042A-9z; Thu, 09 Apr 2020 16:51:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMaOF-000404-F3
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 16:50:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79F0631B;
 Thu,  9 Apr 2020 09:50:54 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC1553F73D;
 Thu,  9 Apr 2020 09:50:53 -0700 (PDT)
Date: Thu, 9 Apr 2020 17:50:51 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 fixes for 5.7-rc1
Message-ID: <20200409165049.GA872@gaia>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_095055_546905_9D7F7AAE 
X-CRM114-Status: GOOD (  12.47  )
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull the arm64 fixes below (on top of the previous pull request
for 5.7-rc1). Thanks.

The following changes since commit b2a84de2a2deb76a6a51609845341f508c518c03:

  mm/mremap: Add comment explaining the untagging behaviour of mremap() (2020-03-26 11:28:57 +0000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

for you to fetch changes up to fc2266011accd5aeb8ebc335c381991f20e26e33:

  arm64: armv8_deprecated: Fix undef_hook mask for thumb setend (2020-04-08 18:19:20 +0100)

----------------------------------------------------------------
arm64 fixes:

- Ensure that the compiler and linker versions are aligned so that ld
  doesn't complain about not understanding a .note.gnu.property section
  (emitted when pointer authentication is enabled).

- Force -mbranch-protection=none when the feature is not enabled, in
  case a compiler may choose a different default value.

- Remove CONFIG_DEBUG_ALIGN_RODATA. It was never in defconfig and rarely
  enabled.

- Fix checking 16-bit Thumb-2 instructions checking mask in the
  emulation of the SETEND instruction (it could match the bottom half of
  a 32-bit Thumb-2 instruction).

----------------------------------------------------------------
Amit Daniel Kachhap (2):
      init/kconfig: Add LD_VERSION Kconfig
      arm64: Kconfig: ptrauth: Add binutils version check to fix mismatch

Ard Biesheuvel (1):
      arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature

Fredrik Strupe (1):
      arm64: armv8_deprecated: Fix undef_hook mask for thumb setend

Mark Brown (1):
      arm64: Always force a branch protection mode when the compiler has one

 arch/arm64/Kconfig                        |  5 ++++-
 arch/arm64/Kconfig.debug                  | 13 -------------
 arch/arm64/Makefile                       |  7 ++++++-
 arch/arm64/include/asm/memory.h           | 12 +-----------
 arch/arm64/kernel/armv8_deprecated.c      |  2 +-
 drivers/firmware/efi/libstub/arm64-stub.c |  8 +++-----
 init/Kconfig                              |  4 ++++
 7 files changed, 19 insertions(+), 32 deletions(-)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
