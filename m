Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0848D159E7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 02:03:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ri6YWvEgdYBP5Fu0FOSuRy3h+FfoI6lEgJVAYCrt+4U=; b=d4OZ+MoA4fduPv
	oiEd4Umc5K/5V+NXr8BGsT0zPxC8ZamhhwPKk+qOo9HkozvJJomlif1uwqwnUtbzxvF7whEJWpazN
	lRT9p5lDlQY7DZhX8qiRH2fcTmgZ5hoWOZd2O31MLJy4g7BD1GDal622BvpFNn3iLO9pDnWcrdnS4
	Bw1uW011ItMIsYGinLAzT7GlwMKvM/8MtGkKwmXw9D3eKkY2w8pI/ONSpALEbYVhUXNDcQiAnP/38
	jy9vgOAB9/+qveg3KiS8xP9dreqSsC6bDWZdefsN6qeseCpYr2D6IGyC27/nGoZ7CrNmGx4FCra+U
	osTQHTOxUW8ZTTx7XZiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1gRD-0006Tv-4F; Wed, 12 Feb 2020 01:03:35 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1gR1-0006SZ-KU
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 01:03:29 +0000
Received: by mail-lf1-x144.google.com with SMTP id 9so287497lfq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 17:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zy6kGEEkqAsEiZzWHqRtvxnsI6DtM6n9AdiuD2GudTU=;
 b=fBxG1HcrByKfPtNty2DhtyD54YlVBt8nIN51NK2VPpgZ7L26CoMAQYrrNez+Edd1Gn
 KLAHlVWkm3Q8uZOGQqKfncW351w+GkpekQ1AxurxF26lO2WmqXR1y7xwYNvUiRUf7dX7
 p/ZI6Bsp5G+eMc0JFhnEsMBjvUERkEUAYwFn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zy6kGEEkqAsEiZzWHqRtvxnsI6DtM6n9AdiuD2GudTU=;
 b=N5wQ0xc3+Q3uG4cUNpYSPiqTK9d284vGHg+F8Lsg1j8B5TmsFPGd7y1NfpE8X/W++w
 L/bba/FHB7UJg4l+nYdlGKLPvdxrK7K2Z2xpImmcqoSCOYk6sktv109W0AmVlKJE7Vif
 iIl0nUexUWNAM+n2ff88ANXaZGdI6JoU4KqCHDaQ45o1WUA7NWv/Txj4Dx6UzXg42EJg
 sPrIpuxsabzgFiIAtaHo8u91IlRiRUS7ZjWxoJVLdCQhBVkCfbBhohIWGo2gk+i8uRWH
 lQ3PmW/9H0zjKdWmrh7K9loklK9YxRMEHKUXuA96vb4pW/y7nD1C+oI3AMAIqnbQwgvv
 biSQ==
X-Gm-Message-State: APjAAAXfsx493u9Jm89DuUm10EJNxdjrhiEGcgzRYjkH2N+aGYXPuIOT
 7leb0ZA6TGDODqSlZ2SyFgLqDC6TC24=
X-Google-Smtp-Source: APXvYqwdUDunt7Eo22hpClDQ+KT+sBQdhLzmS3LzkneDpxcHNQlYh95p6XjUx+NOnSr1Wi49BKktpg==
X-Received: by 2002:a19:84d:: with SMTP id 74mr4953170lfi.122.1581469400462;
 Tue, 11 Feb 2020 17:03:20 -0800 (PST)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com.
 [209.85.208.172])
 by smtp.gmail.com with ESMTPSA id o69sm2580398lff.14.2020.02.11.17.03.19
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Feb 2020 17:03:20 -0800 (PST)
Received: by mail-lj1-f172.google.com with SMTP id n18so298551ljo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 17:03:19 -0800 (PST)
X-Received: by 2002:a2e:580c:: with SMTP id m12mr6104508ljb.150.1581469398565; 
 Tue, 11 Feb 2020 17:03:18 -0800 (PST)
MIME-Version: 1.0
References: <20200211175507.178100-1-hannes@cmpxchg.org>
 <29b6e848ff4ad69b55201751c9880921266ec7f4.camel@surriel.com>
 <20200211193101.GA178975@cmpxchg.org>
 <20200211154438.14ef129db412574c5576facf@linux-foundation.org>
 <CAHk-=wiGbz3oRvAVFtN-whW-d2F-STKsP1MZT4m_VeycAr1_VQ@mail.gmail.com>
 <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
In-Reply-To: <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 11 Feb 2020 17:03:02 -0800
X-Gmail-Original-Message-ID: <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
Message-ID: <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Andrew Morton <akpm@linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_170323_684759_A7803A68 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michal Hocko <mhocko@suse.com>, Rik van Riel <riel@surriel.com>,
 Dave Chinner <david@fromorbit.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Roman Gushchin <guro@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 4:47 PM Andrew Morton <akpm@linux-foundation.org> wrote:
>
> What's the situation with highmem on ARM?

Afaik it's exactly the same as highmem on x86 - only 32-bit ARM ever
needed it, and I was ranting at some people for repeating all the
mistakes Intel did.

But arm64 doesn't need it, and while 32-bit arm is obviosuly still
selling, I think that in many ways the switch-over to 64-bit has been
quicker on ARM than it was on x86. Partly because it happened later
(so all the 64-bit teething pains were dealt with), but largely
because everybody ended up actively discouraging 32-bit on the Android
side.

There were a couple of unfortunate early 32-bit arm server attempts,
but they were - predictably - complete garbage and nobody bought them.
They don't exist any more.

So at least my gut feel is that the arm people don't have any big
reason to push for maintaining HIGHMEM support either.

But I'm adding a couple of arm people and the arm list just in case
they have some input.

[ Obvious background for newly added people: we're talking about
making CONFIG_HIGHMEM a deprecated feature and saying that if you want
to run with lots of memory on a 32-bit kernel, you're doing legacy
stuff and can use a legacy kernel ]

              Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
