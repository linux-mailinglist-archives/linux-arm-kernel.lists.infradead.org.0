Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BECE5140
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 18:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lCS03LAh+tDkgsJ2eWFtuD/ch6x0VxbZdqu8Tdaaiak=; b=NLiBnNRm6ANuHpRCdGOpYgSNI
	N8XaAz6GpvJ1WjsA/BtpdoIEJ0fzyDPoFmev6N03UZ0if8XKLYGBvF+A/cl91Wdc6g5BV99z0f3Zb
	TlMN4aIX0q9EXClaA9ma5t6tIxASS6sWaRqGxii+kuheNjyDP4bDlNN7gOl44Y9ENJ01WDbb29WVg
	4WxXzJKwKAPy+KVZPDsQ7cVOQ01LICwj8Nzjm0gqeYzIO0+GA+kS9TnzFDUkuX/bJZrzb++bi+o8J
	PQ9qDaASv+gSSj+x0vrIeULL39OLmF/xqfpfi2XzXX1qTbokGuUPS29Aofo1Y0QmZ8PJ56MtiYeiQ
	44LIwiOaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO2UD-00025V-S4; Fri, 25 Oct 2019 16:30:49 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO2U4-0001ty-6B
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 16:30:41 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iO2Tk-0008W8-Nd; Fri, 25 Oct 2019 18:30:20 +0200
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v3 00/15] KVM: Dynamically size memslot arrays
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 25 Oct 2019 17:30:20 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191024230744.14543-1-sean.j.christopherson@intel.com>
References: <20191024230744.14543-1-sean.j.christopherson@intel.com>
Message-ID: <2fc05685467a01c2f1c2afeacefb2f68@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: sean.j.christopherson@intel.com, jhogan@kernel.org,
 paulus@ozlabs.org, borntraeger@de.ibm.com, frankja@linux.ibm.com,
 pbonzini@redhat.com, rkrcmar@redhat.com, david@redhat.com, cohuck@redhat.com,
 vkuznets@redhat.com, wanpengli@tencent.com, jmattson@google.com,
 joro@8bytes.org, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org,
 christoffer.dall@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_093040_378159_C3C99B36 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 =?UTF-8?Q?Radim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 James Hogan <jhogan@kernel.org>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-25 00:07, Sean Christopherson wrote:
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
> e.g. are essentially contained in patches 14/15 and 15/15.  Patches 
> 1-13
> clean up the memslot code, which has gotten quite crusty, especially
> __kvm_set_memory_region().  The clean up is likely not strictly 
> necessary
> to switch to dynamic sizing, but I didn't have a remotely reasonable
> level of confidence in the correctness of the dynamic sizing without 
> first
> doing the clean up.

I've finally found time to test this on a garden variety of arm64 
boxes,
and nothing caught fire. It surely must be doing something right!

FWIW:

Tested-by: Marc Zyngier <maz@kernel.org>

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
