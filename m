Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5D8F0903
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 23:06:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftMwPd1ZgQiS7FyRkizkii/CxfeNOb0kLtNFwZMbqtY=; b=WhN3SOkPkq+PQn
	PPLZxvEefR2v6Wm0qykzOlCUFItQ+nbdPEh+vsAN4iJVGkXa0AAfLNgLbjBkYSbm68I+AjUZxHDCk
	2e2f/M6Jp3lNNBFsmNSzvij3c0olJbHWGeYV2jOTQN+34EHnn6d6ge1VclYXrekUdnue8DGChtPbe
	2OlJE/MSwdRDoGiFd1IMb0LOzu8aPU/HUlOUEH/p4ryEMhnf362gZyDPeNyCIyb+gtMeeXYgUHY98
	VkmTYT0kR8RZq8WN6gfAVi1zTEVcGuq9QSgnodaeUCUJ970M4pVgNnCPYHzDfwg1HDXw70mDhw/lO
	zhUkS3mPjhixCM6sXMbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6xh-00011t-1r; Tue, 05 Nov 2019 22:06:05 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6xX-00010s-C6
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 22:05:56 +0000
Received: by mail-vs1-xe41.google.com with SMTP id m6so8006478vsn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 14:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BNIM3D66/Azg3YbAGxb2zW1QAG5fW9Q4vvlsSYbe2Go=;
 b=khVLBRWVxusf3aE0M5MrKx62Oe++CuRS+KMSKCuHE7JSxqPvv2VfNvIiZ4cxk9GprW
 abw7Gs5M44bJuTVgw8PeUbndm2GiKrPoGbtyG/1HyRFaCzIOPEvYaVpS47QGYbLxkN1k
 EhThQrckqd60eakMb3jq5ZvCpR+VWe7Rej+ktXn0G3ta4gTbl/rrlXA8Y/44FW6JNSva
 pXUTC0+JvRcq9/KOBxri17FvlBBWvc82WQme0i84hDJ6MCbHKa3Oj1yxPUj03p0Jrm+P
 ZOG1XOCcRDguAkyTbMvWk3Kc/XSmYgXExORncmzkrxKjVxBgHL6PNlkGOiIRVmIy3BXP
 G/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BNIM3D66/Azg3YbAGxb2zW1QAG5fW9Q4vvlsSYbe2Go=;
 b=jS/lkxGjK/7+abrAAER+GYYEc+4RzsP/ng2Dvyim/hbq5uLEz5FN8WaCL2ut/dcwL+
 sJ/2qEsw3aBhc2aZauHc8WHyxQwQuUYageQxbtILU9GlNNwYRl8Gi4v4Jb7vll9QJJXd
 OPZRHqhkKizvvx/WRfPbu80qkOvV/i684K4iM8CX+8lr3avLWPbzY0dGlRhVivljcrYN
 KWZWA3GVZmLy0Nc+iGqh7e5Iz65JHyRT2SnzIE4vQe4ILVr2gnD6IZ/CvR+9p4SHEB/p
 V0+1mG0oOXueADw33KeRVylP8Mf2Z26xtcCb6fMIEpyqQh4hlVb9CW/7cz7LrFwYyjgl
 ua+w==
X-Gm-Message-State: APjAAAX7oTzqXZUxP42GoYkD8WIkA7h9uWFsEoIHqK5+j9Pwpv7wJy6n
 6klCWRPRqFtWWncCB0YNWqEAsOIpFTAdHIK2kHW+eA==
X-Google-Smtp-Source: APXvYqwEQ6fUE/r/RBzQgo3NUh3rdxSMFsh6pO692U/wnlkZClRp5BWs9eC7JOzQ6JAatKP0Y4DV4dBp0zEFlBlcc28=
X-Received: by 2002:a05:6102:36a:: with SMTP id
 f10mr116554vsa.44.1572991551050; 
 Tue, 05 Nov 2019 14:05:51 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-12-samitolvanen@google.com>
 <20191104171132.GB2024@lakrids.cambridge.arm.com>
 <CABCJKufDnLjP9vA-wSW0gSY05Cbr=NOpJ-WCh-bdj2ZNq7VNXw@mail.gmail.com>
 <20191105091301.GB4743@lakrids.cambridge.arm.com>
In-Reply-To: <20191105091301.GB4743@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Tue, 5 Nov 2019 14:05:39 -0800
Message-ID: <CABCJKufpgoqo84GvV42bO-LVPZ4morV=OhscTNwaBpv-RSwXUw@mail.gmail.com>
Subject: Re: [PATCH v4 11/17] arm64: disable function graph tracing with SCS
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_140555_437658_9D6C5A29 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 11:55 AM Mark Rutland <mark.rutland@arm.com> wrote:
> On Mon, Nov 04, 2019 at 03:44:39PM -0800, Sami Tolvanen wrote:
> > Sure, I'll add a better description in v5. In this case, the return
> > address is modified in the kernel stack, which means the changes are
> > ignored with SCS.
>
> Ok, that makes sense to me. I'd suggest something like:
>
> | The graph tracer hooks returns by modifying frame records on the
> | (regular) stack, but with SCS the return address is taken from the
> | shadow stack, and the value in the frame record has no effect. As we
> | don't currently have a mechanism to determine the corresponding slot
> | on the shadow stack (and to pass this through the ftrace
> | infrastructure), for now let's disable the graph tracer when SCS is
> | enabled.
>
> ... as I suspect with some rework of the trampoline and common ftrace
> code we'd be able to correctly manipulate the shadow stack for this.
> Similarly, if clang gained -fpatchable-funciton-etnry, we'd get that for
> free.

That sounds good to me. Thanks, Mark.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
