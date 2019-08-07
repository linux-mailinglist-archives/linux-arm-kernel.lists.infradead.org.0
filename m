Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3254485059
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x5fPCMgHyzrq/H5+3lsXppOdVZ2Fy33+uhYUACHu794=; b=nqkJBDb2DpzoJ1
	hrG51dn8S83m71DYb7glAlKuq34TetgBni250en5bbj1RCje8yK6PT0fSZGIyvp1W5AHg2ytYy147
	vQLr1pBckXt77IcuVdHIRYC2oWXFfNVLTS+XBLxJhqtS0siJ5/8uV7fl98PyoeSPrWgdX1ElbaHmM
	slUB9LpQ5+0zxBs/lX38IXF4FJZLX8Kjwv7YSC/SRlYxxXmus3WYqy6W9AqVXwR6XfPt9bwr2Oyna
	qwZ2UWMV+dCGG55ORVofaEo5MdpuQt5SU4Ulf/bBFG8Efn3Tv4qpVYKuTVCm6WNWDrFrvDkZcbPvx
	eFul7rNlDK6Iu3XYesNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOFx-0004P9-9S; Wed, 07 Aug 2019 15:53:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOFl-0004Nq-6x
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:53:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 92B60344;
 Wed,  7 Aug 2019 08:53:26 -0700 (PDT)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3CD9C3F706;
 Wed,  7 Aug 2019 08:53:25 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 0/2] arm64 tagged address ABI
Date: Wed,  7 Aug 2019 16:53:19 +0100
Message-Id: <20190807155321.9648-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_085329_299019_AE76AF3D 
X-CRM114-Status: GOOD (  10.62  )
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
 Dave Hansen <dave.hansen@intel.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for the feedback so far. This is an updated series documenting
the AArch64 Tagged Address ABI as implemented by these patches:

http://lkml.kernel.org/r/cover.1563904656.git.andreyknvl@google.com

Version 6 of the documentation series is available here:

http://lkml.kernel.org/r/20190725135044.24381-1-vincenzo.frascino@arm.com

Changes in v7:

- Dropped the MAP_PRIVATE requirements for tagged pointers for both
  anonymous and file mappings. One reason is that we can't enforce such
  restriction anyway. The other reason is that a future series
  implementing support for the hardware MTE will detect
  incompatibilities of the new PROT_MTE flag with various mmap()
  options.

- As a consequence of the above, I removed Szabolcs ack as I'm not sure
  he's ok with the change.

- Clarified the sysctl and prctl() interaction and reordered the
  descriptions.

- Reworded the prctl(PR_SET_MM) restrictions.

- Removed the description of the tag preservation from the first patch
  as it didn't really make sense (the syscall ABI has always preserved
  all registers other than x0 on return to user).

- s/ARM64/AArch64/ for consistency with the tagged-pointers.rst
  document.

- Other minor rewordings.

Vincenzo Frascino (2):
  arm64: Define Documentation/arm64/tagged-address-abi.rst
  arm64: Relax Documentation/arm64/tagged-pointers.rst

 Documentation/arm64/tagged-address-abi.rst | 151 +++++++++++++++++++++
 Documentation/arm64/tagged-pointers.rst    |  23 +++-
 2 files changed, 167 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/arm64/tagged-address-abi.rst


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
