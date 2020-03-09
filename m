Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCF117E69F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 19:17:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTV16AOBkTeHBumrflhA4Q6M3UxWs2L+K9jk9KdJmLE=; b=oWuB66Zedo/fqr
	pRItJLwJ2/IQlYG5zDtHwJVDwzq2qGm6fOnfmGhvH2RlXJ4UIRQppbY4NVfjwyD83Wqb+0/ZSFPld
	T4XDeEMCRVSIEfKfkyaZxYHcbpeX57Qyn0a56Sv0Z6kmrK930x3Op1A8QO812edfuuAAOAQ/UKMsC
	cT9gdVovo20nHpDPWdha2o0IN9wqxd0mzZG40QPC7UWwIdUkRJ47AiBBTU47FgOiGMCmU5gwsruc1
	CNgCinYbFRSEbKYAgNIFp2X0V6qwyNkVnDTOJzMpbXSlTR4f7mBrUuGUHP/d79LwmbfcNh1D8Hfj1
	M76obSgQwySeUT7A+xsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBMy0-0001TH-7k; Mon, 09 Mar 2020 18:17:28 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMxs-0001SM-Fh
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 18:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583777838;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AcKeyBIFIAYs+7QT/qIbpPBFwomeSgcpZFyE84PAy9U=;
 b=Ek0WW09CCUDtl7Mfo18FLQ6Mg5Dprt6Itl60PoOIjso6A+hldyJPlW8TGjhYeEuSWtd4lR
 0zkkuor94m7/lGAUGX1uNchZ6R9tIl9mF5NCoxW0GomFQ6U1OnQ0T+xMpArNuab2w/SFdt
 WsCBshS852DspRlu7d2G+zXWNxsieJQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-v-Lmv5crPmyT1kNrDWhytg-1; Mon, 09 Mar 2020 14:17:14 -0400
X-MC-Unique: v-Lmv5crPmyT1kNrDWhytg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C2AA1107ACC9;
 Mon,  9 Mar 2020 18:17:12 +0000 (UTC)
Received: from [10.36.116.59] (ovpn-116-59.ams2.redhat.com [10.36.116.59])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B58D460C05;
 Mon,  9 Mar 2020 18:17:10 +0000 (UTC)
Subject: Re: [PATCH v2 2/2] KVM: arm64: Document PMU filtering API
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20200309124837.19908-1-maz@kernel.org>
 <20200309124837.19908-3-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <7943c896-013b-d9cb-ba89-2040b46437fe@redhat.com>
Date: Mon, 9 Mar 2020 19:17:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200309124837.19908-3-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_111720_601838_7810EB24 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 3/9/20 1:48 PM, Marc Zyngier wrote:
> Add a small blurb describing how the event filtering API gets used.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  Documentation/virt/kvm/devices/vcpu.rst | 40 +++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/Documentation/virt/kvm/devices/vcpu.rst b/Documentation/virt/kvm/devices/vcpu.rst
> index 9963e680770a..7262c0469856 100644
> --- a/Documentation/virt/kvm/devices/vcpu.rst
> +++ b/Documentation/virt/kvm/devices/vcpu.rst
> @@ -55,6 +55,46 @@ Request the initialization of the PMUv3.  If using the PMUv3 with an in-kernel
>  virtual GIC implementation, this must be done after initializing the in-kernel
>  irqchip.
>  
> +1.3 ATTRIBUTE: KVM_ARM_VCPU_PMU_V3_FILTER
> +---------------------------------------
> +
> +:Parameters: in kvm_device_attr.addr the address for a PMU event filter is a
> +             pointer to a struct kvm_pmu_event_filter
> +
> +:Returns:
> +
> +	 =======  ======================================================
> +	 -ENODEV: PMUv3 not supported or GIC not initialized
> +	 -ENXIO:  PMUv3 not properly configured or in-kernel irqchip not
> +	 	  configured as required prior to calling this attribute
> +	 -EBUSY:  PMUv3 already initialized
maybe document -EINVAL?
> +	 =======  ======================================================
> +
> +Request the installation of a PMU event filter describe as follows:
s/describe/described
> +
> +struct kvm_pmu_event_filter {
> +	__u16	base_event;
> +	__u16	nevents;
> +
> +#define KVM_PMU_EVENT_ALLOW	0
> +#define KVM_PMU_EVENT_DENY	1
> +
> +	__u8	action;
> +	__u8	pad[3];
> +};
> +
> +A filter range is defined as the range [@base_event, @base_event + @nevents[,
> +together with an @action (KVM_PMU_EVENT_ALLOW or KVM_PMU_EVENT_DENY). The
> +first registered range defines the global policy (global ALLOW if the first
> +@action is DENY, global DENY if the first @action is ALLOW). Multiple ranges
> +can be programmed, and must fit within the 16bit space defined by the ARMv8.1
> +PMU architecture.
what about before 8.1 where the range was 10 bits? Should it be tested
in the code?

nitpicking: It is not totally obvious what does happen if the user space
sets a deny filter on a range and then an allow filter on the same
range. it is supported but may be worth telling so? Also explain the the
default filtering remains "allow" by default?
> +
> +Restrictions: Event 0 (SW_INCR) is never filtered, as it doesn't count a
> +hardware event. Filtering event 0x1E (CHAIN) has no effect either, as it
> +isn't strictly speaking an event. Filtering the cycle counter is possible
> +using event 0x11 (CPU_CYCLES).
Thanks

Eric
> +
>  
>  2. GROUP: KVM_ARM_VCPU_TIMER_CTRL
>  =================================
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
