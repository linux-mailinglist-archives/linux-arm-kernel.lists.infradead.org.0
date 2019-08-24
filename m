Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A159BD91
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 14:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3rGfY+69ajlRCRHrePPruKqtFqjqoboBWA6ql9OK5bI=; b=gGbOnURMf0W7y+
	5qIjVc4DonC4cyPU29PpsVGo+t/RUjS7R1bD/AGqDskXn1u9nlwabn+cR+5SCjxIvuU1L8il87UVO
	gmXeP1LxTkQdvGLsl/NTZR6v+9KIKuAgaHDAFmmnSuP/3W1fzAIQatjJGAmTsKteOzJQXNwwAREhJ
	Q6J3k6xI8ADahcexmSHkMxeHsjVkwDAsklffl+5o4u0yNoiUgGd7ObhwG2BkYIFHjadUglctOVreh
	Cj/4Bq2h4RXmWo7PaVEoO2G2RZPi5nVW2F4HUllGf1Oeeqe2R+Hia7d8HgdTlZ011pEUCy9Fe5vDc
	LxIMihOGhmnnpEJk36QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Uuo-0007Mm-MO; Sat, 24 Aug 2019 12:13:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Uui-0007MT-Md
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 12:13:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F0742146E;
 Sat, 24 Aug 2019 12:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566648780;
 bh=pgQ5Ieucz1re8Y5x9mZNInXpje3w1mq20odaNn+SSIg=;
 h=Date:From:To:Cc:Subject:From;
 b=0sVRhMLveGErFokACfC8K6gIMaNqREenHEwTEMdROoQ9NAr6UvnKr0ys68pi9hVzh
 qG+nnyoD833+wo9ytWfMAkTh1+1dX4+K8eOA5+Z1+4DWvb4PZxlxpy42kX2xf/hzx0
 siwNtoKHGrBEC53KPvI7tHNjUm0OFqXihr0n9wug=
Date: Sat, 24 Aug 2019 13:12:55 +0100
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: Fixes for -rc6
Message-ID: <20190824121255.ojqt7tjlzfp5a3nw@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_051300_764796_024201A0 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kvm@vger.kernel.org, rkrcmar@redhat.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull these two KVM/arm fixes for -rc6. Unusually, we're routing them
via the arm64 tree as per Paolo's request on the list:

  https://lore.kernel.org/kvm/21ae69a2-2546-29d0-bff6-2ea825e3d968@redhat.com/

We don't actually have any other arm64 fixes pending at the moment (touch
wood), so I've pulled from Marc, written a merge commit, tagged the
result and run it through my build/boot/bisect scripts.

Cheers,

Will

--->8

The following changes since commit d1abaeb3be7b5fa6d7a1fbbd2e14e3310005c4c1:

  Linux 5.3-rc5 (2019-08-18 14:31:08 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 087eeea9adcbaef55ae8d68335dcd3820c5b344b:

  Merge tag 'kvmarm-fixes-for-5.3-3' of git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm into kvm/fixes (2019-08-24 12:46:30 +0100)

----------------------------------------------------------------
arm64 fixes for -rc6

- Two KVM fixes for MMIO emulation and UBSAN

----------------------------------------------------------------
Andre Przywara (1):
      KVM: arm/arm64: VGIC: Properly initialise private IRQ affinity

Andrew Jones (1):
      KVM: arm/arm64: Only skip MMIO insn once

Will Deacon (1):
      Merge tag 'kvmarm-fixes-for-5.3-3' of git://git.kernel.org/.../kvmarm/kvmarm into kvm/fixes

 virt/kvm/arm/mmio.c           |  7 +++++++
 virt/kvm/arm/vgic/vgic-init.c | 30 ++++++++++++++++++++----------
 2 files changed, 27 insertions(+), 10 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
