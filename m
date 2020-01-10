Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 187AA137274
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58KpccXXnila4Qb17xlz7EvapNCKUHel/+c8+dQEjKE=; b=kkbpALMPbZInvI
	Hq/MXedi7VIQlfMyIefgWS2/EN1Xql0zluS/jop0TfSmxIupjxYFz3SxkKdPdjo8TF2gcxQFSsSyB
	9RtNKl8MULh+zci5LwY6RH6ssoiZNy40KAlwjmEuyzElYhZVmvPpvHGR3gd72yr8uYpCSsbDrmpyd
	xKH5ph4i5ENW9W/UFzYGawQUC6jpNHG43XA+dBkpB7thp+C1S30qt73xi4RYHaCNBHN+1mRgPUxmE
	ghedCeWZzsTnUQPCrKspHCPJd0dqXWAs0BD1lrSz/QPPYWEV0E+jAeR2fs1z+8Ozry+hkDaNW3cRq
	UEvvydiaW3kjHCz6fYPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwp9-0007eW-8b; Fri, 10 Jan 2020 16:07:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwp1-0007dI-FA
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 16:07:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE3352087F;
 Fri, 10 Jan 2020 16:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578672459;
 bh=NT+C3rfa0dgCpqIe7AgVcCYVZuZOmuBB7mp9Rl6qMH0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dahUTwJ30pZ1S5w3UEki1z3pxuLb35tZGM1zPZZIkphU2wXhzS6Lsbs09//bQTeRj
 CHwPppKCvWhmzZtu+qLyMu33nUYWb8/QHMewGS+Lq9Pfb0Kwpax18TcdbH8KUgrKEX
 6OhasiYhZDvWbZVokhuaha18qHthxUyEWnavFXrQ=
Date: Fri, 10 Jan 2020 16:07:34 +0000
From: Will Deacon <will@kernel.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH -next] arm64/mm/dump: fix a compilation error
Message-ID: <20200110160734.GA25891@willie-the-truck>
References: <20200110145112.7959-1-cai@lca.pw> <20200110153447.GA30104@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110153447.GA30104@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_080739_523955_BCFDF723 
X-CRM114-Status: GOOD (  12.00  )
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
Cc: "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, Qian Cai <cai@lca.pw>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 03:34:48PM +0000, Steven Price wrote:
> On Fri, Jan 10, 2020 at 02:51:12PM +0000, Qian Cai wrote:
> > The linux-next commit "x86: mm: avoid allocating struct mm_struct on the
> > stack" [1] introduced a compilation error with "arm64: mm: convert
> > mm/dump.c to use walk_page_range()" [2]. Fixed it by using the new API.
> > 
> > arch/arm64/mm/dump.c:326:38: error: too few arguments to function call,
> > expected 3, have 2
> >         ptdump_walk_pgd(&st.ptdump, info->mm);
> >         ~~~~~~~~~~~~~~~                     ^
> > ./include/linux/ptdump.h:20:1: note: 'ptdump_walk_pgd' declared here
> > void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm,
> > pgd_t *pgd);
> > ^
> > arch/arm64/mm/dump.c:364:38: error: too few arguments to function call,
> > expected 3, have 2
> >         ptdump_walk_pgd(&st.ptdump, &init_mm);
> >         ~~~~~~~~~~~~~~~                     ^
> > ./include/linux/ptdump.h:20:1: note: 'ptdump_walk_pgd' declared here
> > void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm,
> > pgd_t *pgd);
> > ^
> > 2 errors generated.
> > 
> > [1] http://lkml.kernel.org/r/20200108145710.34314-1-steven.price@arm.com
> 
> Actually this was in the patch I originally posted - somehow it got
> lost when Andrew picked it up.
> 
> > [2] http://lkml.kernel.org/r/20191218162402.45610-22-steven.price@arm.com
> > 
> > Signed-off-by: Qian Cai <cai@lca.pw>
> 
> Since this matches what I originally wrote... ;)
> 
> Reviewed-by: Steven Price <steven.price@arm.com>

Acked-by: Will Deacon <will@kernel.org>

I'm assuming Andrew will queue this alongside the others.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
