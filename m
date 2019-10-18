Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B42DCCFB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nopyneM2JPUkA2AmhuBPN7h3sl+cwVSDKD0UV32pO8w=; b=NGqgQ5cm5X1MDb
	eJElAvu68g1kDBwwjxqMYk+eiINwFlVPZbH/v4w/Y1y/ORnaR0KmCjjl/7zGknOWSQlHWp3MsgQrH
	yVCbpp04DiXgRHXdp6S8TU6/vB/FYvMturfxc2pwh01IMF1B/TFMgzQsOeTSMGbEeQGS4i0JHSG8b
	vKtT+HHmPaZh2/h8Op9bAL+93u+34mFcymkWopTCqPbcAZu0vPxbk77G5oiQyfJkQzQkZyaVA7jUo
	D3STDVoq0bwCqgexO3wAFNpMCK+fnbmTDdNenBIPlP/rZdiRYjbMS5gY9+azRAwMoDOSq4yoogNc4
	dGc9G+0tcOLszd7F+yGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWGy-0006YP-AA; Fri, 18 Oct 2019 17:42:44 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWGo-0006Xo-IY
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:42:36 +0000
Received: by mail-oi1-x244.google.com with SMTP id t84so5872746oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dgmibiKo/0d1me29Z9Dof5MRYzr1N/NxNY1XetBfk8Q=;
 b=Im9v9MzyOaL8U2ABodimQMiMTAEx/ALWm+2aNR5YZ26YuKvMczxnA8y18urxRuG5/+
 XnQcLW/emDRhYE9NXkabF0vkvtB7/B1OFfA8yc2+J/8ojxg76NYqn5XEF+6dxQ3j2h+N
 W8t6SnO3PNtg31COYmZhMXfuGKIHm2m38ocLOoiR9IX5P9GsCHQlOalXy865b6wos+FW
 B0+x6QnnBH3aiaVPuVUZ0KG2tSujXnqZN+BcWBmEFAt50N0+lqqz81wqX9FfykNabdgv
 GbBqtF/9x13uD9f2ebYbNP8caXnjBcYIO58ADq19axMfogTi2lrhNIWRqNxK+9X+cD04
 +xjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dgmibiKo/0d1me29Z9Dof5MRYzr1N/NxNY1XetBfk8Q=;
 b=jMATUt5knyDSVHgfoPEJICeNLpZ0KP8TFmvZqnEmiop2V8Ad1raFyjpSZykpD6dvcj
 ZD9KftbWXFbBSoTGJgjd/ZN9On/iOJYlF23L697ccJ/Rfs0nLbShKHbdSKTD+JROM7gZ
 bit+z+mB190dbm9RPC2ccYuwDMSfurN1r/sg4lQKS1t1W1XiVsCkH3+8rbVIEcmgHgox
 1FRHz6TRBpyScsMO3BgFX8ZNPdUlUQMY8AVPeAVQygIi2WKw/hGYD2BFN7zmaZ+J6k4f
 rubTFR9G6Lm0mErBVVjAyaAltN4TuZ/N7hzyjDbqCO/P7kwts2y1hKei+QvXlxI2jZ5e
 4MoA==
X-Gm-Message-State: APjAAAVLt50sU5dzI7qBTjNXBTR5ypjCa+OciswTVud06mTcakUCIrED
 M5dUB7QHVwKY3hG7WR+fMcNwuMG/KBpmgO0Stl6BlA==
X-Google-Smtp-Source: APXvYqwal8PqTswvVVivN8N3jgNtD8TTtzaGZToccBg4XVuLF0lDOlAL78wRlCO4ZNDrki8LF+IX3VdRa5kC4ELpgWY=
X-Received: by 2002:aca:cd4d:: with SMTP id d74mr9183592oig.157.1571420553320; 
 Fri, 18 Oct 2019 10:42:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-7-samitolvanen@google.com>
From: Jann Horn <jannh@google.com>
Date: Fri, 18 Oct 2019 19:42:06 +0200
Message-ID: <CAG48ez30P_Af-cTui2sv-YVUY5DdA1DXHdMmAW1+KpvjEPWUOA@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_104234_633301_3BAC83F7 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 kernel list <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 6:14 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> This change adds generic support for Clang's Shadow Call Stack, which
> uses a shadow stack to protect return addresses from being overwritten
> by an attacker. Details are available here:
>
>   https://clang.llvm.org/docs/ShadowCallStack.html

(As I mentioned in the other thread, the security documentation there
doesn't fit the kernel usecase.)

[...]
> +config SHADOW_CALL_STACK_VMAP
> +       def_bool n
> +       depends on SHADOW_CALL_STACK
> +       help
> +         Use virtually mapped shadow call stacks. Selecting this option
> +         provides better stack exhaustion protection, but increases per-thread
> +         memory consumption as a full page is allocated for each shadow stack.

Without CONFIG_SHADOW_CALL_STACK_VMAP, after 128 small stack frames,
you overflow into random physmap memory even if the main stack is
vmapped... I guess you can't get around that without making the SCS
instrumentation more verbose. :/

Could you maybe change things so that independent of whether you have
vmapped SCS or slab-allocated SCS, the scs_corrupted() check looks at
offset 1024-8 (where it currently is for the slab-allocated case)?
That way, code won't suddenly stop working when you disable
CONFIG_SHADOW_CALL_STACK_VMAP; and especially if you use
CONFIG_SHADOW_CALL_STACK_VMAP for development and testing but disable
it in production, that would be annoying.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
