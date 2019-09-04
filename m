Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D2EA953C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 23:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axXA586cd8Slb1k8jb6vGRmv6gY8muj3MqJSWtZOkHo=; b=Zjn75xsnmCdkcU
	C8kchJlbVvhBFYpj/SywpMcktvp5TUFuf/4jFI7yKHznYFgNtLXHOjgz9iQ28c2u4Ycd4j2WR0tHr
	7KOjW82+QoI/bn/oEONE+TSxNh/fHDusbNoPvj4tttXeVdz2oDnQuZP8/0GSgkv0rfQ3ZLOgZ5jji
	J6nmBS3EytBh3SjVafE4sMEpA7092E7qGt3rdRIxEDKfwCkLufefxhZ9vOLaBOuNxD3Qf6lPtxzV4
	i9PpGQ1UJfmujmrwMfU89nDFdB/BrvhQzBKKS4+oBrHYzC+DO3od9hCXycnu5ZnCC8bCYPDoUwFXw
	FQgXZ6sQcdtPluI5Gdjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5cwV-0007DW-2G; Wed, 04 Sep 2019 21:35:55 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5cwL-0007D6-3g
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 21:35:46 +0000
Received: by mail-lf1-x142.google.com with SMTP id u13so185960lfm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 14:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uwuNMQc72pWyQK8TRg0HstY3l1Ai6DJhnuFaRewpYp4=;
 b=UP6KagylPWKv8Byd7UP6AZwOW79kEJrWCRQxdYQs3r+rkYYHaRtzINkvSv7M05KzA6
 ZrkfCbIxdXLJg806nwevShkWeJseq5zYukSmtR6H1DU8VX49HoqAiZNvCj+iW0/x6oAZ
 eynsh3dcmA1ab+qwfUmxb81iuiDdfGEMPS8+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uwuNMQc72pWyQK8TRg0HstY3l1Ai6DJhnuFaRewpYp4=;
 b=OWG4gasInV8pk8LncDeJ+malUCjJR2OIIKVtYysQH6vqlQLLpIPm3tKWZq33KlIDbK
 YJu37JcKtU6kDpVSr8ZB9SumaHHkHJTrkoyslUFZGZeCQ5obC0H0z7/zf6gbXnwuSd1D
 /60UlF3UJwnMfZYwngAfcaznbrr59A/ywLu/+Vk76m6jDNsytp48RnwoUCjvDir5QN1Y
 2zWZKjF6gFwYECoATCSkyFmruBp/rRNdBHILm/ShVAhL8r6aMu0PGYWs3IPcyTI+aR0D
 QzAdsno9YbGoasXZtXsfhWFulmAT7uKTCOYtaitbmfEHftVbyTgWt0womsE4p5OkgONe
 pakQ==
X-Gm-Message-State: APjAAAX9DOM5XzJIWd6llEV2n4UOKHaSPA3YTM6F/41GaIuY+C4Pf8Bg
 6ErEOd7RCDoBEtyUnLKV2x2irM61b0c=
X-Google-Smtp-Source: APXvYqy0MZGsg7flM7IpVK50BMbpLN6VdvZJ8hK67svdadxffDg6n7MjFfs6GUg6AQXS1r/Jvka5Vg==
X-Received: by 2002:a19:2d19:: with SMTP id k25mr174548lfj.76.1567632942782;
 Wed, 04 Sep 2019 14:35:42 -0700 (PDT)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com.
 [209.85.208.178])
 by smtp.gmail.com with ESMTPSA id k28sm11733lfj.33.2019.09.04.14.35.40
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Sep 2019 14:35:41 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id d5so192008lja.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 14:35:40 -0700 (PDT)
X-Received: by 2002:a2e:3c14:: with SMTP id j20mr10927110lja.84.1567632938615; 
 Wed, 04 Sep 2019 14:35:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-11-cyphar@cyphar.com>
 <CAHk-=wiod1rQMU+6Zew=cLE8uX4tUdf42bM5eKngMnNVS2My7g@mail.gmail.com>
In-Reply-To: <CAHk-=wiod1rQMU+6Zew=cLE8uX4tUdf42bM5eKngMnNVS2My7g@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 4 Sep 2019 14:35:22 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiHRW3Z9xPRiExi9jLjB0cdGhM=3vaW+b80mjuRcbORyw@mail.gmail.com>
Message-ID: <CAHk-=wiHRW3Z9xPRiExi9jLjB0cdGhM=3vaW+b80mjuRcbORyw@mail.gmail.com>
Subject: Re: [PATCH v12 10/12] namei: aggressively check for nd->root escape
 on ".." resolution
To: Aleksa Sarai <cyphar@cyphar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_143545_173191_A21B5235 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Jiri Olsa <jolsa@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, alpha <linux-alpha@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Linux Containers <containers@lists.linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 2:09 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> So you'd have three stages:
>
>  1) ".." always returns -EXDEV
>
>  2) ".." returns -EXDEV if there was a concurrent rename/mount
>
>  3) ".." returns -EXDEV if there was a concurrent rename/mount and we
> reset the sequence numbers and check if you escaped.

In fact, I wonder if this should return -EAGAIN instead - to say that
"retrying may work".

Because then:

> Also, I'm not 100% convinced that (3) is needed at all. I think the
> retry could be done in user space instead, which needs to have a
> fallback anyway. Yes? No?

Any user mode fallback would want to know whether it's a final error
or whether simply re-trying might make it work again.

I think that re-try case is valid for any of the possible "races
happened, we can't guarantee that it's safe", and retrying inside the
kernel (or doing that re-validation) could have latency issues.

Maybe ".." is the only such case. I can't think of any other ones in
your series, but at least conceptually they could happen. For example,
we've had people who wanted pathname lookup without any IO happening,
because if you have to wait for IO you could want to use another
thread etc if you're doing some server in user space..

                     Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
