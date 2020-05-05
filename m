Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6681C549D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tT2ipP/SbOS7Kya5fOzoXlXHmEl5xxiWRfj7M6ltFdw=; b=VkYBNHxby8KVal
	wFkyokDqiGV2QvHCiOz+qE5HTta5N8uSeoOQBXfaxKipmLVu8Fa28BpxFUMC4118viJHc7bMZ5Ry7
	HyTk/Xdx7HQZR5BqXjRbYEZslpEXr54znzpwazxOPztD1nFPJ0VAE66pVBM/9CkgPLdaPKDOxayWH
	Wo0OA5ZkcrPtk8w3hGxgl6WpZ95L1RvsQEgP4T+FyKj0EjPVDVYBJ4gZT1my3mo6xlgoTlirjEuO2
	a+enlek62Ub0FWsEARhVztPPIHaPW/zbxuZNHkvAZmTlXqAOCeB8RZpD6AeK0ZuBDWXh8TcUCigfH
	yGk9JdQCSea2zH0fDfVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvyJ-0001ZC-1H; Tue, 05 May 2020 11:42:47 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvyD-0001YZ-1D
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:42:42 +0000
Received: by mail-lj1-x243.google.com with SMTP id a21so1242204ljb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 04:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ikKwSi47RkdUncF8ZIue6G09Cc3O7H+FG1YBZJHLO1c=;
 b=PZPHz2sf+Y8/7voSUCVwWYQDTFp6jwT4eccln+h2V5t1fLtEiuMZ5ce3f8GLrLB5/+
 Lv1kPL8izEzV+2IdG5SUTSb1GcCNzzZfyx/zyH1vNX1EgrQil8bLC2Jc+9mBLhAhHXe7
 lOi78W5ciY1Ra0aIWnH4lpyflE7/EEEyKc94UjlHjcZQTnCuGIhy7/dnoqU7UVdaxjRC
 Rdy8T9f0YhG4rZRuZD9UxnGFLdby4z/l2sf/CrEw82JtjLZcoH91Y9xfMaRapGwaeY1W
 cCq9z7jHxn2gQYCZgaN9WotoV7g5/hfB1w9fLaw30A+XNiJTmnTXn2BktrD8y/mxhzoX
 nxVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ikKwSi47RkdUncF8ZIue6G09Cc3O7H+FG1YBZJHLO1c=;
 b=I/JOKmFiP4ysSOVnb5cBWm47o9r7YfdNZ/tNYjPYundoasmKU+YgJjpqDFVXpigJw3
 07jvGDvnx7fQU24qxOCn9tMbnABhUUuMYby/lmWiLhp14bnlnZ6QsMw0KguHJbgteyMV
 9v3zPWJ4Yxqt+8E7g8OWq3xvv82gEChI3nW9EfnMmqbRCVGiSNbp0s3gzwwnvw7eLMMz
 YpGYdQAXzEkAxiXKVl3b0ahbLpEOQV3t+uEQ4hQrfRk8YoYqi1eHIZC+gnb6H0l8/njS
 sjm/bGqg1qV7pKeuFw66AZlizh4NeVdSrOhfzrC7m0Jd48yloPwoGPGDe9OLp9GOnZ4c
 fIqg==
X-Gm-Message-State: AGi0PuYJG73Eo+7BzafJaGAtoB/5hTqCqjeVjSqhmsuxsn4UhkkupFup
 ZGE409swBImprlP4On1eOgI01UTIrarmpFLGQxN9pg==
X-Google-Smtp-Source: APiQypLzrurPKOFHS71dRCXI6iqbXYejtciTu5aveMTkrB6ldhKIG7OBjVfkuUaytzaP4Y/gPJR2+9djLt+JtIxmsXQ=
X-Received: by 2002:a2e:b249:: with SMTP id n9mr1613232ljm.221.1588678959039; 
 Tue, 05 May 2020 04:42:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200429214954.44866-1-jannh@google.com>
 <20200429214954.44866-2-jannh@google.com>
 <20200505104805.GA17400@lst.de>
In-Reply-To: <20200505104805.GA17400@lst.de>
From: Jann Horn <jannh@google.com>
Date: Tue, 5 May 2020 13:42:12 +0200
Message-ID: <CAG48ez3F70-UXwdHmO4CnR0bAForn-SBtstW5WAYjcrLFwS_9A@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] binfmt_elf_fdpic: Stop using dump_emit() on user
 pointers on !MMU
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_044241_097416_E7C77171 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Linux-MM <linux-mm@kvack.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Mark Salter <msalter@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 12:48 PM Christoph Hellwig <hch@lst.de> wrote:
> On Wed, Apr 29, 2020 at 11:49:50PM +0200, Jann Horn wrote:
> > dump_emit() is for kernel pointers, and VMAs describe userspace memory.
> > Let's be tidy here and avoid accessing userspace pointers under KERNEL_DS,
> > even if it probably doesn't matter much on !MMU systems - especially given
> > that it looks like we can just use the same get_dump_page() as on MMU if
> > we move it out of the CONFIG_MMU block.
>
> Looks sensible.  Did you get a chance to test this with a nommu setup?

Nope. Do you happen to have a recommendation for a convenient
environment I can use with QEMU, or something like that? I'm guessing
that just running a standard armel Debian userspace with a !mmu ARM
kernel wouldn't work so well?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
