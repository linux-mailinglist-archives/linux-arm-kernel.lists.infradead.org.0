Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFEC87F40
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C48IC212Ny2BrbXXWTI/8yQo9TnrV0ruSnOJIXf+ZBc=; b=XGhbSelADdLoZR
	tRMJdwPIHnN3PZVMEBR5CBr9wSOHBbENkN6SJG+pZ7tCAcxD/Zbvk6j91ya+kJzNQKJjT2oiC/mO1
	JRMj9eplX1L3XGPaWCOxDpx2j4rUX1oKEjn91KgqAu1RySjqov+hrRsgJrAWyTmWSS/UgG4OfTYPC
	vJiqoXiB/owb4iLeLKNyDeDDcK8JVVRDD1ckWe25X3DLuPRwcc6liyLbF4784HBISP09wJj8B3Pbq
	VYOD5zfoMPiNfyiKl6PYs2eqTO7xBDFdjeSm5PoS9MzAhja8pH0PH3C0MItRYE9zaIEaz9TCEi2iS
	3OzBFkGRDDLe5JF1vpOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7Y8-0003b8-Sm; Fri, 09 Aug 2019 16:15:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7Xz-0003aJ-3B
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:15:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E43D15A2;
 Fri,  9 Aug 2019 09:15:17 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DA8623F575; Fri,  9 Aug 2019 09:15:16 -0700 (PDT)
Date: Fri, 9 Aug 2019 17:15:14 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 fixes for 5.3-rc4
Message-ID: <20190809161513.GA42536@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_091519_183170_B0962A8C 
X-CRM114-Status: GOOD (  11.10  )
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
Cc: Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull the arm64 fix below. Thanks.

The following changes since commit e21a712a9685488f5ce80495b37b9fdbe96c230d:

  Linux 5.3-rc3 (2019-08-04 18:40:12 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

for you to fetch changes up to 30e235389faadb9e3d918887b1f126155d7d761d:

  arm64: mm: add missing PTE_SPECIAL in pte_mkdevmap on arm64 (2019-08-08 18:38:20 +0100)

----------------------------------------------------------------
Fix bad_pte warning caused by pte_mkdevmap() not setting PTE_SPECIAL.

----------------------------------------------------------------
Jia He (1):
      arm64: mm: add missing PTE_SPECIAL in pte_mkdevmap on arm64

 arch/arm64/include/asm/pgtable.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
