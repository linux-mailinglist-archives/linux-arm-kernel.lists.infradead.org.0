Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 860F7807A1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 20:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/QPYuAMsNR7IZM05FPWAxeu8+EtDgHLF36Kv9B18G0=; b=f3kFqQr5Wmwe2q
	kwzfkirZ1nCVZCO33BGbpOt3Rm6iJaMMM1B2I7FagqcVzSj4iA14tZOoai1MtsAM9XEqRjR50nw8Q
	WADJcV1RBKwo7O7hDaC6HMjHkSLDUrvTyDkOskejYCWzRwDr2j6tEVzKUh+89eMkZRRcyZ0NS0sxC
	F39n/kjFtlr1V2PMNpDgrBTxfEbV2CL5la5sRo/GSHLnx1YwmpPq1qiLD0tvOVkT+lUukL9gfamXc
	poCdAUPk0ElZJgA+o5yz53qX0E+ONLi2coGokxm8JqY5k1wB84fmvFh/+ijBwU54hOFb7hOPqIwaU
	pbYVjZ+60hoRle668Vmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htyPX-0006EL-7e; Sat, 03 Aug 2019 18:05:43 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htyPL-0006E1-Qj
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 18:05:33 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1htyPF-0002A1-0t; Sat, 03 Aug 2019 20:05:25 +0200
Date: Sat, 3 Aug 2019 19:05:22 +0100
From: Marc Zyngier <maz@kernel.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH 0/9] arm64: Stolen time support
Message-ID: <20190803190522.5fec8f7d@why>
In-Reply-To: <20190802145017.42543-1-steven.price@arm.com>
References: <20190802145017.42543-1-steven.price@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: steven.price@arm.com, catalin.marinas@arm.com,
 pbonzini@redhat.com, rkrcmar@redhat.com, linux@armlinux.org.uk,
 will@kernel.org, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_110532_013890_CEAB0CA8 
X-CRM114-Status: GOOD (  12.08  )
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
Cc: kvm@vger.kernel.org, Radim =?UTF-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  2 Aug 2019 15:50:08 +0100
Steven Price <steven.price@arm.com> wrote:

Hi Steven,

> This series add support for paravirtualized time for arm64 guests and
> KVM hosts following the specification in Arm's document DEN 0057A:
> 
> https://developer.arm.com/docs/den0057/a
> 
> It implements support for stolen time, allowing the guest to
> identify time when it is forcibly not executing.
> 
> It doesn't implement support for Live Physical Time (LPT) as there are
> some concerns about the overheads and approach in the above
> specification, and I expect an updated version of the specification to
> be released soon with just the stolen time parts.

Thanks for posting this.

My current concern with this series is around the fact that we allocate
memory from the kernel on behalf of the guest. It is the first example
of such thing in the ARM port, and I can't really say I'm fond of it.

x86 seems to get away with it by having the memory allocated from
userspace, why I tend to like more. Yes, put_user is more
expensive than a straight store, but this isn't done too often either.

What is the rational for your current approach?

Thanks,

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
