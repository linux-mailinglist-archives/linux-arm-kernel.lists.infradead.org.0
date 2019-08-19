Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30959218D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 12:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+obpGgzScqwrBPhHLQ5sRbov7WS9XGbqkYqgyEyO7c=; b=V9X62V/1rWV5jh
	hqKN4nnUdhKNtoJEdrp9/F1SEw7hKLiwkCj4lTjq8zQIA+rmW52Gg1b6qrJ+AAm26WAq/d7yqUaTb
	lCGRfpCO80s0DR2IQcsdGQAC5AZ2P82STjT0bvtkzPP0MlFZVzWabmumx3DAeJVTWm2oaw6pN7CM5
	6FkMoqfkMUqg2tXDfOBm8aNj7ij0D6z6PJVleduo6inj0QGh0QFmVf/EQAe9IziTBR3NXhfh+w2xU
	XRwVHL8egNW0rqDyo20/t5BA17It4IvwIPtThCBqD9qCF25zthLcFOy80pDuuFvwy8kbP9zpgXQ4m
	Xqa4nC3ysdM1UdOd+Faw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzf8R-0003Xf-Hv; Mon, 19 Aug 2019 10:43:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzf8D-0003Ww-Lx; Mon, 19 Aug 2019 10:43:22 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4BAE20851;
 Mon, 19 Aug 2019 10:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566211398;
 bh=1wJV+xb9Ez/4oRMa7R7xHQ9hwQC45y71+pL3G2Fc0wc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vRshSSntwwtAILYZuS/2q6Sxa4BFlFgxfJUeOihnjjZJDNdjzaVMojC3N42p70wh9
 UiGvZwu+V2NlGDKfOLJcq9UnaaN6d2HFbTZB7g0HE2+F1kKBEut3GRRQ3CxTM0STgZ
 cvbtxpvXSs6CxQGOWAvkuCTPxSIQw9nNSMZ78EK8=
Date: Mon, 19 Aug 2019 11:43:14 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
Message-ID: <20190819104313.fekk5cxxznoctvz5@willie-the-truck>
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190815122151.bg7it6ptxwcn2vif@willie-the-truck>
 <8253b02c-0431-6b01-6af4-6132eb992925@arm.com>
 <CA+Vb7hpi=pCC9viiof8y85Kw_vCawWQ0B6kGFALgxtZfCKoaTw@mail.gmail.com>
 <CA+Vb7hqPvDtv0ahjxa_gM68qsws6-dmtiOPmG6-WB+HZEC=4aw@mail.gmail.com>
 <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
 <CA+Vb7hpjX=yzVJj+BguvzwtyASCGUTwx_OXWfBuEoLO_RicMBQ@mail.gmail.com>
 <CA+Vb7hpXfavS0k47Z0o=SkswO_jMmv3HN7RsUMdx=AHjvrD7LA@mail.gmail.com>
 <20190819100713.GA6117@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819100713.GA6117@arrakis.emea.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_034321_764727_5C1C6C5B 
X-CRM114-Status: GOOD (  15.41  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: heiko@sntech.de, andre.przywara@arm.com, vicencb@gmail.com,
 linux-rockchip@lists.infradead.org,
 Philipp Richter <richterphilipp.pops@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 11:07:14AM +0100, Catalin Marinas wrote:
> On Sat, Aug 17, 2019 at 03:12:41PM +0200, Philipp Richter wrote:
> > I added "memtest=4" to the kernel cmdline and I'm getting very quicky
> > a "Internal error: synchronous external abort" panic.
> [...]
> > [    0.000000] early_memtest: # of tests: 4
> > [    0.000000]   0x0000000000200000 - 0x0000000002080000 pattern aaaaaaaaaaaaaaaa
> > [    0.000000]   0x0000000003a95000 - 0x00000000f8400000 pattern aaaaaaaaaaaaaaaa
> > [    0.000000] Internal error: synchronous external abort: 96000210 [#1] SMP
> 
> At least it's a synchronous error ;).
> 
> > [    0.000000] pc : early_memtest+0x16c/0x23c
> [...]
> > [    0.000000] Code: d2800002 d2800001 eb0400bf 54000309 (f9400080)
> 
> decodecode says:
> 
>    0:   d2800002        mov     x2, #0x0                        // #0
>    4:   d2800001        mov     x1, #0x0                        // #0
>    8:   eb0400bf        cmp     x5, x4
>    c:   54000309        b.ls    0x6c  // b.plast
>   10:*  f9400080        ldr     x0, [x4]                <-- trapping instruction
> 
> I guess that's the read of *p in memtest(). Writing *p probably
> generates asynchronous errors it you haven't seen it yet.
> 
> > Is my board completely broken ? :(
> 
> One possibility is that you don't have any memory where you think there
> is, so the mapping just doesn't translate to any valid physical
> location.
> 
> Can you add some printk(addr) in do_sea() to see if it always faults on
> the same address?

Alternatively, just run it a few more times and see if the register dump
changes. Currently we've got:

[    0.000000] x5 : ffff8000f8400000 x4 : ffff800008400000
[    0.000000] x3 : 0000000008400000 x2 : 0000000000000000
[    0.000000] x1 : 0000000000000000 x0 : aaaaaaaaaaaaaaaa

so I'd guess that x3 is the faulting pa. The faulting (linear) VAs in the
originl report were 0xffff800009c74aa8 and 0xffff800009c08390, which is
still a way way off from this one :/

Looking at the TRM for the rk3328, there's 4gb of ram starting at pa 0x0,
so maybe some of it has been configured as secure or the memory controller
hasn't been properly initialised?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
