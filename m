Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AB0124AAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:08:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUJrxx8w6js/NCAbhci6JTdsDzX+sU+lN/ywhtcj18c=; b=A/fcezKw8C/PR/
	ovG9aCZ5LIeZcI3P+gfM27YWGDALxyqQJcOtyNJj7WjRjzItnOi1DwyOgpFmxUygWbMmWxkqEI5Kv
	oMvY+kCTIXMIxnnYbUfml7U8DqTeMukc9x3bjGUb0g1fZmcNTgoXX9svAq6z3DWiUKpsHsk86DDtv
	xHwYV81lVzW5LMlFP+xK0JhIqkjXqvhfOJ9UO3qfboQNieYQFDz48sxqPMRpQNYWPHY2hNpAo+dpm
	8qQu4ei57MDQMad9X6G7/0VIAQ9okgb14UWE3hWDZKLoA38jxmSQ9dvBrUSNe1DSg+vFUrLALLz7Q
	YrPKYdS6rNHVh2jx9rTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihavn-0006tN-EV; Wed, 18 Dec 2019 15:08:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihavb-0006sZ-MC
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:07:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5533C30E;
 Wed, 18 Dec 2019 07:07:53 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 554673F719;
 Wed, 18 Dec 2019 07:07:51 -0800 (PST)
Subject: Re: [PATCH 7/7] KVM: arm/arm64: Elide CMOs when unmapping a range
To: Marc Zyngier <maz@kernel.org>
References: <20191213182503.14460-1-maz@kernel.org>
 <20191213182503.14460-8-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <0c832b27-7041-a6c8-31c0-d71a25c6f5b8@arm.com>
Date: Wed, 18 Dec 2019 15:07:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191213182503.14460-8-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_070755_771680_B5074CE0 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paul Mackerras <paulus@ozlabs.org>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 13/12/2019 18:25, Marc Zyngier wrote:
> If userspace issues a munmap() on a set of pages, there is no
> expectation that the pages are cleaned to the PoC.

(Pedantry: Clean and invalidate. If the guest wrote through a device mapping, we ditch any
clean+stale lines with this path, meaning swapout saves the correct values)


> So let's
> not do more work than strictly necessary, and set the magic
> flag that avoids CMOs in this case.

I think this assumes the pages went from anonymous->free, so no-one cares about the contents.

If the pages are backed by a file, won't dirty pages will still get written back before
the page is free? (e.g. EFI flash 'file' mmap()ed in)

What if this isn't the only mapping of the page? Can't it be swapped out from another VMA?
(tenuous example, poor man's memory mirroring?)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
