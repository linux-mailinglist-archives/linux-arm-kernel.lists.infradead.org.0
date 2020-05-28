Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BCA1E5828
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4o/yHV+cqyW2rzO/0FKhtknm2w7+pHTDBWSjJbRtucY=; b=ne+CjK8bkhY2Pyx9FNnCkwif8
	MeB0i2XoVGNljV/k+Bd/PBPZy43yz5ndpmgyJ+hpy+DyLp3zNbEheIV6dqxNPI+SRlpZ54tyV6TkW
	BNAlA8oS+aKz57SfLqX+qUF1WtrdpgeyO12amKNwbD9jU0uSlG7o5sb1R0oHpS/BKeCQiZldDmn16
	iCg60eSAte9iIdJUcCOUb6SsKYGyIQJwRHqdgzrBXvH+qEIDhBLMCJSUhHVzfYQQcJXDDn3+09O6W
	2kQ9VyfsuF7vdGUEVrfI1Y8pDXrGGv0Fi/KxGDsyPjtPKCR78W0S5ShfhLAQYLRjwzghE4nrSnI3O
	/cUB4q6Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCZu-0001IV-4C; Thu, 28 May 2020 07:03:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCZi-0001Hr-56
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:03:35 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70CA7207E8;
 Thu, 28 May 2020 07:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590649413;
 bh=ZtNo65ZO/BvERi9MMlIXBIaMhPiClNvDO1mjkdv5Dys=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=1AOG1xkXdnsZ9IG28U7sF9NTcFaiTh98GAGqe+2S59ULxSEHjhqtKOYqqEs17leD5
 JVGHliieyAl+2NWtSQiAK8ZWhX0nfdsm0tpLKP/yJVQcDJshmm9b7hdGzewJ/sOLPL
 SuPpwsw8yBraLdUMaiYR2pWz2hUNzEFnrljEya7M=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jeCZf-00FuSQ-8Q; Thu, 28 May 2020 08:03:31 +0100
MIME-Version: 1.0
Date: Thu, 28 May 2020 08:03:31 +0100
From: Marc Zyngier <maz@kernel.org>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH RFCv2 9/9] arm64: Support async page fault
In-Reply-To: <a6addc25-29af-3690-8392-efa5e8381e98@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-10-gshan@redhat.com>
 <81adf013-3de7-23e6-7648-8aec821b033c@redhat.com>
 <a6addc25-29af-3690-8392-efa5e8381e98@redhat.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <8b09c298fab15e2629c65e8ee98a8a29@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: gshan@redhat.com, pbonzini@redhat.com,
 kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org,
 shan.gavin@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_000334_235986_09E63C0F 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org, shan.gavin@gmail.com,
 Paolo Bonzini <pbonzini@redhat.com>, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-28 07:14, Gavin Shan wrote:
> Hi Paolo,
> 
> On 5/27/20 4:48 PM, Paolo Bonzini wrote:
>> I definitely appreciate the work, but this is repeating most of the
>> mistakes done in the x86 implementation.  In particular:
>> 
>> - the page ready signal can be done as an interrupt, rather than an
>> exception.  This is because "page ready" can be handled 
>> asynchronously,
>> in contrast to "page not present" which must be done on the same
>> instruction that triggers it.  You can refer to the recent series from
>> Vitaly Kuznetsov that switched "page ready" to an interrupt.
>> 
> 
> Yeah, page ready can be handled asynchronously. I think it would be
> nice for x86/arm64 to share same design. x86 has 256 vectors and it
> seems 0xec is picked for the purpose. However, arm64 doesn't have so
> many (interrupt/exception) vectors and PPI might be appropriate for
> the purpose if I'm correct, because it has same INTD for all CPUs.
> From this point, it's similar to x86's vector. There are 16 PPIs, which
> are in range of 16 to 31, and we might reserve one for this. According
> to GICv3/v4 spec, 22 - 30 have been assigned.

The assignment of the PPIs is completely implementation defined,
and is not part of the architecture (and certainly not in the
GICv3/v4 spec). SBSA makes some statements as to the way they *could*
be assigned, but that's in no way enforced. This allocation is entirely
controlled by userspace, which would need to configure tell KVM
which PPI to use on a per-VM basis.

You would then need to describe the PPI assignment through firmware
(both DT and ACPI) so that the guest kernel can know what PPI the
hypervisor would be signalling on.

It is also not very future proof should we move to a different
interrupt architecture.

> 
>> - the page not present is reusing the memory abort exception, and
>> there's really no reason to do so.  I think it would be best if ARM
>> could reserve one ESR exception code for the hypervisor.  Mark, any
>> ideas how to proceed here?
>> 
> 
> Well, a subclass of ESR exception code, whose DFSC (Data Fault Status
> Code) is 0x34, was taken for the purpose in RFCv1. The code is IMPDEF
> one and Mark suggested not to do so. I agree the page not present needs 
> a
> separately subclass of exception. With that, there will be less 
> conflicts
> and complexity. However, the question is which subclass or DFSC code I 
> should
> used for the purpose.

The current state of the architecture doesn't seem to leave much leeway 
in
terms of SW creativity here. You just can't allocate your own ISS 
encoding
without risking a clash with future revisions of the architecture.
It isn't even clear whether the value you put would stick in ESR_EL1
if it isn't a valid value for this CPU (see the definition of 'Reserved'
in the ARM ARM).

Allocating such a syndrome would require from ARM:

- the guarantee that no existing implementation, irrespective of the
   implementer, can cope with the ISS encoding of your choice,

- the written promise in the architecture that some EC/ISS values
   are reserved for SW, and that promise to apply retrospectively.

This is somewhat unlikely to happen.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
