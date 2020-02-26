Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BED5170A1B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:02:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TOSm2y0f/etPnFQ84P8foCDrU3Cooh1hLkNBvqHUoo=; b=K9Krat3p+go1Xp
	OPWMuSFSw8+Fm3zLuJCG4TGw7eIxxexq8r9PWPNXLeFxYUtjEtdFvLuU7e/5XEPIhpkIVKRcz9juE
	hf/1/k6Qgok8a8dtkIyxz/C8vHkl5u3WROD1/BrXe15sIvx7z5s1PpRfLKTOuxIyG7hvOm5dNAxuO
	rQmJXq2+UgvjPXUY8J8JWvBoJjOPTzuJbrOriIjHYi246NhW3Z/cvqTVO061szaaYhNiTQrLm5ZIW
	qFCddyERvKTHP07TfqOpcKtk0/6qoSEaTDhqcOqIgKwetcEi8y0vECyeSdnNBOPoy4xO0KyG7aSpu
	VxhuNinXxczZ0KMByRGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j73p2-0006Bf-T2; Wed, 26 Feb 2020 21:02:24 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j73ot-0006A9-8z
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:02:16 +0000
Received: from mail-qv1-f51.google.com ([209.85.219.51]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MtfRv-1jPGf80sGN-00v5BG for <linux-arm-kernel@lists.infradead.org>; Wed,
 26 Feb 2020 22:02:09 +0100
Received: by mail-qv1-f51.google.com with SMTP id g16so493917qvz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:02:08 -0800 (PST)
X-Gm-Message-State: APjAAAVDZCUwSYl6w2Ao1O2KIiL5NFJeGxku+FDKb+BcuLVkF8nJJSdl
 Fp8/6sCuVDbK/JlJuG6SarGyX0FTBDs13BMfauQ=
X-Google-Smtp-Source: APXvYqxhHS9U3+N/7qg1V3h6/lWCEHWUtHJQtbK71iP6fx7l2VUQMHsb2aYbd6SCMc7GfTj4m50SkWIR7eOfBWBERJg=
X-Received: by 2002:a05:6214:524:: with SMTP id x4mr1146649qvw.4.1582750927983; 
 Wed, 26 Feb 2020 13:02:07 -0800 (PST)
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
 <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
In-Reply-To: <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 26 Feb 2020 22:01:48 +0100
X-Gmail-Original-Message-ID: <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
Message-ID: <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
X-Provags-ID: V03:K1:2Lig7L6onp01s+wxRanWjHQNmnp4m/teflFbevNCW8Ug0YQVyOX
 6lV8qCfe54zG7+S+Uh6rqVCZyH2UJsdWr7WTSuFNlNpG/ueIOEV4U4SkIsmHNcgKqE6UV8s
 XdhDb+GPCVAxAv2VpGHPRr0FGA7lX5VMRNwGLB8mxwoOLDxziWTCTzeq6/yvfdUdtQfVPXX
 mXXaJU8PooYJJVzoXPtQg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/7bi7l9cIYo=:TY2kYnzub4IvPMtSMoHbpO
 Goz3Bgs155u2/1lSuGI5WaJQ/q+C/vl0SkA5WXmSHUGCi76yGmW35QeVXUso0bmTkX/7/H5w3
 /TRgli5RQNUlxpG7Sl7kAyIgKIzHT5JI1T56H1w4mlaSfiYxExSFzILzSnDgv5920iNWfNNca
 NOf+Pyt9VeRe014xSZvDSsQaQJjpM0We71BsyDdD6QmW6TH3+NRAJtfhb4rGcuV0CzbmborXh
 y8f7hr4MXqAHURmFjqLDSpTQQF+iMfacXcAA9dRk4c2Xtu5iW0PgqYpH8Xp+m5lqfdPLo+ftT
 6AyULAI94zPimNlADWDW5fNbAaIZThkrLSu4+l1KOJDIvQBW2Hoin5/gtPsKmX1XVs7LUsr/5
 5F4v0Ru/x2+Y5UgwmGcksl0dGTOxf7MBrdNFYHRu1csxvyQ4Z1hbraOf/JlIlrHO6o3zskhHF
 yGlBDCP5L/IPZPu0tLs79iZe4gZtGoUu9o1BR1dH43BRJTKOOSjS2DXVc6P5r37lJW8u/Ml0z
 ZksMjup1DYOhqjDrDjWiQRAB2nA/a5O1FIamkdpn6LwUx5aWXxx+n0OWR5u5xKgzGGN+6uAU5
 60WeR17byHGoXPwzr8lKxnJY8BXIVaGDN+tEiM6D3GmxGf9F3khE2BQDIviBr/yt/hRn18bbi
 UMCKVOcw9JG1AeMDx1FWTfEiFQKPS+sNA1Morn+K/e/RjwEpAeAqlZHNDwS3l+cBAUyuXP/T8
 TCp8bRz+nsschmFvpdrwmaSqCLTQtcx82tsx6J1ul0qe0SnzcmXlB5xDn92q+nDVLEz8DTW87
 Xsg18/uPjz2KELm4rMhJGSELCavddtXuk/R298U9yCTkE+UQNk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_130215_606585_D2E62880 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Michal Hocko <mhocko@suse.com>, Rik van Riel <riel@surriel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Dave Chinner <david@fromorbit.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <guro@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 7:04 PM <santosh.shilimkar@oracle.com> wrote:
>
> On 2/13/20 8:52 AM, Arnd Bergmann wrote:
> > On Wed, Feb 12, 2020 at 9:50 AM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
>
> The Keystone generations of SOCs have been used in different areas and
> they will be used for long unless says otherwise.
>
> Apart from just split of lowmem and highmem, one of the peculiar thing
> with Keystome family of SOCs is the DDR is addressable from two
> addressing ranges. The lowmem address range is actually non-cached
> range and the higher range is the cacheable.

I'm aware of Keystone's special physical memory layout, but for the
discussion here, this is actually irrelevant for the discussion about
highmem here, which is only about the way we map all or part of the
available physical memory into the 4GB of virtual address space.

The far more important question is how much memory any users
(in particular the subset that are going to update their kernels
several years from now) actually have installed. Keystone-II is
one of the rare 32-bit chips with fairly wide memory interfaces,
having two 72-bit (with ECC) channels rather than the usual one
 or two channels of 32-bit DDR3. This means a relatively cheap
4GB configuration using eight 256Mx16 chips is possible, or
even a 8GB using sixteen or eighteen 512Mx8.

Do you have an estimate on how common these 4GB and 8GB
configurations are in practice outside of the TI evaluation
board?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
