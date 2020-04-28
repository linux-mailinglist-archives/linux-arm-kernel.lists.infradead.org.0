Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 650221BB614
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 07:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kklrVAwQ/Qj6YuDt9BKDt+O9PSftYwhU4xz9nSht3Hw=; b=Rs4nMnl8Sp9YZy
	JEmrkL/bHJ4GPbJqDBejIbnCa1QxxrZfiyHkgVgV7ECqdxwS58POtIWUBMNiIvlPfOy0a/oK2cmwh
	G1z4gYKGHhhpOJSsznVGJbdD7G27sQQjmGFOtrJnCFC9u0RQO/s/8JbPypD9lkFZA27mlNQtT8L4N
	enPXn9hKIPz+UA19z4vlZpi5ga3qcxeiwQJk9uzlsyfTOGtVQh767P7zAJUagoPzGKfvngvZSE0SN
	1RuV2MC0XZmAd2RmwLAEcHQ7fHJEZ5gCbnS8HQzKu9gwu/9BMd27vB2ZeihqgwseHoIxJyrRT6aA0
	/21sOZIwS25x8xgTGQLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTJAz-0001o9-6b; Tue, 28 Apr 2020 05:53:01 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTJAq-0001nM-Om
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 05:52:54 +0000
Received: by mail-lf1-x142.google.com with SMTP id u10so15828740lfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 22:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3FFyhFGwSR5hCCAOzKWLB8ijhIIWqMIumwJnODZevkI=;
 b=iPpk6l/jcA1BeDumj4n6myfu973lYILM4XQEUj2U9UO9NMB5cveMhC0qpE7+ppX0Bl
 NwwXr3ZGwsusuav6BpzkvqFgO+dDUQglvmVXTDQ34IUs8a2xp5D4asH6xNcUEEJimtrk
 4mtm5HgQpZnnJB3kKT+YlVYWlQz4UCEN0OFbe/rh+0C7PyKRYbDsrVajTzK6hSclaXf9
 o1Q7WzNZJ0dH3MybAy06ZSF5gjc5YwjwPRYVGKunKe3DPdG91fHg0qpIwDWdOtTqhqnc
 iqMeT2xCdTZTQFZQroCmrRgQNoR1D0MlyHpyegg+Vs7bRSY3iiysohCImS46eC/xpdrW
 JKcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3FFyhFGwSR5hCCAOzKWLB8ijhIIWqMIumwJnODZevkI=;
 b=oVWRnNEZG8guCNHbLZYhkA1rWtu9AZlqS4nIzvpPxmbQpXtDKx06ZnTGrlzpCIYuch
 ic2sM97thqorJYS8soBySYvWukzYhEQexZD2S1DjuBaEjB8WYubElmvAiZJUkKiqU9D6
 5l103PK4rtYEjG5BgehHLJ7oHoiMmakzLzPI3uQcjJ5sb09xq5fBLmuBWLMyw+b6P05f
 bH+RPH5/3IWnKQfm5zT5xKJO1KkbewUKwMGeGDwm5F/EGyxYTx99RtTICbLwSBNaCrFp
 c9ccg0gS2knpo3t5AFs4adpo19mqPfjDsO69blk5nzxEdNt9LskwOl+fBLbrBzS1z6XQ
 2zdA==
X-Gm-Message-State: AGi0PuYwFYWantnyvs1syPWC8yR7mz2rs6/vrPPevtKRb49MDEaVSZbg
 j20Niijs2HjeI40oeTtDHNqdcend1T3EnVIZpmuQfQ==
X-Google-Smtp-Source: APiQypLsGvxVV4G5Cnrl0vPMdgLPCcQHgc3r4oAY763aqzMS5nENJMiQ8OSQP6fW4gw42184cs8u8oZQg2fi/pBykaA=
X-Received: by 2002:ac2:5dc6:: with SMTP id x6mr17919772lfq.108.1588053167164; 
 Mon, 27 Apr 2020 22:52:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200428032745.133556-1-jannh@google.com>
 <20200428032745.133556-3-jannh@google.com>
 <CAHk-=wjSYTpTH0X8EcGGJD84tsJS62BN3tC6NfzmjvXdSkFVxg@mail.gmail.com>
In-Reply-To: <CAHk-=wjSYTpTH0X8EcGGJD84tsJS62BN3tC6NfzmjvXdSkFVxg@mail.gmail.com>
From: Jann Horn <jannh@google.com>
Date: Tue, 28 Apr 2020 07:52:20 +0200
Message-ID: <CAG48ez0Nz8Bnty2aKdsUeMoXkjc_Bcxr+EcStZ7LBTOgRt1mrQ@mail.gmail.com>
Subject: Re: [PATCH 2/5] coredump: Fix handling of partial writes in
 dump_emit()
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_225252_829631_F3E73077 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Linux-MM <linux-mm@kvack.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>, Mark Salter <msalter@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 5:36 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Mon, Apr 27, 2020 at 8:28 PM Jann Horn <jannh@google.com> wrote:
> >
> > After a partial write, we have to update the input buffer pointer.
>
> Interesting. It seems this partial write case never triggers (except
> for actually killing the core-dump).
>
> Or did you find a case where it actually matters?
>
> Your fix is obviously correct, but it also makes me go "that function
> clearly never actually worked for partial writes, maybe we shouldn't
> even bother?"

Hmm, yeah... I can't really think of cases where write handlers can
spuriously return early without having a pending signal, and a second
write is likely to succeed... I just know that there are some things
that are notorious for returning short *reads* (e.g. pipes, sockets,
/proc/$pid/maps).

Al's commit message refers to pipes specifically; but even at commit
2507a4fbd48a, I don't actually see where pipe_write() could return a
short write without a page allocation failure or something like that.

So maybe you're right and we should just get rid of it...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
