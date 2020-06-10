Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEBE1F51EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 12:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkttwmFXhuxSUfhlAkozz8qCthbkuZohvkNRjzDZc+o=; b=DrvQkgIsidjh0n
	O88+7KhPgmMIzZFDNcmme/+PlX5vj8nWiYjJJCOR0/VM94oVdGnKD4t+yKqDEQ5YWF4e9KrqF+jIl
	/0me2+wxFvkanAq7ONvXDXNYdEXQyvxPKibY8DfR13smDrpynNrDVrKHqxCSfGerdFWfp4N5j3Fpg
	E59DltuKM242t8Ky+ryQXJsZOeTC8RuEZNn9EEoPLXtgWL5O+90bcQE3MwzYVIWpjWhz/4pzzBCC1
	jIAOmCrBieI/gO9fEZe7pXTRCEp8bdKTZgYvk04APFNJzv2IHOOteot8TjUCUcoxiQ93qFKX0H4h6
	iWynVIZmAXoYrFgt3qOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixgw-00048E-Cl; Wed, 10 Jun 2020 10:10:42 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixgn-00047f-Ph
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 10:10:35 +0000
Received: by mail-lf1-x144.google.com with SMTP id u16so1100709lfl.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 03:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VAhzONNr7z3ygGUqG934E3Yihpizy6C4bWVguia+sKY=;
 b=dL2TrTTLy7r6e6P3kCV8VlxlA9Db3VcE3zFFe7xcEr8nMHDScBF9vsWQ8ytW1YJrYW
 etOhipCNb6uKdjPJMUNNfm4So/Spq0mvAuxViNW9ugd0BbRtIo/UeVrWOA+Av48tDdMj
 07fZcBb7KtQoRqCVtf4uBi/r8znrUa4mXMjym8Q7WcXQzJYbQ6R+zNSAIsA3+WnNPVE2
 sXVJYECC0MwXDOt3idZeZQaetYMUte4/kDSMGagZpNxEKtD50aiKyzxVf7FyVDx95dKj
 l/nU+Zz248XNJfMLXvnkbuaYrR36t4JFSvN0tOG2mQBAJtcHCgcjdBecZyVu4FxQb+Nj
 onzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VAhzONNr7z3ygGUqG934E3Yihpizy6C4bWVguia+sKY=;
 b=J0bZOBMKssfHrXYN1HePl1IC4NO4tYkIMX7nmTJI1Xd5lOKcmSqEZKDHMFu8TkWvbZ
 tmzlu8mAmd3CdSvwZIlhuQxPKUUq/D12b05Ca5egFcdeK9GejQiu/h9AJzVfQftu+2dZ
 BeNtxqPX+aEVP5ov4Jxl/0yI9IOJ6cO8KViVbkYebYoa0lKmXgUDhvt4Y7B+e/gv+kvJ
 0KnB61okuupTI+hz6HnJaynDwem6CJrde615hmIutCR2p/WcFqhOYqZ4C3cCEHstPeCm
 pEvgcimo1ikf/aEY4FolqrTaZObleMLjfTTivIFPHblF/7Azg/wmFrBq0B+V1l3+3lIV
 zrWg==
X-Gm-Message-State: AOAM530I8U4nZ0JLCIjgxUKpgmLnVWjnkrTDpDkcueWxQt4dMh+4CbVO
 ZOlzpgph+Fs7gTLzNCP8EiR1puqT8MRsPVy1bAys9w==
X-Google-Smtp-Source: ABdhPJyTa1XrI/sysgesk54NFQfcSN3GAqb6rinYxiQxuvsa0bLQFSw0HofyX/7Hp343PcO7RYxIXfIdX3ufmtwkHYw=
X-Received: by 2002:ac2:562b:: with SMTP id b11mr1305542lff.47.1591783832131; 
 Wed, 10 Jun 2020 03:10:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
 <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
 <20200607125932.GA4576@afzalpc> <20200607161116.GN1551@shell.armlinux.org.uk>
 <20200608110902.GA5736@afzalpc>
In-Reply-To: <20200608110902.GA5736@afzalpc>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 10 Jun 2020 12:10:21 +0200
Message-ID: <CACRpkdboPBGBdHaRtZ=OAFvikYZVh=BVu192uyiB8T=yeHHEbA@mail.gmail.com>
Subject: Re: ARM: vmsplit 4g/4g
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_031033_836082_B7320E0F 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 8, 2020 at 1:09 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> On Sun, Jun 07, 2020 at 05:11:16PM +0100, Russell King - ARM Linux admin wrote:
> > On Sun, Jun 07, 2020 at 06:29:32PM +0530, afzal mohammed wrote:
>
> > > get_user_pages_fast() followed by kmap_atomic() & then memcpy() seems
> > > to work in principle for user copy.
> >
> > Have you done any performance evaluation of the changes yet? I think
> > it would be a good idea to keep that in the picture. If there's any
> > significant regression, then that will need addressing.
>
> Not yet. Yes, i will do the performance evaluation.
>
> i am also worried about the impact on performance as these
> [ get_user_pages() or friends, kmap_atomic() ] are additionally
> invoked in the copy_{from,to}_user() path now.

I am happy to help!

I am anyway working on MMU-related code (KASan) so I need to be on
top of this stuff.

What test is appropriate for this? I would intuitively think hackbench?

> Note that this was done on a topic branch for user copy. Changes for
> kernel static mapping to vmalloc has not been merged with these.
> Also having kernel lowmem w/ a separate asid & switching at kernel
> entry/exit b/n user & kernel lowmem by changing ttbr0 is yet to be
> done. Quite a few things remaining to be done to achieve vmsplit 4g/4g

I will be very excited to look at patches or a git branch once you have
something you want to show. Also to just understand how you go about
this. I have several elder systems under my
roof so my contribution could hopefully be to help and debug any issues
on these.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
