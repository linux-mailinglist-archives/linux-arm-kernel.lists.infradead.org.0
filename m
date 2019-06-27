Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5AF58569
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vE5cK8q/boAS6TLHcH4yxbUK4z+N43TfHPyr2vhdge0=; b=oDsgLu3ls/HsSr
	D0/IkPz+xTKNM6XDL9R2dEutBn9qNRXNtnf0kKlijDsc1QJxIsRVKnSpR5CxMEs3ggTDxumVZQMbk
	O4eRa9ESHu4kk8bvGKSA/8yyz22upBZOGeAHoTUGW0bOP6XGn5Fwl62LzeSOTC6/YXobTX7Hsor68
	q2GquQCSJQXyfB1r3YogjdeHVruS9jpwTgWPZp2vIC4bB9Hsc+jshGjO+kwraNZ02zVEq1tfm992W
	/frKLNuMXK90IK4uKWcdo5PIc+NI7tHHpAJwt0GIsbzSWCqGlkJwZZI8QyYt9P8DDEpd9pXy1rrZF
	hIFudycbs8PXzctNOlpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWAK-0008QI-UY; Thu, 27 Jun 2019 15:18:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWA2-0008Oy-25
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:18:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E6A5360;
 Thu, 27 Jun 2019 08:18:05 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D791D3F246;
 Thu, 27 Jun 2019 08:18:03 -0700 (PDT)
Date: Thu, 27 Jun 2019 16:18:01 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2 1/3] arm64/sve: Fix missing SVE/FPSIMD endianness
 conversions
Message-ID: <20190627151801.GJ2790@e103592.cambridge.arm.com>
References: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
 <1560355234-25516-2-git-send-email-Dave.Martin@arm.com>
 <20190612172853.GA27039@fuggles.cambridge.arm.com>
 <20190627135112.GC9894@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627135112.GC9894@arrakis.emea.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_081806_146686_567590D2 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peter Maydell <peter.maydell@linaro.org>, gdb@sourceware.org,
 Will Deacon <will.deacon@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Julien Grall <julien.grall@arm.com>, Alan Hayward <alan.hayward@arm.com>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 02:51:13PM +0100, Catalin Marinas wrote:
> On Wed, Jun 12, 2019 at 06:28:53PM +0100, Will Deacon wrote:
> > On Wed, Jun 12, 2019 at 05:00:32PM +0100, Dave Martin wrote:
> > > The in-memory representation of SVE and FPSIMD registers is
> > > different: the FPSIMD V-registers are stored as single 128-bit
> > > host-endian values, whereas SVE registers are stored in an
> > > endianness-invariant byte order.
> > > 
> > > This means that the two representations differ when running on a
> > > big-endian host.  But we blindly copy data from one representation
> > > to another when converting between the two, resulting in the
> > > register contents being unintentionally byteswapped in certain
> > > situations.  Currently this can be triggered by the first SVE
> > > instruction after a syscall, for example (though the potential
> > > trigger points may vary in future).
> > > 
> > > So, fix the conversion functions fpsimd_to_sve(), sve_to_fpsimd()
> > > and sve_sync_from_fpsimd_zeropad() to swab where appropriate.
> > > 
> > > There is no common swahl128() or swab128() that we could use here.
> > > Maybe it would be worth making this generic, but for now add a
> > > simple local hack.
> > > 
> > > Since the byte order differences are exposed in ABI, also clarify
> > > the docuentation.
> > > 
> > > Fixes: bc0ee4760364 ("arm64/sve: Core task context handling")
> > > Fixes: 8cd969d28fd2 ("arm64/sve: Signal handling support")
> > > Fixes: 43d4da2c45b2 ("arm64/sve: ptrace and ELF coredump support")
> > > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> > 
> > Thanks, Dave. I've picked this one up and pushed it out to our fixes branch
> > for 5.2. I assume Catalin will take the other two for 5.3.
> 
> At least the second patch depends on the first one. So I'll postpone
> merging them until -rc1.

Yes, that should be fine.  Those are cleanup, supplementary to the fix.

Thanks
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
