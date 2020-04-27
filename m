Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FFA1B968E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 07:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+ZWCfkADXmX4ekZL/EASyZfX/uWifaOM4Cfa+uJwLw=; b=mqbqC8TvkLgbDR
	j7BBcmgWiDBxIRuFgMIwyKLu5W5vjjhssP2gfPC/bLdlal9pf5P1wgHIfo69VThKAwZ8C7ur6TO2Y
	ft3GAoSzGTPPeSlceWwV370sf+Mk4vACTmQyXpSkmnoIHCsR6mxxj9f3RLcb6BaSAjwjg0/HR9EDd
	wJNi+E6xXKOadPBU+6bFL/P3kXxg9nGY9B3l7iPslnDBlUgysm8j8B0SUgkHmfrZIoHpn7Eujo7Xi
	WlsZlWoDxTC3vJbV55j9UEabWc07XEu7f2wqfnDsMkn/yp+rg3uGpRhXBTshG8usfBTGewS0SJEqz
	Wk6k/UYhhwu6KbTegTlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSwOr-0007jz-Mo; Mon, 27 Apr 2020 05:33:49 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSwOZ-0007fy-Ie
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 05:33:35 +0000
Received: by mail-il1-x143.google.com with SMTP id e8so15517596ilm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 22:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yv20T7bw/ROHOiw7uQc9fRS2DAZneC4FFraYT1L0wfU=;
 b=k6rNSBUFyrayeM7nP46EhrVWqeb4CpVv0gQc/Um12G7IRcZmFmqqVbsKb6U8cOR5Sy
 h95ys5W1cBEeKrAR5+X9Jw1zfV2rtJiqKfl8cq01yBEGkZHqOwpWuzmYIY2zomgaGoDU
 os+ooMLZtJcdBpCRqSs2x6MjwUkU6kmNhExUuT5Im08Ydx4NHtT/84Py+sCP5bM8lgLj
 b5j5nkuFxgRJzSIrc03PKdobhEldA17q/3zNEGXyaQ0Lctv2NpDyvlEvhGwq82xeqDj3
 nxkO0P/GOnSJwx1QnHkKjwb+JimtPaCSJnx+IiGsBOFY1aD35fUwv8eTsbV9fyGt8w0M
 3B7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yv20T7bw/ROHOiw7uQc9fRS2DAZneC4FFraYT1L0wfU=;
 b=HWR4nTaLAW1M+jQVev0FCTmLYvmoKeddbXoeBisd9zjjAXcqPN6j7jNWJdKWgqTT/I
 IZtehpU5NANJTGZ/Gf/jLop2cIzAAw7ZIE+qK20fxvL5jDAuwub0ooqNZnIyR/BPbGW8
 Aq+djJaG44NzQhOJ4LwNSoa0WX02cZGQtqMKTPs1EBBl+nwa0UWKCVQg6K2u064dS9+5
 bn4scMVV7edr9h6rlUMfZFOiHROjHgxu2yKkQmRShbmR8KAF+Ps6A/4GHHoS/o7HexVE
 QUbK8cH1ZavGb7f2xSWXunh8u37h1iFZh2V6jrUxBLj0LKtng4rM9ObM0hY5ewogDNbW
 iqJA==
X-Gm-Message-State: AGi0PuaKMh+epZqDHzp+NEC+bpbk8+s6GIloFD9MBsx6NMbX6ANxG8Oo
 XNEkNYxiMpPeqjzxwgqQZYeR18FF3RKvW/oy5bc=
X-Google-Smtp-Source: APiQypKKbkzdlpWlOV/EZfc/e5ZmALbUeUc4dHbtpmJ9VwD5No1N663uMP76HrcLOf1AeO3pc1UjyHMWnZRBmL6Pllw=
X-Received: by 2002:a92:c52a:: with SMTP id m10mr19614875ili.208.1587965610051; 
 Sun, 26 Apr 2020 22:33:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
 <20200427043514.16144-7-tianjia.zhang@linux.alibaba.com>
