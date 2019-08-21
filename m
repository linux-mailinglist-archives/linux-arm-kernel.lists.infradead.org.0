Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E279809E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sbMrWzsSWcNeeTiQaTQbKaOR4+V1Sv/sNStkKtpZg5A=; b=bmd7LIKfEPo7R3
	gZMyo7GRTTW6W9G049SZYickNtAgebTTSdPQ6Zr4IS7fQvE8ykcqYgCwqKJixuFxR81TBnNRjWBxx
	XZB5JNGOICbUdSt7zclT1pXQkbaAacgKNDYQzo9SVqnThySD+enjvHwLA++kNacl6fswZg3gn07pv
	td9e7gFm5DnpbAIDZD9rtBKFlKf2VmXA4+DSIOKWRBfp9r3gPXEUCQf43KYw2jW9hhByyrc3iSyT7
	HA7JvqtcKF2U44WkadC5cM9H3v/8tI0vLvv8nZXmB0EsoqGUi4BRLLGcAKfFfINgm0ir8KVWay3CY
	uMNS1mXRFWL4+/ldjhVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0TmK-0000c2-CK; Wed, 21 Aug 2019 16:48:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Tly-0000Kp-Lw
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:47:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B85EA360;
 Wed, 21 Aug 2019 09:47:42 -0700 (PDT)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 09F003F718;
 Wed, 21 Aug 2019 09:47:40 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-mm@kvack.org
Subject: [PATCH v9 0/3] arm64 tagged address ABI
Date: Wed, 21 Aug 2019 17:47:27 +0100
Message-Id: <20190821164730.47450-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_094746_770407_E23B1CB4 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Dave Hansen <dave.hansen@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series is an update to the arm64 tagged address ABI documentation
patches v8, posted here:

http://lkml.kernel.org/r/20190815154403.16473-1-catalin.marinas@arm.com

From v8, I dropped patches 2 and 3 as they've been queued by Will via
the arm64 tree. Reposting patch 1 (unmodified) as it should be merged
via the mm tree.

Changes in v9:

- Replaced the emphasized/bold font with a typewriter one for
  function/constant names

- Simplified the mmap/brk bullet points when describing the tagged
  pointer origin

- Reworded expected syscall behaviour with valid tagged pointers

- Reworded the prctl/ioctl restrictions to clarify the allowed tagged
  pointers w.r.t. user data access by the kernel


Catalin Marinas (1):
  mm: untag user pointers in mmap/munmap/mremap/brk

Vincenzo Frascino (2):
  arm64: Define Documentation/arm64/tagged-address-abi.rst
  arm64: Relax Documentation/arm64/tagged-pointers.rst

 Documentation/arm64/tagged-address-abi.rst | 156 +++++++++++++++++++++
 Documentation/arm64/tagged-pointers.rst    |  23 ++-
 mm/mmap.c                                  |   5 +
 mm/mremap.c                                |   6 +-
 4 files changed, 178 insertions(+), 12 deletions(-)
 create mode 100644 Documentation/arm64/tagged-address-abi.rst


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
