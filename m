Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6923B416E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 23:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrtwzaYUtb3t96OQFNi9FndEETjTFS1tkIyn1JBSiaA=; b=k8UO7+KAQSj3ql
	jJLxInQrRP1ClMPnQNUMZuPwGjTwaq3QAHfrSOmzF0H2ifPgNLTELVwzDG4FkoUzWLxRaB4o6Doj7
	X4a86PfQ/SWWI+RAYAst054yyAAF/9rBReTgrMm/B3UOea+o1d+Uye2wweKotVmTDanoUQhSx8apo
	QhEF+Vfc0qQSzibwEzNaCcK36VYWud9HoZ1aBe0FeLYPUrW4YUAl+ViUNz5KBdW+R0oLQL2Riz1kX
	tdImSXc6ZcJEOfpp+3Vk4RcUWRw+SqArd3Z9PpQfwwoQbrW0Ml2QbthC0WnipOtrdhKH0LfVcFIoG
	e5CtMs/2KPBjqgiEY1lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haoJk-0006Fa-0m; Tue, 11 Jun 2019 21:28:32 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haoJO-0006BN-R4
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 21:28:12 +0000
Received: by mail-ot1-x343.google.com with SMTP id d17so13379208oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 14:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yfYsg0/cES0OHcG6fX5W9snm90ggOgAM9kXY3QBEhu4=;
 b=uikxw7UtyOptEVyjeY2qK4xy247KZZSlixb4FYF44cy5IOYuGfhYNz0auK7eAN3lSf
 RDykMi53c/UWnKOss3Gbf99f02SgcsLInyU9jZT7mZ9OHg9hKC6fNrTncVfEUwMvFzyT
 LcQoyh1B+GWH1wcVdCBdLQqRjW9xbNzL/XHVXJwKNd+h41OfOLBnxXrK/w2EGMY7Sdql
 Ev+iISe8afAaHYadIsKtGIEgMDX6CnpwHgbsBe+aUSzQIjTpiqosNwjLo3ub7MMP5bSh
 sv6W0b+fg0PHcDLs3IdJMwn13c7joqsHqAOaS3kYpN0/uUkfhOoBhUB3X+c5vOw3dtMp
 LbTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yfYsg0/cES0OHcG6fX5W9snm90ggOgAM9kXY3QBEhu4=;
 b=LBgr14Iubj7svYsPS5erd7IewIgIYnT2mPpFLt22Q3vBUY0JFMEiwHjR5NPdy9jyEM
 gSKelziE+rHmP9nQVLU/sfnTPEmkLEjniybOGY0/6odK/z5nLxjagwC1WU2l65RBwlH/
 dPKwExNp/F2pjDfinxLcIih7kodP3ZCs+GSfHGYrJJgh8CHI+ur+3KRlBKEYAVey8b0T
 4Vih6so8isVyPmpzmBox1tqYhMKnwSBOBsjaa8+2koqpUvc57RuydjkFnTWAGJrWu5Z1
 SvP956cAsxDjlXyum+3LjSy4qS0nrXcpBpH0q+ogRLaYkMyIEDh3eHgv153/4hO5SMTN
 WKvQ==
X-Gm-Message-State: APjAAAX5MhmnVctPeNQFVJELq9W1uFY+qbNnnvEey5MxdmpuZ+7AX3Fm
 lonqIhY91imAPQDPC+VZ4oGK8SFn8cbwRrydtBo=
X-Google-Smtp-Source: APXvYqwZE6DuGW97Wtdkbau380s5wncliqmuWNA2I8e3nRFVHn0Gyt7oiNVh7GBK4ctz/0QIVrifVcW0qHRMDnaPYKk=
X-Received: by 2002:a9d:7b43:: with SMTP id f3mr18847440oto.337.1560288490020; 
 Tue, 11 Jun 2019 14:28:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
 <20190611134831.a60c11f4b691d14d04a87e29@linux-foundation.org>
 <6DCAE4F8-3BEC-45F2-A733-F4D15850B7F3@dilger.ca>
 <20190611140907.899bebb12a3d731da24a9ad1@linux-foundation.org>
In-Reply-To: <20190611140907.899bebb12a3d731da24a9ad1@linux-foundation.org>
From: Shyam Saini <mayhs11saini@gmail.com>
Date: Wed, 12 Jun 2019 02:57:58 +0530
Message-ID: <CAOfkYf5_HTN1HO0gQY9iGchK5Anf6oVx7knzMhL1hWpv4gV20Q@mail.gmail.com>
Subject: Re: [PATCH V2] include: linux: Regularise the use of FIELD_SIZEOF
 macro
To: Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_142810_914972_6D7D6087 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mayhs11saini[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andreas Dilger <adilger@dilger.ca>, Kees Cook <keescook@chromium.org>,
 kvm@vger.kernel.org, Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Network Development <netdev@vger.kernel.org>, intel-gfx@lists.freedesktop.org,
 devel@lists.orangefs.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Shyam Saini <shyam.saini@amarulasolutions.com>, linux-mips@vger.kernel.org,
 linux-mm <linux-mm@kvack.org>, linux-sctp@vger.kernel.org,
 dri-devel <dri-devel@lists.freedesktop.org>, bpf <bpf@vger.kernel.org>,
 linux-ext4 <linux-ext4@vger.kernel.org>, intel-gvt-dev@lists.freedesktop.org,
 Alexey Dobriyan <adobriyan@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

>
> On Tue, 11 Jun 2019 15:00:10 -0600 Andreas Dilger <adilger@dilger.ca> wrote:
>
> > >> to FIELD_SIZEOF
> > >
> > > As Alexey has pointed out, C structs and unions don't have fields -
> > > they have members.  So this is an opportunity to switch everything to
> > > a new member_sizeof().
> > >
> > > What do people think of that and how does this impact the patch footprint?
> >
> > I did a check, and FIELD_SIZEOF() is used about 350x, while sizeof_field()
> > is about 30x, and SIZEOF_FIELD() is only about 5x.
>
> Erk.  Sorry, I should have grepped.
>
> > That said, I'm much more in favour of "sizeof_field()" or "sizeof_member()"
> > than FIELD_SIZEOF().  Not only does that better match "offsetof()", with
> > which it is closely related, but is also closer to the original "sizeof()".
> >
> > Since this is a rather trivial change, it can be split into a number of
> > patches to get approval/landing via subsystem maintainers, and there is no
> > huge urgency to remove the original macros until the users are gone.  It
> > would make sense to remove SIZEOF_FIELD() and sizeof_field() quickly so
> > they don't gain more users, and the remaining FIELD_SIZEOF() users can be
> > whittled away as the patches come through the maintainer trees.
>
> In that case I'd say let's live with FIELD_SIZEOF() and remove
> sizeof_field() and SIZEOF_FIELD().
>
> I'm a bit surprised that the FIELD_SIZEOF() definition ends up in
> stddef.h rather than in kernel.h where such things are normally
> defined.  Why is that?

Thanks for pointing out this, I was not aware if this is a convention.
Anyway, I'll keep FIELD_SIZEOF definition in kernel.h in next version.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
