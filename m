Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 795A3F9DA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 00:01:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8lq97ynsTL/6D8Q0aeG8duHYCXpaOpZLvjZVo4at18=; b=lEdNQSxgtUkerQ
	p25LLk+VXHNzxICxyyW9KkSkIibFYXfgR2j0UWKXQYXXzamu2A8sHmwJJ3WEBuZBQHSVwZph6UkEp
	RLWUzErjS4WtUc+ssWYYoEwyOwaZK/ur8nMwH18/Ab8u9MfXxL3WrL0VMLM2zVGZLLr2XlO67eKCO
	pbUskkHlNIR+4sKDtAXMK7+Wdg0PjiN+TPdpERMi8kcUyoFodQHXexr+ECSO2npFO1qdHu6EOvjf2
	KnEAGracm2vCUxXVRvbG/ZDzeWV9g5iRtGjjorrwyQt+B66uA1d8eP4qfKVn/WeNWEBMJV8MzxE2c
	whFQKtJtUQqy62JV9Z6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUfAJ-0005yg-F6; Tue, 12 Nov 2019 23:01:39 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUfA9-0005y1-Fc
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 23:01:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id bb5so171063plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 15:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nExhpa8NtyhyvUyh20F6httON+9jpHubOC8X4R1/1QI=;
 b=c4HijsXEjZGJqE7HF/OLTdBXGVnY9qLmNBULMzMpbSwMDUdlWMyYkBAj7Jv9KvJQq9
 uQ/fhhX6CbwBVqkc6vhI0J9bVR6S+eypweTAwvYsABomRnDDk1wGcU2hJ/fV4/K6uu+1
 c9+G8zkVxO8gfkNV8xNJ/wUCIdP5veO1BJPEs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nExhpa8NtyhyvUyh20F6httON+9jpHubOC8X4R1/1QI=;
 b=a3mmyz90jHnAwqAzvPglJ4y6s37/NKRHy02ffe25jSYfkL5FxFMKd3MpFBJw9Kg8rf
 qGHbzi5ZhqmJddAyyx9YLA/3v382wgXNjXzaRiynkeKi7lP9MtvAJBVpTT5LOHvTe50Z
 g8A7SKSEg1TqGkdyq2XdGFBHIguXNAQ59io88PyYLe/pFNrVjxS8/689JLc5PGjSZ9uQ
 G0vfkbGApHfsOHvE27um20gMAZLZfQbvJP1hqTEJRXODoaTUQ14zmOnwC8anq6x9ByR/
 vhbrRIVQO3M2RKe246bCdcGrRzMxcJ9kBBatB4rxWet40W/cUTiE+cAyjDqyfw8UGJEy
 V2DA==
X-Gm-Message-State: APjAAAWgm0bXVce6W3xSxTqrMRMm+T2RaQKOgPUNRGot/lLIZXw18ctG
 J7gRURlq7/8QT8U4pbr8reyObw==
X-Google-Smtp-Source: APXvYqy/dNw+1S0sgv4o54+xgQ9m/sDAbXJguDm6De1m1sF3Ucjez84Z50LDqlIQCV97XGMiY2eUjw==
X-Received: by 2002:a17:902:b282:: with SMTP id
 u2mr266015plr.301.1573599688858; 
 Tue, 12 Nov 2019 15:01:28 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id em16sm159840pjb.21.2019.11.12.15.01.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 15:01:27 -0800 (PST)
Date: Tue, 12 Nov 2019 15:01:26 -0800
From: Kees Cook <keescook@chromium.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v15 0/9] open: introduce openat2(2) syscall
Message-ID: <201911121457.7D02692@keescook>
References: <20191105090553.6350-1-cyphar@cyphar.com>
 <20191111132404.y523iqicbn6fivx5@yavin.dot.cyphar.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111132404.y523iqicbn6fivx5@yavin.dot.cyphar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_150129_540494_E853EFD0 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, libc-alpha@sourceware.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 Chanho Min <chanho.min@lge.com>, Jeff Layton <jlayton@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 12:24:04AM +1100, Aleksa Sarai wrote:
> On 2019-11-05, Aleksa Sarai <cyphar@cyphar.com> wrote:
> > This patchset is being developed here:
> >   <https://github.com/cyphar/linux/tree/openat2/master>
> > 
> > Patch changelog:
> >  v15:
> >   * Fix code style for LOOKUP_IN_ROOT handling in path_init(). [Linus Torvalds]
> >   * Split out patches for each individual LOOKUP flag.
> >   * Reword commit messages to give more background information about the
> >     series, as well as mention the semantics of each flag in more detail.
> > [...]
> 
> Ping -- this patch hasn't been touched for a week. Thanks.

If I've been following correctly, everyone is happy with this series.
(i.e. Linus's comment appear to have been addressed.)

Perhaps the next question is should this go via a pull request by you to
Linus directly during the v5.5 merge window, via akpm, via akpm, via
Christian, or some other path? Besides Linus, it's not been clear who
should "claim" this series. :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
