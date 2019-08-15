Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A9F8EFA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 17:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dp8P9Bu4chSlxHiKQwulzN9E19RfpKuaViWRGLAFOk0=; b=pVXIaN77UpX4F7
	cwZH+uN3dGwCXYsNGkLiPFgCXk7ivcYRD4sXsU3uNugAgUfUACas4OoRLjQ6geWcc9dlFBMCkS+5L
	JnxI8N4dmmOO9GJBg4r3GLpk9AK+9nrQcDEYeoeFf4rFInya6CV6U2Olf5vAPgz48r+LYP3NFTNzX
	lM6D8+EPncB7SUMgZxlqzYkNLhqke/ifQrj47qNn4cCo0mAy6CZ6uSVrh0RyMuxf3Mh+bLJMkAHJF
	NPe0/x3rxWUkBoB+3qC79u4alPV8aWUgVpFmMYCg6GYJIqQFm4o5E9N+0HJT826BcPc6oGdDZ2H7T
	lRt85iiVkQ5kZylKPVDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyHvP-0002Ij-2j; Thu, 15 Aug 2019 15:44:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyHv8-0002Gw-6G
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 15:44:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9BA528;
 Thu, 15 Aug 2019 08:44:07 -0700 (PDT)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 339C33F706;
 Thu, 15 Aug 2019 08:44:06 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-mm@kvack.org
Subject: [PATCH v8 0/2] arm64 tagged address ABI
Date: Thu, 15 Aug 2019 16:43:58 +0100
Message-Id: <20190815154403.16473-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_084410_280750_8B82C29C 
X-CRM114-Status: GOOD (  11.42  )
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Dave Hansen <dave.hansen@intel.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series contains an update to the arm64 tagged address ABI
documentation posted here (v7):

http://lkml.kernel.org/r/20190807155321.9648-1-catalin.marinas@arm.com

together some adjustments to Andrey's patches (already queued through
different trees) following the discussions on the ABI documents:

http://lkml.kernel.org/r/cover.1563904656.git.andreyknvl@google.com

If there are not objections, I propose that that patch 1 (mm: untag user
pointers in mmap...) goes via the mm tree while the other 4 are routed
via the arm64 tree.

Changes in v8:

- removed mmap/munmap/mremap/brk from the list of syscalls not accepting
  tagged pointers

- added ioctl() to the list of syscalls not accepting tagged pointers

- added shmat/shmdt to a list of syscalls not accepting tagged pointers

- prctl() now requires all unused arguments to be 0

- note about two-stage ABI relaxation since even without the prctl()
  opt-in, the tag is still ignored on a few syscalls (untagged_addr() in
  the kernel is unconditional)

- compilable example code together with syscall use

- added a note on tag preservation in the tagged-pointers.rst document

- various rewordings and cleanups


Catalin Marinas (3):
  mm: untag user pointers in mmap/munmap/mremap/brk
  arm64: Tighten the PR_{SET,GET}_TAGGED_ADDR_CTRL prctl() unused
    arguments
  arm64: Change the tagged_addr sysctl control semantics to only prevent
    the opt-in

Vincenzo Frascino (2):
  arm64: Define Documentation/arm64/tagged-address-abi.rst
  arm64: Relax Documentation/arm64/tagged-pointers.rst

 Documentation/arm64/tagged-address-abi.rst | 155 +++++++++++++++++++++
 Documentation/arm64/tagged-pointers.rst    |  23 ++-
 arch/arm64/kernel/process.c                |  17 ++-
 kernel/sys.c                               |   4 +
 mm/mmap.c                                  |   5 +
 mm/mremap.c                                |   6 +-
 6 files changed, 191 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/arm64/tagged-address-abi.rst


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
