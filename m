Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1469D13F35B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:43:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0j0bHilsVqHjaJOapaYjeQYnN0I1a/9HzDcnQouXUbw=; b=GgNmXxRQckHRl8
	Rt06jSc/i3caVLF0mOOYJ6FFoJR5AQ+C22TyU2BT31ARE3P/4tBPGJFLwP49ouQo5bmgURtvsAlb7
	1vbVUdKTWjr2w1zAk4ncXlNwqwtxh5AxSIudekQ+aoElXtEJEiTTK4Zl8obHbZNO1v5DIe2OeUCRD
	F86EQhKz+BUjBmVvDbM5dxc2b3nQGAUJFmEhb96RBH/9ttiF+eZTWxpkKjp2Usjw8lcR3uq7pDlKu
	+CA00Teaun7sL7nDWbJGGPGqmyfCU9otmFjZUDL2eMZstEMd1hKv6v9FdVOcJ6Xf78lHXAQDpSUil
	RtPYAxa++LgSpLMeLdmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA6w-0005wg-Fo; Thu, 16 Jan 2020 18:43:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9Zn-0007Lg-Er; Thu, 16 Jan 2020 18:09:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1D525214AF;
 Thu, 16 Jan 2020 18:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579198142;
 bh=G12bYRjcFudffpQ1Inc1ks16rEJngpLF0eu9Bib/8YI=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=y1Wk+36g6x6dqMQXtUbMYxKQj6vISCydPq/80JUNhvRBRQlZvOMlp8qwo9f/1hK/9
 6ViaY6kF/wqqJdCtP2KA73CyC4RcI1702MEccjKN559ZrT75cKQmGVxCoLrhF37W4D
 ydKODBdVJNUDGpAtZxoVBfhyqK/3Lni8IIbkruIU=
Date: Thu, 16 Jan 2020 18:08:58 +0000
From: Will Deacon <will@kernel.org>
To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, robh+dt@kernel.org,
 frowand.list@gmail.com, Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 2/2] arm64: kexec_file: add crash dump support
Message-ID: <20200116180857.GA22420@willie-the-truck>
References: <20191216021247.24950-1-takahiro.akashi@linaro.org>
 <20191216021247.24950-3-takahiro.akashi@linaro.org>
 <20200108174839.GB21242@willie-the-truck>
 <20200109004654.GA28530@linaro.org>
 <20200109083254.GA7280@willie-the-truck>
 <20200110160549.GA25437@willie-the-truck>
 <CA+CK2bAy-vfoz3kgUjZB74Hrobgu-a8H4pv6RbA_tbq++NWz5g@mail.gmail.com>
 <20200113112105.GB2337@willie-the-truck>
 <20200114053825.GC28530@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114053825.GC28530@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_100903_566152_295EF132 
X-CRM114-Status: GOOD (  27.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Jan 14, 2020 at 02:38:26PM +0900, AKASHI Takahiro wrote:
> On Mon, Jan 13, 2020 at 11:21:06AM +0000, Will Deacon wrote:
> > On Fri, Jan 10, 2020 at 11:19:16AM -0500, Pavel Tatashin wrote:
> > > On Fri, Jan 10, 2020 at 11:05 AM Will Deacon <will@kernel.org> wrote:
> > > > On Thu, Jan 09, 2020 at 08:32:54AM +0000, Will Deacon wrote:
> > > > > On Thu, Jan 09, 2020 at 09:46:55AM +0900, AKASHI Takahiro wrote:
> > > > > > On Wed, Jan 08, 2020 at 05:48:39PM +0000, Will Deacon wrote:
> > > > > > > On Mon, Dec 16, 2019 at 11:12:47AM +0900, AKASHI Takahiro wrote:
> > > > > > > > diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> > > > > > > > index 12a561a54128..d24b527e8c00 100644
> > > > > > > > --- a/arch/arm64/include/asm/kexec.h
> > > > > > > > +++ b/arch/arm64/include/asm/kexec.h
> > > > > > > > @@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
> > > > > > > >  struct kimage_arch {
> > > > > > > >         void *dtb;
> > > > > > > >         unsigned long dtb_mem;
> > > > > > > > +       /* Core ELF header buffer */
> > > > > > > > +       void *elf_headers;
> > > > > > > > +       unsigned long elf_headers_mem;
> > > > > > > > +       unsigned long elf_headers_sz;
> > > > > > > >  };
> > > > > > >
> > > > > > > This conflicts with the cleanup work from Pavel. Please can you check my
> > > > > > > resolution? [1]
> > > > > >
> > > > > > I don't know why we need to change a type of dtb_mem,
> > > > > > otherwise it looks good.
> > > > > >
> > > > > > (I also assume that you notice that kimage_arch is of no use for kexec.)
> > > > >
> > > > > Yes, that's why I'd like the resolution checked. If you reckon it's cleaner
> > > > > to drop Pavel's patch altogether in light of your changes, we can do that
> > > > > instead.
> > > > >
> > > > > Thoughts?
> > > >
> > > > Well, I've reverted the cleanup patch so please shout if you'd prefer
> > > > something else.
> > > 
> > > As I understand, the only concern was the type change for dtb_mem.
> > > This was one of the review comments for my patch
> > > https://lore.kernel.org/lkml/20191204155938.2279686-21-pasha.tatashin@soleen.com/
> > > 
> > > (I believe it was from Marc Zyngier), I add a number of new fields,
> > > and they all should be phys_addr_t, this is why I change dtb_mem to
> > > phys_addr_t to be consistent.
> > 
> > Sure, but I've only queued the first part of your series and that cleanup
> > patch doesn't make a lot of sense when applied against Akashi's work. I'm
> > happy to take stuff on top if you both agree to it, but having half of the
> > struct use unsigned long and the other half use phys_addr_t is messy.
> 
> Logically, whether dtb_mem is a "unsigned long" or phys_addr_t doesn't
> matter unless the kernel is compiled under LLP64.
> As far as the existing kexec code, either generic or arm64-specific,
> is concerned, however, "unsigned long is widely used as a physical address
> (For example, see kexec_buf definition) over the code.
> 
> (Oops, reboot_code_buffer_phys is a phys_addr_t :)
> 
> So as long as my kexec_file (and associated kdump) patch comes first
> before Pavel's, I'd like to keep using "unsigned long".
> Then, you can change "unsigned long" to phys_addr_t in your patch
> for whatever reason it is.
> 
> Please note that, if you want to do that, it would be better to modify
> not only kimage_arch but also all the occurrences of "unsigned long"
> to phys_addr_t for maintaining the integrity.
> 
> In addition, in my kexec_file kdump code, I still believe that
> "#ifdef CONFIG_KEXEC_FILE" should stay before the definition of
> kimage_arch as kimage_arch is of no use for normal kexec code.
> 
> Again,
> "#ifdef" statement may be moved forward once additional fields be
> added later by Pavel's patch, say, "[PATCH v8 15/25] arm64: kexec:
> move relocation function setup" for any reason.
> 
> I believe that this way gives us a logical and consistent view of
> history of changes.
> Make sense?

This is a bit much to stick in a merge commit, so I'll stick with the revert
for now and you can send patches on top if you want it changed.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
