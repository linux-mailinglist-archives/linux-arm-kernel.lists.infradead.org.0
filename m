Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07A357C5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:45:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huS/mr9qT4ZnRmBv8HsjYfJtblYu2+WuYeRej7bEQyY=; b=X1B9d4oTFw3x8+
	zzaH00jJXPNnXwcLNzDZQrae2HP1znZUi5zAIyEjcs8y17HOKHTLRR0h0hnTxrql3I89V4hWU1oL+
	wsDXbChQrvOZPOkmRQFjd4ruCHYqM6xTbS25NIizwLaKtW6C682iSbINgJSkb5w6JBx+bPxcObprl
	CZJbNCYrcbjAl8l1N3ANMkU5ck23i3at7rM0n+dYm3KZJlwT7UsESXdg4q6vJQAbzPwBK7LBgD3C5
	ubmR/4q51MDrb2S+LTPzgiilXsv6XWrEpvTVImXhwvHF4hPfrkHZvbY0FcnitLZfAsE1lF9Swu+4e
	ZV1yCair8zMwimHxRmQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgO9l-0007Og-Vb; Thu, 27 Jun 2019 06:45:18 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO86-0006KM-HD; Thu, 27 Jun 2019 06:43:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cHU/2P+9AoyIrIzIGKHe8ERCeZ+lRTgiCzEUTACqf6Y=; b=LKReEaQDjucjSZ8S+ZWmw6rVp
 1zv3pGSKltJwKH1/p4TCLVEzSSBFYx1k2uImvZ8UE2jfL31CmG9Vai/YujgA7rz/TsPsd2C1Q5nwI
 gGML3OIt+udR3iNwznDxFnWZ+4Ui9RKbSr700LKem7Cvl+302CsSVDxlyrTajUmX5TPr60+RFMQh1
 HXl2rHIyuLaEU1rWFVHnwAKHDgBvg6ZKSMKzqwlZALexfOnEC2ur86fjd0sZQpCuRfNptgOnRQswc
 ljT9o/QjkpsRXCVfm3ZsIqka7nXLCn2jEYgbHdMz2NTp8jFKke8Hd20cWRLgX0Atw3ZVCEL81fkY0
 xVu1Bgobg==;
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgLEn-0006Mq-CN; Thu, 27 Jun 2019 03:38:19 +0000
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
 [209.85.222.47]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x5R3baKo028566;
 Thu, 27 Jun 2019 12:37:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x5R3baKo028566
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561606657;
 bh=cHU/2P+9AoyIrIzIGKHe8ERCeZ+lRTgiCzEUTACqf6Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jVMFTq54d6d2hfPxEsCFhJq0pGa1yE9ekpJ5aU6xIPvBurX0hYTIM2VOwo1MvyWDZ
 4czCSoGV/B16FwvkDfQzn7mbCcLh/bfwv6hzQTRur9ujBbn56q0ndbrV2FGAhpHByK
 yTHGNTpdny4Kj2io3mJIFaJxTjoanGRe/aHWYmUEGIg11nbMqYcsmrEcOBRr9KzcrJ
 lGgr0mwR/HWoNMIxi9fdnHybUFtsKw7SZHbT6vukxWn7UbnTPBsujOBI4CUjTSgt+a
 24MP32KJBfj2gtizZrXUGeI/Ie8YU0tunbHpdR6pOV8dfOuSB1v8XoD/gl52piRAfZ
 Q0vnuNZ3YlUAw==
X-Nifty-SrcIP: [209.85.222.47]
Received: by mail-ua1-f47.google.com with SMTP id z13so303759uaa.4;
 Wed, 26 Jun 2019 20:37:37 -0700 (PDT)
X-Gm-Message-State: APjAAAV+Wk7YpNIt+qMNJss67VziXdyxJslGLddlcwDhfpDID1jsrd69
 6PnF471XxrrutolTMjuf5lLTm/EMlM9ZEPBbIrA=
X-Google-Smtp-Source: APXvYqxnTaJrFrMjuBoXEoiAN+DrkrbXhQiwMUAtqVh/FSoRuIgZnVV8242KrVAiYzqrGsKWX8k8KZMQVT7KGH9LF+4=
X-Received: by 2002:ab0:234e:: with SMTP id h14mr991265uao.25.1561606656202;
 Wed, 26 Jun 2019 20:37:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190621163931.19397-1-yamada.masahiro@socionext.com>
 <20190621175134.GB16409@ravnborg.org>
 <CAK7LNATz1iuG0Moab60gMSbVU8PJAmrLn27K8HK_1zQ0qeh26w@mail.gmail.com>
 <20190622130635.GA24262@ravnborg.org> <20190624214027.GA14740@ravnborg.org>
 <20190625061120.GA7561@ravnborg.org>
In-Reply-To: <20190625061120.GA7561@ravnborg.org>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 27 Jun 2019 12:36:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNARMnsC+tm13VRV3kvRQNUWOrH1NxEwvFHwVJbFav50idg@mail.gmail.com>
Message-ID: <CAK7LNARMnsC+tm13VRV3kvRQNUWOrH1NxEwvFHwVJbFav50idg@mail.gmail.com>
Subject: Re: [PATCH] kbuild: compile-test global headers to ensure they are
 self-contained
To: Sam Ravnborg <sam@ravnborg.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

On Tue, Jun 25, 2019 at 3:11 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> >
> > When all header files below include/drm are self-contained it will be a
> > single line:
> >
> >     header-test-y += $(all_headers_with_subdir)
> In reality it will likely be the above, and then a list of
>
> header-test-n += foo.h
>
> For the header files that we for one or the other reason do not want to
> make self-contained.
> It would be nice to have the list of ignored files close to their home
> and not a full list in one Makefile in include/
>
> > diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> > index 3e630fcaffd1..e2f765e9d1e1 100644
> > --- a/scripts/Makefile.lib
> > +++ b/scripts/Makefile.lib
> > @@ -67,6 +67,7 @@ extra-$(CONFIG_OF_ALL_DTBS) += $(patsubst %.dtb,%.dt.yaml, $(dtb-))
> >  endif
> >
> >  # Test self-contained headers
> > +header-test-y := $(filter-out $(header-test-n), $(header-test-y))
> This part should include the logic to filter out duplicates too.
> I think we may do something wrong if the same header is listed twice.
>
> We could also extend this with a check that all files in header-test-n
> exits.
>
>         Sam

Thanks for your comments.

Some followups:

[1] I prefer 'header-test-' to 'header-test-n'
for excluding headers.
In some places, it will be useful to
be able to write like this:
header-test-$(CONFIG_FOO) += foo.h


[2] I proposed somewhat generalized header-test-pattern-y instead of
providing both of 'all_headers' and 'all_headers_with_subdir'

BTW, "all headers" should be added with care.
scripts/Makefile.asm-generic and scripts/Makefile.headersinst
cater to removing stale headers.
But, we do not explicitly clean other headers.
We always be careful about potential matching to stale headers.


[3] I tried both 'one big single Makefile' and
    'each Makefile in sub-directories'

I am slightly in favor of the former. Maybe I could be wrong,
and we may switch to the other approach.
But, I'd like to start with a single Makefile, and see how bad it is.


I sent v2:
https://patchwork.kernel.org/project/linux-kbuild/list/?series=138507


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
