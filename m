Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662901C443D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 20:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5st3mWOG4G3Ix0hbEhJ9nTegQKQXzTMYFHqHaISUipY=; b=DfRBqE7wdIcvnX
	2C1yv0XbRbOERP9hUik+54CstuIBKRbC2JQVyBF0jF/UBbuacm5FfOUjzcIW1BUnMabO/mSCwc8wb
	hpYJ1q1iYv/S6smcSVJoRx5dnVwVsT69eWqpJWmCFSQgMviewYSsF4/gewyVgpVGHHPa2GIMmOShF
	SaOqPy9p2E0Mfb47hIQVs5Km5V8ySzww1FRFBDY4OUWpOFi1UJp/f8h3FSSLAHWux0ErrbFubAcqT
	ZjVMNKeML1BcqMwMkcBwGlG5gKtlO2qTEaLPI3ck1HYceWfcrI8dZvY8f+A0RLgxwP2nNn5II8llZ
	k5Rdz9cZXYsRcFmB+f5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfTv-0000dX-E7; Mon, 04 May 2020 18:06:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfTl-0000br-Kp
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 18:06:14 +0000
Received: by mail-pg1-x542.google.com with SMTP id s18so110247pgl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 11:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5H5y0GT0IX1bjv46W43wTOmcN/3DzOsesayYr+f385c=;
 b=VfjjNs3D1ejtb+5tDVnv4xIxeWbWw/o38mrHwOZ5Gwkc82EKTZ7pb9asTgtjF5BOl5
 Zqs4vbc5AMjqxgNOipERymQfeg78d3WB44sQWSCPyzc8fjFCFil4qhPuqg1dVU2c7TEV
 A6XlZfrUYCmdVmssHy2yO3uNUZUiSM/Gfc3ko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5H5y0GT0IX1bjv46W43wTOmcN/3DzOsesayYr+f385c=;
 b=IiQBHXv2P1EZthLAtkOyUdEAYBMKLOo11PYv/YzJeUDtjyDYxmDCq3eMBZbMr+xLKo
 jR7Z/e5kdza+sFZU4vYyKlvl9Y/6azZI3WC+0Wo0Ttm1p9QXe1dWzoG5bdbZPs1ooufa
 MuJtwhJAZY6PDMB+SSw/KAZjgSULHJw+AdioiSe1jDDb2PO5N2pvXWQx7zwnL04gmp83
 0AarjzYiunrydnZZNwBDrMSLTrVAdyl4DNzWdnLieChadngo3OCSa/WTUjrurQudESO3
 EBXhiQZzcn+KPKoHTsHDnKJjEzJrVJpxwTrp2QhmzqtpEACJ0zm77XR26ng9wKqf5aI0
 GWHw==
X-Gm-Message-State: AGi0Pub0FEpvYC2FnP8O7jXQ41PzHbz+2jJx1B0il4Arav+1V/9fMOAp
 q32R0aZtdwZdhdmganWgIwU+HQ==
X-Google-Smtp-Source: APiQypIlcStIRBl6cHaGQp3N0+X9MfO14Oi4jnSZEiTTEcv+6ntBV7uerro/crzxcPaqm3zz3v5luA==
X-Received: by 2002:a65:4c83:: with SMTP id m3mr201796pgt.128.1588615568087;
 Mon, 04 May 2020 11:06:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id p2sm8099142pgh.25.2020.05.04.11.06.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 11:06:07 -0700 (PDT)
Date: Mon, 4 May 2020 11:06:06 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <202005041050.7E29A56637@keescook>
References: <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <20200422235134.GA211149@google.com>
 <202004231121.A13FDA100@keescook>
 <20200424112113.GC21141@willie-the-truck>
 <20200427204546.GA80713@google.com>
 <20200504165227.GB1833@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504165227.GB1833@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_110609_711209_35BFDC2A 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 05:52:28PM +0100, Will Deacon wrote:
> On Mon, Apr 27, 2020 at 01:45:46PM -0700, Sami Tolvanen wrote:
> > On Fri, Apr 24, 2020 at 12:21:14PM +0100, Will Deacon wrote:
> > > The vmap version that I asked Sami to drop
> > > is at least better in this regard, although the guard page is at the wrong
> > > end of the stack and we just hope that the allocation below us didn't pass
> > > VM_NO_GUARD. Looks like the same story for vmap stack :/
> > 
> > SCS grows up and the guard page is after the allocation, so how is it at
> > the wrong end? Am I missing something here?
> 
> Sorry, I'd got the SCS upside-down in my head (hey, that second 'S' stands
> for 'Stack'!). But I think I'm right about vmap stack, which feels a
> little fragile even though it seems to work out today with the very limited
> uses of VM_NO_GUARD.

Yeah, when VMAP_STACK was originally being developed, IIRC, there was
an effort made to eliminate all the users of VM_NO_GUARD, and it looks
like it's mostly there. Really the only use left is arm64's kernel image
mapping routines, and then it's not actually used in the traditional
sense -- it's just a boolean for whether to toss in a guard page at the
end of the data section, and the VMAs are built manually. I think that
code could actually be refactored to drop it too and then the only user
would be KASAN, which, IIUC, wants to build consecutive vmap areas.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
