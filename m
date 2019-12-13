Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E97D611EA49
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tm7WJ/mnt87VX2XZF0IJZoPwNDDYL9/+9+CRlUJJ9/Q=; b=OTWytiYFIsgAg4
	D5wuNL/YgCHeSNwY+SB+YIwg6RDYBu5s8nWVgUZUDcBOAYAMWFR/hxas0nLCg1ixWR94aDLGO2Rz0
	g9cavUsdSA01O0OquIPgXzcD5SHWpdSNEBtw7hzcsZZKT+i5lSunB37jxG17j89mwfBpq5cHVn4/+
	IYXLL7NyobZYBYwIB1LPJHNrAzL10i4qBHvr5lLoOcBfOEKAxPu0fOFWL+nybXAls8wUaPZWuq0V/
	nZF13YV7YdyokOOv2IjgqJ44YolCywswsIrHGzREzGUynPIjCpmRSO27N26kbSN+GpF04DYG3sH5Z
	jsHEsuS4iVzWcka/B8UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpfr-0000Yv-Uz; Fri, 13 Dec 2019 18:28:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpfi-0000Xo-3Y
 for linux-arm-kernel@bombadil.infradead.org; Fri, 13 Dec 2019 18:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8fxSQuUxto0ojC1oRoaWar7J6X3dP96OSxNCjzfDzw4=; b=lZ7fMBZc/c+sF5ytO/+u2o7uo7
 mxqf7jINlDXLCFF6RCuYl8F3mfH1zZsJll/1kbVBHJ8LIlppLo8yRLabx/KG0xEVOHjmLBrhAtVpG
 JkpOz2A6hwTFItvUWbOK6Rt/IgLvaoASexJNO4O5r8RH0zYLTUCVPYpvjF1MJI0sI3mtlaawuSetn
 Yk10dpHO7lN3TqKuhLf/Io61b4y0obM4fh/AoXf6l4KfonqEmHHW+/u99dNcefprAnaIDM4YaV6s7
 AV+gB51ycQB44cadWPZmfcS0Fu0IONlghVaEh1uv+wj1jSRaVWWd+jUqLoVy2q0K4TtV/W7O7kIBq
 Ccp8h9sw==;
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpg8-0006IH-DX
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 18:28:42 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifpdD-0001O7-Ur; Fri, 13 Dec 2019 19:25:40 +0100
From: Marc Zyngier <maz@kernel.org>
To: 
Subject: [PATCH 0/7] KVM: arm/arm64: Help VMs dying quicker
Date: Fri, 13 Dec 2019 18:24:56 +0000
Message-Id: <20191213182503.14460-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, jhogan@kernel.org, paulus@ozlabs.org,
 pbonzini@redhat.com, rkrcmar@redhat.com, sean.j.christopherson@intel.com,
 vkuznets@redhat.com, wanpengli@tencent.com, jmattson@google.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_182840_514653_F709D553 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (1.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paul Mackerras <paulus@ozlabs.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Yes, the subject is deliberately provocative!]

Having recently played with large, memory intensive, and very short lived
VMs, I have realised that we spend a substantial amount of time cleaning up
when a VM has terminated.

It turns out that 99% of the overhead is due to the unnecessary cache
cleaning that we perform when pages get unmapped from Stage-2, which
only serves a single purpose: to make the page visible to a non-coherent
IO subsystem when the page is being swapped out.

It would make sense to drop these cache maintenance operations when
userspace is either unmapping a VMA or simply exiting. Detecting the
latter is easy, as KVM calls kvm_arch_flush_shadow_all(). The unmap
case is harder, or at least it was until 5.2 gained the MMU notifier
event, which allows subsystems to find out about the reason of an
change in the page tables.

And it turns out we can do even better: We can also avoid invalidating
individual page mappings if we're tearing down the VM altogether, and
replace it with a single TLBI VMALL, which will be much lighter on the
whole system (specially if your interconnect is a bit flimsy).

With the above, terminating a 64GB VM that has most of its memory
mapped at S2 goes from several seconds (I've seen up to 12s) to less
than a second on my D05. In general, multi-socket systems seem to
benefit from this more than single socket machines (based on a
non-representative sample of 4 random machines I have access to).

The first patch affects most architectures, as it changes one of the
core architecture hooks (in a fairly mechanical way). The rest is
definitely ARM-specific.

Marc Zyngier (7):
  KVM: Pass mmu_notifier_range down to kvm_unmap_hva_range()
  KVM: arm/arm64: Pass flags along Stage-2 unmapping functions
  KVM: arm/arm64: Condition cache maintenance on unmap with a flag
  KVM: arm/arm64: Condition TLB maintenance on unmap with a flag
  KVM: arm/arm64: Elide both CMOs and TBLIs on freeing the whole Stage-2
  KVM: arm/arm64: Elide CMOs when retrying a block mapping
  KVM: arm/arm64: Elide CMOs when unmapping a range

 arch/arm/include/asm/kvm_host.h     |  2 +-
 arch/arm64/include/asm/kvm_host.h   |  2 +-
 arch/mips/include/asm/kvm_host.h    |  2 +-
 arch/mips/kvm/mmu.c                 |  6 +-
 arch/powerpc/include/asm/kvm_host.h |  2 +-
 arch/powerpc/kvm/book3s.c           |  5 +-
 arch/powerpc/kvm/e500_mmu_host.c    |  4 +-
 arch/x86/include/asm/kvm_host.h     |  3 +-
 arch/x86/kvm/mmu/mmu.c              |  5 +-
 arch/x86/kvm/x86.c                  |  4 +-
 include/linux/kvm_host.h            |  2 +-
 virt/kvm/arm/mmu.c                  | 97 +++++++++++++++++++----------
 virt/kvm/kvm_main.c                 |  7 +--
 13 files changed, 88 insertions(+), 53 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
