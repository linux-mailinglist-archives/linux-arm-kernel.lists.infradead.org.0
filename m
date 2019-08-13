Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDD08BF5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x08gpcqFPrLS8aPPLBOk/i1WF4M2FErntTzc5EaWH9g=; b=GL+vZCqP40Z66Q
	rfOhEx8P7LSE7XxgJgg+PQEhIKPTtrj3Er0af84jANVmogAcQthYGvRMqmeq6C+Nw8Gjyej2LP8GJ
	xkGSNKOTEJCE1D4U/rUWpRl2tox1Fu9YoUADNaZ9wMAVQRoyv8YSRMyZ9OPq7+D/yN5wxbynf5VjH
	7O/N5NroTa39MfZfTR9SEvrBSqQzgWtWWJqMIkM/GBLhIAODskOwGbgtwF5kyLm23k409ZvuMwdAh
	rGxWKLa8yfTVHsq2OYoVrikFncRp1rcKM+DHnZSgWx4qem3KNwPdM4I69lUx75wYBbMyxEaIDiSaH
	2wo8aIejWbasHqjpttOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaHz-0005PF-Ki; Tue, 13 Aug 2019 17:08:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaHl-0005OS-H0
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:08:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50A5020679;
 Tue, 13 Aug 2019 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565716117;
 bh=65STqoKxZejhRA8D9TwQa+K2PAMisn1xsEutBY/kUY0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e8o5cKrg0h7l3Es4XUW2/tElqvpgDv1p8yDzOCq5FdWQnf1aMYy0Xzef2T/tELhCD
 s0upFTQQ5MtnqWUt7HUvO/2NRH2JQikPkh4tk9SAzwfYzOGXhtLhiE0lh5gNu7Nibj
 fm3edf+JH5WVs5yzATU7sOHcbCWCbW1hmNJjWplI=
Date: Tue, 13 Aug 2019 18:08:30 +0100
From: Will Deacon <will@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
Message-ID: <20190813170829.c3lryb6va3eopxd7@willie-the-truck>
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com>
 <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100837_581886_7F7414A6 
X-CRM114-Status: GOOD (  19.23  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 clang-built-linux@googlegroups.com, Allison Randal <allison@lohutok.net>,
 yhs@fb.com, Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Sedat Dilek <sedat.dilek@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, bpf@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Enrico Weigelt <info@metux.net>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 02:36:06PM +0200, Miguel Ojeda wrote:
> On Tue, Aug 13, 2019 at 10:27 AM Will Deacon <will@kernel.org> wrote:
> > On Mon, Aug 12, 2019 at 02:50:45PM -0700, Nick Desaulniers wrote:
> > > GCC unescapes escaped string section names while Clang does not. Because
> > > __section uses the `#` stringification operator for the section name, it
> > > doesn't need to be escaped.
> > >
> > > This antipattern was found with:
> > > $ grep -e __section\(\" -e __section__\(\" -r
> > >
> > > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  arch/arm64/include/asm/cache.h     | 2 +-
> > >  arch/arm64/kernel/smp_spin_table.c | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > Does this fix a build issue, or is it just cosmetic or do we end up with
> > duplicate sections or something else?
> 
> This should be cosmetic -- basically we are trying to move all users
> of current available __attribute__s in compiler_attributes.h to the
> __attr forms. I am also adding (slowly) new attributes that are
> already used but we don't have them yet in __attr form.
> 
> > Happy to route it via arm64, just having trouble working out whether it's
> > 5.3 material!
> 
> As you prefer! Those that are not taken by a maintainer I will pick up
> and send via compiler-attributes.
> 
> I would go for 5.4, since there is no particular rush anyway.

Okey doke, I'll pick this one up for 5.4 then. Thanks for the explanation!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
