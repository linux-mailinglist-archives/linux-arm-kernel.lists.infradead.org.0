Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6071C441A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 20:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/c5XSrv6PapPuGB3PA6n7+E0x5JSLExhNFqUcLPcLVA=; b=XHnuZKGnq5No5R
	Iuz34PZzwqIRtF7waXJHvw3KGAYPHd+c693iuHMiMf6mISILPLcd4rk9VpAY+V47pCZ1AOuinPOel
	Q5aSwQvrrNnsYmRfirf4hnO973HISiF0TzInhnAe75Wo7qGEE7ahxUvTacDgDcZRpV3Qmmx9LVqYi
	mGUQpS53UT99aXl6/YwsXk6/XpM7jWRwK9+VUetmNbAHFa2+3sfJ3+NZwTFyUzB45ARvPa3x3cMgt
	rHhtfqqoZKv0ra8XBN9qBeUK4RlkF3ERm+P3cKgOOef4TbOUEnKEoPJfbfh/Lfitj64QtlC2AXOK2
	8zXN22OE7UDv7RfwrBNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfRn-0005nx-SL; Mon, 04 May 2020 18:04:07 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfRg-0005jx-O4
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 18:04:02 +0000
Received: by mail-lj1-x244.google.com with SMTP id b2so10635922ljp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 11:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rcDmJIg6XQDOa3chgWWWTIDoYfHpXCrYezz5o9UsioM=;
 b=rpULkMOhQ4XZU3gawsHD+pAOZ/hs2S8hKO6veZt59CSRwuHnSJXAiuoI75zoy7R9Ll
 uf4UZP+VqLBAvTEWV5yIfVLut+GowlNGk+3EGPjaOP5qKHnnI3l48fex3cTWR4l44GLH
 8wd5MdAVyv692TTfAXe+O3MU9ndQq3PxjqaW6TxHBflien/xVKeDzY6auFfoNRYH/B/2
 fC6JEADleGtaKfIPrip+5m6sMwyC2n6uWKxRL5+H+CJ0cW58eC7MD2VZjb96sOpTG+7G
 Ae7Y3Et/iIuTjbwxhdpZH3qq7AeT35TAmNFcQPrZptvKZd4RSfnQClAONC3cth5/dvFR
 Wvtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rcDmJIg6XQDOa3chgWWWTIDoYfHpXCrYezz5o9UsioM=;
 b=KnbUKFc6UX7t+w1b+24gVPQCp8nSGdsLRQQ+ASiRqBLi42TNZ7MDROiKMblVMkT4TD
 5oR7KHG9faaVKwn3VRt0rDi13QBpEE2AVltRt9tfOk+V9WWIC1+KmoWyTi1s2LvmTweM
 7IM9giB0Eyq+A5ZefxefkqO6DSXtzn6NJfgUVj6Qg1uIsUfB//e/koBNKcs119IhBk4t
 +WEBhYj46nIiHHwjd9o0DLbpfQMTi2Paa3Tj6OrNjRtI76yx8M9GhYkKkEd+pnaWr0qq
 L4kEiXf6tAMkuRsjWIV4DiywNjmT5MRsSuyRLYMMz/a897e+rLsP4qfQrDrcW4AaRjsL
 HaLg==
X-Gm-Message-State: AGi0PuaiFTa2CiNES+/P+2pQKuSEfi1DeIpbTX7Bup0XAxm7gpfa/sBE
 TvB/Dwxk76VHhzocsqiUlKrFcwnAF/EiIs1EQVUoWA==
X-Google-Smtp-Source: APiQypIHcgbbdXmVy3vl3ztP5eNJSATUT2t97dtLpQSHGN3q+TF5z+bWNiX9e7gWwtb8yO4Jkfo2dPzDOiP5vUAhK0c=
X-Received: by 2002:a2e:b249:: with SMTP id n9mr11270265ljm.221.1588615432462; 
 Mon, 04 May 2020 11:03:52 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck> <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck> <20200422235134.GA211149@google.com>
 <202004231121.A13FDA100@keescook> <20200424112113.GC21141@willie-the-truck>
 <20200427204546.GA80713@google.com> <20200504165227.GB1833@willie-the-truck>
In-Reply-To: <20200504165227.GB1833@willie-the-truck>
From: Jann Horn <jannh@google.com>
Date: Mon, 4 May 2020 20:03:25 +0200
Message-ID: <CAG48ez0OjQpCvO1EqUqtHX+zVj27p3yWd5riY_r7+rNWwec_OQ@mail.gmail.com>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_110400_784857_BBE87A62 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@redhat.com>, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Steven Rostedt <rostedt@goodmis.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 kernel list <linux-kernel@vger.kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 4, 2020 at 6:52 PM Will Deacon <will@kernel.org> wrote:
> On Mon, Apr 27, 2020 at 01:45:46PM -0700, Sami Tolvanen wrote:
> > On Fri, Apr 24, 2020 at 12:21:14PM +0100, Will Deacon wrote:
> > > Also, since you mentioned the lack of redzoning, isn't it a bit dodgy
> > > allocating blindly out of the kmem_cache? It means we don't have a redzone
> > > or a guard page, so if you can trigger something like a recursion bug then
> > > could you scribble past the SCS before the main stack overflows? Would this
> > > clobber somebody else's SCS?
> >
> > I agree that allocating from a kmem_cache isn't ideal for safety. It's a
> > compromise to reduce memory overhead.
>
> Do you think it would be a problem if we always allocated a page for the
> SCS?

I guess doing this safely and without wasting a page per task would
only be possible in an elegant way once MTE lands on devices?

I wonder how bad context switch latency would be if the actual SCS was
percpu and vmapped (starting at an offset inside the page such that
the SCS can only grow up to something like 0x400 bytes before
panicking the CPU) and the context switch path saved/restored the used
part of the vmapped SCS into a smaller allocation from the slab
allocator... presumably the SCS will usually just be something like
one cacheline big? That probably only costs a moderate amount of time
to copy...
Or as an extension of that, if the SCS copying turns out to be too
costly, there could be a percpu LRU cache consisting of vmapped SCS
pages, and whenever a task gets scheduled that doesn't have a vmapped
SCS, it "swaps out" the contents of the least recently used vmapped
SCS into the corresponding task's slab SCS, and "swaps in" from its
own slab SCS into the vmapped SCS. And task migration would force
"swapping out".

Not sure if this is a good idea, or if I'm just making things worse by
suggesting extra complexity...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
