Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0909986A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 17:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhDwQk/N3QuPccCkURM5ay/84CG3zOSVbOSqlAheyuM=; b=grxDkyjPSr1XJ4
	7BSmVRgO66UhCUIHEcANSq8IIyHq8WJlX3s8eR91ebV8pwB1ZAznV33sgjGZytUFTrvrLOGQeSAJU
	xJ2aPJt12CgijHlgJ6y1QoF10o7I5eDBwJZxIr1xKdr0r9nB+C46cYJDfRdl2GltG6cCJ6oMWbm84
	SRm5rU7+BkuR8l92/TaaNhkTKlsQYCYgldrOZmdsUNaU21eg1ZkJKVA5y9haX3NgoKy1YPWQGvyWY
	JnVkS1xV/DNtribPHP10A/UKRdoa9M2DuXRNTgBEi/RAZqhdotphNiv1ATgBTrZaJisfJFh4aaTux
	nLwq5o3XQF/XE6kALutg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0pID-0007a8-5Y; Thu, 22 Aug 2019 15:46:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0pHz-0007ZJ-No
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 15:46:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A80BA337;
 Thu, 22 Aug 2019 08:46:13 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B7BD53F718;
 Thu, 22 Aug 2019 08:46:11 -0700 (PDT)
Subject: Re: [PATCH v3 04/10] KVM: Implement kvm_put_guest()
To: Sean Christopherson <sean.j.christopherson@intel.com>
References: <20190821153656.33429-1-steven.price@arm.com>
 <20190821153656.33429-5-steven.price@arm.com>
 <20190822152854.GE25467@linux.intel.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <e2abc69b-74c2-64ef-e270-43d93513eaae@arm.com>
Date: Thu, 22 Aug 2019 16:46:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822152854.GE25467@linux.intel.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_084615_819470_B276E0B7 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-doc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/08/2019 16:28, Sean Christopherson wrote:
> On Wed, Aug 21, 2019 at 04:36:50PM +0100, Steven Price wrote:
>> kvm_put_guest() is analogous to put_user() - it writes a single value to
>> the guest physical address. The implementation is built upon put_user()
>> and so it has the same single copy atomic properties.
> 
> What you mean by "single copy atomic"?  I.e. what guarantees does
> put_user() provide that __copy_to_user() does not?

Single-copy atomicity is defined by the Arm architecture[1] and I'm not
going to try to go into the full details here, so this is a summary.

For the sake of this feature what we care about is that the value
written/read cannot be "torn". In other words if there is a read (in
this case from another VCPU) that is racing with the write then the read
will either get the old value or the new value. It cannot return a
mixture. (This is of course assuming that the read is using a
single-copy atomic safe method).

__copy_to_user() is implemented as a memcpy() and as such cannot provide
single-copy atomicity in the general case (the buffer could easily be
bigger than the architecture can guarantee).

put_user() on the other hand is implemented (on arm64) as an explicit
store instruction and therefore is guaranteed by the architecture to be
single-copy atomic (i.e. another CPU cannot see a half-written value).

Steve

[1] https://static.docs.arm.com/ddi0487/ea/DDI0487E_a_armv8_arm.pdf#page=110

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
