Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC66B1927AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 13:03:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyqoctrgyTB9LnJcuamZK2X4B4vLaG0GJxb2rELiO6o=; b=RQTR6HI5kBtGlm
	3tsaFy5gWt139APGsaNUUmcxrskZdT8CGqo9JMtbVpi2bBuaDw2M2rASt3OvW8YnOjBcLvoW7TLhq
	PIhEqNZhXl3p0MWx7SNVtlwLJDGfS+p7PoUkCcTuMERXjZpvTqnelD3yMRKPGGbOPI9FmjL0yqd0p
	EeRzc1LdqFGlSGuvwL8I0v3Fp9uwClxZnrmBsF9nA+6zg0K3tWq1ag9+pklA4gNjYbGihw3M83eb/
	+uLbEN2Fdk/KOQlVfMGSup/qVhPSYIEeai+CpTf6fCxEcWwrJ9CGTHzhVUCwqjMrIRB/UAVAa1COf
	aCyU0e7PD0utQAR7AUow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4l4-0002LW-L3; Wed, 25 Mar 2020 12:03:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4kp-0002KZ-28
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 12:03:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D6DE31B;
 Wed, 25 Mar 2020 05:03:25 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 61BDF3F71F;
 Wed, 25 Mar 2020 05:03:23 -0700 (PDT)
Date: Wed, 25 Mar 2020 12:03:17 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
Message-ID: <20200325120224.GA34330@C02TD0UTHF1T.local>
References: <20200325114110.23491-1-broonie@kernel.org>
 <CAMj1kXH=g5N4ZtnZeX5N8hf9cnWVam4Htnov6qAmQwD58Wp73Q@mail.gmail.com>
 <20200325115038.GD4346@sirena.org.uk>
 <CAMj1kXEogCrLS1o9sQyiXsKZhykfc2kuOssCeME8HyhSnMEFvA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXEogCrLS1o9sQyiXsKZhykfc2kuOssCeME8HyhSnMEFvA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_050327_149350_B533E631 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-crypto@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 12:54:10PM +0100, Ard Biesheuvel wrote:
> On Wed, 25 Mar 2020 at 12:50, Mark Brown <broonie@kernel.org> wrote:
> > Since BTI is a mandatory feature of v8.5 there is no BTI arch_extension,
> > you can only enable it by moving the base architecture to v8.5.  You'd
> > need to use .arch and that feels likely to find us sharp edges to run
> > into.
> 
> I think we should talk to the toolchain folks about this. Even if
> .arch_extension today does not support the 'bti' argument, it *is*
> most definitely an architecture extension, even it it is mandatory in
> v8.5 (given that v8.5 is itself an architecture extension).

It certianly seems unfortunate, as it goes against the premise of having
HINT space instructions. Most software will want to enable HINT space
instructions from ARMv8.x but nothing else to ensure binary
compatibility with existing hardware.

I see the same is true for pointer authentication judging by:

https://sourceware.org/binutils/docs/as/AArch64-Extensions.html#AArch64-Extensions

... so worth raising with toolchain folk as a general principle even if
we have to bodge around it for now.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
