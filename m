Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 516BB158BA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 10:15:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Do2Po820ynhh9q/2cIbT8Kx2GDcl+lsDt/UwZrrm3NI=; b=nLfcHOdqlFQgXDZ1yG5Yv8+wK
	4Oe7PbnjO1nR/6XVrEe0/RVwDlOX6PlbWlmlvo+vYvyW6UcFeMIGpgZbSQjJovOzf3qHQtMreMZ/j
	84GO+ISpBq1sRYZ4r5zN5Rup4G8yQ1G/MyhOK2rekmd6GWSvY/hcISBf6m0tNx9qfDRR474WH8Ezg
	4bVTEvJnbWD+uMR2xL24fuvTVlFVVZRKPp8fAPAQG8rhYjpIzdUGSWM83RsPkCma6mNyPm8/qQTwM
	JclILLiPfo6qu00mFSIsaRl+3+ITCCZba3iOSkRXk3VTgPoWAH09WLgFsEbZkdKPGIlYoqCdH1o0j
	bzGhC6wDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1RdN-0006Xr-VB; Tue, 11 Feb 2020 09:15:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1RdA-0006X5-9Q
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 09:14:57 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CED82086A;
 Tue, 11 Feb 2020 09:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581412494;
 bh=tb46MiN81vH1/UcBBXyXQyevhAUAyIvqCLgT+INhd9c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=z7P4LQAqyhoXtX/Vhz5CyJEfpz7BSlCpxQC/59C45/1y3W4didWfyBso2fKDFJfs4
 rODuahjFDB1bS/GiXTX+EM0mIhpSdN7Nq+VOxOAYS240eeBnChNGR8X9ofBepUraOd
 6DmvKlGOaxyK74q62QInJYLX72dwVHAnMQpHk9Jc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Rd6-004HfL-6C; Tue, 11 Feb 2020 09:14:52 +0000
MIME-Version: 1.0
Date: Tue, 11 Feb 2020 09:14:52 +0000
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
In-Reply-To: <20200210180740.GA24354@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
 <20200210180740.GA24354@willie-the-truck>
Message-ID: <43839239237869598b79cab90e100127@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_011456_375007_D36E52B2 
X-CRM114-Status: GOOD (  14.88  )
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

On 2020-02-10 18:07, Will Deacon wrote:
> On Mon, Feb 10, 2020 at 06:03:28PM +0000, Mark Rutland wrote:
>> On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
>> > On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
>> > > On 28/01/2020 18:49, Sami Tolvanen wrote:
>> > > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
>> > > > different exception level.
>> > >
>> > > Hmmm, there are two things being disabled here.
>> > >
>> > > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
>> > > shouldn't KVM's C code still treat x18 as a fixed register?
>> >
>> > My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
>> > introduced by SCS (in patch 5) and so isn't required by anything else. Why
>> > do you think it's needed?
>> 
>> When EL1 code calls up to hyp, it expects x18 to be preserved across 
>> the
>> call, so hyp needs to either preserve it explicitly across a 
>> transitions
>> from/to EL1 or always preserve it.
> 
> I thought we explicitly saved/restored it across the call after
> af12376814a5 ("arm64: kvm: stop treating register x18 as caller save"). 
> Is
> that not sufficient?
> 
>> The latter is easiest since any code used by VHE hyp code will need 
>> x18
>> saved anyway (ans so any common hyp code needs to).
> 
> I would personally prefer to split the VHE and non-VHE code so they can 
> be
> compiled with separate options.

This is going to generate a lot of code duplication (or at least object 
duplication),
as the two code paths are intricately linked and splitting them to 
support different
compilation options and/or calling conventions.

I'm not fundamentally opposed to that, but it should come with ways to 
still
manage it as a unified code base as much as possible, as ways to discard 
the
unused part at runtime (which should become easy to do once we have two
distinct sets of objects).

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
