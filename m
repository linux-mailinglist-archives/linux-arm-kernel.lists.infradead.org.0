Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D661C4D0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/S58tqq/+M6oZI2djb11VCqAC8cXz2AAXZ7+c/G7MZs=; b=GeO9EUv8IW7KofUAp3lg6+vOA
	/6YyidbrosmnoAoyBfThj1T7nnrIwyiQcxPWe9yghOhIHELF8nAPwrluyP1QAwuLls2dI2B5zWpUB
	XaiNOxVrMuXgw7W1Pwj740ekQNOqoR3eQZlMsHiP4ipXE4JTu4XlPFLUyLrVWw4pcRdJHWboimLu+
	P6cwWvLoAaUqrjSobjCLp7LqvAbyvVCcPkVUekpPsLNewM7axV5uPicCdJfhXOS6LDIw1+6zhlPQU
	UR+8jlCX9agFoj4IgrLDfT5aNYPzfCabNAMVpvl19c8IZdy//jL3GNSEuhALFCYHx1FXQOPdDDZk5
	Go7jTsx7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVozZ-0007Kc-93; Tue, 05 May 2020 04:15:37 +0000
Received: from out30-131.freemail.mail.aliyun.com ([115.124.30.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVozT-0007JY-1B
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:15:32 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R491e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04397;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=37; SR=0;
 TI=SMTPD_---0TxXItq5_1588652118; 
Received: from 30.27.236.135(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TxXItq5_1588652118) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 05 May 2020 12:15:22 +0800
Subject: Re: [PATCH v4 0/7] clean up redundant 'kvm_run' parameters
To: pbonzini@redhat.com, tsbogend@alpha.franken.de, paulus@ozlabs.org,
 mpe@ellerman.id.au, benh@kernel.crashing.org, borntraeger@de.ibm.com,
 frankja@linux.ibm.com, david@redhat.com, cohuck@redhat.com,
 heiko.carstens@de.ibm.com, gor@linux.ibm.com,
 sean.j.christopherson@intel.com, vkuznets@redhat.com, wanpengli@tencent.com,
 jmattson@google.com, joro@8bytes.org, tglx@linutronix.de, mingo@redhat.com,
 bp@alien8.de, x86@kernel.org, hpa@zytor.com, maz@kernel.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 christoffer.dall@arm.com, peterx@redhat.com, thuth@redhat.com,
 chenhuacai@gmail.com
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <b660f6cb-a89b-2452-c15b-095add6413ec@linux.alibaba.com>
Date: Tue, 5 May 2020 12:15:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_211531_288190_2B752F36 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo Bonzini, any opinion on this?

Thanks and best,
Tianjia

On 2020/4/27 12:35, Tianjia Zhang wrote:
> In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
> structure. For historical reasons, many kvm-related function parameters
> retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time. This
> patch does a unified cleanup of these remaining redundant parameters.
> 
> This series of patches has completely cleaned the architecture of
> arm64, mips, ppc, and s390 (no such redundant code on x86). Due to
> the large number of modified codes, a separate patch is made for each
> platform. On the ppc platform, there is also a redundant structure
> pointer of 'kvm_run' in 'vcpu_arch', which has also been cleaned
> separately.
> 
> ---
> v4 change:
>    mips: fixes two errors in entry.c.
> 
> v3 change:
>    Keep the existing `vcpu->run` in the function body unchanged.
> 
> v2 change:
>    s390 retains the original variable name and minimizes modification.
> 
> Tianjia Zhang (7):
>    KVM: s390: clean up redundant 'kvm_run' parameters
>    KVM: arm64: clean up redundant 'kvm_run' parameters
>    KVM: PPC: Remove redundant kvm_run from vcpu_arch
>    KVM: PPC: clean up redundant 'kvm_run' parameters
>    KVM: PPC: clean up redundant kvm_run parameters in assembly
>    KVM: MIPS: clean up redundant 'kvm_run' parameters
>    KVM: MIPS: clean up redundant kvm_run parameters in assembly
> 
>   arch/arm64/include/asm/kvm_coproc.h      |  12 +--
>   arch/arm64/include/asm/kvm_host.h        |  11 +--
>   arch/arm64/include/asm/kvm_mmu.h         |   2 +-
>   arch/arm64/kvm/handle_exit.c             |  36 +++----
>   arch/arm64/kvm/sys_regs.c                |  13 ++-
>   arch/mips/include/asm/kvm_host.h         |  32 +------
>   arch/mips/kvm/emulate.c                  |  59 ++++--------
>   arch/mips/kvm/entry.c                    |  21 ++---
>   arch/mips/kvm/mips.c                     |  14 +--
>   arch/mips/kvm/trap_emul.c                | 114 ++++++++++-------------
>   arch/mips/kvm/vz.c                       |  26 ++----
>   arch/powerpc/include/asm/kvm_book3s.h    |  16 ++--
>   arch/powerpc/include/asm/kvm_host.h      |   1 -
>   arch/powerpc/include/asm/kvm_ppc.h       |  27 +++---
>   arch/powerpc/kvm/book3s.c                |   4 +-
>   arch/powerpc/kvm/book3s.h                |   2 +-
>   arch/powerpc/kvm/book3s_64_mmu_hv.c      |  12 +--
>   arch/powerpc/kvm/book3s_64_mmu_radix.c   |   4 +-
>   arch/powerpc/kvm/book3s_emulate.c        |  10 +-
>   arch/powerpc/kvm/book3s_hv.c             |  64 ++++++-------
>   arch/powerpc/kvm/book3s_hv_nested.c      |  12 +--
>   arch/powerpc/kvm/book3s_interrupts.S     |  17 ++--
>   arch/powerpc/kvm/book3s_paired_singles.c |  72 +++++++-------
>   arch/powerpc/kvm/book3s_pr.c             |  33 ++++---
>   arch/powerpc/kvm/booke.c                 |  39 ++++----
>   arch/powerpc/kvm/booke.h                 |   8 +-
>   arch/powerpc/kvm/booke_emulate.c         |   2 +-
>   arch/powerpc/kvm/booke_interrupts.S      |   9 +-
>   arch/powerpc/kvm/bookehv_interrupts.S    |  10 +-
>   arch/powerpc/kvm/e500_emulate.c          |  15 ++-
>   arch/powerpc/kvm/emulate.c               |  10 +-
>   arch/powerpc/kvm/emulate_loadstore.c     |  32 +++----
>   arch/powerpc/kvm/powerpc.c               |  72 +++++++-------
>   arch/powerpc/kvm/trace_hv.h              |   6 +-
>   arch/s390/kvm/kvm-s390.c                 |  23 +++--
>   virt/kvm/arm/arm.c                       |   6 +-
>   virt/kvm/arm/mmio.c                      |  11 ++-
>   virt/kvm/arm/mmu.c                       |   5 +-
>   38 files changed, 392 insertions(+), 470 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
