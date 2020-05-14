Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85061D32F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0+K9WFc8uszmdPNCMpJufkvSYoSn8stHIi/Eu97MVts=; b=pIe
	DkgiQYcd12NZ+kouIefcglmUpNhd6omD6L9JmvDZYq6Tpm2PXrHE565JjTpgVegSXL/dfPzL2zY+1
	e90qq3X2ugnLO9KkecyHFV8vyBBh8ZDk2edCWS0P64oJkWPGGOQbmiaVfm6P+8sOX3jl8EMgs9Y3p
	PlH/HYCk3Vv/DLY3FIW9o3XWekUmdgnM8vh3Ec6PgvMPC7NvxGGIbim+j+EIbFrfHF0cjatd83M2k
	r2Urt8As1u71xrR8uNOEVP+pP4CfllXhoaUZlrGENonggaV4XrTf7H3DFlEUJ0ppTTteC/GxLzARF
	1biIIqqrTvGmJhqNsmiyXGxXenLhKzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEvP-000804-GS; Thu, 14 May 2020 14:33:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEun-0007OK-Ac
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:32:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99A701FB;
 Thu, 14 May 2020 07:32:46 -0700 (PDT)
Received: from seattle-bionic.arm.com.Home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8D863F71E;
 Thu, 14 May 2020 07:32:45 -0700 (PDT)
From: Oliver Swede <oli.swede@arm.com>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 00/13] arm64: Optimise and update memcpy,
 user copy and string routines
Date: Thu, 14 May 2020 14:32:14 +0000
Message-Id: <20200514143227.605-1-oli.swede@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_073249_451844_08B3A5EE 
X-CRM114-Status: GOOD (  16.92  )
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
Cc: Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, I have been working on a fix for this branch. The initial
version of this patchset imported new optimizations from Linaro's
cortex-strings project, and converted the instructions to the
macro equivalents in the usercopy template, in order to allow
each of the helper usercopy functions to use expansions that
insert exception table entries for exclusively the instructions
that could potentially fault during a copy. 

The 'cortex-strings' repository has since been renamed to
'optimized-routines' (this is public on GitHub at
https://github.com/ARM-software/optimized-routines),
and has been updated with further optimizations of various
library functions, and this includes a newer memcpy
implementation.

The address of page faults is exposed to the faulting instructions'
corresponding fixup code, and in v2 a fixup routine to correspond
to the previous copy algorithm was also implemented in a way that
utilized the fault address to try and efficiently calculate the
number of bytes that failed to copy. It returned the distance
between the fault and the end of the buffer, however this fixup
in [PATCH v2 2/14] had some issues due to the out-of-order nature
of the copy algorithm, and was flagged by the LTP testcase of the
preadv2() syscall (which makes multiple calls to copy_to_user).
This was due to preadv2() reporting SUCCESS for an invalid
destination address, NULL, where it expected EFAULT, because a
nonzero return value was calculated (indicating that some bytes
were copied) due to the fault not occurring at the start of the
buffer.

In this version I have imported the very latest optimized memcpy
routine, and re-written the fixup to use multiple routines that
encapsulate various properties of the algorithm (this is
explained in more detail in patches 11/13, 12/13, 13/13).
The aim is to return the exact number of bytes that haven't copied
when a fault occurs in copy_{to, in, from}_user, and to enable the
fixups to be modular so that they could be re-written without too
much trouble in the future if the copy algorithm was to be updated
again.

Initial testing indicates that the backtracking performed in the
fixup routines is accurate, and I am working on a separate
patchset containing more concise selftests that indirectly
call the usercopy functions via read()/write() - this will help
to ease the verification of expected behaviour.

I am going to post updated benchmark results, as the ~27% increase
in speed measured by Sam with the previous 'cortex-strings' memcpy
is no longer applicable due to the more recent replacement from
'optimized-routines', which should hopefully be even more efficient
and improve this further.

v1: https://lore.kernel.org/linux-arm-kernel/cover.1571073960.git.robin.murphy@arm.com/
v2: https://lore.kernel.org/linux-arm-kernel/cover.1571421836.git.robin.murphy@arm.com/

Changes since v2:

* Adds Robin's separate patch that fixes a compilation issue with KProbes fixup [1]
* Imports the most recent memcpy implementation by updating Sam's patch
  (and moves this patch to occur after the cortex-strings importing so
  that it's closer to the patches containing its corresponding fixups)
* Uses the stack to preserve the initial parameters
* Replaces the usercopy fixup routine in v2 with multiple longer
  fixups that each make use of the fault address to return the exact
  number of bytes that haven't yet copied.

[1] https://lore.kernel.org/linux-arm-kernel/e70f7b9de7e601b9e4a6fedad8eaf64d304b1637.1571326276.git.robin.murphy@arm.com/

Many thanks,
Oliver

Oliver Swede (4):
  arm64: Store the arguments to copy_*_user on the stack
  arm64: Use additional memcpy macros and fixups
  arm64: Add fixup routines for usercopy load exceptions
  arm64: Add fixup routines for usercopy store exceptions

Robin Murphy (2):
  arm64: Tidy up _asm_extable_faultaddr usage
  arm64: kprobes: Drop open-coded exception fixup

Sam Tebbs (7):
  arm64: Allow passing fault address to fixup handlers
  arm64: Import latest optimization of memcpy
  arm64: Import latest version of Cortex Strings' memcmp
  arm64: Import latest version of Cortex Strings' memmove
  arm64: Import latest version of Cortex Strings' strcmp
  arm64: Import latest version of Cortex Strings' strlen
  arm64: Import latest version of Cortex Strings' strncmp

 arch/arm64/include/asm/alternative.h |  36 ---
 arch/arm64/include/asm/assembler.h   |  13 +
 arch/arm64/include/asm/extable.h     |  10 +-
 arch/arm64/kernel/probes/kprobes.c   |   7 -
 arch/arm64/lib/copy_from_user.S      | 272 +++++++++++++++++--
 arch/arm64/lib/copy_in_user.S        | 287 ++++++++++++++++++--
 arch/arm64/lib/copy_template.S       | 377 +++++++++++++++------------
 arch/arm64/lib/copy_template_user.S  |  50 ++++
 arch/arm64/lib/copy_to_user.S        | 273 +++++++++++++++++--
 arch/arm64/lib/copy_user_fixup.S     | 277 ++++++++++++++++++++
 arch/arm64/lib/memcmp.S              | 333 +++++++++--------------
 arch/arm64/lib/memcpy.S              | 128 +++++++--
 arch/arm64/lib/memmove.S             | 232 ++++++-----------
 arch/arm64/lib/strcmp.S              | 272 ++++++++-----------
 arch/arm64/lib/strlen.S              | 247 ++++++++++++------
 arch/arm64/lib/strncmp.S             | 363 ++++++++++++--------------
 arch/arm64/mm/extable.c              |  13 +-
 arch/arm64/mm/fault.c                |   2 +-
 18 files changed, 2073 insertions(+), 1119 deletions(-)
 create mode 100644 arch/arm64/lib/copy_template_user.S
 create mode 100644 arch/arm64/lib/copy_user_fixup.S

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
