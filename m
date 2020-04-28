Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962771BBCE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHSpzH2DB2D8ELjbcx6GvHS0Dd5qzxy6I0IfOVGd/ns=; b=hOek9SY8xFqtnN
	Im6OpDxMDn4wtaOmuZgHbuWcSdVXzsCtIsVf2M35U6EJuKev+7xYSkytsdegBz7W3yD4LM22BUa8C
	TOYpVan1vxiEgAYA41MFzdgq3ERAs1GKjbnJAREuXfAxD/OxHSSKed4qBQveWQ8SfUKsomGFF3U8p
	hSOH0RJF1tEY8kn3lG1Vns8MXnH4BoEq+jP/DrLjqmLjGIvibp/NrjgS6KSsj3TaYVmRCxW7tcMSV
	2ywjBytx1mOF8CnABvn6l2163RZNEhvE5TcniN4vgKjiEBOB1KsPVx/EQo+VdQAORu7C/57CCCG7I
	+CrLMm4dh3ZONXV4WI7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOt2-0007hp-4p; Tue, 28 Apr 2020 11:58:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOsr-0007hG-Fp
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:58:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1BC8206D7;
 Tue, 28 Apr 2020 11:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588075121;
 bh=mGmzPCWeGF97BEnRFbfyXl7PoPmIB2NTIo0PyRYBzKw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x5+294cgndK7ZqqTcZ66SUPS7ee7GBnrD5ReDB+847sWKk2qk/UdGkosk72PTjVMM
 GXuuKF/GUU/yz578Td2YCgXT4EpciExHTzZLjMl6vwCq7cT4QxktLjlG5cEhCu4VX4
 VQKaumWf5UvXHS2QjMugUq02wz2VlsYngdXZEyMs=
Date: Tue, 28 Apr 2020 12:58:36 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: arm64 vdso might miss .eh_frame
Message-ID: <20200428115835.GA6791@willie-the-truck>
References: <20200415092336.GK987@arm.com>
 <20200428073435.GC4049@willie-the-truck>
 <152f54d5-2fa9-bc08-d931-ed2f3675da6b@arm.com>
 <20200428111123.GA15519@C02TD0UTHF1T.local>
 <d6b501ef-c587-8d5a-48ff-93188b78458a@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d6b501ef-c587-8d5a-48ff-93188b78458a@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_045841_547283_B90B401B 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Tamas Zsoldos <tamas.zsoldos@arm.com>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 12:15:46PM +0100, Vincenzo Frascino wrote:
> On 4/28/20 12:11 PM, Mark Rutland wrote:
> > On Tue, Apr 28, 2020 at 11:54:25AM +0100, Vincenzo Frascino wrote:
> >> On 4/28/20 8:34 AM, Will Deacon wrote:
> >>> On Wed, Apr 15, 2020 at 10:23:36AM +0100, Szabolcs Nagy wrote:
> >>>> On aarch64 linux gcc uses -fasynchronous-unwind-tables -funwind-tables
> >>>> by default since gcc-8, so now the de facto platform ABI is to allow
> >>>> unwinding from async signal handlers.
> >>>>
> >>>> However on bare metal targets (aarch64-none-elf), and on old gcc,
> >>>> async and sync unwind tables are not enabled by default to avoid
> >>>> runtime memory costs.
> >>>>
> >>>> This means if linux is built with a baremetal toolchain the vdso.so
> >>>> may not have unwind tables which breaks our (undocumented) platform
> >>>> ABI guarantee in userspace. So adding -fasynchronous-unwind-tables
> >>>> explicitly to the vgettimeofday.o cflags would be nice (the other
> >>>> objects in the vdso seem to be asm).
> >>>>
> >>>> There was also a report that android clang built linux vdso.so lacks
> >>>> .eh_frame completely, that may be a missing --eh-frame-hdr or different
> >>>> platform ABI on android, Tamas on cc may be able to verify this.
> >>>
> >>> Vincenzo? Looks like this is a regression caused by the move to C -- please
> >>> can you take a look?
> >>
> >> I have already, locally, a patch that addresses the problem presented in this
> >> email, based on Szabolcs comment. I did not post it yet because I was waiting
> >> for Tamas' comment and address everything in one go.
> > 
> > Can I suggest that you post the patch as-is here, even if it's not
> > complete, so that we can all review/test in parallel?
> > 
> 
> Sure, I will write a sensible comment and send it out.

Thanks!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
