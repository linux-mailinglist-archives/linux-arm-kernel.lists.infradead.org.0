Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CDB1804D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:31:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HDiQW7OanoeGeiF/HEBP6Q3m+UeygK3Gqwa4VcrXQQ=; b=LbUaMj99p+FdHd
	t/qu8GC8xmfsn+abrR/WQ4T9klWFgJMfrl80CHCOP79ToWKRt6DCEfQV54b8vlKjG0mDGlgeKuGPf
	GMqhc7XbZa2oOdvJTYm6olAXyth1tXtBMwEaxBnOeUOe1AR6CRXZ/VeJO397LTa4hMqpcyTaiHvaX
	1x00Q9BS9ST9L3r1tJgqCQnO/QIfKZto0Vl9BAzvc8+EWhILwZjbHZsXzw1lzP/hIGAAdL1qhNGcO
	MOOAm8vQTeduz3l7A2eLhnduE0ODfGNCtgSarAJXXGwT0pQEdqBuf+mchOBEmBPjRdNp57vIogCil
	TA+FMpDFKnc+LyTpcv7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiiS-0001Q5-UO; Tue, 10 Mar 2020 17:30:53 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiiG-0001O7-Jp
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:30:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583861439;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=r6RWW66Auc2Rk/GNuUgSAGvLduNQwWlqc2HkVeIS1zc=;
 b=VSFUNLqW/O9LJUofrtIlTkuYYbhqffy23fquzBQjQK9Yr1xQ6EyLq8rXHCvcqU/4bCaAB/
 Tug8NcmqVTtgXiZKd7WTcVpWkwPHeeafRVOoVlhiM/oR8dmeAp++vZdUsZUKW0hLn5H1v2
 kyJHUePkVR6u4h22Gs0waMGTvb0P6LU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-4H-srkrCPfWDrBsXlrJ0_w-1; Tue, 10 Mar 2020 13:30:35 -0400
X-MC-Unique: 4H-srkrCPfWDrBsXlrJ0_w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 45FEE107ACC4;
 Tue, 10 Mar 2020 17:30:33 +0000 (UTC)
Received: from [10.36.117.85] (ovpn-117-85.ams2.redhat.com [10.36.117.85])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 14EF110013A1;
 Tue, 10 Mar 2020 17:30:30 +0000 (UTC)
Subject: Re: [PATCH v2 2/2] KVM: arm64: Document PMU filtering API
To: Marc Zyngier <maz@kernel.org>
References: <20200309124837.19908-1-maz@kernel.org>
 <20200309124837.19908-3-maz@kernel.org>
 <7943c896-013b-d9cb-ba89-2040b46437fe@redhat.com>
 <07f4ef9b5ff6c6c5086c9723c64c035f@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <867c7926-df43-7ab0-d20a-211a59d7612d@redhat.com>
Date: Tue, 10 Mar 2020 18:30:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <07f4ef9b5ff6c6c5086c9723c64c035f@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_103040_746500_63AA85A7 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 3/10/20 12:54 PM, Marc Zyngier wrote:
> On 2020-03-09 18:17, Auger Eric wrote:
>> Hi Marc,
>>
>> On 3/9/20 1:48 PM, Marc Zyngier wrote:
>>> Add a small blurb describing how the event filtering API gets used.
>>>
>>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>>> ---
>>> =A0Documentation/virt/kvm/devices/vcpu.rst | 40 +++++++++++++++++++++++=
++
>>> =A01 file changed, 40 insertions(+)
>>>
>>> diff --git a/Documentation/virt/kvm/devices/vcpu.rst
>>> b/Documentation/virt/kvm/devices/vcpu.rst
>>> index 9963e680770a..7262c0469856 100644
>>> --- a/Documentation/virt/kvm/devices/vcpu.rst
>>> +++ b/Documentation/virt/kvm/devices/vcpu.rst
>>> @@ -55,6 +55,46 @@ Request the initialization of the PMUv3.=A0 If using
>>> the PMUv3 with an in-kernel
>>> =A0virtual GIC implementation, this must be done after initializing the
>>> in-kernel
>>> =A0irqchip.
>>>
>>> +1.3 ATTRIBUTE: KVM_ARM_VCPU_PMU_V3_FILTER
>>> +---------------------------------------
>>> +
>>> +:Parameters: in kvm_device_attr.addr the address for a PMU event
>>> filter is a
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pointer to a struct kvm_pmu_event=
_filter
>>> +
>>> +:Returns:
>>> +
>>> +=A0=A0=A0=A0 =3D=3D=3D=3D=3D=3D=3D=A0 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>> +=A0=A0=A0=A0 -ENODEV: PMUv3 not supported or GIC not initialized
>>> +=A0=A0=A0=A0 -ENXIO:=A0 PMUv3 not properly configured or in-kernel irq=
chip not
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 configured as required prior to calling=
 this attribute
>>> +=A0=A0=A0=A0 -EBUSY:=A0 PMUv3 already initialized
>> maybe document -EINVAL?
> =

> Yup, definitely.
> =

>>> +=A0=A0=A0=A0 =3D=3D=3D=3D=3D=3D=3D=A0 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>> +
>>> +Request the installation of a PMU event filter describe as follows:
>> s/describe/described
>>> +
>>> +struct kvm_pmu_event_filter {
>>> +=A0=A0=A0 __u16=A0=A0=A0 base_event;
>>> +=A0=A0=A0 __u16=A0=A0=A0 nevents;
>>> +
>>> +#define KVM_PMU_EVENT_ALLOW=A0=A0=A0 0
>>> +#define KVM_PMU_EVENT_DENY=A0=A0=A0 1
>>> +
>>> +=A0=A0=A0 __u8=A0=A0=A0 action;
>>> +=A0=A0=A0 __u8=A0=A0=A0 pad[3];
>>> +};
>>> +
>>> +A filter range is defined as the range [@base_event, @base_event +
>>> @nevents[,
>>> +together with an @action (KVM_PMU_EVENT_ALLOW or
>>> KVM_PMU_EVENT_DENY). The
>>> +first registered range defines the global policy (global ALLOW if
>>> the first
>>> +@action is DENY, global DENY if the first @action is ALLOW).
>>> Multiple ranges
>>> +can be programmed, and must fit within the 16bit space defined by
>>> the ARMv8.1
>>> +PMU architecture.
>> what about before 8.1 where the range was 10 bits? Should it be tested
>> in the code?
> =

> It's a good point. We could test that upon installing the filter and limit
> the bitmap allocation to the minimum.
> =

>> nitpicking: It is not totally obvious what does happen if the user space
>> sets a deny filter on a range and then an allow filter on the same
>> range. it is supported but may be worth telling so? Also explain the the
>> default filtering remains "allow" by default?
> =

> Overlapping filters are easy: the last one wins. And yes, no filter means
> just that: no filter.
Actually the point I wanted to put forward is
1) set allow filter on range [0-a] -> default setting is deny and allow
[0-a] only
2) deny deny filter on rang [0-a] -> there is no "real" active filtering
anymore but default behavior still is deny. ie. you do not destroy the
bitmap on the last filter removal but on the VM removal.

Thanks

Eric

> =

> Thanks,
> =

> =A0=A0=A0=A0=A0=A0=A0 M.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
