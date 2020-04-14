Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 452DB1A7927
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5uEUBLv2hRZs1MIWbtU5cfzmV8sq0SAkAE5CM4+bq8=; b=UbEKTyS+iNNAp/
	vP/ZbRHjzrVKQrE4iymJY5UB0KZFRJFCt9I4gx8F1Y2z62K1uv3BtBXQ0XeuudmnW7OVvFhxnaRKk
	8G6FCkjFTMojMe7bfR18YiMzTofn7F/jp8M9v/vKHMqgSU1VH+YDJtgbmkXrg9yM9h5XzIVyIYdQJ
	y7YnI32jJGg5ZzE4tNfXa8cu4kCiPtoANAsvfWOtwMFnzuJWmEIdzs2xfru7n96Jg2RchN0/D7Pen
	oQ6uzgzisFUutTN/wCPd4Fc9UeEENoJHml63UANBZhrf1Lw7g+tyu//tawmw6XyQn2ia3rj5PXuCz
	1zWWfcI73C1Hfhr8YB1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJTn-0004pL-Ee; Tue, 14 Apr 2020 11:11:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJTf-0004oy-A5
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 11:11:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A14A11FB;
 Tue, 14 Apr 2020 04:11:38 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A347D3F6C4;
 Tue, 14 Apr 2020 04:11:36 -0700 (PDT)
Date: Tue, 14 Apr 2020 12:11:33 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
Message-ID: <20200414111133.GD2486@C02TD0UTHF1T.local>
References: <1586856741-26839-1-git-send-email-amit.kachhap@arm.com>
 <20200414100033.GA26395@willie-the-truck>
 <20200414101649.GC1278@C02TD0UTHF1T.local>
 <72cc9678-1583-6282-b86f-d7963898488c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <72cc9678-1583-6282-b86f-d7963898488c@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_041139_396407_FF030335 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 04:28:04PM +0530, Amit Kachhap wrote:
> 
> Hi,
> 
> On 4/14/20 3:46 PM, Mark Rutland wrote:
> > On Tue, Apr 14, 2020 at 11:00:33AM +0100, Will Deacon wrote:
> > > On Tue, Apr 14, 2020 at 03:02:21PM +0530, Amit Daniel Kachhap wrote:
> > > > Compilers are optimized to not store the stack frame record for the leaf
> > > > function in the stack so applying pointer authentication in the leaf
> > > > function is not useful from security point of view.
> > > 
> > > I'm missing the reasoning here -- why don't we care about leaf functions?
> > > 
> > > Sounds like there's a performance/security trade-off that needs spelling
> > > out and justifying with some numbers, or is it clear-cut and I'm missing
> > > something?
> > 
> > I believe this is because leaf functions don't store the LR to the stack
> > (as they don't create a frame record), so it cannot be modified by a
> > stray memory write.
> > 
> > Amit, if you create a leaf function like:
> > 
> > void leaf_function(void)
> > {
> > 	asm volatile("" : : : "x30");
> > }
> > 
> > ... what assembly does the compiler generate when passed
> > `-msign-return-address=non-leaf` ?
> 
> This is the assembly generated in this case,
>       80:       d503233f        paciasp
>       84:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
>       88:       910003fd        mov     x29, sp
>         asm volatile("" : : : "x30");
> }
>       8c:       a8c17bfd        ldp     x29, x30, [sp], #16
>       90:       d50323bf        autiasp
>       94:       d65f03c0        ret
> 
> 
> > 
> > * Does the compiler create a stack-frame for this function?
> > * Where does the compiler spill x30?
> > * Does the compiler sign the LR?
> 
> Yes here the compiler creates stack frame and pushes signed lr in the stack.

Thanks for testing that!

That looks fine. My concern was that the compiler might spill the
register without signing it, but that's evidently not the case.

So 'leaf' is a misnomer here, and this is really about functions
without frame records, but that's fine.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
