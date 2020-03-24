Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BEF191BF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 22:29:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KdfUgMyN2weHzgK0Uh/jmc3zQfrKJlcLzyxgAdVGgzc=; b=PoVZo9DGTeyH3/
	PGIDNHOuYKV2wFioSCNFS3fVTJ7bMiZ6mldCtyN2mBYI1aKRdoJPerhMUXVOyLt7vCbQEKC+HmdmQ
	W3nb8vngksVgbem9t6tMB+d6TkqAwH6RrDqDCLjq581fFxAXWs5B+mQ8lWHenmpWQaUbX7JR+lMCw
	XBOtgKjtRmM5R5hbtnYHK8NgACjBNfX+P05BcMGHWBt6LbEi1Z6bK93OcAiGZGTIXP7qA58Wy02Ez
	uiwo1PDUEZ4SA87iu1gYKPKPM+yu+tgjLUDY7Lc7edozL5c3BjGUis+QbKlRXefMPmdPpwB+PkIJl
	ob03FELJ1+bFME/LrIAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGr6p-0000EL-N2; Tue, 24 Mar 2020 21:29:15 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGr6h-0000DB-Q3
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 21:29:09 +0000
Received: by mail-lj1-x244.google.com with SMTP id 19so272507ljj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 14:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mt9R6MAwAgMsRiTLzlySm2VmV71YyEXXijbHmE8WTzk=;
 b=YSCmWxRY40BGiMze1Yvin1YLkJXXl+PFUME/YQdtuWumwzPRmAdvKghADmWKlRrN0K
 f9xnko63sgT0KH37iYw/9/MXZe1oLeb2jpfOZFVn6TSxlkYn1LgOxa54s9Ewh6bUAMOy
 BTu90myx9FunEp53IT4emC25nbXXzPJhnl84W6vhgEIa5wtgGP30cMvv/5ZskWvr8+4O
 Nr3uuT2MSmd1BDUPB1tsmSRiIQExkkO/w1eNM2f0qE61UeZwTTOh9IfxQOOmNTpezIgO
 mLkwFd5DYS6Gf4stv1h7MySVYHXya5QyIbq/2+4YJQUlIUc7dad9mqPuRzul6/Z7nzr+
 FAAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mt9R6MAwAgMsRiTLzlySm2VmV71YyEXXijbHmE8WTzk=;
 b=QljomrkZBOp18+ux6RxxVOH8hyiOA+8tabnAQtcAKjdzkKE55oi5MWEc6IAoa9/xq2
 vrdaGmuPwMyiaur8PbQqDPnK6D+AWFIrscuQ5RW5CUksND1ERXjOu9LTZ4FGCKtCDG6j
 u53Xev5hUdwJgq9LctbdZRAw59WO324G14Zq5+xXM82giEFKvkZuIUiuxT97t8s3hyKd
 nMZ3LA8p52pLch1yEXOYqPsd/JHIMBRGxdw7Fc2BqcDAwOsyIfOVNRTziY16o0obge1W
 Z6jM+dBjqkGi/4H0VtrDFDLKXoVn5JmS+i1QaMoy0LQpgqaZFpbdQCZbu5dyImvoOjAY
 n90A==
X-Gm-Message-State: ANhLgQ07DBmC/HFxxqnhmaT92oUtfbwEJUfrrPcIy7srD+0Xrbkm8Xyk
 YHMJmyFwyO7eoj7uHaOetaBfZhk92xxkpLq6+CyKFw==
X-Google-Smtp-Source: ADFU+vv8d+tvt43tW6wjpsme/liCuo5+2rssm9plm9lpdQXp8OhLUCZZ8xFwlvpxLM+HptNYxGF5KgkzMO7Hg0NPccQ=
X-Received: by 2002:a2e:89c1:: with SMTP id c1mr17348550ljk.215.1585085342690; 
 Tue, 24 Mar 2020 14:29:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200324203231.64324-1-keescook@chromium.org>
In-Reply-To: <20200324203231.64324-1-keescook@chromium.org>
From: Jann Horn <jannh@google.com>
Date: Tue, 24 Mar 2020 22:28:35 +0100
Message-ID: <CAG48ez3yYkMdxEEW6sJzBC5BZSbzEZKnpWzco32p-TJx7y_srg@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] Optionally randomize kernel stack offset each
 syscall
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_142907_868623_06F234DA 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>, "Perla,
 Enrico" <enrico.perla@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 9:32 PM Kees Cook <keescook@chromium.org> wrote:
> This is a continuation and refactoring of Elena's earlier effort to add
> kernel stack base offset randomization. In the time since the previous
> discussions, two attacks[1][2] were made public that depended on stack
> determinism, so we're no longer in the position of "this is a good idea
> but we have no examples of attacks". :)
[...]
> [1] https://a13xp0p0v.github.io/2020/02/15/CVE-2019-18683.html

This one only starts using the stack's location after having parsed
it out of dmesg (which in any environment that wants to provide a
reasonable level of security really ought to be restricted to root),
right? If you give people read access to dmesg, they can leak all
sorts of pointers; not just the stack pointer, but also whatever else
happens to be in the registers at that point - which is likely to give
the attacker more ways to place controlled data at a known location.
See e.g. <https://googleprojectzero.blogspot.com/2018/09/a-cache-invalidation-bug-in-linux.html>,
which leaks the pointer to a BPF map out of dmesg.

Also, are you sure that it isn't possible to make the syscall that
leaked its stack pointer never return to userspace (via ptrace or
SIGSTOP or something like that), and therefore never realign its
stack, while keeping some controlled data present on the syscall's
stack?

> [2] https://repositorio-aberto.up.pt/bitstream/10216/125357/2/374717.pdf

That's a moderately large document; which specific part are you referencing?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
