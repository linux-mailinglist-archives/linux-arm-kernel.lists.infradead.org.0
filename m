Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F2A1FA0BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 21:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efAMMetDbISbb+ovN/LDUmayFeqaermnTmtwso5XBq8=; b=sGOpPWQrCylhHu
	bqk+A216kGOME69Dwb6H7USHgtI76QOUlBkK1fXwVJ14BQLhVCPAu8275Ms3RtWMhvMksso728tks
	oTNIdfAcHgeJJd8vgroZwq9BB9yKtURr3Z6DygG9DYhXP2F71I73aOcH3h1Rcnof+8m1Fksw8s5Pt
	47xVnZ3eg21QmzqIKs6HD4Nq8BiCF7JQCCLxyZ5/KgPRWqTnyC1sWAxo5YBPQInKiLN7c74WeEE2u
	UVg9UZuG2v/9P0aCszgJPrmNfPKz5xMl06tZW9+zEoXf7P5b1qXkVozLZibbsQImIjXzx6TTwtFMh
	/sZv/84edMrXddXq8LyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkv3C-0002K2-L9; Mon, 15 Jun 2020 19:45:46 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkv34-0002J1-Ri
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 19:45:40 +0000
Received: by mail-io1-xd44.google.com with SMTP id w18so19272947iom.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 12:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GcEsP5XHkAYWjVB1MFDssViF4cxMQLWXk2Kgbxji0hs=;
 b=d1N76KYXqQ1fpaIX30dgZBqRd8wI/sojfUihP9H9n7SrJl5fw8AIM1QjJHFUie0ynn
 Ba7u2YUNcGPgUH5k5/xR7j1g1AD4ubDfekbuaJsUIn8tpQbEqATe7gJrtx3bqoUJmH4s
 5+bquUS4RYotC8sNbFVFKTlUv9aULk2bwxwqhhxgC1NWXrZ2b3J+MnEA2epJN5YcPwJd
 seJUjothmBUqRpHkR2X5MhScZehYA2HegUeEnFWW4JD2VuEs9SDBgZ0eGzbMT5M7oi0/
 XAULqncIPF3a7VQsBQHJiygHfxiVk4UqM7Xb3uuuIVXJb73uzIjZdrMQlG7Z9vwbj0Z+
 CyHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GcEsP5XHkAYWjVB1MFDssViF4cxMQLWXk2Kgbxji0hs=;
 b=CmixQ1uQ5BUqiqbRXUC4eF8I2DQo/jGomeMQTuHmDm8DGxp1X+y1ry5KF/jYZm/KAc
 KLAtE97YUTu2czMUnr/KMyFDPKiuHHu+pA4vK5Wk2y25UtyX9D/ZmCf/Lsii1a/Q2a/c
 4vq7P6Q2mrPYbH5fkHddul/nNti8hTFiqaIxs+7i5yAKPBeE/XiQxTdlWQJemAjwNdvk
 LXioQqC0cmZNcFf/1ximEAmB/GNUJdzdg+WWFlko0oi9bjj/PTLkxzzYc50SymLL13wl
 oxoxyM23FiaP+oYUuDLDTA93cfv8W+ecS0Wt1zTgCXYNA+6tDo3uC6YJLQpeQCbJfKM2
 NSsw==
X-Gm-Message-State: AOAM530eDwsM+ndJIRYhJdfQKi3Hg/PxO0LmB4/9ahSWkeOuGnGKeGeV
 JnApJtdGi1EkddfgPafZ/ifRvBUeVO7atx48dA==
X-Google-Smtp-Source: ABdhPJxruXU+i+P2JjGW09+nvoxmHKpEF1SP+mxNnwxG3exn2/HqUJry5Lh3ZGwSfno6ZlJbUa99xQueu/DZAVZXhg0=
X-Received: by 2002:a05:6602:80b:: with SMTP id
 z11mr29222473iow.109.1592250335524; 
 Mon, 15 Jun 2020 12:45:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200615130032.931285-1-hch@lst.de>
 <20200615130032.931285-3-hch@lst.de>
 <CAK8P3a0bRD3RzE_X6Tjzu9Tj+OhHhP+S=k6+VYODBGko8oQhew@mail.gmail.com>
 <20200615141239.GA12951@lst.de>
 <CAMzpN2heSzZzg16ws3yQkd7YZwmPPx_4RFCpb9JYfFWJ9gfPhA@mail.gmail.com>
 <CAK8P3a3q-hC7kZwLPbc+E5VYcqthQS4J4Rqo+rKkBRU2n071XA@mail.gmail.com>
In-Reply-To: <CAK8P3a3q-hC7kZwLPbc+E5VYcqthQS4J4Rqo+rKkBRU2n071XA@mail.gmail.com>
From: Brian Gerst <brgerst@gmail.com>
Date: Mon, 15 Jun 2020 15:45:24 -0400
Message-ID: <CAMzpN2iDPKatOqs+Uuw70ACbnB-D__dgSRZU0wBjOUBwTGOJ-A@mail.gmail.com>
Subject: Re: [PATCH 2/6] exec: simplify the compat syscall handling
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_124538_912660_5AA29D20 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [brgerst[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Parisc List <linux-parisc@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 sparclinux <sparclinux@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 2:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Mon, Jun 15, 2020 at 4:48 PM Brian Gerst <brgerst@gmail.com> wrote:
> > On Mon, Jun 15, 2020 at 10:13 AM Christoph Hellwig <hch@lst.de> wrote:
> > > On Mon, Jun 15, 2020 at 03:31:35PM +0200, Arnd Bergmann wrote:
>
> > >
> > > I'd rather keep it in common code as that allows all the low-level
> > > exec stuff to be marked static, and avoid us growing new pointless
> > > compat variants through copy and paste.
> > > smart compiler to d
> > >
> > > > I don't really understand
> > > > the comment, why can't this just use this?
> > >
> > > That errors out with:
> > >
> > > ld: arch/x86/entry/syscall_x32.o:(.rodata+0x1040): undefined reference to
> > > `__x32_sys_execve'
> > > ld: arch/x86/entry/syscall_x32.o:(.rodata+0x1108): undefined reference to
> > > `__x32_sys_execveat'
> > > make: *** [Makefile:1139: vmlinux] Error 1
> >
> > I think I have a fix for this, by modifying the syscall wrappers to
> > add an alias for the __x32 variant to the native __x64_sys_foo().
> > I'll get back to you with a patch.
>
> Do we actually need the __x32 prefix any more, or could we just
> change all x32 specific calls to use __x64_compat_sys_foo()?

I suppose that would work too.  The prefix really describes the
register mapping.

--
Brian Gerst

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
