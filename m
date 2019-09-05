Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CE8AA464
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1g5ZFGPVkgxNK/5u0ZkQmnQoXJZJFXwAIrd3kHn3wjI=; b=AMBtHiRfgP20V3Zd1yamqRyFH
	nErRr0TKonlOWYWNPlILDqHoqNs71Ww74DJEqTYEn1ke3F2RUDdbmcTCO4fF3b/gYVbFWWpNfXa86
	rGjeTLx8ZoVLgy+xaDE3GlWfC42hEgSSR+xsX2RkgCuOwHmtCpXTTxy8o9e5w2bcnVZCVZUDbQjud
	TYuoqzNkX1rJ7aIvVY83B73B1QVvy1voBx1ZHAuOj8SKZ/0zSE2DkHR0KFopCK3xwxjCa5nHoUQZ1
	SLdXgMpIm3+P21hOP1X2hPiLwKtKA7uvhYCx+pCjz1hXEEBWHiHrl7xilZJBSpfFmJ7D7Z2bQT1Tu
	m+0YeMdNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rmT-0008O1-Fj; Thu, 05 Sep 2019 13:26:33 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rm0-00086t-OB
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 13:26:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567689950;
 bh=8y/7Rn2Q/sCZoUWIjkr8JSlJhz1QlFmMJmiEmNtcNBA=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=AIX+GgyXFKEN47Ebrgb0vMJm9aSIdt4XxD618BUFZnFs1GYhCQdcMJemNUQhtQx/l
 6CWtzU9FobmpsZJrW2fGEcTyqMLU1bc+VEaHxCsSZs2xnvJqT09YkRgUyrWEFPJCXw
 0lPgnrInBjREcSY0aWr5gFJT6MaBf6P+2lvt3hHQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.51] ([84.118.159.3]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MF5FT-1hvBjC2uct-00GJ6A; Thu, 05
 Sep 2019 15:25:49 +0200
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
To: Christoffer Dall <christoffer.dall@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
 <86mufjrup7.wl-maz@kernel.org>
 <CAFEAcA9qkqkOTqSVrhTpt-NkZSNXomSBNiWo_D6Kr=QKYRRf=w@mail.gmail.com>
 <20190905092223.GC4320@e113682-lin.lund.arm.com>
From: Heinrich Schuchardt <xypron.glpk@gmx.de>
Message-ID: <27e7edd6-1c4f-c970-3395-ecb4f176f858@gmx.de>
Date: Thu, 5 Sep 2019 15:25:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905092223.GC4320@e113682-lin.lund.arm.com>
Content-Language: en-US
X-Provags-ID: V03:K1:zdxGmKFENsBA+qE6S4APrpcJ37s9l/AODdwSdsCBQ9kboQpLqPT
 BM52n5AtD/uxnPFURdkUkgsOXcE5kpRanuMFQp54daLQ4DVpq9WlcXGeuC4u1/Xpy2DFbj3
 /E/P3imzBPtMgBPFkxYtFtBDRvxgHwV07c/7O/RMiiyWqWWKcX2AZJDJVHREUcidGzPNuXi
 BhhwwgoO4i7QDMncjWa8g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6kHwODvgLlQ=:JlCFpXwOrc10MEosM8vhnE
 kH1aHggSn/LP39B71F2FFfuXZgHqEQvC4RT+BRn1By7IrDIoWpRWnp1vMDlK9ZPM9YNJpj/ws
 fyu6CWAaoCf74OydqU2OFYojJzGmeBjipLaKzFb7cMS+WjsC/W0dHUZ/IkUSjJnfqfudZSv0O
 dToyNGjbwW4G04Y1Ew1ht82Mc4eNI5alYguUhWWrZJ1PEevbdnEqHglAjrNHE3Vg4fFfffFux
 nzZJ5/bA3hAMov6Rslb1xmRm7/iz/7tfI6MuW54JW5zG0+GpnfGclglAKds7VJG5O83oibC8y
 g5tcVW1cJjBuo7p/okdJ3GFGXJtxQd1RYzuLb3h6a1dbyWK0CfLuz9avDIXHQGz7mekeGwr1u
 buMQm8wNUBvZrJ3WL7azroCbKYCXZr+PTH+OvbBT2EjnhrTXUvuLK/z2e7cM9TyLp19W8HuII
 l1w95mgX2lOkibMKPmXjrILuBDqzHfJaLdyUo3Ye3IWjfh0DT/wO49MwtrVzbVRoHDL1HFm3Q
 ryvqlSybAzMnEfl1RBWO3gwbizkEiCy5hJHl2laElR0yecTj5y+4Dhxsq8juo1PPEYTjKWBgw
 p+VotYPyMlyAAz9X5vLfoP9sVldQ+Ge3rrnV1qrxGq5j3I/E1lbN+QVJHX8Rn9jmhOwMteRiN
 LMWfOJv6WuNRNRHJe7WPRq1S4KBfMMFV7G5XwKOVCqjK/oN8Y9Te0jscQcnH662z7/wZ9RkOJ
 HBQ1RgMhMxXPchorK/J4ziumywIhQgEfW9KHS2dl+JadGknfWGqLe9Zw1TfvMtHWhZEFwURrc
 S38oIZGt+nIZDNtk3TInb9JdH8BEj47J5q0a8K5e0sXQryfwje0X04tI/SFzh6YVepdXfwj7F
 ozGP4vHxEi4+wjVpPSzrMsnmckM2IJ08qGuGAiSCJxZXibVNbuwqDNYP3WkDka/+bwCbp8+sx
 IssWWBPCfejQFhIfAPH0+GiyCz/VB2pRPfG18kt8kRMHpahe2513K+2ltvMoHXAkCr9HFzOmF
 PNEJpJPt+IiSVsXRSFzG24NfcijR5w0MDuWUbke5eJG7+dy0aRvrKUcmBooxcYFK7XBhJtquF
 9je0hNAZv6PS1xClM01WALp1nBV2PO5MkEaYasNC5YQ4/V4luLC+DGo5Sr3FLB5EEjTDeGXVU
 OYF+PyBm769KvTsyyM0Qgk7Grre9IFuU+RivmknUYxZZMDXpFUnPcr4a2hNrUOJprJ/XiNbNU
 AeJcjNssAc0L4x6X+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_062605_281169_B1F26D2E 
X-CRM114-Status: GOOD (  29.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xypron.glpk[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>,
 Marc Zyngier <maz@kernel.org>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Hajnoczi <stefanha@redhat.com>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/5/19 11:22 AM, Christoffer Dall wrote:
> On Thu, Sep 05, 2019 at 09:56:44AM +0100, Peter Maydell wrote:
>> On Thu, 5 Sep 2019 at 09:52, Marc Zyngier <maz@kernel.org> wrote:
>>>
>>> On Thu, 05 Sep 2019 09:16:54 +0100,
>>> Peter Maydell <peter.maydell@linaro.org> wrote:
>>>> This is true, but the problem is that barfing out to userspace
>>>> makes it harder to debug the guest because it means that
>>>> the VM is immediately destroyed, whereas AIUI if we
>>>> inject some kind of exception then (assuming you're set up
>>>> to do kernel-debug via gdbstub) you can actually examine
>>>> the offending guest code with a debugger because at least
>>>> your VM is still around to inspect...
>>>
>>> To Christoffer's point, I find the benefit a bit dubious. Yes, you get
>>> an exception, but the instruction that caused it may be completely
>>> legal (store with post-increment, for example), leading to an even
>>> more puzzled developer (that exception should never have been
>>> delivered the first place).
>>
>> Right, but the combination of "host kernel prints a message
>> about an unsupported load/store insn" and "within-guest debug
>> dump/stack trace/etc" is much more useful than just having
>> "host kernel prints message" and "QEMU exits"; and it requires
>> about 3 lines of code change...
>>
>>> I'm far more in favour of dumping the state of the access in the run
>>> structure (much like we do for a MMIO access) and let userspace do
>>> something about it (such as dumping information on the console or
>>> breaking). It could even inject an exception *if* the user has asked
>>> for it.
>>
>> ...whereas this requires agreement on a kernel-userspace API,
>> larger changes in the kernel, somebody to implement the userspace
>> side of things, and the user to update both the kernel and QEMU.
>> It's hard for me to see that the benefit here over the 3-line
>> approach really outweighs the extra effort needed. In practice
>> saying "we should do this" is saying "we're going to do nothing",
>> based on the historical record.
>>
>
> How about something like the following (completely untested, liable for
> ABI discussions etc. etc., but for illustration purposes).
>
> I think it raises the question (and likely many other) of whether we can
> break the existing 'ABI' and change behavior for missing ISV
> retrospectively for legacy user space when the issue has occurred?
>
> Someone might have written code that reacts to the -ENOSYS, so I've
> taken the conservative approach for this for the time being.
>
>
> diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
> index 8a37c8e89777..19a92c49039c 100644
> --- a/arch/arm/include/asm/kvm_host.h
> +++ b/arch/arm/include/asm/kvm_host.h
> @@ -76,6 +76,14 @@ struct kvm_arch {
>
>   	/* Mandated version of PSCI */
>   	u32 psci_version;
> +
> +	/*
> +	 * If we encounter a data abort without valid instruction syndrome
> +	 * information, report this to user space.  User space can (and
> +	 * should) opt in to this feature if KVM_CAP_ARM_NISV_TO_USER is
> +	 * supported.
> +	 */
> +	bool return_nisv_io_abort_to_user;
>   };
>
>   #define KVM_NR_MEM_OBJS     40
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index f656169db8c3..019bc560edc1 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -83,6 +83,14 @@ struct kvm_arch {
>
>   	/* Mandated version of PSCI */
>   	u32 psci_version;
> +
> +	/*
> +	 * If we encounter a data abort without valid instruction syndrome
> +	 * information, report this to user space.  User space can (and
> +	 * should) opt in to this feature if KVM_CAP_ARM_NISV_TO_USER is
> +	 * supported.
> +	 */
> +	bool return_nisv_io_abort_to_user;

How about 32bit ARM?

>   };
>
>   #define KVM_NR_MEM_OBJS     40
> diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
> index 5e3f12d5359e..a4dd004d0db9 100644
> --- a/include/uapi/linux/kvm.h
> +++ b/include/uapi/linux/kvm.h
> @@ -235,6 +235,7 @@ struct kvm_hyperv_exit {
>   #define KVM_EXIT_S390_STSI        25
>   #define KVM_EXIT_IOAPIC_EOI       26
>   #define KVM_EXIT_HYPERV           27
> +#define KVM_EXIT_ARM_NISV         28
>
>   /* For KVM_EXIT_INTERNAL_ERROR */
>   /* Emulate instruction failed. */
> @@ -996,6 +997,7 @@ struct kvm_ppc_resize_hpt {
>   #define KVM_CAP_ARM_PTRAUTH_ADDRESS 171
>   #define KVM_CAP_ARM_PTRAUTH_GENERIC 172
>   #define KVM_CAP_PMU_EVENT_FILTER 173
> +#define KVM_CAP_ARM_NISV_TO_USER 174
>
>   #ifdef KVM_CAP_IRQ_ROUTING
>
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 35a069815baf..2ce94bd9d4a9 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -98,6 +98,26 @@ int kvm_arch_check_processor_compat(void)
>   	return 0;
>   }
>
> +int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
> +			    struct kvm_enable_cap *cap)

This overrides the weak implementation in virt/kvm/kvm_main.c. OK.

> +{
> +	int r;
> +
> +	if (cap->flags)
> +		return -EINVAL;
> +
> +	switch (cap->cap) {
> +	case KVM_CAP_ARM_NISV_TO_USER:
> +		r = 0;
> +		kvm->arch.return_nisv_io_abort_to_user = true;
> +		break;
> +	default:
> +		r = -EINVAL;
> +		break;
> +	}
> +
> +	return r;
> +}
>
>   /**
>    * kvm_arch_init_vm - initializes a VM data structure
> @@ -196,6 +216,7 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
>   	case KVM_CAP_MP_STATE:
>   	case KVM_CAP_IMMEDIATE_EXIT:
>   	case KVM_CAP_VCPU_EVENTS:
> +	case KVM_CAP_ARM_NISV_TO_USER:
>   		r = 1;
>   		break;
>   	case KVM_CAP_ARM_SET_DEVICE_ADDR:
> @@ -673,6 +694,8 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
>   		ret = kvm_handle_mmio_return(vcpu, vcpu->run);
>   		if (ret)
>   			return ret;
> +	} else if (run->exit_reason == KVM_EXIT_ARM_NISV) {
> +		kvm_inject_undefined(vcpu);

So QEMU can try to enable the feature via IOCTL. And here you would
raise the 'undefined instruction' exception which QEMU will have to
handle in the loop calling KVM either by trying to make sense of the
instruction or by passing it on to the guest.

Conceptually this looks good to me and meets the requirements of my
application.

Thanks a lot for your suggestion.

Regards

Heinrich

>   	}
>
>   	if (run->immediate_exit)
> diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
> index 6af5c91337f2..62e6ef47a6de 100644
> --- a/virt/kvm/arm/mmio.c
> +++ b/virt/kvm/arm/mmio.c
> @@ -167,8 +167,15 @@ int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
>   		if (ret)
>   			return ret;
>   	} else {
> -		kvm_err("load/store instruction decoding not implemented\n");
> -		return -ENOSYS;
> +		if (vcpu->kvm->arch.return_nisv_io_abort_to_user) {
> +			run->exit_reason = KVM_EXIT_ARM_NISV;
> +			run->mmio.phys_addr = fault_ipa;
> +			vcpu->stat.mmio_exit_user++;
> +			return 0;
> +		} else {
> +			kvm_info("encountered data abort without syndrome info\n");
> +			return -ENOSYS;
> +		}
>   	}
>
>   	rt = vcpu->arch.mmio_decode.rt;
>
>
> Thanks,
>
>      Christoffer
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
