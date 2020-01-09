Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9DA135461
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 09:33:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+DREV3yUV+wAyskrFw5Enm0S3O997JBtw/tMfcQD5s=; b=LzXQaLlDLm6WsM
	PzAL8O8dOb93KEEL1UUqrwOU9YkWPvu142FhUR4KjiNYxoV0UciaekV0i5wWXiL7yi9I7enqdHJ/R
	N4LoV/vbrqxnMbIdzkgnafGUlFIKyBaVwZTfk+K7AIjdRMJwqt1uxC25QJV0tDPzAG7lkpDP7qeBZ
	QMOEH1XjiQVwik/S1yungIaaYfb3n8clLO1TbEiypuh26XHzGBV9s5bIowlDNNe+jWbSsRY/qI5VB
	AqDR815w/0bGBEIevi005ziRLk4pzbIPEqFl6qAMqyQA0UP499jtO9VR+0hIaaNCvoesFhBmxcsCO
	wsfX9XgX6QhluD6cjZBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTFj-0003zD-9a; Thu, 09 Jan 2020 08:33:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTFU-0003xh-V5; Thu, 09 Jan 2020 08:33:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F20C20673;
 Thu,  9 Jan 2020 08:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578558780;
 bh=K/8jTc/G+/G9KpLYm2RrQRaA/2Ksqd3676QEmOVLgSY=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=ZW24qfX6vZYfde10oWKxf9doyhrwmVhaLRivKfvaF5mR/fSL/C16gzZHTAQ4nT/3U
 6ySBgEy6Xf8tUj3pT9Ux/29vphkZezo7EaYvT819taR+g978O9qOri3Drqs+vad1iD
 rQoeyPPniBw4IlEyCE3lH7ePUIpPr/RMxZnPiPds=
Date: Thu, 9 Jan 2020 08:32:55 +0000
From: Will Deacon <will@kernel.org>
To: AKASHI Takahiro <takahiro.akashi@linaro.org>, pasha.tatashin@soleen.com,
 catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/2] arm64: kexec_file: add crash dump support
Message-ID: <20200109083254.GA7280@willie-the-truck>
References: <20191216021247.24950-1-takahiro.akashi@linaro.org>
 <20191216021247.24950-3-takahiro.akashi@linaro.org>
 <20200108174839.GB21242@willie-the-truck>
 <20200109004654.GA28530@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109004654.GA28530@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_003301_022955_4DED192E 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 09:46:55AM +0900, AKASHI Takahiro wrote:
> On Wed, Jan 08, 2020 at 05:48:39PM +0000, Will Deacon wrote:
> > On Mon, Dec 16, 2019 at 11:12:47AM +0900, AKASHI Takahiro wrote:
> > > Enabling crash dump (kdump) includes
> > > * prepare contents of ELF header of a core dump file, /proc/vmcore,
> > >   using crash_prepare_elf64_headers(), and
> > > * add two device tree properties, "linux,usable-memory-range" and
> > >   "linux,elfcorehdr", which represent respectively a memory range
> > >   to be used by crash dump kernel and the header's location
> > > 
> > > Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > Cc: Will Deacon <will.deacon@arm.com>
> > > Reviewed-by: James Morse <james.morse@arm.com>
> > > Tested-and-reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>
> > > ---
> > >  arch/arm64/include/asm/kexec.h         |   4 +
> > >  arch/arm64/kernel/kexec_image.c        |   4 -
> > >  arch/arm64/kernel/machine_kexec_file.c | 106 ++++++++++++++++++++++++-
> > >  3 files changed, 106 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> > > index 12a561a54128..d24b527e8c00 100644
> > > --- a/arch/arm64/include/asm/kexec.h
> > > +++ b/arch/arm64/include/asm/kexec.h
> > > @@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
> > >  struct kimage_arch {
> > >  	void *dtb;
> > >  	unsigned long dtb_mem;
> > > +	/* Core ELF header buffer */
> > > +	void *elf_headers;
> > > +	unsigned long elf_headers_mem;
> > > +	unsigned long elf_headers_sz;
> > >  };
> > 
> > This conflicts with the cleanup work from Pavel. Please can you check my
> > resolution? [1]
> 
> I don't know why we need to change a type of dtb_mem,
> otherwise it looks good.
> 
> (I also assume that you notice that kimage_arch is of no use for kexec.)

Yes, that's why I'd like the resolution checked. If you reckon it's cleaner
to drop Pavel's patch altogether in light of your changes, we can do that
instead.

Thoughts?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
