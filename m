Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF413160330
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 10:45:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbb7bHw3YvqHxd66AtmIOAUCdfAM5BoWRb/Evz+cFFY=; b=AToQT2SYa/W2Kx
	G7HPeRriK9xYhnkqdks57pUBA3o7DmYXXg43wgxcTbRla5M2FNIN06S1kNxZ/udAQoCdO1pIxUMlJ
	+12JNWwYGnFb1GB35ZFhTKNY1P4x2tr1ZtWYovDYgjDJzU/7xL1O3o+uZxzBrM5RyD3S5JebtR3/h
	8JkWFA2YEGOnBbUbBre0dkfK/HYLg2yFiYsEdv/Yjs+u/OTcpcsyP6UUZhH1OHWUfE+H6ZvdcrkU5
	3A6z0z9sK6c9WgyOH9r+zc4sylPcPgn5Vwbr8lT8/LXLusKRapB6olg4DqEL8HJJDJgFFH0mAxnPL
	nFR8qRMwYPsPgA2hoTOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3GUD-0007mZ-Nz; Sun, 16 Feb 2020 09:45:13 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3GTv-0007lx-ED
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 09:44:56 +0000
Received: by mail-ot1-f65.google.com with SMTP id p8so13265331oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 01:44:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wxad/rW0ARD7ILkeeK41v/OzIsUc8vRXWXFBEAQPs0M=;
 b=R2Sgv/eGOg128qFVM1g8HI2y6YwpCysc3dAhX9AnQNI63elKPmk2UfeOiJy8Bz9hLF
 N0qgZF5qgiYhO0LcnWV8nKJHEzV20GdsATE4TdnGycRyrjjMut+uOi6Y7mvaVQVrhsrr
 ko7Ck3WSCb24r5Osv1/6A7oWSeVekSGjwKJr7EU2NdA5FBclKPIYvTy8cIdjS/HtZ/hF
 VKVpKgHuz4Upywrz9hudtxsauzhRmKtFgUbtRFkzHnQEYC10uHigZQ8uCX9RIbz1ugPI
 PetX9koDVyZsH5YV2gr5l+RhPStI9uDztZD7WlmDsxMtK6Q0wlysAOYPXxHQC7GwnvC/
 YFBw==
X-Gm-Message-State: APjAAAUpbHhTTeiNcx3JEP7Au0p47HonQCJH2InedLKa9Jgz/CedBObC
 AzbvHkToqNf4PYUI3d0w6kwS75OCh20IoDx72Fo=
X-Google-Smtp-Source: APXvYqxGgw2AMExBCXV20bfh1/5LPO7zAfx126+WuiZFxkn1B98Q92ANdmMo6uPnqnouDbk/Nip7wbyNSUuEMPTQI4c=
X-Received: by 2002:a05:6830:1d55:: with SMTP id
 p21mr8308018oth.145.1581846294102; 
 Sun, 16 Feb 2020 01:44:54 -0800 (PST)
MIME-Version: 1.0
References: <20200211175507.178100-1-hannes@cmpxchg.org>
 <29b6e848ff4ad69b55201751c9880921266ec7f4.camel@surriel.com>
 <20200211193101.GA178975@cmpxchg.org>
 <20200211154438.14ef129db412574c5576facf@linux-foundation.org>
 <CAHk-=wiGbz3oRvAVFtN-whW-d2F-STKsP1MZT4m_VeycAr1_VQ@mail.gmail.com>
 <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <CAMuHMdV8-=dj5n-FM1nHjXq1DhkJVOh4rLFxERt33jAQmU4h_A@mail.gmail.com>
 <CAK8P3a0m574dHYuKBPLf6q2prnbFxX1w7xe4-JX-drN6dqH6TQ@mail.gmail.com>
In-Reply-To: <CAK8P3a0m574dHYuKBPLf6q2prnbFxX1w7xe4-JX-drN6dqH6TQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sun, 16 Feb 2020 10:44:42 +0100
Message-ID: <CAMuHMdVpTngVXUnLzpS3hZWuVg97GVTf2Y3X8md--41AtaD1Ug@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_014455_482969_8A841650 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Michal Hocko <mhocko@suse.com>,
 Rik van Riel <riel@surriel.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Dave Chinner <david@fromorbit.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>, cip-dev@lists.cip-project.org,
 Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <guro@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Sat, Feb 15, 2020 at 5:59 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Sat, Feb 15, 2020 at 12:25 PM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> > On Thu, Feb 13, 2020 at 5:54 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > On Wed, Feb 12, 2020 at 9:50 AM Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> >
> > The CIP-supported RZ/G1 SoCs can have up to 4 GiB, typically split (even
> > for 1 GiB or 2 GiB configurations) in two parts, one below and one above
> > the 32-bit physical limit.
>
> Good to know. I think there are several other chips that have dual-channel
> DDR3 and thus /can/ support this configuration, but this rarely happens.
> Are you aware of commercial products that use a 4GB configuration, aside from
> the reference board?

Unfortunately I don't know.
Chris Paterson might know.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
