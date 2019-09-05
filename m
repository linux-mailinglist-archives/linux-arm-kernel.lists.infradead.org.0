Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3A8A9D14
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:34:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+sVrpShi8Csq+LjMOeNxK9gAoBtYuIzpytQ12Q8rBfk=; b=fxRcwu4sb+FYgFW39uC9UEUJM
	2zopN5COHKMqllDFeD3gz59DarsYaZr2zrB7lGJBXrbI8JTzbNXjMOTGKdMipG90ihuahzW6zlESl
	PCC/r9UxxrWDwB6TGf8azokU4bjZJDtY3GhEFN6g1aPb7hnAnI9zsDZXUdV1OR1aKXjhoalp2ExAo
	plNn1X6vH93Z/MeLCDdWe9XeutBCKFPkaMTTbcW6zgyfWuikWGNw3dlbtTS8ON1Ly6dwj3fQu4dyB
	B7YNtjsOrVdeCJ+MDb2M5LClG5YP9s4EC11cgDotIZ9WzWtq60pCaCk0oUQw2jr6xDqkXmKGPDlna
	q1dUBCKjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nDp-0008LD-2h; Thu, 05 Sep 2019 08:34:29 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nDb-0008Kk-0w
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:34:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567672447;
 bh=t7W1mOvSdT7FOnR+iJZMPkkVrv1ufI9+MEcjVA3FqQY=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=N1EpPbj8Pe+bjz/RlEAc/X/adBV7j6fMl86xUtS1bTj/bG5r6wdt8PuqVHL1Q6j+/
 v+1MOurOM1vHa1cFSU1U5MptCkBAheK8n6JO1AoHwLwmOajEbfFrR1ok6ijmjJBOxg
 5NcRwzov1lAKgj+UWUXosaNMrJNTE+FxhVUBLnIc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.51] ([84.118.159.3]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0M1iGk-1iPwPf0u7u-00toiu; Thu, 05
 Sep 2019 10:28:45 +0200
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
To: Marc Zyngier <maz@kernel.org>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
From: Heinrich Schuchardt <xypron.glpk@gmx.de>
Message-ID: <754fb77a-aace-e0aa-a5bb-a6c6bcff9890@gmx.de>
Date: Thu, 5 Sep 2019 10:28:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <86r24vrwyh.wl-maz@kernel.org>
Content-Language: en-US
X-Provags-ID: V03:K1:eaUsm+16cI+R1zRcdIsQOLAO6sdEkj8i+rShDso7dOQJA3nRcY+
 VTOE55Nsdz4pR3H8aP0fFrW8lWq9Jbia0oD9USGdOLuY7ZlGNKikVKt+zXBjIAWn3SLx4hy
 fqoArj8gvqB8ws48EHaCKZweAnVS/X7+AiMTNMorZ8RK6WOuEjAxko686tWkag1OK2n7h0Y
 ZEfc9obZitTHgvedP3CZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cL1GsB7FjCw=:AsTE/y8c6haPu54gjI6cT8
 nJAEyC+fHYKDuXnwuDKkFqwdf4Ne8GYIS3qVYx0H1BDIRAN+tuM5G2G75Onl1yh3eIxYsoEI9
 nkTe/OKoDWR8SoAUx6cNPzTrzZgi08Wt7FwF/uatQk0eVFzYVVcMo+SUFcfmHtI8M8NhvUr1z
 QoLUh41FSN9/+6t4fn8Fvr04rK6G1GhBcVCULA6RweazWP7NeHW877OJFuI7vcQIVHv6KV7TU
 leS/6c2eHuTGMBZ1t+X7vDE4m9BwL9Y76dfYQRiSx9xeD+1dLUeIdr7HcrpnSB1FwD+pFH/zQ
 /kHxGgBVp3QrklH6Ai3dqoXKNu9r6TgVxGL4G+TPxrwo2WpYgskKXvrj1zaKtM990OFM/plwr
 5xPArYBkNvUrmSAeSrOLN+ksfkclwYuECsLLWwO3y0GDG041aBdunDHQZ0sp/5CM0KnCNeWq8
 jAKzjvDtGg+EbSWBbEz6m8WdX9S5TOqWDRUjhMq4LGuu5+411rhKh65yjC/b4hiYzQHU1IlG+
 tHNVP7vjIrUws0mg+ImRHBCrrq8gTYsE/rvvBLfGGMJYnNaYJf7ZLlAFArOAahT3Y3Yhc8OfM
 NebrsUs+S+K44RwaQwxAnRXDVdXFHKaomPnWp581uzW9GxRMxe2M78GKTNyZvGlneAvIPGs0r
 aXnZL7wSvAINuGiIEmW4YXH4xYvajOQktmaBIFFe92bsm9z8hurPLlWIVJLFJsn3873zyhOp+
 X9T0jeri7RbIk789DreBieXkvjD0yErPujp+7ePsiLao8hQ7QYZI5dlzWSJ2eVYFDe1mmdOFq
 uxQJx5w0g60AXmTOy942IfN0tNffk+vTeZ4gzu+A9/3hxV60DD0Qomv/xni9K8DLigv8SgJCf
 bTgY1xxVZaR576RG4Kyl553A533GIGohD5Gbs2l67xUTJS1V0cwVmYSVlyT1gxqHh3bgP2FhH
 csKPL+sHrcz5HgiSS9Jb6IbZCeqK7AXB+4y3g28A/k1ExR/P+mJvOidWHDy5/oSoeKofPVIZs
 ZJTppqWdT6hVWAjmoCjUzXjPZN/nOWdI5f27uMRPiUFdVwoydC+D6XsbXh+FVKzUUrhyiDYg1
 KepIOPxTVXKGKsWhSillqv7FIMMCk7708+aYxwg3JG/23xZSbHwjnQRbmSInl5lU14ZxEWNKh
 8qGDLYWtpU5hodUzSOlIgqwiy/XLMy8ZAgWYSrKFL3NzAZmSyULbcxTSqicQS50yOidony+jC
 65bQIfkyqiWfB6LLCcdcXkpOstIDlTzDUSNULKBlLudCOWJyF8ZeIIJFCF//OH5bqIzFxRQtr
 msrjgMZAxvPGdor9iCmwvvqpHAbQvogd+NA6AqokA8VhlriFLsrzgyaVrun/9t6CcUvzca6Fk
 y7gTPE3/gP4Fps/X++KhCdEt+H/2KwpXzgbdAn8Pvub5TyrBvLfeXmzzSoLZz8+HuArgNt+bf
 P5JHP1WVExzJQAyKsqMulgwWmWvEv0TJc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_013415_358990_B774F602 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 =?UTF-8?Q?Daniel_P_=2e_Berrang=c3=a9?= <berrange@redhat.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/5/19 10:03 AM, Marc Zyngier wrote:
> [Please use my kernel.org address. My arm.com address will disappear shortly]
>
> On Wed, 04 Sep 2019 19:07:36 +0100,
> Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
>>
>> If an application tries to access memory that is not mapped, an error
>> ENOSYS, "load/store instruction decoding not implemented" may occur.
>> QEMU will hang with a register dump.
>>
>> Instead create a data abort that can be handled gracefully by the
>> application running in the virtual environment.
>>
>> Now the virtual machine can react to the event in the most appropriate
>> way - by recovering, by writing an informative log, or by rebooting.
>>
>> Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
>> ---
>>   virt/kvm/arm/mmio.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
>> index a8a6a0c883f1..0cbed7d6a0f4 100644
>> --- a/virt/kvm/arm/mmio.c
>> +++ b/virt/kvm/arm/mmio.c
>> @@ -161,8 +161,8 @@ int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
>>   		if (ret)
>>   			return ret;
>>   	} else {
>> -		kvm_err("load/store instruction decoding not implemented\n");
>> -		return -ENOSYS;
>> +		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
>> +		return 1;
>
> How can you tell that the access would fault? You have no idea at that
> stage (the kernel doesn't know about the MMIO ranges that userspace
> handles). All you know is that you're faced with a memory access that
> you cannot emulate in the kernel. Injecting a data abort at that stage
> is not something that the architecture allows.
>
> If you want to address this, consider forwarding the access to
> userspace. You'll only need an instruction decoder (supporting T1, T2,
> A32 and A64) and a S1 page table walker (one per page table format,
> all three of them) to emulate the access (having taken care of
> stopping all the other vcpus to make sure there is no concurrent
> modification of the page tables). You'll then be able to return the
> result of the access back to the kernel.

If I understand you right, the problem has to be fixed in QEMU and not
in KVM.

Is there an example of such a forwarding already available in QEMU?

>
> Of course, the best thing would be to actually fix the guest so that
> it doesn't use non-emulatable MMIO accesses. In general, that the sign
> of a bug in low-level accessors.

My problem was to find out where in my guest (U-Boot running UEFI SCT)
the problem occurred. With this patch U-Boot gave me the relative
address in Shell.efi and I was able to locate what was wrong in U-Boot's
UEFI implementation.

Thanks for reviewing.

Heinrich

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
