Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE85F0084
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 15:59:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6no5fG/Ghf0bjN3kU1UGStPhKxZvh9DC/yltyPhuJJM=; b=dGqCeyYtDz59ud
	lTEMZaydYzlNJbKfmmTD15KvxKv2k2mEfDbeLMgpIIcmue+3+Pd5+jAnRg/aDlKW8kDhb6slxcRBU
	kNCFullnkAyrakr35EXWhgnGDdTEp+e3iPFYq3HbfZu8/oxxGIdSDoJmVPJTLtve3wY7IsILsOE78
	9wsWZnjo+sUkpRRAEAay4IHeIqmtxLgvqfrB2/mtZo0NhsG95b15/yqedy056bybuTEdu5wp8YCdY
	3K/g4k5W15wtrXtEND/ET9M9mlc6RLEl/fe0Xy201kNdhuTFiiPuETUPQdgLYHznuQFvzsKGYAG/N
	gv1IRLYSIFq9dfpimh0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0IJ-0004zT-59; Tue, 05 Nov 2019 14:58:55 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0Hx-0004sI-Ck; Tue, 05 Nov 2019 14:58:38 +0000
Received: by mail-ed1-x544.google.com with SMTP id s10so1406381edi.5;
 Tue, 05 Nov 2019 06:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OsGNCpli0aKylNdzfXqGGNk51dXTucSwdxTJSWlZuDo=;
 b=BezCicS6Hxs25abhx2HqWWKnW19usdAdHbmmOP2sbmgjL77FDHp8bVN1/AT3xOfj5+
 udDjWeZ3lJXPL/opmkrCC4myrHN06gDmaHa523NqDfpz5IWjUEzLlxhae2YuPl3gkiB+
 kNwA63wA7d6kdzUFZgXFaIqreDChdIkHhupc7Uc9B5JCVgc213itt0UrYqYTwcLwPH4B
 um7GQlSM1wSTKphTjpiFXqJeX7zoaW07rIO/oTIoIuOKL5MtNTXRZj19NUfYDTFskpxq
 vhNOs547ShZK42QJR3kMK0VllmNCguEZD7l4pdtAWQUZbwx5iwspibI+9d19FoEKKs4F
 Gj3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OsGNCpli0aKylNdzfXqGGNk51dXTucSwdxTJSWlZuDo=;
 b=IzJP2PwhdNGZ3cweHqv+JOTpOikkiEWDGdCVjmrt6AIVssLm24UqTQ/mRApFqN2Zec
 2gWdQpO9uVpbqYtWMD/8YPjNDMlYqA+AKUxdtIXi0nsF1TG2q/1LExJLSufyd29W1j/b
 bkJwASMTIzy6fcdxyC462awQ1TIykgyDIR874Pv+wgo+Z4wWUM712c0i2UF/cgvlgRDi
 K352OdHD3mjtOE072bytdNITvKQNcIA2zpa7umN4cIKZ3gnenhOKl5UEKgPW16xgeTrV
 yC7S8ZDKKnQP/rJSxRPuDB81+qgcxLQMYtMvVIAfpwW6JE/c/6O8bcZg4hBW0gpcGFja
 31Dg==
X-Gm-Message-State: APjAAAUXwf+ynJIx0ATwe/hY1ZN+gOVnOxSCKmKkSnYNb3O5whhVk+DU
 tKk4eEIeauQo5m1L6Z7L3CctsA6+1E5K1l9bgyM=
X-Google-Smtp-Source: APXvYqy43mMHO0/x0G5HbHOwDOkgrETQbEGRexxUmLoW5TvTDXB/Ovve31RulrcR4/womJ50Dbe66S9RauKfI3+xvyk=
X-Received: by 2002:a17:906:529a:: with SMTP id
 c26mr5331884ejm.69.1572965911324; 
 Tue, 05 Nov 2019 06:58:31 -0800 (PST)
MIME-Version: 1.0
References: <1572938135-31886-1-git-send-email-rppt@kernel.org>
In-Reply-To: <1572938135-31886-1-git-send-email-rppt@kernel.org>
From: Anatoly Pugachev <matorola@gmail.com>
Date: Tue, 5 Nov 2019 17:58:20 +0300
Message-ID: <CADxRZqyJewYKn_juVPrxm9KVQjZQngnig-FYf1q3G6wc=oawYQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/13] mm: remove __ARCH_HAS_4LEVEL_HACK
To: Mike Rapoport <rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_065833_486568_6B19C506 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matorola[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 linux-mm@kvack.org, Sparc kernel list <sparclinux@vger.kernel.org>,
 Rolf Eike Beer <eike-kernel@sf-tec.de>, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, Linux Kernel list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 10:16 AM Mike Rapoport <rppt@kernel.org> wrote:
>
> From: Mike Rapoport <rppt@linux.ibm.com>
>
> Hi,
>
> These patches convert several architectures to use page table folding and
> remove __ARCH_HAS_4LEVEL_HACK along with include/asm-generic/4level-fixup.h.
>
> For the nommu configurations the folding is already implemented by the
> generic code so the only change was to use the appropriate header file.
>
> As for the rest, the changes are mostly about mechanical replacement of
> pgd accessors with pud/pmd ones and the addition of higher levels to page
> table traversals.
>
> With Vineet's patches from "elide extraneous generated code for folded
> p4d/pud/pmd" series [1] there is a small shrink of the kernel size of about
> -0.01% for the defconfig builds.
>
> The set is boot-tested on UML, qemu-{alpha,sparc} and aranym.
>
> v4 changes:
> * m68k: fix sun3x_defconfig build and reorder ifdefs as per Geert's
>   suggestion


Mike,

tested your patch series on a debian sid/unstable sparc64 LDOM running
on a T5-2 sparc server - it boots for me.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
