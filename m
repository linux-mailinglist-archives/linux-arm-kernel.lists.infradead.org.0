Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B3512505D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 19:11:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZrJ5ODhjHeyDbFyWyZ3GPL+WDhMZaGbOiIetwdavNLc=; b=ZFk3wroVWbevpDa09QhIF5Rdf
	auJ+iZHl5GiW4ImyPPgiU3XEpMAIyBuSGWI9bHrUjG1eKAMiu75vn77/+3ib9I8eiVS6iP0vo45CC
	L7rbpsONUZJFnBNufgrw0PP5VJUAokcyW7cckNuavVjNlPLlPjTKEkWANsrlYTrq4AMsEYgy0kWLN
	QKZJQPR/NoJxkQWRl5ySDAJ4eRQoPdxi7JYgP8oegj3u0HvutCmxu9WbfIO77l+ZA6AiO7H0Y3StQ
	gXvs4FRA+yasvX9DYjWNMxDAu702p7IoN3LusGXN7sYRtUad6Ma96Zi0NnGPmnti3eWz6qF1TCpla
	P/kyl8jsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihdn4-0001c9-Iz; Wed, 18 Dec 2019 18:11:18 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihdmu-0001bW-JE
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 18:11:10 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ihdmZ-0007pw-8W; Wed, 18 Dec 2019 19:10:47 +0100
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v4 00/19] KVM: Dynamically size memslot arrays
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 18 Dec 2019 18:10:47 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191217204041.10815-1-sean.j.christopherson@intel.com>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
Message-ID: <3a6b03cc1300bc3cffd3904e22c09478@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: sean.j.christopherson@intel.com, jhogan@kernel.org,
 paulus@ozlabs.org, borntraeger@de.ibm.com, frankja@linux.ibm.com,
 pbonzini@redhat.com, david@redhat.com, cohuck@redhat.com, vkuznets@redhat.com,
 wanpengli@tencent.com, jmattson@google.com, joro@8bytes.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, christoffer.dall@arm.com, f4bug@amsat.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_101108_780341_0F644578 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, James Hogan <jhogan@kernel.org>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-17 20:40, Sean Christopherson wrote:
> The end goal of this series is to dynamically size the memslot array 
> so
> that KVM allocates memory based on the number of memslots in use, as
> opposed to unconditionally allocating memory for the maximum number 
> of
> memslots.  On x86, each memslot consumes 88 bytes, and so with 2 
> address
> spaces of 512 memslots, each VM consumes ~90k bytes for the memslots.
> E.g. given a VM that uses a total of 30 memslots, dynamic sizing 
> reduces
> the memory footprint from 90k to ~2.6k bytes.
>
> The changes required to support dynamic sizing are relatively small,
> e.g. are essentially contained in patches 17/19 and 18/19.
>
> Patches 2-16 clean up the memslot code, which has gotten quite 
> crusty,
> especially __kvm_set_memory_region().  The clean up is likely not 
> strictly
> necessary to switch to dynamic sizing, but I didn't have a remotely
> reasonable level of confidence in the correctness of the dynamic 
> sizing
> without first doing the clean up.
>
> The only functional change in v4 is the addition of an x86-specific 
> bug
> fix in x86's handling of KVM_MR_MOVE.  The bug fix is not directly 
> related
> to dynamically allocating memslots, but it has subtle and hidden 
> conflicts
> with the cleanup patches, and the fix is higher priority than 
> anything
> else in the series, i.e. should be merged first.
>
> On non-x86 architectures, v3 and v4 should be functionally 
> equivalent,
> the only non-x86 change in v4 is the dropping of a "const" in
> kvm_arch_commit_memory_region().

Gave it another go on top of 5.5-rc2 on an arm64 box, and nothing
exploded. So thumbs up from me.

Thanks,

        M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
