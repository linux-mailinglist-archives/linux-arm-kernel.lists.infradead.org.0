Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E79371C54AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXkQEEsHmGnpS3iasi5keUnfOeXIszVNjSuDDZZba2I=; b=mQ+cHYBqAKrDT7
	PgtkTTif2svtkHlL6LmgWBm0aYIsIn5pRJdiIgh2n3x1RaetTw8keDh8b6xjz7a+Zrw9/OO+kavdF
	uygteOdNqmfJfzYpWul3OUodVcpId9k9veTzuf35QCEntr6okl6Ws9PlT3hjNdBeuCRjUydgsOoYK
	97P6pK+MBeUknpsY+Lt7Pyseni7ZL20N40WCb2XK18Rm7Q+2pzeL80UzwfvT576fMGJOvOJOpNTNM
	3XL1YkSBGcTvAxIF4LTU4CboNBydmrJVTBcaT0QpgzBB01VbdtLBUXY9cpzlSYE7srtPhrw+1uwfn
	LeYzbWBM9ayu+IgOqEXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVw0k-0002lL-Mo; Tue, 05 May 2020 11:45:18 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVw0U-0002GT-2z
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:45:03 +0000
Received: by mail-lj1-x242.google.com with SMTP id w20so1281127ljj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 04:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oIfWdRq9yyjwaPNLBB1WhcLPviYtpHs1y/6Em0UoQzc=;
 b=N4hxmyzj9lyf6o8bph0ivG/R3yiX7+7av0Z3hbRgE3G1P9nJfWcbLP48L+DmBUPdRL
 iS7tdHnci9lYc5jibCU27M9cIyiBouV3TGfHBxmomzZlTAA+K4jvmlfO+0PUY5gOJwWk
 INzBNV9RdyU4hz+KA3qMcbJKjE4Nef1pYkIpykiFiNhgkJ8IjX1SCD4/KaX9gsrjw7UM
 PqB5v5UISICWvKpUwJeHeWlT+kuUlYh2Fy7unW4FPr071vxBMvN/2bqL0KNaC/NHAxF/
 T4cTLz3YQkpT0ozMLHkIMjfiTRUu5z91/BjdSvFzNbqdymSh9Jx5aHZO1PEyCLvLAOi3
 ZMTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oIfWdRq9yyjwaPNLBB1WhcLPviYtpHs1y/6Em0UoQzc=;
 b=tRa4HHUyqXKGEW7mMNOtS/OKzTS0qVnxyQgtPAUZyTMu7GYn5DPSR/SdZ/udnUdWf4
 HnUyVeC/4W+pzeShu0KyuFtNwRhCx74U0OpJDSUGqSP2qRtubj/nyJpdbomGeKG0SjQD
 K8dNsRKvb8jptQ8Zd8mXBH5o98HfYhsTyk+qLVdrZrHBenNjj0hPE/E012BVexQ61PFj
 Wb3kYrIh2pSajmmnawl732cJCYqad32NwPq1OiZFp4BdqcNDNl0I1vn+kNBFMwBVUZj7
 hjs/VU+a034PxqYRw58RskhLc7PVUlE/oz2OlcBmaM4KDBS9/3HouOpW+wrhcDaTvaIQ
 mUAA==
X-Gm-Message-State: AGi0Pub6VSBlofzlA+nVvlkiv1VjwaB3DqJb70sgAsi4eDIJ+RZX2UT3
 8hENF7qPWp/F8PP0F4XnBlhxanB/3SAyIzeChuyoKw==
X-Google-Smtp-Source: APiQypJYtnxQWEbjes9DIO+nQO7CpHNG6KYJaneU9CBZe2/UNds1SHP++W+raV03+mh53wSUVZj+nsFewgw6YpANntc=
X-Received: by 2002:a2e:b17a:: with SMTP id a26mr1481524ljm.215.1588679100508; 
 Tue, 05 May 2020 04:45:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200429214954.44866-1-jannh@google.com>
 <20200429214954.44866-4-jannh@google.com>
 <20200505105023.GB17400@lst.de>
In-Reply-To: <20200505105023.GB17400@lst.de>
From: Jann Horn <jannh@google.com>
Date: Tue, 5 May 2020 13:44:34 +0200
Message-ID: <CAG48ez26DT2v7QQEbbur8LL+tQskrTBLCW+eW__RTOpezte6rw@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] coredump: Refactor page range dumping into common
 helper
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_044502_178021_7AD03DE4 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

On Tue, May 5, 2020 at 12:50 PM Christoph Hellwig <hch@lst.de> wrote:
> On Wed, Apr 29, 2020 at 11:49:52PM +0200, Jann Horn wrote:
> > Both fs/binfmt_elf.c and fs/binfmt_elf_fdpic.c need to dump ranges of pages
> > into the coredump file. Extract that logic into a common helper.
> >
> > Any other binfmt that actually wants to create coredumps will probably need
> > the same function; so stop making get_dump_page() depend on
> > CONFIG_ELF_CORE.
>
> Why is the #ifdef CONFIG_ELF_CORE in gup.c removed when the only
> remaining caller is under the same ifdef?

Oh, whoops, good point - I should go put that back.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
