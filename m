Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD81137242
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:06:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Ql7VXohKfzVYcSZOebF60a0ELkA5oNaQ216xGDX424=; b=l5RztTdRRWQV6i
	fGNyCRG4l/Ys1YU4KWOCKOjtzBd31hvOQmG2zpNnKlCJAE0n88lOYYv+0EnTnKfP9a8GKF7l6PySa
	uLKKjolcQt/p8YTXH0wj3eRFYzW1OsB5/ZYDuhhTEvbxaquSqKEnxRwLtFmKG8ihADZZg+/j2uPEj
	8Tcca4eBQoTN7bZxj4pEBL8hdjRk75onP8RLkjW+AskX2xJzlr2E/UYwtoAghkChD5XEmxSO1/5nx
	S0eXd6hlhQUJ3Guitou4TKLgJXnLcC+7Q8cs54XgkMC7kramyjlIrro5huYQ2VrZIzFODKDRQN+pB
	9xdQvFqG+g5Ej4hhYTzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwnY-0006kj-QC; Fri, 10 Jan 2020 16:06:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwnL-0006hp-RH; Fri, 10 Jan 2020 16:05:57 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C952206ED;
 Fri, 10 Jan 2020 16:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578672354;
 bh=BwQ3hgNytp3Vhhb3/aGu1TWkWmHNJvFCwz8FcQOU1d0=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=rSq1lc5qyWCWzqge30byPL+X5/xbXoMRsnWfIUMmQR1q9Z06hbsvq1xoudf0xEpIW
 8YYCWxOchNcLb3Ku5DnU0NPIDBLmlEidbgUOgW13cxDYpAbc4qv4ngDxdZeg6ir/RQ
 SYSZjLSqwZmMyGUmD3Cenz7LakTi8lItKQmOsRpU=
Date: Fri, 10 Jan 2020 16:05:49 +0000
From: Will Deacon <will@kernel.org>
To: AKASHI Takahiro <takahiro.akashi@linaro.org>, pasha.tatashin@soleen.com,
 catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/2] arm64: kexec_file: add crash dump support
Message-ID: <20200110160549.GA25437@willie-the-truck>
References: <20191216021247.24950-1-takahiro.akashi@linaro.org>
 <20191216021247.24950-3-takahiro.akashi@linaro.org>
 <20200108174839.GB21242@willie-the-truck>
 <20200109004654.GA28530@linaro.org>
 <20200109083254.GA7280@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109083254.GA7280@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_080555_906813_C0B26E94 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, Jan 09, 2020 at 08:32:54AM +0000, Will Deacon wrote:
> On Thu, Jan 09, 2020 at 09:46:55AM +0900, AKASHI Takahiro wrote:
> > On Wed, Jan 08, 2020 at 05:48:39PM +0000, Will Deacon wrote:
> > > On Mon, Dec 16, 2019 at 11:12:47AM +0900, AKASHI Takahiro wrote:
> > > > diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> > > > index 12a561a54128..d24b527e8c00 100644
> > > > --- a/arch/arm64/include/asm/kexec.h
> > > > +++ b/arch/arm64/include/asm/kexec.h
> > > > @@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
> > > >  struct kimage_arch {
> > > >  	void *dtb;
> > > >  	unsigned long dtb_mem;
> > > > +	/* Core ELF header buffer */
> > > > +	void *elf_headers;
> > > > +	unsigned long elf_headers_mem;
> > > > +	unsigned long elf_headers_sz;
> > > >  };
> > > 
> > > This conflicts with the cleanup work from Pavel. Please can you check my
> > > resolution? [1]
> > 
> > I don't know why we need to change a type of dtb_mem,
> > otherwise it looks good.
> > 
> > (I also assume that you notice that kimage_arch is of no use for kexec.)
> 
> Yes, that's why I'd like the resolution checked. If you reckon it's cleaner
> to drop Pavel's patch altogether in light of your changes, we can do that
> instead.
> 
> Thoughts?

Well, I've reverted the cleanup patch so please shout if you'd prefer
something else.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
