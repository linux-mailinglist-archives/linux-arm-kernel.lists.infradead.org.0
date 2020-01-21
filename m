Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7344144804
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 00:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=amzAoa5RNPAK+KHnWdR1I4dX3Gl/d4kENEUtLwkNgRE=; b=N3WjF5RetZOIaX
	I+dFJfZTGvGSsHzzXFhXkD9FhpcfEN/CHrEQcXX3+YmDFLzAP+PC2GHWAmnTyhGDlnFh3X0WK2DPV
	bM1mFUageiZ4gjkIpiNhUc5/KsyehFTBsqjEoV0G4WafHzH1isHNKfecrQtp02+owQqtfWJ2s9ekk
	rQhKzu9PPl37VEB1qoeeAeBy5stCxb+KpmiJg4e9CD9+JeCspnbWi3oRj2xlZb8sEB6gFHE8bF/Gz
	xY/fIkwboWgA+vjBk3eJMVdBRjlfS22iLO5o3k6XtT1jRh5egs5SNL9pa6C9lSoiMMDBitGS3/WQY
	9GY3s/Sdu/677+pgZ8Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu2cQ-0002sN-5x; Tue, 21 Jan 2020 23:07:34 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu2cH-0002rc-Td
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 23:07:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579648043;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f2cyYrzZjaObk0GaFZuKu7ZNaVVTKctI9uxWbPIKw20=;
 b=I2OX0D/e6duX3+Fv6gK3jA1v+DX1JnE+B1AnoZgT6Cm9NSX3sOXFsKndcBln2Ll3N8K2rX
 XBAIjbJ1af+wMXqwoH5/LCFHln4zV3UjjWirOyOi9kTo0GlXOTHNhjszgH9NsQr4tXIwNi
 bbPWvEItoXW7F4xRLd20E0yRazvl94I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-43-q6JAYjFQM_eyb96_RtIPPg-1; Tue, 21 Jan 2020 18:07:19 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7AAE2107ACC9;
 Tue, 21 Jan 2020 23:07:18 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-63.bne.redhat.com [10.64.54.63])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B1E9D5DA2C;
 Tue, 21 Jan 2020 23:07:14 +0000 (UTC)
Subject: Re: [PATCH] KVM: arm/arm64: Fix young bit from mmu notifier
To: Marc Zyngier <maz@kernel.org>
References: <20200121055659.19560-1-gshan@redhat.com>
 <55ae5a0f91f2e675a4e71d83bef9d911@kernel.org>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <421c8827-4201-9e07-7d7e-377a8ee665c1@redhat.com>
Date: Wed, 22 Jan 2020 10:07:12 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <55ae5a0f91f2e675a4e71d83bef9d911@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: q6JAYjFQM_eyb96_RtIPPg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_150726_030863_941F2BC8 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: eric.auger@redhat.com, drjones@redhat.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/22/20 12:28 AM, Marc Zyngier wrote:
> On 2020-01-21 05:56, Gavin Shan wrote:
>> kvm_test_age_hva() is called upon mmu_notifier_test_young(), but wrong
>> address range has been passed to handle_hva_to_gpa(). With the wrong
>> address range, no young bits will be checked in handle_hva_to_gpa().
>> It means zero is always returned from mmu_notifier_test_young().
>>
>> This fixes the issue by passing correct address range to the underly
>> function handle_hva_to_gpa(), so that the hardware young (access) bit
>> will be visited.
>>
>> Cc: stable@vger.kernel.org # v4.1+
>> Fixes: 35307b9a5f7e ("arm/arm64: KVM: Implement Stage-2 page aging")
>> Signed-off-by: Gavin Shan <gshan@redhat.com>
>> ---
>> =A0virt/kvm/arm/mmu.c | 3 ++-
>> =A01 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
>> index 0b32a904a1bb..a2777efb558e 100644
>> --- a/virt/kvm/arm/mmu.c
>> +++ b/virt/kvm/arm/mmu.c
>> @@ -2147,7 +2147,8 @@ int kvm_test_age_hva(struct kvm *kvm, unsigned lon=
g hva)
>> =A0=A0=A0=A0 if (!kvm->arch.pgd)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0 trace_kvm_test_age_hva(hva);
>> -=A0=A0=A0 return handle_hva_to_gpa(kvm, hva, hva, kvm_test_age_hva_hand=
ler, NULL);
>> +=A0=A0=A0 return handle_hva_to_gpa(kvm, hva, hva + PAGE_SIZE,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kvm_test_age_hva_handl=
er, NULL);
>> =A0}
>>
>> =A0void kvm_mmu_free_memory_caches(struct kvm_vcpu *vcpu)
> =

> I knew this start/end thing (instead of start/size) would bite us
> one of these days. Terribly embarrassing. On the other hand, who
> really wants to swap things out? ;-)
> =

> Out of curiosity, how did you find this one?
> =


Well, it's hard to tell who really wants to swap things out. Something I
was involved previously: user daemon is started to scan the accessed pages
periodically, in order to determine the least accessed pages. These least
access anonymous pages are migrated to low-cost storage (e.g. NVDIMM). This
helps on balance of performance and cost.

It's found when reading code. After that, I wrote some code (as below) to
double confirm:

    (1) locate qemu process and the corresponding vma because the VM is sta=
rted
        with "mem-path=3D/tmp/virtiofs/backup-file". "backup-file" is the k=
ey in
        the location.
    (2) iterate the virtual space of the vma by mmu_notifier_test_young(), =
none
        of return values is 1 (accessed). It seems it's not correct.

With the patch applied and rerun above code, mmu_notifier_test_young() retu=
rns
1 (accessed) on some pages.

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