In-Reply-To: <20200427043514.16144-7-tianjia.zhang@linux.alibaba.com>
From: Huacai Chen <chenhuacai@gmail.com>
Date: Mon, 27 Apr 2020 13:40:54 +0800
Message-ID: <CAAhV-H7kpKUfQoWid6GSNL5+4hTTroGyL83EaW6yZwS2+Ti9kA@mail.gmail.com>
Subject: Re: [PATCH v4 6/7] KVM: MIPS: clean up redundant 'kvm_run' parameters
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_223331_664345_AC122D00 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chenhuacai[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, david@redhat.com,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, heiko.carstens@de.ibm.com,
 Peter Xu <peterx@redhat.com>, "open list:MIPS" <linux-mips@vger.kernel.org>,
 paulus@ozlabs.org, hpa@zytor.com, kvmarm@lists.cs.columbia.edu,
 linux-s390@vger.kernel.org, frankja@linux.ibm.com,
 Marc Zyngier <maz@kernel.org>, joro@8bytes.org, x86@kernel.org,
 borntraeger@de.ibm.com, mingo@redhat.com, julien.thierry.kdev@gmail.com,
 thuth@redhat.com, gor@linux.ibm.com, suzuki.poulose@arm.com,
 kvm-ppc@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, jmattson@google.com,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, cohuck@redhat.com,
 christoffer.dall@arm.com, sean.j.christopherson@intel.com,
 LKML <linux-kernel@vger.kernel.org>, james.morse@arm.com, mpe@ellerman.id.au,
 Paolo Bonzini <pbonzini@redhat.com>, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviewed-by: Huacai Chen <chenhc@lemote.com>

On Mon, Apr 27, 2020 at 12:35 PM Tianjia Zhang
<tianjia.zhang@linux.alibaba.com> wrote:
>
> In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
> structure. For historical reasons, many kvm-related function parameters
> retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time. This
> patch does a unified cleanup of these remaining redundant parameters.
>
> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
> ---
>  arch/mips/include/asm/kvm_host.h |  28 +-------
>  arch/mips/kvm/emulate.c          |  59 ++++++----------
>  arch/mips/kvm/mips.c             |  11 ++-
>  arch/mips/kvm/trap_emul.c        | 114 ++++++++++++++-----------------
>  arch/mips/kvm/vz.c               |  26 +++----
>  5 files changed, 87 insertions(+), 151 deletions(-)
>
> diff --git a/arch/mips/include/asm/kvm_host.h b/arch/mips/include/asm/kvm_host.h
> index 2c343c346b79..971439297cea 100644
> --- a/arch/mips/include/asm/kvm_host.h
> +++ b/arch/mips/include/asm/kvm_host.h
> @@ -812,8 +812,8 @@ struct kvm_mips_callbacks {
>                            const struct kvm_one_reg *reg, s64 v);
>         int (*vcpu_load)(struct kvm_vcpu *vcpu, int cpu);
>         int (*vcpu_put)(struct kvm_vcpu *vcpu, int cpu);
> -       int (*vcpu_run)(struct kvm_run *run, struct kvm_vcpu *vcpu);
> -       void (*vcpu_reenter)(struct kvm_run *run, struct kvm_vcpu *vcpu);
> +       int (*vcpu_run)(struct kvm_vcpu *vcpu);
> +       void (*vcpu_reenter)(struct kvm_vcpu *vcpu);
>  };
>  extern struct kvm_mips_callbacks *kvm_mips_callbacks;
>  int kvm_mips_emulation_init(struct kvm_mips_callbacks **install_callbacks);
> @@ -868,7 +868,6 @@ extern int kvm_mips_handle_mapped_seg_tlb_fault(struct kvm_vcpu *vcpu,
>
>  extern enum emulation_result kvm_mips_handle_tlbmiss(u32 cause,
>                                                      u32 *opc,
> -                                                    struct kvm_run *run,
>                                                      struct kvm_vcpu *vcpu,
>                                                      bool write_fault);
>
> @@ -975,83 +974,67 @@ static inline bool kvm_is_ifetch_fault(struct kvm_vcpu_arch *vcpu)
>
>  extern enum emulation_result kvm_mips_emulate_inst(u32 cause,
>                                                    u32 *opc,
> -                                                  struct kvm_run *run,
>                                                    struct kvm_vcpu *vcpu);
>
>  long kvm_mips_guest_exception_base(struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_syscall(u32 cause,
>                                                       u32 *opc,
> -                                                     struct kvm_run *run,
>                                                       struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_tlbmiss_ld(u32 cause,
>                                                          u32 *opc,
> -                                                        struct kvm_run *run,
>                                                          struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_tlbinv_ld(u32 cause,
>                                                         u32 *opc,
> -                                                       struct kvm_run *run,
>                                                         struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_tlbmiss_st(u32 cause,
>                                                          u32 *opc,
> -                                                        struct kvm_run *run,
>                                                          struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_tlbinv_st(u32 cause,
>                                                         u32 *opc,
> -                                                       struct kvm_run *run,
>                                                         struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_tlbmod(u32 cause,
>                                                      u32 *opc,
> -                                                    struct kvm_run *run,
>                                                      struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_fpu_exc(u32 cause,
>                                                       u32 *opc,
> -                                                     struct kvm_run *run,
>                                                       struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_handle_ri(u32 cause,
>                                                 u32 *opc,
> -                                               struct kvm_run *run,
>                                                 struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_ri_exc(u32 cause,
>                                                      u32 *opc,
> -                                                    struct kvm_run *run,
>                                                      struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_bp_exc(u32 cause,
>                                                      u32 *opc,
> -                                                    struct kvm_run *run,
>                                                      struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_trap_exc(u32 cause,
>                                                        u32 *opc,
> -                                                      struct kvm_run *run,
>                                                        struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_msafpe_exc(u32 cause,
>                                                          u32 *opc,
> -                                                        struct kvm_run *run,
>                                                          struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_fpe_exc(u32 cause,
>                                                       u32 *opc,
> -                                                     struct kvm_run *run,
>                                                       struct kvm_vcpu *vcpu);
>
>  extern enum emulation_result kvm_mips_emulate_msadis_exc(u32 cause,
>                                                          u32 *opc,
> -                                                        struct kvm_run *run,
>                                                          struct kvm_vcpu *vcpu);
>
> -extern enum emulation_result kvm_mips_complete_mmio_load(struct kvm_vcpu *vcpu,
> -                                                        struct kvm_run *run);
> +extern enum emulation_result kvm_mips_complete_mmio_load(struct kvm_vcpu *vcpu);
>
>  u32 kvm_mips_read_count(struct kvm_vcpu *vcpu);
>  void kvm_mips_write_count(struct kvm_vcpu *vcpu, u32 count);
> @@ -1080,26 +1063,21 @@ static inline void kvm_vz_lose_htimer(struct kvm_vcpu *vcpu) {}
>
>  enum emulation_result kvm_mips_check_privilege(u32 cause,
>                                                u32 *opc,
> -                                              struct kvm_run *run,
>                                                struct kvm_vcpu *vcpu);
>
>  enum emulation_result kvm_mips_emulate_cache(union mips_instruction inst,
>                                              u32 *opc,
>                                              u32 cause,
> -                                            struct kvm_run *run,
>                                              struct kvm_vcpu *vcpu);
>  enum emulation_result kvm_mips_emulate_CP0(union mips_instruction inst,
>                                            u32 *opc,
>                                            u32 cause,
> -                                          struct kvm_run *run,
>                                            struct kvm_vcpu *vcpu);
>  enum emulation_result kvm_mips_emulate_store(union mips_instruction inst,
>                                              u32 cause,
> -                                            struct kvm_run *run,
>                                              struct kvm_vcpu *vcpu);
>  enum emulation_result kvm_mips_emulate_load(union mips_instruction inst,
>                                             u32 cause,
> -                                           struct kvm_run *run,
>                                             struct kvm_vcpu *vcpu);
>
>  /* COP0 */
> diff --git a/arch/mips/kvm/emulate.c b/arch/mips/kvm/emulate.c
> index 754094b40a75..36718b8dce21 100644
> --- a/arch/mips/kvm/emulate.c
> +++ b/arch/mips/kvm/emulate.c
> @@ -1262,7 +1262,6 @@ unsigned int kvm_mips_config5_wrmask(struct kvm_vcpu *vcpu)
>
>  enum emulation_result kvm_mips_emulate_CP0(union mips_instruction inst,
>                                            u32 *opc, u32 cause,
> -                                          struct kvm_run *run,
>                                            struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -1597,11 +1596,11 @@ enum emulation_result kvm_mips_emulate_CP0(union mips_instruction inst,
>
>  enum emulation_result kvm_mips_emulate_store(union mips_instruction inst,
>                                              u32 cause,
> -                                            struct kvm_run *run,
>                                              struct kvm_vcpu *vcpu)
>  {
>         enum emulation_result er;
>         u32 rt;
> +       struct kvm_run *run = vcpu->run;
>         void *data = run->mmio.data;
>         unsigned long curr_pc;
>
> @@ -1678,9 +1677,9 @@ enum emulation_result kvm_mips_emulate_store(union mips_instruction inst,
>  }
>
>  enum emulation_result kvm_mips_emulate_load(union mips_instruction inst,
> -                                           u32 cause, struct kvm_run *run,
> -                                           struct kvm_vcpu *vcpu)
> +                                           u32 cause, struct kvm_vcpu *vcpu)
>  {
> +       struct kvm_run *run = vcpu->run;
>         enum emulation_result er;
>         unsigned long curr_pc;
>         u32 op, rt;
> @@ -1752,7 +1751,6 @@ enum emulation_result kvm_mips_emulate_load(union mips_instruction inst,
>  static enum emulation_result kvm_mips_guest_cache_op(int (*fn)(unsigned long),
>                                                      unsigned long curr_pc,
>                                                      unsigned long addr,
> -                                                    struct kvm_run *run,
>                                                      struct kvm_vcpu *vcpu,
>                                                      u32 cause)
>  {
> @@ -1780,13 +1778,13 @@ static enum emulation_result kvm_mips_guest_cache_op(int (*fn)(unsigned long),
>                         /* no matching guest TLB */
>                         vcpu->arch.host_cp0_badvaddr = addr;
>                         vcpu->arch.pc = curr_pc;
> -                       kvm_mips_emulate_tlbmiss_ld(cause, NULL, run, vcpu);
> +                       kvm_mips_emulate_tlbmiss_ld(cause, NULL, vcpu);
>                         return EMULATE_EXCEPT;
>                 case KVM_MIPS_TLBINV:
>                         /* invalid matching guest TLB */
>                         vcpu->arch.host_cp0_badvaddr = addr;
>                         vcpu->arch.pc = curr_pc;
> -                       kvm_mips_emulate_tlbinv_ld(cause, NULL, run, vcpu);
> +                       kvm_mips_emulate_tlbinv_ld(cause, NULL, vcpu);
>                         return EMULATE_EXCEPT;
>                 default:
>                         break;
> @@ -1796,7 +1794,6 @@ static enum emulation_result kvm_mips_guest_cache_op(int (*fn)(unsigned long),
>
>  enum emulation_result kvm_mips_emulate_cache(union mips_instruction inst,
>                                              u32 *opc, u32 cause,
> -                                            struct kvm_run *run,
>                                              struct kvm_vcpu *vcpu)
>  {
>         enum emulation_result er = EMULATE_DONE;
> @@ -1886,7 +1883,7 @@ enum emulation_result kvm_mips_emulate_cache(union mips_instruction inst,
>                  * guest's behalf.
>                  */
>                 er = kvm_mips_guest_cache_op(protected_writeback_dcache_line,
> -                                            curr_pc, va, run, vcpu, cause);
> +                                            curr_pc, va, vcpu, cause);
>                 if (er != EMULATE_DONE)
>                         goto done;
>  #ifdef CONFIG_KVM_MIPS_DYN_TRANS
> @@ -1899,11 +1896,11 @@ enum emulation_result kvm_mips_emulate_cache(union mips_instruction inst,
>         } else if (op_inst == Hit_Invalidate_I) {
>                 /* Perform the icache synchronisation on the guest's behalf */
>                 er = kvm_mips_guest_cache_op(protected_writeback_dcache_line,
> -                                            curr_pc, va, run, vcpu, cause);
> +                                            curr_pc, va, vcpu, cause);
>                 if (er != EMULATE_DONE)
>                         goto done;
>                 er = kvm_mips_guest_cache_op(protected_flush_icache_line,
> -                                            curr_pc, va, run, vcpu, cause);
> +                                            curr_pc, va, vcpu, cause);
>                 if (er != EMULATE_DONE)
>                         goto done;
>
> @@ -1929,7 +1926,6 @@ enum emulation_result kvm_mips_emulate_cache(union mips_instruction inst,
>  }
>
>  enum emulation_result kvm_mips_emulate_inst(u32 cause, u32 *opc,
> -                                           struct kvm_run *run,
>                                             struct kvm_vcpu *vcpu)
>  {
>         union mips_instruction inst;
> @@ -1945,14 +1941,14 @@ enum emulation_result kvm_mips_emulate_inst(u32 cause, u32 *opc,
>
>         switch (inst.r_format.opcode) {
>         case cop0_op:
> -               er = kvm_mips_emulate_CP0(inst, opc, cause, run, vcpu);
> +               er = kvm_mips_emulate_CP0(inst, opc, cause, vcpu);
>                 break;
>
>  #ifndef CONFIG_CPU_MIPSR6
>         case cache_op:
>                 ++vcpu->stat.cache_exits;
>                 trace_kvm_exit(vcpu, KVM_TRACE_EXIT_CACHE);
> -               er = kvm_mips_emulate_cache(inst, opc, cause, run, vcpu);
> +               er = kvm_mips_emulate_cache(inst, opc, cause, vcpu);
>                 break;
>  #else
>         case spec3_op:
> @@ -1960,7 +1956,7 @@ enum emulation_result kvm_mips_emulate_inst(u32 cause, u32 *opc,
>                 case cache6_op:
>                         ++vcpu->stat.cache_exits;
>                         trace_kvm_exit(vcpu, KVM_TRACE_EXIT_CACHE);
> -                       er = kvm_mips_emulate_cache(inst, opc, cause, run,
> +                       er = kvm_mips_emulate_cache(inst, opc, cause,
>                                                     vcpu);
>                         break;
>                 default:
> @@ -2000,7 +1996,6 @@ long kvm_mips_guest_exception_base(struct kvm_vcpu *vcpu)
>
>  enum emulation_result kvm_mips_emulate_syscall(u32 cause,
>                                                u32 *opc,
> -                                              struct kvm_run *run,
>                                                struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2035,7 +2030,6 @@ enum emulation_result kvm_mips_emulate_syscall(u32 cause,
>
>  enum emulation_result kvm_mips_emulate_tlbmiss_ld(u32 cause,
>                                                   u32 *opc,
> -                                                 struct kvm_run *run,
>                                                   struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2079,7 +2073,6 @@ enum emulation_result kvm_mips_emulate_tlbmiss_ld(u32 cause,
>
>  enum emulation_result kvm_mips_emulate_tlbinv_ld(u32 cause,
>                                                  u32 *opc,
> -                                                struct kvm_run *run,
>                                                  struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2121,7 +2114,6 @@ enum emulation_result kvm_mips_emulate_tlbinv_ld(u32 cause,
>
>  enum emulation_result kvm_mips_emulate_tlbmiss_st(u32 cause,
>                                                   u32 *opc,
> -                                                 struct kvm_run *run,
>                                                   struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2163,7 +2155,6 @@ enum emulation_result kvm_mips_emulate_tlbmiss_st(u32 cause,
>
>  enum emulation_result kvm_mips_emulate_tlbinv_st(u32 cause,
>                                                  u32 *opc,
> -                                                struct kvm_run *run,
>                                                  struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2204,7 +2195,6 @@ enum emulation_result kvm_mips_emulate_tlbinv_st(u32 cause,
>
>  enum emulation_result kvm_mips_emulate_tlbmod(u32 cause,
>                                               u32 *opc,
> -                                             struct kvm_run *run,
>                                               struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2244,7 +2234,6 @@ enum emulation_result kvm_mips_emulate_tlbmod(u32 cause,
>
>  enum emulation_result kvm_mips_emulate_fpu_exc(u32 cause,
>                                                u32 *opc,
> -                                              struct kvm_run *run,
>                                                struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2273,7 +2262,6 @@ enum emulation_result kvm_mips_emulate_fpu_exc(u32 cause,
>
>  enum emulation_result kvm_mips_emulate_ri_exc(u32 cause,
>                                               u32 *opc,
> -                                             struct kvm_run *run,
>                                               struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2308,7 +2296,6 @@ enum emulation_result kvm_mips_emulate_ri_exc(u32 cause,
>
>  enum emulation_result kvm_mips_emulate_bp_exc(u32 cause,
>                                               u32 *opc,
> -                                             struct kvm_run *run,
>                                               struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2343,7 +2330,6 @@ enum emulation_result kvm_mips_emulate_bp_exc(u32 cause,
>
>  enum emulation_result kvm_mips_emulate_trap_exc(u32 cause,
>                                                 u32 *opc,
> -                                               struct kvm_run *run,
>                                                 struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2378,7 +2364,6 @@ enum emulation_result kvm_mips_emulate_trap_exc(u32 cause,
>
>  enum emulation_result kvm_mips_emulate_msafpe_exc(u32 cause,
>                                                   u32 *opc,
> -                                                 struct kvm_run *run,
>                                                   struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2413,7 +2398,6 @@ enum emulation_result kvm_mips_emulate_msafpe_exc(u32 cause,
>
>  enum emulation_result kvm_mips_emulate_fpe_exc(u32 cause,
>                                                u32 *opc,
> -                                              struct kvm_run *run,
>                                                struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2448,7 +2432,6 @@ enum emulation_result kvm_mips_emulate_fpe_exc(u32 cause,
>
>  enum emulation_result kvm_mips_emulate_msadis_exc(u32 cause,
>                                                   u32 *opc,
> -                                                 struct kvm_run *run,
>                                                   struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2482,7 +2465,6 @@ enum emulation_result kvm_mips_emulate_msadis_exc(u32 cause,
>  }
>
>  enum emulation_result kvm_mips_handle_ri(u32 cause, u32 *opc,
> -                                        struct kvm_run *run,
>                                          struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -2571,12 +2553,12 @@ enum emulation_result kvm_mips_handle_ri(u32 cause, u32 *opc,
>          * branch target), and pass the RI exception to the guest OS.
>          */
>         vcpu->arch.pc = curr_pc;
> -       return kvm_mips_emulate_ri_exc(cause, opc, run, vcpu);
> +       return kvm_mips_emulate_ri_exc(cause, opc, vcpu);
>  }
>
> -enum emulation_result kvm_mips_complete_mmio_load(struct kvm_vcpu *vcpu,
> -                                                 struct kvm_run *run)
> +enum emulation_result kvm_mips_complete_mmio_load(struct kvm_vcpu *vcpu)
>  {
> +       struct kvm_run *run = vcpu->run;
>         unsigned long *gpr = &vcpu->arch.gprs[vcpu->arch.io_gpr];
>         enum emulation_result er = EMULATE_DONE;
>
> @@ -2622,7 +2604,6 @@ enum emulation_result kvm_mips_complete_mmio_load(struct kvm_vcpu *vcpu,
>
>  static enum emulation_result kvm_mips_emulate_exc(u32 cause,
>                                                   u32 *opc,
> -                                                 struct kvm_run *run,
>                                                   struct kvm_vcpu *vcpu)
>  {
>         u32 exccode = (cause >> CAUSEB_EXCCODE) & 0x1f;
> @@ -2660,7 +2641,6 @@ static enum emulation_result kvm_mips_emulate_exc(u32 cause,
>
>  enum emulation_result kvm_mips_check_privilege(u32 cause,
>                                                u32 *opc,
> -                                              struct kvm_run *run,
>                                                struct kvm_vcpu *vcpu)
>  {
>         enum emulation_result er = EMULATE_DONE;
> @@ -2742,7 +2722,7 @@ enum emulation_result kvm_mips_check_privilege(u32 cause,
>         }
>
>         if (er == EMULATE_PRIV_FAIL)
> -               kvm_mips_emulate_exc(cause, opc, run, vcpu);
> +               kvm_mips_emulate_exc(cause, opc, vcpu);
>
>         return er;
>  }
> @@ -2756,7 +2736,6 @@ enum emulation_result kvm_mips_check_privilege(u32 cause,
>   */
>  enum emulation_result kvm_mips_handle_tlbmiss(u32 cause,
>                                               u32 *opc,
> -                                             struct kvm_run *run,
>                                               struct kvm_vcpu *vcpu,
>                                               bool write_fault)
>  {
> @@ -2780,9 +2759,9 @@ enum emulation_result kvm_mips_handle_tlbmiss(u32 cause,
>                        KVM_ENTRYHI_ASID));
>         if (index < 0) {
>                 if (exccode == EXCCODE_TLBL) {
> -                       er = kvm_mips_emulate_tlbmiss_ld(cause, opc, run, vcpu);
> +                       er = kvm_mips_emulate_tlbmiss_ld(cause, opc, vcpu);
>                 } else if (exccode == EXCCODE_TLBS) {
> -                       er = kvm_mips_emulate_tlbmiss_st(cause, opc, run, vcpu);
> +                       er = kvm_mips_emulate_tlbmiss_st(cause, opc, vcpu);
>                 } else {
>                         kvm_err("%s: invalid exc code: %d\n", __func__,
>                                 exccode);
> @@ -2797,10 +2776,10 @@ enum emulation_result kvm_mips_handle_tlbmiss(u32 cause,
>                  */
>                 if (!TLB_IS_VALID(*tlb, va)) {
>                         if (exccode == EXCCODE_TLBL) {
> -                               er = kvm_mips_emulate_tlbinv_ld(cause, opc, run,
> +                               er = kvm_mips_emulate_tlbinv_ld(cause, opc,
>                                                                 vcpu);
>                         } else if (exccode == EXCCODE_TLBS) {
> -                               er = kvm_mips_emulate_tlbinv_st(cause, opc, run,
> +                               er = kvm_mips_emulate_tlbinv_st(cause, opc,
>                                                                 vcpu);
>                         } else {
>                                 kvm_err("%s: invalid exc code: %d\n", __func__,
> diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
> index ec24adf4857e..9710477a9827 100644
> --- a/arch/mips/kvm/mips.c
> +++ b/arch/mips/kvm/mips.c
> @@ -441,7 +441,6 @@ int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
>
>  int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
>  {
> -       struct kvm_run *run = vcpu->run;
>         int r = -EINTR;
>
>         vcpu_load(vcpu);
> @@ -450,11 +449,11 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
>
>         if (vcpu->mmio_needed) {
>                 if (!vcpu->mmio_is_write)
> -                       kvm_mips_complete_mmio_load(vcpu, run);
> +                       kvm_mips_complete_mmio_load(vcpu);
>                 vcpu->mmio_needed = 0;
>         }
>
> -       if (run->immediate_exit)
> +       if (vcpu->run->immediate_exit)
>                 goto out;
>
>         lose_fpu(1);
> @@ -471,7 +470,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
>          */
>         smp_store_mb(vcpu->mode, IN_GUEST_MODE);
>
> -       r = kvm_mips_callbacks->vcpu_run(run, vcpu);
> +       r = kvm_mips_callbacks->vcpu_run(vcpu);
>
>         trace_kvm_out(vcpu);
>         guest_exit_irqoff();
> @@ -1225,7 +1224,7 @@ int kvm_mips_handle_exit(struct kvm_run *run, struct kvm_vcpu *vcpu)
>                  * end up causing an exception to be delivered to the Guest
>                  * Kernel
>                  */
> -               er = kvm_mips_check_privilege(cause, opc, run, vcpu);
> +               er = kvm_mips_check_privilege(cause, opc, vcpu);
>                 if (er == EMULATE_PRIV_FAIL) {
>                         goto skip_emul;
>                 } else if (er == EMULATE_FAIL) {
> @@ -1374,7 +1373,7 @@ int kvm_mips_handle_exit(struct kvm_run *run, struct kvm_vcpu *vcpu)
>                  */
>                 smp_store_mb(vcpu->mode, IN_GUEST_MODE);
>
> -               kvm_mips_callbacks->vcpu_reenter(run, vcpu);
> +               kvm_mips_callbacks->vcpu_reenter(vcpu);
>
>                 /*
>                  * If FPU / MSA are enabled (i.e. the guest's FPU / MSA context
> diff --git a/arch/mips/kvm/trap_emul.c b/arch/mips/kvm/trap_emul.c
> index 5a11e83dffe6..d822f3aee3dc 100644
> --- a/arch/mips/kvm/trap_emul.c
> +++ b/arch/mips/kvm/trap_emul.c
> @@ -67,7 +67,6 @@ static int kvm_trap_emul_no_handler(struct kvm_vcpu *vcpu)
>  static int kvm_trap_emul_handle_cop_unusable(struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> -       struct kvm_run *run = vcpu->run;
>         u32 __user *opc = (u32 __user *) vcpu->arch.pc;
>         u32 cause = vcpu->arch.host_cp0_cause;
>         enum emulation_result er = EMULATE_DONE;
> @@ -81,14 +80,14 @@ static int kvm_trap_emul_handle_cop_unusable(struct kvm_vcpu *vcpu)
>                          * Unusable/no FPU in guest:
>                          * deliver guest COP1 Unusable Exception
>                          */
> -                       er = kvm_mips_emulate_fpu_exc(cause, opc, run, vcpu);
> +                       er = kvm_mips_emulate_fpu_exc(cause, opc, vcpu);
>                 } else {
>                         /* Restore FPU state */
>                         kvm_own_fpu(vcpu);
>                         er = EMULATE_DONE;
>                 }
>         } else {
> -               er = kvm_mips_emulate_inst(cause, opc, run, vcpu);
> +               er = kvm_mips_emulate_inst(cause, opc, vcpu);
>         }
>
>         switch (er) {
> @@ -97,12 +96,12 @@ static int kvm_trap_emul_handle_cop_unusable(struct kvm_vcpu *vcpu)
>                 break;
>
>         case EMULATE_FAIL:
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 ret = RESUME_HOST;
>                 break;
>
>         case EMULATE_WAIT:
> -               run->exit_reason = KVM_EXIT_INTR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTR;
>                 ret = RESUME_HOST;
>                 break;
>
> @@ -116,8 +115,7 @@ static int kvm_trap_emul_handle_cop_unusable(struct kvm_vcpu *vcpu)
>         return ret;
>  }
>
> -static int kvm_mips_bad_load(u32 cause, u32 *opc, struct kvm_run *run,
> -                            struct kvm_vcpu *vcpu)
> +static int kvm_mips_bad_load(u32 cause, u32 *opc, struct kvm_vcpu *vcpu)
>  {
>         enum emulation_result er;
>         union mips_instruction inst;
> @@ -125,7 +123,7 @@ static int kvm_mips_bad_load(u32 cause, u32 *opc, struct kvm_run *run,
>
>         /* A code fetch fault doesn't count as an MMIO */
>         if (kvm_is_ifetch_fault(&vcpu->arch)) {
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 return RESUME_HOST;
>         }
>
> @@ -134,23 +132,22 @@ static int kvm_mips_bad_load(u32 cause, u32 *opc, struct kvm_run *run,
>                 opc += 1;
>         err = kvm_get_badinstr(opc, vcpu, &inst.word);
>         if (err) {
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 return RESUME_HOST;
>         }
>
>         /* Emulate the load */
> -       er = kvm_mips_emulate_load(inst, cause, run, vcpu);
> +       er = kvm_mips_emulate_load(inst, cause, vcpu);
>         if (er == EMULATE_FAIL) {
>                 kvm_err("Emulate load from MMIO space failed\n");
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>         } else {
> -               run->exit_reason = KVM_EXIT_MMIO;
> +               vcpu->run->exit_reason = KVM_EXIT_MMIO;
>         }
>         return RESUME_HOST;
>  }
>
> -static int kvm_mips_bad_store(u32 cause, u32 *opc, struct kvm_run *run,
> -                             struct kvm_vcpu *vcpu)
> +static int kvm_mips_bad_store(u32 cause, u32 *opc, struct kvm_vcpu *vcpu)
>  {
>         enum emulation_result er;
>         union mips_instruction inst;
> @@ -161,34 +158,33 @@ static int kvm_mips_bad_store(u32 cause, u32 *opc, struct kvm_run *run,
>                 opc += 1;
>         err = kvm_get_badinstr(opc, vcpu, &inst.word);
>         if (err) {
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 return RESUME_HOST;
>         }
>
>         /* Emulate the store */
> -       er = kvm_mips_emulate_store(inst, cause, run, vcpu);
> +       er = kvm_mips_emulate_store(inst, cause, vcpu);
>         if (er == EMULATE_FAIL) {
>                 kvm_err("Emulate store to MMIO space failed\n");
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>         } else {
> -               run->exit_reason = KVM_EXIT_MMIO;
> +               vcpu->run->exit_reason = KVM_EXIT_MMIO;
>         }
>         return RESUME_HOST;
>  }
>
> -static int kvm_mips_bad_access(u32 cause, u32 *opc, struct kvm_run *run,
> +static int kvm_mips_bad_access(u32 cause, u32 *opc,
>                                struct kvm_vcpu *vcpu, bool store)
>  {
>         if (store)
> -               return kvm_mips_bad_store(cause, opc, run, vcpu);
> +               return kvm_mips_bad_store(cause, opc, vcpu);
>         else
> -               return kvm_mips_bad_load(cause, opc, run, vcpu);
> +               return kvm_mips_bad_load(cause, opc, vcpu);
>  }
>
>  static int kvm_trap_emul_handle_tlb_mod(struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> -       struct kvm_run *run = vcpu->run;
>         u32 __user *opc = (u32 __user *) vcpu->arch.pc;
>         unsigned long badvaddr = vcpu->arch.host_cp0_badvaddr;
>         u32 cause = vcpu->arch.host_cp0_cause;
> @@ -212,12 +208,12 @@ static int kvm_trap_emul_handle_tlb_mod(struct kvm_vcpu *vcpu)
>                  * They would indicate stale host TLB entries.
>                  */
>                 if (unlikely(index < 0)) {
> -                       run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +                       vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                         return RESUME_HOST;
>                 }
>                 tlb = vcpu->arch.guest_tlb + index;
>                 if (unlikely(!TLB_IS_VALID(*tlb, badvaddr))) {
> -                       run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +                       vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                         return RESUME_HOST;
>                 }
>
> @@ -226,23 +222,23 @@ static int kvm_trap_emul_handle_tlb_mod(struct kvm_vcpu *vcpu)
>                  * exception. Relay that on to the guest so it can handle it.
>                  */
>                 if (!TLB_IS_DIRTY(*tlb, badvaddr)) {
> -                       kvm_mips_emulate_tlbmod(cause, opc, run, vcpu);
> +                       kvm_mips_emulate_tlbmod(cause, opc, vcpu);
>                         return RESUME_GUEST;
>                 }
>
>                 if (kvm_mips_handle_mapped_seg_tlb_fault(vcpu, tlb, badvaddr,
>                                                          true))
>                         /* Not writable, needs handling as MMIO */
> -                       return kvm_mips_bad_store(cause, opc, run, vcpu);
> +                       return kvm_mips_bad_store(cause, opc, vcpu);
>                 return RESUME_GUEST;
>         } else if (KVM_GUEST_KSEGX(badvaddr) == KVM_GUEST_KSEG0) {
>                 if (kvm_mips_handle_kseg0_tlb_fault(badvaddr, vcpu, true) < 0)
>                         /* Not writable, needs handling as MMIO */
> -                       return kvm_mips_bad_store(cause, opc, run, vcpu);
> +                       return kvm_mips_bad_store(cause, opc, vcpu);
>                 return RESUME_GUEST;
>         } else {
>                 /* host kernel addresses are all handled as MMIO */
> -               return kvm_mips_bad_store(cause, opc, run, vcpu);
> +               return kvm_mips_bad_store(cause, opc, vcpu);
>         }
>  }
>
> @@ -276,7 +272,7 @@ static int kvm_trap_emul_handle_tlb_miss(struct kvm_vcpu *vcpu, bool store)
>                  *     into the shadow host TLB
>                  */
>
> -               er = kvm_mips_handle_tlbmiss(cause, opc, run, vcpu, store);
> +               er = kvm_mips_handle_tlbmiss(cause, opc, vcpu, store);
>                 if (er == EMULATE_DONE)
>                         ret = RESUME_GUEST;
>                 else {
> @@ -289,14 +285,14 @@ static int kvm_trap_emul_handle_tlb_miss(struct kvm_vcpu *vcpu, bool store)
>                  * not expect to ever get them
>                  */
>                 if (kvm_mips_handle_kseg0_tlb_fault(badvaddr, vcpu, store) < 0)
> -                       ret = kvm_mips_bad_access(cause, opc, run, vcpu, store);
> +                       ret = kvm_mips_bad_access(cause, opc, vcpu, store);
>         } else if (KVM_GUEST_KERNEL_MODE(vcpu)
>                    && (KSEGX(badvaddr) == CKSEG0 || KSEGX(badvaddr) == CKSEG1)) {
>                 /*
>                  * With EVA we may get a TLB exception instead of an address
>                  * error when the guest performs MMIO to KSeg1 addresses.
>                  */
> -               ret = kvm_mips_bad_access(cause, opc, run, vcpu, store);
> +               ret = kvm_mips_bad_access(cause, opc, vcpu, store);
>         } else {
>                 kvm_err("Illegal TLB %s fault address , cause %#x, PC: %p, BadVaddr: %#lx\n",
>                         store ? "ST" : "LD", cause, opc, badvaddr);
> @@ -320,7 +316,6 @@ static int kvm_trap_emul_handle_tlb_ld_miss(struct kvm_vcpu *vcpu)
>
>  static int kvm_trap_emul_handle_addr_err_st(struct kvm_vcpu *vcpu)
>  {
> -       struct kvm_run *run = vcpu->run;
>         u32 __user *opc = (u32 __user *) vcpu->arch.pc;
>         unsigned long badvaddr = vcpu->arch.host_cp0_badvaddr;
>         u32 cause = vcpu->arch.host_cp0_cause;
> @@ -328,11 +323,11 @@ static int kvm_trap_emul_handle_addr_err_st(struct kvm_vcpu *vcpu)
>
>         if (KVM_GUEST_KERNEL_MODE(vcpu)
>             && (KSEGX(badvaddr) == CKSEG0 || KSEGX(badvaddr) == CKSEG1)) {
> -               ret = kvm_mips_bad_store(cause, opc, run, vcpu);
> +               ret = kvm_mips_bad_store(cause, opc, vcpu);
>         } else {
>                 kvm_err("Address Error (STORE): cause %#x, PC: %p, BadVaddr: %#lx\n",
>                         cause, opc, badvaddr);
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 ret = RESUME_HOST;
>         }
>         return ret;
> @@ -340,18 +335,17 @@ static int kvm_trap_emul_handle_addr_err_st(struct kvm_vcpu *vcpu)
>
>  static int kvm_trap_emul_handle_addr_err_ld(struct kvm_vcpu *vcpu)
>  {
> -       struct kvm_run *run = vcpu->run;
>         u32 __user *opc = (u32 __user *) vcpu->arch.pc;
>         unsigned long badvaddr = vcpu->arch.host_cp0_badvaddr;
>         u32 cause = vcpu->arch.host_cp0_cause;
>         int ret = RESUME_GUEST;
>
>         if (KSEGX(badvaddr) == CKSEG0 || KSEGX(badvaddr) == CKSEG1) {
> -               ret = kvm_mips_bad_load(cause, opc, run, vcpu);
> +               ret = kvm_mips_bad_load(cause, opc, vcpu);
>         } else {
>                 kvm_err("Address Error (LOAD): cause %#x, PC: %p, BadVaddr: %#lx\n",
>                         cause, opc, badvaddr);
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 ret = RESUME_HOST;
>         }
>         return ret;
> @@ -359,17 +353,16 @@ static int kvm_trap_emul_handle_addr_err_ld(struct kvm_vcpu *vcpu)
>
>  static int kvm_trap_emul_handle_syscall(struct kvm_vcpu *vcpu)
>  {
> -       struct kvm_run *run = vcpu->run;
>         u32 __user *opc = (u32 __user *) vcpu->arch.pc;
>         u32 cause = vcpu->arch.host_cp0_cause;
>         enum emulation_result er = EMULATE_DONE;
>         int ret = RESUME_GUEST;
>
> -       er = kvm_mips_emulate_syscall(cause, opc, run, vcpu);
> +       er = kvm_mips_emulate_syscall(cause, opc, vcpu);
>         if (er == EMULATE_DONE)
>                 ret = RESUME_GUEST;
>         else {
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 ret = RESUME_HOST;
>         }
>         return ret;
> @@ -377,17 +370,16 @@ static int kvm_trap_emul_handle_syscall(struct kvm_vcpu *vcpu)
>
>  static int kvm_trap_emul_handle_res_inst(struct kvm_vcpu *vcpu)
>  {
> -       struct kvm_run *run = vcpu->run;
>         u32 __user *opc = (u32 __user *) vcpu->arch.pc;
>         u32 cause = vcpu->arch.host_cp0_cause;
>         enum emulation_result er = EMULATE_DONE;
>         int ret = RESUME_GUEST;
>
> -       er = kvm_mips_handle_ri(cause, opc, run, vcpu);
> +       er = kvm_mips_handle_ri(cause, opc, vcpu);
>         if (er == EMULATE_DONE)
>                 ret = RESUME_GUEST;
>         else {
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 ret = RESUME_HOST;
>         }
>         return ret;
> @@ -395,17 +387,16 @@ static int kvm_trap_emul_handle_res_inst(struct kvm_vcpu *vcpu)
>
>  static int kvm_trap_emul_handle_break(struct kvm_vcpu *vcpu)
>  {
> -       struct kvm_run *run = vcpu->run;
>         u32 __user *opc = (u32 __user *) vcpu->arch.pc;
>         u32 cause = vcpu->arch.host_cp0_cause;
>         enum emulation_result er = EMULATE_DONE;
>         int ret = RESUME_GUEST;
>
> -       er = kvm_mips_emulate_bp_exc(cause, opc, run, vcpu);
> +       er = kvm_mips_emulate_bp_exc(cause, opc, vcpu);
>         if (er == EMULATE_DONE)
>                 ret = RESUME_GUEST;
>         else {
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 ret = RESUME_HOST;
>         }
>         return ret;
> @@ -413,17 +404,16 @@ static int kvm_trap_emul_handle_break(struct kvm_vcpu *vcpu)
>
>  static int kvm_trap_emul_handle_trap(struct kvm_vcpu *vcpu)
>  {
> -       struct kvm_run *run = vcpu->run;
>         u32 __user *opc = (u32 __user *)vcpu->arch.pc;
>         u32 cause = vcpu->arch.host_cp0_cause;
>         enum emulation_result er = EMULATE_DONE;
>         int ret = RESUME_GUEST;
>
> -       er = kvm_mips_emulate_trap_exc(cause, opc, run, vcpu);
> +       er = kvm_mips_emulate_trap_exc(cause, opc, vcpu);
>         if (er == EMULATE_DONE) {
>                 ret = RESUME_GUEST;
>         } else {
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 ret = RESUME_HOST;
>         }
>         return ret;
> @@ -431,17 +421,16 @@ static int kvm_trap_emul_handle_trap(struct kvm_vcpu *vcpu)
>
>  static int kvm_trap_emul_handle_msa_fpe(struct kvm_vcpu *vcpu)
>  {
> -       struct kvm_run *run = vcpu->run;
>         u32 __user *opc = (u32 __user *)vcpu->arch.pc;
>         u32 cause = vcpu->arch.host_cp0_cause;
>         enum emulation_result er = EMULATE_DONE;
>         int ret = RESUME_GUEST;
>
> -       er = kvm_mips_emulate_msafpe_exc(cause, opc, run, vcpu);
> +       er = kvm_mips_emulate_msafpe_exc(cause, opc, vcpu);
>         if (er == EMULATE_DONE) {
>                 ret = RESUME_GUEST;
>         } else {
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 ret = RESUME_HOST;
>         }
>         return ret;
> @@ -449,17 +438,16 @@ static int kvm_trap_emul_handle_msa_fpe(struct kvm_vcpu *vcpu)
>
>  static int kvm_trap_emul_handle_fpe(struct kvm_vcpu *vcpu)
>  {
> -       struct kvm_run *run = vcpu->run;
>         u32 __user *opc = (u32 __user *)vcpu->arch.pc;
>         u32 cause = vcpu->arch.host_cp0_cause;
>         enum emulation_result er = EMULATE_DONE;
>         int ret = RESUME_GUEST;
>
> -       er = kvm_mips_emulate_fpe_exc(cause, opc, run, vcpu);
> +       er = kvm_mips_emulate_fpe_exc(cause, opc, vcpu);
>         if (er == EMULATE_DONE) {
>                 ret = RESUME_GUEST;
>         } else {
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 ret = RESUME_HOST;
>         }
>         return ret;
> @@ -474,7 +462,6 @@ static int kvm_trap_emul_handle_fpe(struct kvm_vcpu *vcpu)
>  static int kvm_trap_emul_handle_msa_disabled(struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> -       struct kvm_run *run = vcpu->run;
>         u32 __user *opc = (u32 __user *) vcpu->arch.pc;
>         u32 cause = vcpu->arch.host_cp0_cause;
>         enum emulation_result er = EMULATE_DONE;
> @@ -486,10 +473,10 @@ static int kvm_trap_emul_handle_msa_disabled(struct kvm_vcpu *vcpu)
>                  * No MSA in guest, or FPU enabled and not in FR=1 mode,
>                  * guest reserved instruction exception
>                  */
> -               er = kvm_mips_emulate_ri_exc(cause, opc, run, vcpu);
> +               er = kvm_mips_emulate_ri_exc(cause, opc, vcpu);
>         } else if (!(kvm_read_c0_guest_config5(cop0) & MIPS_CONF5_MSAEN)) {
>                 /* MSA disabled by guest, guest MSA disabled exception */
> -               er = kvm_mips_emulate_msadis_exc(cause, opc, run, vcpu);
> +               er = kvm_mips_emulate_msadis_exc(cause, opc, vcpu);
>         } else {
>                 /* Restore MSA/FPU state */
>                 kvm_own_msa(vcpu);
> @@ -502,7 +489,7 @@ static int kvm_trap_emul_handle_msa_disabled(struct kvm_vcpu *vcpu)
>                 break;
>
>         case EMULATE_FAIL:
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 ret = RESUME_HOST;
>                 break;
>
> @@ -1181,8 +1168,7 @@ void kvm_trap_emul_gva_lockless_end(struct kvm_vcpu *vcpu)
>         local_irq_enable();
>  }
>
> -static void kvm_trap_emul_vcpu_reenter(struct kvm_run *run,
> -                                      struct kvm_vcpu *vcpu)
> +static void kvm_trap_emul_vcpu_reenter(struct kvm_vcpu *vcpu)
>  {
>         struct mm_struct *kern_mm = &vcpu->arch.guest_kernel_mm;
>         struct mm_struct *user_mm = &vcpu->arch.guest_user_mm;
> @@ -1225,7 +1211,7 @@ static void kvm_trap_emul_vcpu_reenter(struct kvm_run *run,
>         check_mmu_context(mm);
>  }
>
> -static int kvm_trap_emul_vcpu_run(struct kvm_run *run, struct kvm_vcpu *vcpu)
> +static int kvm_trap_emul_vcpu_run(struct kvm_vcpu *vcpu)
>  {
>         int cpu = smp_processor_id();
>         int r;
> @@ -1234,7 +1220,7 @@ static int kvm_trap_emul_vcpu_run(struct kvm_run *run, struct kvm_vcpu *vcpu)
>         kvm_mips_deliver_interrupts(vcpu,
>                                     kvm_read_c0_guest_cause(vcpu->arch.cop0));
>
> -       kvm_trap_emul_vcpu_reenter(run, vcpu);
> +       kvm_trap_emul_vcpu_reenter(vcpu);
>
>         /*
>          * We use user accessors to access guest memory, but we don't want to
> @@ -1252,7 +1238,7 @@ static int kvm_trap_emul_vcpu_run(struct kvm_run *run, struct kvm_vcpu *vcpu)
>          */
>         kvm_mips_suspend_mm(cpu);
>
> -       r = vcpu->arch.vcpu_run(run, vcpu);
> +       r = vcpu->arch.vcpu_run(vcpu->run, vcpu);
>
>         /* We may have migrated while handling guest exits */
>         cpu = smp_processor_id();
> diff --git a/arch/mips/kvm/vz.c b/arch/mips/kvm/vz.c
> index dde20887a70d..94f1d23828e3 100644
> --- a/arch/mips/kvm/vz.c
> +++ b/arch/mips/kvm/vz.c
> @@ -899,7 +899,6 @@ static void kvm_write_maari(struct kvm_vcpu *vcpu, unsigned long val)
>
>  static enum emulation_result kvm_vz_gpsi_cop0(union mips_instruction inst,
>                                               u32 *opc, u32 cause,
> -                                             struct kvm_run *run,
>                                               struct kvm_vcpu *vcpu)
>  {
>         struct mips_coproc *cop0 = vcpu->arch.cop0;
> @@ -1062,7 +1061,6 @@ static enum emulation_result kvm_vz_gpsi_cop0(union mips_instruction inst,
>
>  static enum emulation_result kvm_vz_gpsi_cache(union mips_instruction inst,
>                                                u32 *opc, u32 cause,
> -                                              struct kvm_run *run,
>                                                struct kvm_vcpu *vcpu)
>  {
>         enum emulation_result er = EMULATE_DONE;
> @@ -1134,7 +1132,6 @@ static enum emulation_result kvm_trap_vz_handle_gpsi(u32 cause, u32 *opc,
>  {
>         enum emulation_result er = EMULATE_DONE;
>         struct kvm_vcpu_arch *arch = &vcpu->arch;
> -       struct kvm_run *run = vcpu->run;
>         union mips_instruction inst;
>         int rd, rt, sel;
>         int err;
> @@ -1150,12 +1147,12 @@ static enum emulation_result kvm_trap_vz_handle_gpsi(u32 cause, u32 *opc,
>
>         switch (inst.r_format.opcode) {
>         case cop0_op:
> -               er = kvm_vz_gpsi_cop0(inst, opc, cause, run, vcpu);
> +               er = kvm_vz_gpsi_cop0(inst, opc, cause, vcpu);
>                 break;
>  #ifndef CONFIG_CPU_MIPSR6
>         case cache_op:
>                 trace_kvm_exit(vcpu, KVM_TRACE_EXIT_CACHE);
> -               er = kvm_vz_gpsi_cache(inst, opc, cause, run, vcpu);
> +               er = kvm_vz_gpsi_cache(inst, opc, cause, vcpu);
>                 break;
>  #endif
>         case spec3_op:
> @@ -1163,7 +1160,7 @@ static enum emulation_result kvm_trap_vz_handle_gpsi(u32 cause, u32 *opc,
>  #ifdef CONFIG_CPU_MIPSR6
>                 case cache6_op:
>                         trace_kvm_exit(vcpu, KVM_TRACE_EXIT_CACHE);
> -                       er = kvm_vz_gpsi_cache(inst, opc, cause, run, vcpu);
> +                       er = kvm_vz_gpsi_cache(inst, opc, cause, vcpu);
>                         break;
>  #endif
>                 case rdhwr_op:
> @@ -1465,7 +1462,6 @@ static int kvm_trap_vz_handle_guest_exit(struct kvm_vcpu *vcpu)
>   */
>  static int kvm_trap_vz_handle_cop_unusable(struct kvm_vcpu *vcpu)
>  {
> -       struct kvm_run *run = vcpu->run;
>         u32 cause = vcpu->arch.host_cp0_cause;
>         enum emulation_result er = EMULATE_FAIL;
>         int ret = RESUME_GUEST;
> @@ -1493,7 +1489,7 @@ static int kvm_trap_vz_handle_cop_unusable(struct kvm_vcpu *vcpu)
>                 break;
>
>         case EMULATE_FAIL:
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 ret = RESUME_HOST;
>                 break;
>
> @@ -1512,8 +1508,6 @@ static int kvm_trap_vz_handle_cop_unusable(struct kvm_vcpu *vcpu)
>   */
>  static int kvm_trap_vz_handle_msa_disabled(struct kvm_vcpu *vcpu)
>  {
> -       struct kvm_run *run = vcpu->run;
> -
>         /*
>          * If MSA not present or not exposed to guest or FR=0, the MSA operation
>          * should have been treated as a reserved instruction!
> @@ -1524,7 +1518,7 @@ static int kvm_trap_vz_handle_msa_disabled(struct kvm_vcpu *vcpu)
>             (read_gc0_status() & (ST0_CU1 | ST0_FR)) == ST0_CU1 ||
>             !(read_gc0_config5() & MIPS_CONF5_MSAEN) ||
>             vcpu->arch.aux_inuse & KVM_MIPS_AUX_MSA) {
> -               run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
> +               vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
>                 return RESUME_HOST;
>         }
>
> @@ -1560,7 +1554,7 @@ static int kvm_trap_vz_handle_tlb_ld_miss(struct kvm_vcpu *vcpu)
>                 }
>
>                 /* Treat as MMIO */
> -               er = kvm_mips_emulate_load(inst, cause, run, vcpu);
> +               er = kvm_mips_emulate_load(inst, cause, vcpu);
>                 if (er == EMULATE_FAIL) {
>                         kvm_err("Guest Emulate Load from MMIO space failed: PC: %p, BadVaddr: %#lx\n",
>                                 opc, badvaddr);
> @@ -1607,7 +1601,7 @@ static int kvm_trap_vz_handle_tlb_st_miss(struct kvm_vcpu *vcpu)
>                 }
>
>                 /* Treat as MMIO */
> -               er = kvm_mips_emulate_store(inst, cause, run, vcpu);
> +               er = kvm_mips_emulate_store(inst, cause, vcpu);
>                 if (er == EMULATE_FAIL) {
>                         kvm_err("Guest Emulate Store to MMIO space failed: PC: %p, BadVaddr: %#lx\n",
>                                 opc, badvaddr);
> @@ -3129,7 +3123,7 @@ static void kvm_vz_flush_shadow_memslot(struct kvm *kvm,
>         kvm_vz_flush_shadow_all(kvm);
>  }
>
> -static void kvm_vz_vcpu_reenter(struct kvm_run *run, struct kvm_vcpu *vcpu)
> +static void kvm_vz_vcpu_reenter(struct kvm_vcpu *vcpu)
>  {
>         int cpu = smp_processor_id();
>         int preserve_guest_tlb;
> @@ -3145,7 +3139,7 @@ static void kvm_vz_vcpu_reenter(struct kvm_run *run, struct kvm_vcpu *vcpu)
>                 kvm_vz_vcpu_load_wired(vcpu);
>  }
>
> -static int kvm_vz_vcpu_run(struct kvm_run *run, struct kvm_vcpu *vcpu)
> +static int kvm_vz_vcpu_run(struct kvm_vcpu *vcpu)
>  {
>         int cpu = smp_processor_id();
>         int r;
> @@ -3158,7 +3152,7 @@ static int kvm_vz_vcpu_run(struct kvm_run *run, struct kvm_vcpu *vcpu)
>         kvm_vz_vcpu_load_tlb(vcpu, cpu);
>         kvm_vz_vcpu_load_wired(vcpu);
>
> -       r = vcpu->arch.vcpu_run(run, vcpu);
> +       r = vcpu->arch.vcpu_run(vcpu->run, vcpu);
>
>         kvm_vz_vcpu_save_wired(vcpu);
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
