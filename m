Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BC681A83
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=offZKONgdMuazUU7XS2GL/wcNhi6OjrkfWPYVA1FUF8=; b=tP0aSu6MT2NFjK
	w2ZdE7G0RdM2lp2hcNA5yo2Ne0tUISqp9AlcVv3tFuFnXkG3STIqdMKZldwHn/FIPRUeuDbWQUsVY
	7GvJw9dwD/INILSQJDY1sizmQwgEAKpX0FvRXLN3s+iHS5r+mmbAbdrJTNaOenJibSaFHhe3SreMj
	xKsnhNFlLbtVA41wapn3TykQcP95aLGIAnIsat4k2RoKoaohoFCBLdjm1KcDUvnNEvPnHqPWWsjNI
	QQ+3M+wSodPLaRVluoywoyDItVUiKJllTIhMbnfsV5wbNl/QOi4KhV3QxNgwmk6A1WoWnXmTicBdD
	Wx/UcRjwG6RVHxfqTCvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huchY-0001yU-5G; Mon, 05 Aug 2019 13:07:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hucgm-0001jU-19
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 13:06:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06BD41570;
 Mon,  5 Aug 2019 06:06:09 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 15F153F706;
 Mon,  5 Aug 2019 06:06:06 -0700 (PDT)
Subject: Re: [PATCH 0/9] arm64: Stolen time support
To: Marc Zyngier <maz@kernel.org>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190803190522.5fec8f7d@why>
From: Steven Price <steven.price@arm.com>
Message-ID: <6789f477-8ab5-cc54-1ad2-8627917b07c9@arm.com>
Date: Mon, 5 Aug 2019 14:06:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190803190522.5fec8f7d@why>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_060612_155705_256EC8B3 
X-CRM114-Status: GOOD (  22.19  )
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
Cc: =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/08/2019 19:05, Marc Zyngier wrote:
> On Fri,  2 Aug 2019 15:50:08 +0100
> Steven Price <steven.price@arm.com> wrote:
> 
> Hi Steven,
> 
>> This series add support for paravirtualized time for arm64 guests and
>> KVM hosts following the specification in Arm's document DEN 0057A:
>>
>> https://developer.arm.com/docs/den0057/a
>>
>> It implements support for stolen time, allowing the guest to
>> identify time when it is forcibly not executing.
>>
>> It doesn't implement support for Live Physical Time (LPT) as there are
>> some concerns about the overheads and approach in the above
>> specification, and I expect an updated version of the specification to
>> be released soon with just the stolen time parts.
> 
> Thanks for posting this.
> 
> My current concern with this series is around the fact that we allocate
> memory from the kernel on behalf of the guest. It is the first example
> of such thing in the ARM port, and I can't really say I'm fond of it.
> 
> x86 seems to get away with it by having the memory allocated from
> userspace, why I tend to like more. Yes, put_user is more
> expensive than a straight store, but this isn't done too often either.
> 
> What is the rational for your current approach?

As I see it there are 3 approaches that can be taken here:

1. Hypervisor allocates memory and adds it to the virtual machine. This
means that everything to do with the 'device' is encapsulated behind the
KVM_CREATE_DEVICE / KVM_[GS]ET_DEVICE_ATTR ioctls. But since we want the
stolen time structure to be fast it cannot be a trapping region and has
to be backed by real memory - in this case allocated by the host kernel.

2. Host user space allocates memory. Similar to above, but this time
user space needs to manage the memory region as well as the usual
KVM_CREATE_DEVICE dance. I've no objection to this, but it means
kvmtool/QEMU needs to be much more aware of what is going on (e.g. how
to size the memory region).

3. Guest kernel "donates" the memory to the hypervisor for the
structure. As far as I'm aware this is what x86 does. The problems I see
this approach are:

 a) kexec becomes much more tricky - there needs to be a disabling
mechanism for the guest to stop the hypervisor scribbling on memory
before starting the new kernel.

 b) If there is more than one entity that is interested in the
information (e.g. firmware and kernel) then this requires some form of
arbitration in the guest because the hypervisor doesn't want to have to
track an arbitrary number of regions to update.

 c) Performance can suffer if the host kernel doesn't have a suitably
aligned/sized area to use. As you say - put_user() is more expensive.
The structure is updated on every return to the VM.


Of course x86 does prove the third approach can work, but I'm not sure
which is actually better. Avoid the kexec cancellation requirements was
the main driver of the current approach. Although many of the
conversations about this were also tied up with Live Physical Time which
adds its own complications.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
