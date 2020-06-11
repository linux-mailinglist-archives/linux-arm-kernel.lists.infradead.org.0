Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A21E1F62F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xvAykJ3ofI64HYPKP03HSKt4tBKag9R1B497M5tujI=; b=bY8bw5H1d8uhFv
	1X0am2iW9JZhDvXSaA04SBQoX+FeDuc+yI/3QqVL5LNn0sFAx0qKni7h082CtLhvMtymCAjXWFQ1T
	JsNvg6S6clN0xQsv0Oq1AuViFrt1X6ZKd2eFKWoiv6xl6+qfAH8j4SI9ZHwUxstyVyaFb3bnQA5+Q
	YEJTn1swIpwieEi8EBoKQuVHltg/sSsUK92Pp+6AuCq+x4AAfMICWKAAIOP9JJCVr8+xYRdA9ueoV
	11JdfCPMrSvoNsa9Cwh6Fq1HeXD7P1m/K3ExEr9SObtpYXX5bomGeVsimgZ+KYSPYU+xJ7xkcnxvg
	cq0GPbkyoWi5UyYKRDfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHzb-0003Co-L6; Thu, 11 Jun 2020 07:51:19 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHzV-0003C4-8l
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 07:51:14 +0000
Received: by mail-io1-xd41.google.com with SMTP id c8so5279504iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 00:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ONUNioNywUT4VgW//vYCSrmF2Wr9OMCXF2tDBe1sfWE=;
 b=i9gWWz9IPp64x6mMhpPFfffpxaidDV6/vu/P5boaacl/pojrbtlgZ0lpiDnoqHVQGo
 iUEKW+rZbzq+pytxiH/oV2kQFCYPwB7ij8aF3LzeBTf9YXdMibBEcFOStIEOomF/ryAY
 kHGe6dkB9GES3ZVQCM2lRin2vIqJM6QopxAge3UuUVKpeWmXIhVHTGu8PTaPVXartvK5
 U5l0yLRgtbucfJ2QeBc23y21MRmFeB3BKyW+lxGNArO5l2AFp86Hi1KG/Q8CFVc85uHx
 4jz3gI6msWSu0AFTrWUtHwQnXEFPRczDVgr3oMYr9ccoYcz/eZm5h0a9AaBan0mEnFne
 I+7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ONUNioNywUT4VgW//vYCSrmF2Wr9OMCXF2tDBe1sfWE=;
 b=ioy9SIj5N00InTU07TG9wlEbvDnknQ/bCE3sTwgirzlSNE3g8acQTgbEv77mkGNTDT
 1USbJQfP9359eiTXF8CunX3eRdnYDd9AI8MbiRx8M5vJ9+txsezudG58CARK3+0/+Akl
 BauCWwzuwIZV2pyf/Krbn0KE69t4JxSMgAcfpGDw4qh/IhSwczyTzF3Mmyk87ej49LBF
 VaUvLmmLV7B9c64H68KykSYUiSF+lHoEBY2LaWvDOU/pgz8ASzr5aXDNyYkW9aSXeafo
 6V0sDC+erfrxa54NdrgYpFROLn1QGBHF8XFxYFTyMa8+NWoNN/gFW+Eqz893+QAzhsIO
 eE4A==
X-Gm-Message-State: AOAM531OgBMwPhxEmHGWxNdeDHjAqYnI26ciCbfWqy3q2MaveZN/cS7F
 tWBJgR72drLaq3SxVWf5/2lGfCcnhfXEPHtbX/m72g==
X-Google-Smtp-Source: ABdhPJxA5awFItV4FZOEM8/x+OfRjhuRNUxu8Oh1EYvo8rUJI830IZSKlnthlXoQGq1Y57+YW+KdPwPu3STAF6gR6To=
X-Received: by 2002:a6b:7d07:: with SMTP id c7mr7236552ioq.159.1591861872147; 
 Thu, 11 Jun 2020 00:51:12 -0700 (PDT)
MIME-Version: 1.0
References: <CANAwSgQv9BKV4QfZAgSfFQvO7ftcFyCGXEo+g4pgQA4mgK52iQ@mail.gmail.com>
 <20200611064556.GA5056@kozik-lap>
In-Reply-To: <20200611064556.GA5056@kozik-lap>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 11 Jun 2020 13:21:01 +0530
Message-ID: <CANAwSgQqW6+W2=QcrAx8DsafK_0eMtQthQWcZWy9NDWxN3WkbQ@mail.gmail.com>
Subject: Re: ARM: warning: relocation out of range on Exynos XU4 and U3+
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_005113_311068_07455A2F 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
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
Cc: Chanwoo Choi <cw00.choi@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Thu, 11 Jun 2020 at 12:15, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Thu, Jun 11, 2020 at 11:13:57AM +0530, Anand Moon wrote:
> > Hi All,
> >
> > I would like to report some warnings I observed on pre-compiled kernel
> > image (5.7.1-1-ARCH) from Archlinux.
> > Sometimes ethernet would not come up and get connected, so in order to
> > investigate.
> > I found below warnings, So I am sharing the logs at my end.
> >
> > Are these warnings related to in-consistency in locking, How can we
> > Investigate more to fix this issue.
>
> These rather look like some address space randomization or some compiler
> (LLVM?) feature. Not Exynos-specific anyway.
>
> You should report it to Arch folks because they know how they compiled
> the kernel and what config they used (althogh config you can find in
> /proc/config.gz).

Thanks for your inputs.
Ok I will do more checks at my end, before reporting further to Archlinux.

>
> Best regards,
> Krzysztof
>

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
