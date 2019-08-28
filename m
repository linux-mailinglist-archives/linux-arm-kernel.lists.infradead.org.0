Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E22A0884
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 19:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=THCqMQlXZYEGXANtr0dcAWqc8Dh24L4qv30O6o5kwLc=; b=siZuiUhih2MbND
	TNNeRisBAQEFBmKi6vAypfNGWYpWce9iCCkS8Hgyus/Xz0BY0vv4HyABJwc53j3vwlzlDJLoHTRiN
	bf0wmfkzCHpqnfmb7clkN3QqVOXmoBbULvjL+Cn+iM4SCHwG3jO1Ss+59roRIlKR/0qBJJ4hGobUR
	uF7660SHPcxZmLYI2YhPHSOoYt6g7CZyT+1dIeOUdxR5glUTMKMNNqPGKFAYrq5NYnRixjQMqahTg
	emI6K9KtH8ZoWLnsEa9cjZAIVBkKI1dTgMVOTAOECB6/0VLtFyabOzwzq06AIVYILMypU8XhutRZ2
	G0X/bjhWOKiaiR75e5MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i31oS-0007Xw-C8; Wed, 28 Aug 2019 17:32:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i31oF-0007Xc-6o
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 17:32:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5F3222CF8;
 Wed, 28 Aug 2019 17:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567013558;
 bh=g4OCrTwVa9bGHj9tnxdp3jF6CcqJ8f1XiF9bSopoU3g=;
 h=Date:From:To:Cc:Subject:From;
 b=a3rf4aOlbouRot3H7YWNOPjdMdjcSi4kuaOwn9XEDNdNwloLChRW0NRPbuHXR9PXS
 C6MgP0i2QWJTMl2Pk08Rc1N/ScAAM4oPGmcweVwXtZ/63yqisTC31BDdQGAwJFmL4V
 GPPOqjrUiOAnRHK07SzjdAwi+63PljkdrwKkNN/A=
Date: Wed, 28 Aug 2019 18:32:33 +0100
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: Fixes for -rc7
Message-ID: <20190828173233.zqwm5nd4p5xa4jxi@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_103239_273353_AD6C23FA 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hot on the heels of our last set of fixes are a few more for -rc7. Two
of them are fixing issues with our virtual interrupt controller
implementation in KVM/arm, while the other is a longstanding but
straightforward kallsyms fix which was been acked by Masami and resolves
an initialisation failure in kprobes observed on arm64.

Please pull, thanks.

Will

--->8

The following changes since commit b6143d10d23ebb4a77af311e8b8b7f019d0163e6:

  arm64: ftrace: Ensure module ftrace trampoline is coherent with I-side (2019-08-16 17:40:03 +0100)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 82e40f558de566fdee214bec68096bbd5e64a6a4:

  KVM: arm/arm64: vgic-v2: Handle SGI bits in GICD_I{S,C}PENDR0 as WI (2019-08-28 11:21:42 +0100)

----------------------------------------------------------------
arm64 fixes for -rc7

- Fix GICv2 emulation bug (KVM)

- Fix deadlock in virtual GIC interrupt injection code (KVM)

- Fix kprobes blacklist init failure due to broken kallsyms lookup

----------------------------------------------------------------
Heyi Guo (1):
      KVM: arm/arm64: vgic: Fix potential deadlock when ap_list is long

Marc Zyngier (2):
      kallsyms: Don't let kallsyms_lookup_size_offset() fail on retrieving the first symbol
      KVM: arm/arm64: vgic-v2: Handle SGI bits in GICD_I{S,C}PENDR0 as WI

 kernel/kallsyms.c             |  6 ++++--
 virt/kvm/arm/vgic/vgic-mmio.c | 18 ++++++++++++++++++
 virt/kvm/arm/vgic/vgic-v2.c   |  5 ++++-
 virt/kvm/arm/vgic/vgic-v3.c   |  5 ++++-
 virt/kvm/arm/vgic/vgic.c      |  7 +++++++
 5 files changed, 37 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
