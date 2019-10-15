Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6124BD7A6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 17:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1EgYeJH5S10raWAqVEriZN7ib6stENYv88Cl3YejKDg=; b=kf/qnyR8bPqw1i
	0jjr6J4xVuvp5AeaJpb+mxexRBPxmbf3w6NkJJLu7OWfL3uOY4OvQhuPORN4eDW+lNf8KcFXfgenb
	ZIPaWssIo3nwnh6iy8BtswI5F3YfHaCFXE6Lks6bQ2f2Ards5ac+G91x49rGAstnYqHST5dHcrjZG
	Pql7EYW3ePDv7j9qt6Dr8xvCkhUwxMjo5DebEhog46v7Cj/aFQ982HERAuglhxFnoUcN52wX1IQFH
	4kMERRYRoWlPJ/KeFO6zky7pn0YDs+l/Tva8a8qZ754ASHkygXOTtcTpZMw42xLuwmgn8l/YGBNZb
	6XPBL2SHzkkr94lWS2sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKP5g-0002Ye-U0; Tue, 15 Oct 2019 15:50:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKP5P-0001uP-2U
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 15:50:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8DCB928;
 Tue, 15 Oct 2019 08:50:07 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D9F4C3F68E;
 Tue, 15 Oct 2019 08:50:06 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH 0/8] arm64: Optimise and update memcpy,
 user copy and string routines
Date: Tue, 15 Oct 2019 16:49:55 +0100
Message-Id: <cover.1571073960.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_085011_202363_FCF2DF4F 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: sam.tebbs@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Since I've taken over this series just for the final upstream polish,
  I've left Sam's original cover letter below. Other than cosmetic
  cleanups, I ended up squashing the original first patch since it had
  become overwhelmingly redundant, and dropping the memset patch where
  we'd both initially managed to overlook the sneaky use of a Q register.

  Linaro have kindly given us permission to contribute Cortex Strings
  updates to Linux under GPLv2, as per their original submission.

  Robin. ]

This patch series optimises the arm64 memcpy, copy_to_user, copy_from_user,
copy_in_user, memcmp, memmove, memset, strcmp, strlen and strncmp routines by
importing the latest Cortex Strings implementation.

The first patch renames and reimplements the existing macros to use offset
addressing and adds postindex versions for existing code that relies on this
variant. The second patch imports the Cortex Strings implementation and removes
the uao_{stp, ldp}_post macros introduced in the first patch as they are no
longer needed. The final patch updates the fixup handlers so that they can
calculate the remaining number of bytes to be copied without using postindex
addressing.

When testing (detailed below) these changes give the following speedups:
  * copy_from_user: 13.17%
  * copy_to_user: 4.8%
  * memcpy: 27.88%
  * copy_in_user: Didn't appear in the test results.

Testing was done by booting a kernel with the changed implementation and
doing perf record on a defconfig kernel build from within a 3GB ramdisk.
Then perf report was run on the generated data and the number of samples
spent in each routine was noted. This same process was repeated for a build
on the latest master.

The fault handler was updated to provide the faulting address in x15 if the
fixup handler offset has its LSB set. The user memcpy routines then use this
behaviour by adding one to their fixup handler offsets. This behaviour is
similar to that in the sparc fault handler.

Robin Murphy (1):
  arm64: Tidy up _asm_extable_faultaddr usage

Sam Tebbs (7):
  arm64: Allow passing fault address to fixup handlers
  arm64: Import latest Cortex Strings memcpy implementation
  arm64: Import latest version of Cortex Strings' memcmp
  arm64: Import latest version of Cortex Strings' memmove
  arm64: Import latest version of Cortex Strings' strcmp
  arm64: Import latest version of Cortex Strings' strlen
  arm64: Import latest version of Cortex Strings' strncmp

 arch/arm64/include/asm/alternative.h |  36 ---
 arch/arm64/include/asm/assembler.h   |  13 +
 arch/arm64/include/asm/extable.h     |  10 +-
 arch/arm64/lib/copy_from_user.S      | 103 ++++++--
 arch/arm64/lib/copy_in_user.S        | 106 ++++++--
 arch/arm64/lib/copy_template.S       | 304 ++++++++++-----------
 arch/arm64/lib/copy_template_user.S  |  24 ++
 arch/arm64/lib/copy_to_user.S        | 102 +++++--
 arch/arm64/lib/copy_user_fixup.S     |  14 +
 arch/arm64/lib/memcmp.S              | 317 ++++++++--------------
 arch/arm64/lib/memcpy.S              |  48 ++--
 arch/arm64/lib/memmove.S             | 236 ++++++-----------
 arch/arm64/lib/strcmp.S              | 278 ++++++++------------
 arch/arm64/lib/strlen.S              | 249 ++++++++++++------
 arch/arm64/lib/strncmp.S             | 379 ++++++++++++---------------
 arch/arm64/mm/extable.c              |  13 +-
 arch/arm64/mm/fault.c                |   2 +-
 17 files changed, 1125 insertions(+), 1109 deletions(-)
 create mode 100644 arch/arm64/lib/copy_template_user.S
 create mode 100644 arch/arm64/lib/copy_user_fixup.S

-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
