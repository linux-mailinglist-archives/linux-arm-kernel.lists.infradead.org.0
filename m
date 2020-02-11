Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4BD158C47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 11:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5z/Wv/rGk0l1ZdJjmYc+n3ESy8jCjW5Ya5q00u3E/ow=; b=EXH3O/2VfNzWOSxuaDfuAojCO
	qvc1fkl97yf3KyRL04Sc2yr8AGX5ahCE51ZTnPTpyEm2AmXKj9EGUd4Hx1pM+gqHyhd1OcgZJWpDM
	qzFqyL6PaxTZlQIA76TfLa6/MHEv1W9hqgq9VKHdnukNzweQmZJiUw/MY6u6da+7wvv5tl2pW9rZ5
	aCObzsMa4vhq1LpSLczVJOibJH0zG6oSvJ0Jq8KZq3Ah+RYfJi+Pf+cCwVlbqnVWbVzRE8nj8zxnM
	01l9Wtgnft5L0xotfWEzDhGWU8uoPYs1qqnONDwv9dtgrig0PVfoQuzjtuRnZBB+SNYiuFrZdUrj1
	AByHtTpjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1SL1-0005gi-HD; Tue, 11 Feb 2020 10:00:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1SKt-0005SP-Pe
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 10:00:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5851D20714;
 Tue, 11 Feb 2020 10:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581415207;
 bh=Rf1cVsXYoyZPTMZMbH8vZlwFAWASWhkCsYObkjMQ9Ko=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZjYMZLNqPENaRh+mcuqb7UfkV1Eo12AXIsjC468Zej2Z0m3Xd4BRmSMg9JSvvGj5H
 d9HH7b+bMenMTDHwqZ70TklYjBBZWv2Wy0UHKUXpqRyPPMqRkx8b8FAYDwNKRYW4Ui
 v81OVzKUWodAvvqpc8bQnpxEao6X/kS36AWJyp8o=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1SKn-004I7J-J6; Tue, 11 Feb 2020 10:00:01 +0000
MIME-Version: 1.0
Date: Tue, 11 Feb 2020 10:00:01 +0000
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
In-Reply-To: <20200211095519.GB8560@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
 <20200210180740.GA24354@willie-the-truck>
 <43839239237869598b79cab90e100127@kernel.org>
 <20200211095519.GB8560@willie-the-truck>
Message-ID: <fed83df0e9140b9655b00f315814fab8@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, mark.rutland@arm.com, james.morse@arm.com,
 samitolvanen@google.com, catalin.marinas@arm.com, rostedt@goodmis.org,
 mhiramat@kernel.org, ard.biesheuvel@linaro.org, Dave.Martin@arm.com,
 keescook@chromium.org, labbott@redhat.com, ndesaulniers@google.com,
 jannh@google.com, miguel.ojeda.sandonis@gmail.com,
 yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_020007_878844_CBBEF746 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-11 09:55, Will Deacon wrote:
> On Tue, Feb 11, 2020 at 09:14:52AM +0000, Marc Zyngier wrote:
>> On 2020-02-10 18:07, Will Deacon wrote:
>> > On Mon, Feb 10, 2020 at 06:03:28PM +0000, Mark Rutland wrote:
>> > > On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
>> > > > On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
>> > > > > On 28/01/2020 18:49, Sami Tolvanen wrote:
>> > > > > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
>> > > > > > different exception level.
>> > > > >
>> > > > > Hmmm, there are two things being disabled here.
>> > > > >
>> > > > > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
>> > > > > shouldn't KVM's C code still treat x18 as a fixed register?
>> > > >
>> > > > My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
>> > > > introduced by SCS (in patch 5) and so isn't required by anything else. Why
>> > > > do you think it's needed?
>> > >
>> > > When EL1 code calls up to hyp, it expects x18 to be preserved across
>> > > the
>> > > call, so hyp needs to either preserve it explicitly across a
>> > > transitions
>> > > from/to EL1 or always preserve it.
>> >
>> > I thought we explicitly saved/restored it across the call after
>> > af12376814a5 ("arm64: kvm: stop treating register x18 as caller save").
>> > Is
>> > that not sufficient?
>> >
>> > > The latter is easiest since any code used by VHE hyp code will need
>> > > x18
>> > > saved anyway (ans so any common hyp code needs to).
>> >
>> > I would personally prefer to split the VHE and non-VHE code so they can
>> > be
>> > compiled with separate options.
>> 
>> This is going to generate a lot of code duplication (or at least 
>> object
>> duplication),
>> as the two code paths are intricately linked and splitting them to 
>> support
>> different
>> compilation options and/or calling conventions.
>> 
>> I'm not fundamentally opposed to that, but it should come with ways to 
>> still
>> manage it as a unified code base as much as possible, as ways to 
>> discard the
>> unused part at runtime (which should become easy to do once we have 
>> two
>> distinct sets of objects).
> 
> Agreed, and I don't want to hold up the SCS patches because of this. 
> I'm
> just nervous about the function attribute because I've only ever had
> terrible experiences with them. Maybe it will work this time (!)

I have the same experience chasing missing __hyp_text attributes. Until 
we
have tooling that picks on this *at compile time*, we'll have to play
wack-a-mole with them...

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
