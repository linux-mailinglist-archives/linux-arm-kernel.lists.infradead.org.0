Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB01124BBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=atc5DbzXCpCqy/WS/H+sTp5htc0Ug2y4IoAOZYMGdqY=; b=qWx+G/bFQJaT8zUjduRbN/jDp
	60vVvSGxK06b2sWyyYHhROK0CX45wZD5QtO6aTOAoH4ylAsCltfOGts/4YU4qvwXu7KyjsB6U1FdS
	sRsRtA6bQgv4ZqeYE7LDXb9BoZoHVilpfHHn85oufD/t5tCny2t+KX0tTWim7xnI1dwsrz57AdKBS
	YvrskYN3tT/dQrDLHGH5QryF/urm3G5q5ZoY7Dvc7CmkBaXwJfcUEinerPnkL2pmVquelD55+LyIf
	z66+IdHSNe99XHEg0dohoqu9LQv7zWSNRY2tvbBWEkQl7NsGDo7C1kcUSNKiwYl+nuDO3MLvYosg8
	8u/qUEWKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbHW-00015A-GN; Wed, 18 Dec 2019 15:30:34 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbHK-00014c-RX
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:30:24 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ihbH2-0003tk-7u; Wed, 18 Dec 2019 16:30:04 +0100
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 7/7] KVM: arm/arm64: Elide CMOs when unmapping a range
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 18 Dec 2019 15:30:04 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <0c832b27-7041-a6c8-31c0-d71a25c6f5b8@arm.com>
References: <20191213182503.14460-1-maz@kernel.org>
 <20191213182503.14460-8-maz@kernel.org>
 <0c832b27-7041-a6c8-31c0-d71a25c6f5b8@arm.com>
Message-ID: <de462fe29fb40fb1644e6a071e6c0c69@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, jhogan@kernel.org, paulus@ozlabs.org,
 pbonzini@redhat.com, rkrcmar@redhat.com, sean.j.christopherson@intel.com,
 vkuznets@redhat.com, wanpengli@tencent.com, jmattson@google.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_073023_038316_93D2DCE3 
X-CRM114-Status: GOOD (  10.99  )
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org,
 =?UTF-8?Q?Ra?= =?UTF-8?Q?dim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paul Mackerras <paulus@ozlabs.org>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2019-12-18 15:07, James Morse wrote:
> Hi Marc,
>
> On 13/12/2019 18:25, Marc Zyngier wrote:
>> If userspace issues a munmap() on a set of pages, there is no
>> expectation that the pages are cleaned to the PoC.
>
> (Pedantry: Clean and invalidate. If the guest wrote through a device
> mapping, we ditch any clean+stale lines with this path, meaning 
> swapout
> saves the correct values)

Indeed.

>> So let's
>> not do more work than strictly necessary, and set the magic
>> flag that avoids CMOs in this case.
>
> I think this assumes the pages went from anonymous->free, so no-one
> cares about the contents.
>
> If the pages are backed by a file, won't dirty pages will still get
> written back before the page is free? (e.g. EFI flash 'file' mmap()ed 
> in)

I believe so. Is that a problem?

> What if this isn't the only mapping of the page? Can't it be swapped
> out from another VMA? (tenuous example, poor man's memory mirroring?)

Swap-out wouldn't trigger this code path, as it would use a different
MMU notifier event (MMU_NOTIFY_CLEAR vs MMU_NOTIFY_UNMAP), I believe.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
