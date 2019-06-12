Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C87428A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HSrrgc/NudQpuaelF/hARSvYZBpnRrCvxwxFMPUuZqI=; b=OpboBCc71v6+El
	+eW4zNL481CvrH1cuxVe0F8bW5PXZYvPtr4pCnVeOiLfCj1Bl63J0Xnp36OfB1X9hkZxRwW0fbqKP
	Vd9LKEuegEpfCS6E84fWibKhDQ+TW/XXPZ3YyhbGweZE+agbNPJBc2hWaH+S+vVDFTTgFbbboOAdo
	5DGsyED4+t0LruMKpF6fBGxNbd+hdhzK2sTy5HB5hGRq1XigK1rxPaY7965VaXz29UTULVjFQbJPL
	ykxDx+wskQeiLYG5+YWSFp8Us2QyPeN5aEtf7LsfH5GDrTx6qx1CK+Io+3F3Lkq6/fCMGGfrnVEnQ
	VfBCoNpH+8S0LIAX0LVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb48E-0002hk-QX; Wed, 12 Jun 2019 14:21:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb47z-0002gU-TS
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:21:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D86152B;
 Wed, 12 Jun 2019 07:21:25 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D4B33F557;
 Wed, 12 Jun 2019 07:21:24 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-mm@kvack.org, linux-arch@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] arm64 relaxed ABI
Date: Wed, 12 Jun 2019 15:21:09 +0100
Message-Id: <20190612142111.28161-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1560339705.git.andreyknvl@google.com>
References: <cover.1560339705.git.andreyknvl@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_072127_998902_7B84CE3F 
X-CRM114-Status: GOOD (  11.32  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64 the TCR_EL1.TBI0 bit has been always enabled on the arm64 kernel,
hence the userspace (EL0) is allowed to set a non-zero value in the top
byte but the resulting pointers are not allowed at the user-kernel syscall
ABI boundary.

This patchset proposes a relaxation of the ABI with which it is possible
to pass tagged tagged pointers to the syscalls, when these pointers are in
memory ranges obtained as described in tagged-address-abi.txt contained in
this patch series.

Since it is not desirable to relax the ABI to allow tagged user addresses
into the kernel indiscriminately, this patchset documents a new sysctl
interface (/proc/sys/abi/tagged_addr) that is used to prevent the applications
from enabling the relaxed ABI and a new prctl() interface that can be used to
enable or disable the relaxed ABI.

This patchset should be merged together with [1].

[1] https://patchwork.kernel.org/cover/10674351/

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
CC: Andrey Konovalov <andreyknvl@google.com>
CC: Alexander Viro <viro@zeniv.linux.org.uk>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>


Vincenzo Frascino (2):
  arm64: Define Documentation/arm64/tagged-address-abi.txt
  arm64: Relax Documentation/arm64/tagged-pointers.txt

 Documentation/arm64/tagged-address-abi.txt | 111 +++++++++++++++++++++
 Documentation/arm64/tagged-pointers.txt    |  23 +++--
 2 files changed, 127 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/arm64/tagged-address-abi.txt

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
