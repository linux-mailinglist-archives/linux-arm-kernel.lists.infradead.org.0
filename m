Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6886B1E1AEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 07:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrsxxRyp/4M6O0ExswCX5/uTZaDbvLntVdHEiAHV0XA=; b=VrZzJGvenjscwc
	3/q6+05LFcMjSkFwVaGUcvTT49hV6cTPYSxBWXzou8Y2e+pV1YjNWpPvCdI1hoI94Pzdstsn3EnV+
	KgNvriIVExSIlxoTf03EpET9KZZQJY7/O/cBvbaS5pFaDDM8FeTWA6hqlTGEIpCJaOsv8YiCcUq/v
	sVVCbhiSengHVE8Wif3mSAB8l//tpj30fem0fcepOgacz0sjVeas2rNkfykGQ/fi9doujERSdNE2Q
	/Oydr0pIjJF2ChWOMSgGGWukI61c9NUrB1nyFRtgWZZDMc6iY7ehi4EhFUrhopqyA6FRXJLuGEk9w
	2xNkpmZ/sdNWm5yAwxIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdSco-00012p-2I; Tue, 26 May 2020 05:59:42 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdScd-00011F-3T
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 05:59:32 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 49WNZn04xgz9sSs; Tue, 26 May 2020 15:59:28 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1590472769; bh=4zTMjLxiP7At/YtrE7MFZ9lR12F6gL3vS4op93NKqcw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=khGxIciPhO0Sfk2SnU/0Ae673wU3qJd++HDVCdDXw0crK8Ypm2/n9l62eVF831yOi
 qSlxMK1kVwrGk5Ie4AuHOGiyMVvCJOwjYXSbzPDmsHvR8Rc6dTcCW4fUqTmnv2FFC3
 IC6DoGsAZ7Lz1lXXrlNfXZL/2bFCAo2dtE/thks2LK2v0to3aW5buJZfJX1GsIWfGN
 AgMpuG9PWO3XTyuFrjqeVqtJHgB3BOMn3n4bxBUe7RXQfa23LEupF1Ywt0g5DVnF/1
 IVVxPvpB947tg6+DMLQ0rMbIi1mYImwuRTcOzmoU9yY9DUZ2d3cWMG3nlOTWEdkC0S
 nbtLhygWbPVew==
Date: Tue, 26 May 2020 15:59:24 +1000
From: Paul Mackerras <paulus@ozlabs.org>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Subject: Re: [PATCH v4 5/7] KVM: PPC: clean up redundant kvm_run parameters
 in assembly
Message-ID: <20200526055924.GD282305@thinks.paulus.ozlabs.org>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
 <20200427043514.16144-6-tianjia.zhang@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427043514.16144-6-tianjia.zhang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_225931_303424_32A67FF4 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 benh@kernel.crashing.org, heiko.carstens@de.ibm.com, peterx@redhat.com,
 linux-mips@vger.kernel.org, hpa@zytor.com, kvmarm@lists.cs.columbia.edu,
 linux-s390@vger.kernel.org, frankja@linux.ibm.com, chenhuacai@gmail.com,
 maz@kernel.org, joro@8bytes.org, x86@kernel.org, borntraeger@de.ibm.com,
 mingo@redhat.com, julien.thierry.kdev@gmail.com, thuth@redhat.com,
 gor@linux.ibm.com, suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org,
 bp@alien8.de, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 jmattson@google.com, tsbogend@alpha.franken.de, cohuck@redhat.com,
 christoffer.dall@arm.com, sean.j.christopherson@intel.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com, mpe@ellerman.id.au,
 pbonzini@redhat.com, vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 12:35:12PM +0800, Tianjia Zhang wrote:
> In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
> structure. For historical reasons, many kvm-related function parameters
> retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time. This
> patch does a unified cleanup of these remaining redundant parameters.

Some of these changes don't look completely correct to me, see below.
If you're expecting these patches to go through my tree, I can fix up
the patch and commit it (with you as author), noting the changes I
made in the commit message.  Do you want me to do that?

> diff --git a/arch/powerpc/kvm/book3s_interrupts.S b/arch/powerpc/kvm/book3s_interrupts.S
> index f7ad99d972ce..0eff749d8027 100644
> --- a/arch/powerpc/kvm/book3s_interrupts.S
> +++ b/arch/powerpc/kvm/book3s_interrupts.S
> @@ -55,8 +55,7 @@
>   ****************************************************************************/
>  
>  /* Registers:
> - *  r3: kvm_run pointer
> - *  r4: vcpu pointer
> + *  r3: vcpu pointer
>   */
>  _GLOBAL(__kvmppc_vcpu_run)
>  
> @@ -68,8 +67,8 @@ kvm_start_entry:
>  	/* Save host state to the stack */
>  	PPC_STLU r1, -SWITCH_FRAME_SIZE(r1)
>  
> -	/* Save r3 (kvm_run) and r4 (vcpu) */
> -	SAVE_2GPRS(3, r1)
> +	/* Save r3 (vcpu) */
> +	SAVE_GPR(3, r1)
>  
>  	/* Save non-volatile registers (r14 - r31) */
>  	SAVE_NVGPRS(r1)
> @@ -82,11 +81,11 @@ kvm_start_entry:
>  	PPC_STL	r0, _LINK(r1)
>  
>  	/* Load non-volatile guest state from the vcpu */
> -	VCPU_LOAD_NVGPRS(r4)
> +	VCPU_LOAD_NVGPRS(r3)
>  
>  kvm_start_lightweight:
>  	/* Copy registers into shadow vcpu so we can access them in real mode */
> -	mr	r3, r4
> +	mr	r4, r3

This mr doesn't seem necessary.

>  	bl	FUNC(kvmppc_copy_to_svcpu)
>  	nop
>  	REST_GPR(4, r1)

This should be loading r4 from GPR3(r1), not GPR4(r1) - which is what
REST_GPR(4, r1) will do.

Then, in the file but not in the patch context, there is this line:

	PPC_LL	r3, GPR4(r1)		/* vcpu pointer */

where once again GPR4 needs to be GPR3.

> @@ -191,10 +190,10 @@ after_sprg3_load:
>  	PPC_STL	r31, VCPU_GPR(R31)(r7)
>  
>  	/* Pass the exit number as 3rd argument to kvmppc_handle_exit */

The comment should be modified to say "2nd" instead of "3rd",
otherwise it is confusing.

The rest of the patch looks OK.

Paul.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
