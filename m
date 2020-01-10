Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D43F313732D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHcKm3kUzRZs58qKTFrnE3cacXpz+orhe1zHjh1pI1M=; b=rkHTJbfCM4XdJT
	0IuihG/F5qImP4Kqg7SWI3MN/Edh8xpOAa4Lylj91+wDhtMXkWHQL6t3phr8uXvtjL91rzT4gMsdo
	DcCeTPsh7NahVBSX//osftuWaug8nkftFreDEbPOfyagFEjIyjk/F7eXP1lHZssYBwQa5YdiJRfky
	c9+X86u2GWJ4aSTFtHsJ0uDg2ekJaKl9+g73PCGecoHWi5GxBGU9eAgKthItB/E1U9OlyfXLsJI15
	lxgkuWm4w2BwRW5HkFPe1Jp9FJdbEsQ2vBu/smlp+xqnWXmTEsk9I5OmDj1iW9NOS8gxSh6qzLSOe
	wyWxcqyk3yNRqxg0WV7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipx3c-0000XU-Lw; Fri, 10 Jan 2020 16:22:44 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipx0T-0005GB-Pv
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 16:19:32 +0000
Received: by mail-ed1-x544.google.com with SMTP id bx28so2037951edb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 08:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dh6us/Go02lHef84JDI3MgwC50UfsnhAdjL91XljPeU=;
 b=Wj9Ula7TMzC62JWXNFEdOeamwpPHP716Mj1o221OqkcCZCuecYxsiEVTW1V9auuAoO
 tLr7WRRGGjVm27eIwxcfIIqWay/7axRIcySUC2se8fNXdy+9qH2nXsubbVdJtt4Y/GtX
 dR91P+hET1gBNJvMMxIlS2z66iwqWzu7wIqHtmBSWENsd63fC1iD/gncylgo4Sff7qNZ
 u31mF/3Lxq9oq+nMmSQ26gzh4SXQHuXa+KZnIprk8RYyekjZlzXFHEUlNWl5qDsNP9Pt
 Ln+LQEFihXYzUGKt6YQq4BALU7uUXrzm841ow+HziKtKil8wsCUc+yp25xjqf1sRXOqi
 Kpcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dh6us/Go02lHef84JDI3MgwC50UfsnhAdjL91XljPeU=;
 b=cETfZUeXl3Ta1qhv2lJXJSEmbLI2qwil49Xy+e/9BVQs2qi2lkgi5CBijA1aHbG5FP
 x8encubZPnNdzd8mv2GR3LIwH1MbBfBH+6yIpaK/LYlEFnq3d5OYvEhHzXO3RQPh3E+w
 dnrSdeekLJ0X5hkslq4pXwXsX+Hlz0QRuFne0QmTDLMQ344aQI8Kdoks6oB7lYvFiWMP
 Y67+sCwADCS9/upVxWXGFL6r0zRimscHW9N53ckB+dzclFCAW2eerlXFfNzZtNvfTUd2
 S03JHQfa46ofh9jskHNLMc0i/3hwmm9mJYThf1hOYhPDOpClF1W5G5QkTsZ5FXgwNgbN
 /BCw==
X-Gm-Message-State: APjAAAX1m6zNmZJK0dATFZLYEZcKGElKC1SvlYtTYPM7gHxZM1wNtJn4
 kxpQ/2pekQW+257JNDPyzmVwsoOIaCciy1juW/yZeTJBp2Q=
X-Google-Smtp-Source: APXvYqzJfshZOAokaxWuwXwiLIbWcBjZg5SzN2kuFXInd6axrGTlsjdF6UVhNJfkj9FvMVF+vmnpssugqmY4nQwGd2w=
X-Received: by 2002:a05:6402:3088:: with SMTP id
 de8mr1668243edb.332.1578673167364; 
 Fri, 10 Jan 2020 08:19:27 -0800 (PST)
MIME-Version: 1.0
References: <20191216021247.24950-1-takahiro.akashi@linaro.org>
 <20191216021247.24950-3-takahiro.akashi@linaro.org>
 <20200108174839.GB21242@willie-the-truck>
 <20200109004654.GA28530@linaro.org> <20200109083254.GA7280@willie-the-truck>
 <20200110160549.GA25437@willie-the-truck>
In-Reply-To: <20200110160549.GA25437@willie-the-truck>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 10 Jan 2020 11:19:16 -0500
Message-ID: <CA+CK2bAy-vfoz3kgUjZB74Hrobgu-a8H4pv6RbA_tbq++NWz5g@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: kexec_file: add crash dump support
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_081930_189107_6A971CC0 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, robh+dt@kernel.org,
 James Morse <james.morse@arm.com>, frowand.list@gmail.com,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 11:05 AM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Jan 09, 2020 at 08:32:54AM +0000, Will Deacon wrote:
> > On Thu, Jan 09, 2020 at 09:46:55AM +0900, AKASHI Takahiro wrote:
> > > On Wed, Jan 08, 2020 at 05:48:39PM +0000, Will Deacon wrote:
> > > > On Mon, Dec 16, 2019 at 11:12:47AM +0900, AKASHI Takahiro wrote:
> > > > > diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> > > > > index 12a561a54128..d24b527e8c00 100644
> > > > > --- a/arch/arm64/include/asm/kexec.h
> > > > > +++ b/arch/arm64/include/asm/kexec.h
> > > > > @@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
> > > > >  struct kimage_arch {
> > > > >         void *dtb;
> > > > >         unsigned long dtb_mem;
> > > > > +       /* Core ELF header buffer */
> > > > > +       void *elf_headers;
> > > > > +       unsigned long elf_headers_mem;
> > > > > +       unsigned long elf_headers_sz;
> > > > >  };
> > > >
> > > > This conflicts with the cleanup work from Pavel. Please can you check my
> > > > resolution? [1]
> > >
> > > I don't know why we need to change a type of dtb_mem,
> > > otherwise it looks good.
> > >
> > > (I also assume that you notice that kimage_arch is of no use for kexec.)
> >
> > Yes, that's why I'd like the resolution checked. If you reckon it's cleaner
> > to drop Pavel's patch altogether in light of your changes, we can do that
> > instead.
> >
> > Thoughts?
>
> Well, I've reverted the cleanup patch so please shout if you'd prefer
> something else.

As I understand, the only concern was the type change for dtb_mem.
This was one of the review comments for my patch
https://lore.kernel.org/lkml/20191204155938.2279686-21-pasha.tatashin@soleen.com/

(I believe it was from Marc Zyngier), I add a number of new fields,
and they all should be phys_addr_t, this is why I change dtb_mem to
phys_addr_t to be consistent.

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
