Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4F719C7FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 19:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLN8jgkvr2GIylzJ/hASdu4oU3GT1f48G5NcoM/suG4=; b=uMi+nT1lmgvnFo
	vdSaMsPRQDMCYPGkUA1+jSjrrPWMfzq7gHFe0fp84R1Jb0sWwwMKZo3MBVjExhe7Y8AevJxVy3frN
	rZ+AET19FUfm/2/ShhJfIyuhLJC4ID5Oflueociq9J3NReVsNcinE8ZMVLwzaSProaldfXj2HXYX0
	EmLaL6sDVktJq07W/w8mNuknlPjBsCu9fPZWwWy24Xxe8SyH/khEeNOmoMxajgHNM9y6T5vEL+F3V
	TLVZefyDACLxVI0BWn54J/rl438LztQKOIvYeH2jYFExfhedMgfYGqtzILDVUMn/+0HdI4KM5mMO7
	8MJllkGOqXsbyFrJMW2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK3ck-0003Ct-Ee; Thu, 02 Apr 2020 17:27:26 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK3cd-0003C3-Ej
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 17:27:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay1so1601426plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 10:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gz0f9qZvU+RRQ/9Q8voQs+xALXqzFeKIupVhhXgqIDI=;
 b=L2RTZSrQ7A5ycxsB0TzHG2oAcpIvPJT/LPWiB5atc3DFl38OL9k98TR94lYyhqN4IV
 +lVqrWSoIoJhMJMWUOxJp+t3Rn27ZQbea6iB86DNqNmc3z9+4rKrSu8uAlkZ9xjC7Typ
 bgMl7IoC1f0jJufjDMrL9rG3x7ZzZhG1y256JHyJ7EexJONnqWFvvb/uhvi8YQZCVkzZ
 4gDqG8fzyDvtlmzcWykcCEaP1dUEKWuKpZtFU0BltSc/6zaenJthX2iAYl1Cx0f7mIF7
 QMY1K3I/vLLQsGXRK55TNaSKmFd4LYJJ14QqEKkKlSHZfeV4ygdwXkoGK4vlVPlrfPMc
 kmlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gz0f9qZvU+RRQ/9Q8voQs+xALXqzFeKIupVhhXgqIDI=;
 b=ebOuW1VWz93SzQbzpl255jKAeO1AAd60aqwuzo8Xmq1Ac2HHf1m2h3Pzkai9c5wxru
 Bh+NJXiS7pQK9UNW5ogEwwA1IX7PTa+NlUCJO6OUZwK1ys5vS3VsUWJvgEXRILi4jkUI
 0irMFCnW9eRquB/HGmRZlBFz2Ka5CsQ03u+EifWo8C0sv/a+Zzbh3Pzr/Vx0a6NRnEUT
 LN6AGe3zBZO6a4azOXytEq8eXMtf23E0cuzJBQfS9jFIQCEp2SZmroLgRFMiIDmUTJV1
 sJVq5Fs8FVL8psahWkh5evkTu7pIvRXMqk+8nEslRlujosXLMI7Zbys7Sfkvhn6dc2Dl
 hejg==
X-Gm-Message-State: AGi0PuY/h2qa2kbtOKn8T1G8nl7O85Jf/PVOgIsa+FtJbrgl2nykroRy
 a8tvdFtUqWNz9yVAmUA9M8uLowF2e+PvIUqgrpHgrA==
X-Google-Smtp-Source: APiQypJHXGs44BWC8WilJ46Avhei19tnaa/YB6ekL4I+Zzra7DGoUGAP21fYvthy3xQNibUnN4QW+Dbx47n7msYUMJE=
X-Received: by 2002:a17:90b:230d:: with SMTP id
 mt13mr4965537pjb.164.1585848435589; 
 Thu, 02 Apr 2020 10:27:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200401.113627.1377328159361906184.davem@davemloft.net>
 <20200401223500.224253-1-ndesaulniers@google.com>
 <20200402094239.GA3770@willie-the-truck>
 <adc2aa08-60e2-cdc3-6b5b-6d96f8805c44@ti.com>
In-Reply-To: <adc2aa08-60e2-cdc3-6b5b-6d96f8805c44@ti.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 2 Apr 2020 10:27:04 -0700
Message-ID: <CAKwvOdk4H052Y=t4_XXy=rMV=CUYPNhb5CN6x8-dBTNaTt3aPA@mail.gmail.com>
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
To: Grygorii Strashko <grygorii.strashko@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_102719_515072_B9786781 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Rob Herring <robh@kernel.org>, Network Development <netdev@vger.kernel.org>,
 t-kristo@ti.com, nsekhar@ti.com, LKML <linux-kernel@vger.kernel.org>,
 kishon@ti.com, peter.ujfalusi@ti.com,
 clang-built-linux <clang-built-linux@googlegroups.com>, m-karicheri2@ti.com,
 Olof Johansson <olof@lixom.net>, Jakub Kicinski <kuba@kernel.org>,
 olteanv@gmail.com, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, rogerq@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 2, 2020 at 4:05 AM Grygorii Strashko
<grygorii.strashko@ti.com> wrote:
>
>
>
> On 02/04/2020 12:42, Will Deacon wrote:
> > On Wed, Apr 01, 2020 at 03:35:00PM -0700, Nick Desaulniers wrote:
> >>>> I think the ARM64 build is now also broken on Linus' master branch,
> >>>> after the net-next merge? I am not quite sure if the device tree
> >>>> patches were supposed to land in mainline the way they did.
> >>>
> >>> There's a fix in my net tree and it will go to Linus soon.
> >>>
> >>> There is no clear policy for dt change integration, and honestly
> >>> I try to deal with the situation on a case by case basis.
> >>
> >> Yep, mainline aarch64-linux-gnu- builds are totally hosed.  DTC fails the build
> >> very early on:
> >> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246218
> >> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246270
> >> There was no failure in -next, not sure how we skipped our canary in the coal
> >> mine.
> >
> > Yes, one of the things linux-next does a really good job at catching is
> > build breakage so it would've been nice to have seen this there rather
> > than end up with breakage in Linus' tree :(
> >
> > Was the timing just bad, or are we missing DT coverage or something else?
>
> It seems issue was not caught in -next because the patch that fixes the issue was already in -next
> before this series was pushed.
>
> Sorry for the mess again.

No worries, it's just worthwhile to study failures.  So IIUC, in this case:
mainline was 5.6
the broken patch was merged in 5.7 merge window
a fix was already in -next, but not slated for the new merge window.
(Maybe scheduled for 5.8?)

So it sounds like it can be dangerous to have 2 branches from 1 tree
flow into -next, as the branch meant for a later release can mask
failures in pull requests for the earlier release?

Do we know what and where the fix currently is?
Can we make sure it's sent to Linus for 5.7-rc1? (Or sooner?)
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
