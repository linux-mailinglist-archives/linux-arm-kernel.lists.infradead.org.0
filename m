Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28008258CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 22:23:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4kcaAIaDR0H3GIEDIQLcBEDRl3VIG8RlAF/TPdFW/Qo=; b=ByvtOV/tniVCjx
	rQxI1bYyt65F7fqMHFv1ONJmDbs51AVL5J8Rg7Y6g9+Qo1093/P/ucM+xIgxVj1+Wv+RdXyDJYUkt
	Gj3WM6159SZQlkvawWIg/70emzZ4Js33l+IKrd5vm3oixEv61KB7P1x9skSgEjV8YW/xEIoYgB4eB
	xdVXCeOQpqhjgSBYLYCLyAnj++8YJyuWoCyBGR+ZqxkcUSCrmwNTons7s11OO1a2iHEa8FCeBbOPj
	6CXwoFh0GDwj+7KQY5/BD/0ECt5rujCWhSsntIlmy/G8E31pmC8BXsGUcO92ztKdRYgPHYmvpc4XP
	Dt3q6OfwKin6w0R7nbAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBIW-0000Mx-8s; Tue, 21 May 2019 20:23:44 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBIP-0000BL-G3
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 20:23:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id x132so14117379lfd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 13:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mwA8SKkNo0NB1BSSFbQlGkhBkIi6dkzdh19hX1ggqqc=;
 b=E9cuWHFCD4Bgx1lOv97Ctr9bLKO3EjHQDpiZyM5FZUFuOxpsSHENK8V3oPkAEWY2CT
 4OwJ0l1afyS0KlYgZEStFftLyE7H7JbMd/BnYgfS8lVdq73pcYKuqkBJcrl7o7GLJZCx
 7466NcnIhfaDTvK1H+iwihEveSzhyKGC/2Zgk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mwA8SKkNo0NB1BSSFbQlGkhBkIi6dkzdh19hX1ggqqc=;
 b=Gw0k+yyaZC/BDIxn6PL4ozUGQtCUl/pZ2SXE9xh9WSR/cPT4g6kPJ1Cq2Z5wLG8pSH
 xHT7BaJ5AVq+tfGs/b+Iwm7rrK7RyPyA/kP+HOR1EqQjYuLIutAs7iZ+wSSq1BAA2QA4
 VabxOxmIJubLErVbVVsePRPtIzM2kn1GrJOprjhY7eFkq+Qr8f0Cf2DNRfBtexX5gusm
 9idPvLLQLQVuzEkUT05k80zKmS3uf1ecZCmgO/yPG/VjJR5O8ojspfveQi42Aj1zLfe4
 QPjyfwIzMMOpyeAvqU8f/5xq8sJAlxBsyF+bj5KJc2iEcsnNh2qWOL5mHHkiu60t+EGh
 OzPQ==
X-Gm-Message-State: APjAAAU69nfEIC2abKWRkpTmFFHKj3UkojCEdCWO3+H9XieJQisto3Ga
 RwfPtljyMLmXK/RnZCyOMiBLPqoq4UE=
X-Google-Smtp-Source: APXvYqyD5+vkCllgYKnKQlf/gFDeZd0h1XwKz8+McY4j7zV1du+vAE0UyNNVgHc0toOpBmVgS1X0Ug==
X-Received: by 2002:a19:ccca:: with SMTP id c193mr40774771lfg.36.1558470210582; 
 Tue, 21 May 2019 13:23:30 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id y17sm1438451lji.66.2019.05.21.13.23.29
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 13:23:29 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id j24so12911ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 13:23:29 -0700 (PDT)
X-Received: by 2002:a2e:2f03:: with SMTP id v3mr4725518ljv.6.1558470208997;
 Tue, 21 May 2019 13:23:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190521150006.GJ17978@ZenIV.linux.org.uk>
 <20190521113448.20654-1-christian@brauner.io>
 <28114.1558456227@warthog.procyon.org.uk>
 <20190521164141.rbehqnghiej3gfua@brauner.io>
In-Reply-To: <20190521164141.rbehqnghiej3gfua@brauner.io>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 21 May 2019 13:23:13 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgtHm4t71oKbykE=awiVv2H2wCy8yH0L_FsyhHQ5OSO+Q@mail.gmail.com>
Message-ID: <CAHk-=wgtHm4t71oKbykE=awiVv2H2wCy8yH0L_FsyhHQ5OSO+Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] open: add close_range()
To: Christian Brauner <christian@brauner.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_132337_543650_D489A2CD 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Oleg Nesterov <oleg@redhat.com>, David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Miklos Szeredi <miklos@szeredi.hu>,
 the arch/x86 maintainers <x86@kernel.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, tkjos@android.com,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 "Dmitry V. Levin" <ldv@altlinux.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Florian Weimer <fweimer@redhat.com>, linux-parisc@vger.kernel.org,
 Linux API <linux-api@vger.kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 9:41 AM Christian Brauner <christian@brauner.io> wrote:
>
> Yeah, you mentioned this before. I do like being able to specify an
> upper bound to have the ability to place fds strategically after said
> upper bound.

I suspect that's the case.

And if somebody really wants to just close everything and uses a large
upper bound, we can - if we really want to - just compare the upper
bound to the file table size, and do an optimized case for that. We do
that upper bound comparison anyway to limit the size of the walk, so
*if* it's a big deal, that case could then do the whole "shrink
fdtable" case too.

But I don't believe it's worth optimizing for unless somebody really
has a load where that is shown to be a big deal.   Just do the silly
and simple loop, and add a cond_resched() in the loop, like
close_files() does for the "we have a _lot_ of files open" case.

                   Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
