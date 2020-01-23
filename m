Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF420146B70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 15:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=inwV5rGAphuOS5P48i0r1D75h8iEOq5aME7hKuvVBI8=; b=JYW1zj2mhgK3Ti
	ZX/FkzzWIasuC91j3X98Vi4cAJ/CuTi8DuIBGfx+Zj5OXX45YCyTcf8iYbpOZ63RkFaliTg+x/P3Y
	caosnNar+drt4HTgjxuFBRnefA0jWiGhUU3BEI/UzyfOdFdFvu+z7edHtm7DfqYOJK4xOgVraKkRS
	xtNPLuo/f+2rqfvumr7xZmKP8erqXe8ur1zsQmKiGqRA4ax6/xk1p3PpK3L6jddU/P0zI6ZB1S7VO
	zFWpJqSnkatcjYTOy5BZ/nAPxbXCZ0dGQNuKEVps2JaJbqac/0NEgiSlcnasGXuzUVWCMyKUUnVTj
	0q/aoeiuXclDBp0lOoGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudZp-0003UN-GX; Thu, 23 Jan 2020 14:35:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudZc-0003OS-Vh
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 14:35:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 43BAF2087E;
 Thu, 23 Jan 2020 14:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579790108;
 bh=JNtixxJ/yw1iFwwAJ9ohnh46vXkDLO9OMR488psZi7Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0BsJ627kvWrt2CDSqPfrDlznsX+RCpuOBXBDDOxDvG++isOd/KeDDX6iSaEZtPmvG
 YRkdpadtdV/Obl9NJ3Dmn9Kd7PaJJW3s+dOrbPn8k/X/sGC1vy8sHxnObLD/1LjGMX
 WF8lClEQHLsDqE2aLHc1FlTqaHupTpHJm+0o42Y4=
Date: Thu, 23 Jan 2020 14:35:03 +0000
From: Will Deacon <will@kernel.org>
To: Julien Thierry <jthierry@redhat.com>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
Message-ID: <20200123143503.GA19649@willie-the-truck>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200121103025.GC11154@willie-the-truck>
 <400d402d-c964-6f0c-2954-6f6afcb94635@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <400d402d-c964-6f0c-2954-6f6afcb94635@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_063509_071993_73B6B544 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 raphael.gault@arm.com, jpoimboe@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 01:52:17PM +0000, Julien Thierry wrote:
> 
> 
> On 1/21/20 10:30 AM, Will Deacon wrote:
> > On Thu, Jan 09, 2020 at 04:02:03PM +0000, Julien Thierry wrote:
> > > This patch series is the continuation of Raphael's work [1]. All the
> > > patches can be retrieved from:
> > > git clone -b arm64-objtool-v5 https://github.com/julien-thierry/linux.git
> > 
> > [...]
> > 
> > >    objtool: arm64: Decode unknown instructions
> > >    objtool: arm64: Decode simple data processing instructions
> > >    objtool: arm64: Decode add/sub immediate instructions
> > >    objtool: arm64: Decode logical data processing instructions
> > >    objtool: arm64: Decode system instructions not affecting the flow
> > >    objtool: arm64: Decode calls to higher EL
> > >    objtool: arm64: Decode brk instruction
> > >    objtool: arm64: Decode instruction triggering context switch
> > >    objtool: arm64: Decode branch instructions with PC relative immediates
> > >    objtool: arm64: Decode branch to register instruction
> > >    objtool: arm64: Decode basic load/stores
> > >    objtool: arm64: Decode load/store with register offset
> > >    objtool: arm64: Decode load/store register pair instructions
> > >    objtool: arm64: Decode FP/SIMD load/store instructions
> > >    objtool: arm64: Decode load/store exclusive
> > >    objtool: arm64: Decode atomic load/store
> > >    objtool: arm64: Decode pointer auth load instructions
> > >    objtool: arm64: Decode load acquire/store release
> > >    objtool: arm64: Decode load/store with memory tag
> > >    objtool: arm64: Decode load literal
> > >    objtool: arm64: Decode register data processing instructions
> > >    objtool: arm64: Decode FP/SIMD data processing instructions
> > >    objtool: arm64: Decode SVE instructions
> > 
> > That's a lot of decoding logic which we already have in
> > arch/arm64/{kernel/insn.c,include/asm/insn.h}. I'd prefer to see this stuff
> > reused or generated from a single source, since it's really easy to get it
> > wrong, has a tendency to bitrot and is nasty to debug.
> > 
> 
> The thing is that the code in those files is mostly encoding logic
> (motivated by BPF) rather than decoding (except for the instruction that
> might be trapped, but these rarely overlap with instructions that objtools
> cares about). I agree that ideally the decoding/encoding should be under
> arch/arm64/lib, I was just a bit weary introducing a lot of decoding code
> under arch/arm64 that wouldn't even be used in kernel code.

Hmm, but kprobes decodes instructions somehow :p

Not saying you have to refactor everything, but I'd hope you could reuse
some of the aarch64_insn_is* and aarch64_insn_extract* functions at least.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
