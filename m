Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB77E1BC25D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 17:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HLjhWm/Bc62S9dXnQXgg7WYOCyn2IIVNPcujg0lx08=; b=dm6Jb+IlR7EYbl
	gl6CuAz1nzlu4c8GUusAwz+LsGgd8CnjY30FlvCEDuk/2RmzepuRYPXrvv5RWZ/NlV5Xtpx6OC0HV
	MRxjPqKe9y4Uulzjy5aRKWKlUcCIfWdqAmDIT6FcfD6dS/lO3/OpyEZBpXYqIjEraVu7bsEbNTLz1
	DSDC4qYgKGJq5+MIBTEG46wi6yS3UAJXPeNr9lLA1GOUsWQEziz3G5IW0SkXK+gRHojjoRairUEru
	865HBVw1jqXFGTFdYAyYaiKsWvbjZDdNum97zcfluAfwcvxKsltObYbarHiK3bWFk5GTP2KvUTeEM
	GqI9k6G6M0Ls8vrwzhSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRtd-0003uV-Ew; Tue, 28 Apr 2020 15:11:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRtS-0003ty-8E
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 15:11:31 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95B6D205C9;
 Tue, 28 Apr 2020 15:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588086689;
 bh=aamxra8/L8gjllOiveVDPAUmrn8wwP+GQF0Iq8KS/QI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jpiRez2WIvdzuInq82Nf0S3PYv5YCwZqKrjdv4MQBiyq+3u9y8W2hoKAgxgVlFhJo
 AIk4vnsqN+dwq5AOhKZVvfs0Muvx8BvsscxPjCua0GhClnTEC2uAJc/BBnbKJIb7/L
 nv8pJ8p4peMND1YYHAKBL3M+9Mnl/X9mt028uGac=
Date: Tue, 28 Apr 2020 16:11:25 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2 5/8] efi/libstub/arm64: align PE/COFF sections to
 segment alignment
Message-ID: <20200428151123.GA12697@willie-the-truck>
References: <20200413155521.24698-1-ardb@kernel.org>
 <20200413155521.24698-6-ardb@kernel.org>
 <CAMj1kXFrzfKerYNL1c+iS33uMR++3w673kxg93bGfdG7ohWJsA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXFrzfKerYNL1c+iS33uMR++3w673kxg93bGfdG7ohWJsA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_081130_310367_8C524C80 
X-CRM114-Status: GOOD (  20.30  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-efi <linux-efi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Arvind Sankar <nivedita@alum.mit.edu>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 11:39:39AM +0200, Ard Biesheuvel wrote:
> On Mon, 13 Apr 2020 at 17:55, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > The arm64 kernel's segment alignment is fixed at 64 KB for any page
> > size, and relocatable kernels are able to fix up any misalignment of
> > the kernel image with respect to the 2 MB section alignment that is
> > mandated by the arm64 boot protocol.
> >
> > Let's increase the PE/COFF section alignment to the same value, so that
> > kernels loaded by the UEFI PE/COFF loader are guaranteed to end up at
> > an address that doesn't require any reallocation to be done if the
> > kernel is relocatable.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  arch/arm64/kernel/efi-header.S  | 2 +-
> >  arch/arm64/kernel/vmlinux.lds.S | 3 ++-
> >  2 files changed, 3 insertions(+), 2 deletions(-)
> >
> 
> Catalin, Will: any thoughts whether this should go via the arm64 tree
> or the EFI tree? It is part of a change on the EFI side to stop
> needlessly copying the kernel around before boot, but this particular
> change could go through either tree, as it is not build time
> dependency for the EFI changes, nor does it have a boot time impact
> beyond making it more likely that the copy can be elided (but the code
> still needs to deal with the possibility that it cannot be elided in
> any case)

I've queued this one in the arm64 tree for 5.8. Should appear on
for-next/misc in the next day or so.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
