Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9775D1CB0A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 15:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N70dGAdnILAZGyi6mRM7UztLImxI7D4GgDvHYGevj4w=; b=cRG6xwlu7+1Pvs
	Xg3JG6Bf0qGeiXJDtcD+ICg+vT1kSAMNX8Wxg2XnAs0tCmcgC3cPNqTYRs43MW8XjjtG+5caMYp5A
	lTUJ5RQ7+di6OiWtudkDTRdGngV+inxOq6IKX3KsRdBjG2A+d4hW1peUS0RpTG1MtLzja0AyvKBXG
	+z3xx4GfI7+SnyRuAm9QXcZgz7xRmy3HuxlnLsT2r+fePzt9ubzD2dH3JPQCemzgejNlcFe/KugvR
	aWX/seXEYyJfrhPYLas+1hn2q8+iwXzZv2BA0NWWUm8KxkJKJYG+1DjH9Mi3hkMrchJM1YaW/LBxB
	19RZBt9J42ka4E/T+ocg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX3GP-0001q9-A8; Fri, 08 May 2020 13:42:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX3GI-0001pn-5O
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 13:41:59 +0000
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CA1B2495B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  8 May 2020 13:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588945317;
 bh=O/0SFNzU2AtsWB3DxtQ1L18JmhfM+fPY76oplcTv/Ls=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WXK3aR2sPCH1s4vvQmAZ/P5S2/Lnqjqcxwi4s9qApdUf1jylTDaU8aGk1s0uY9SZ9
 yRO2jsYgJ0ndWPOAL5QMKQZe6cl7FLJhK8+rNSiVjT4jGQsNsbqalb5xEfA3Xhhsb+
 YCnNizJAM1JdPNzwdPs7iJzRL4E/Bn5e6KytqOk8=
Received: by mail-ot1-f42.google.com with SMTP id g14so1437499otg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 06:41:57 -0700 (PDT)
X-Gm-Message-State: AGi0PuYkGtQQo8q19G15tD8EJTAEmY8fS/HfWkJ0t6i4ZcfkmRNaACbE
 vnbx1+0ryREaJHzvMM34UVDt0ru/ZpyaPEY2xQ==
X-Google-Smtp-Source: APiQypJuW/7wxcbPk02S80ULSMhA7d6i34O+Qi7ap3mUadjBvoWrPquSyPfBZRUuzocz4vjwZmysz/VBl1BkaTukK5I=
X-Received: by 2002:a9d:1441:: with SMTP id h59mr2227760oth.192.1588945316271; 
 Fri, 08 May 2020 06:41:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200427212514.11219-1-robh@kernel.org>
 <CGME20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f@eucas1p2.samsung.com>
 <CACRpkdZSPb8FxTSt8F3F1VcsTM4qG=6gxz1pBPjTZ0Dk2iVfSQ@mail.gmail.com>
 <733e20b1-9592-6941-766b-9f321ad2ace5@samsung.com>
 <CAGETcx8Cn-b6L2y10LKb91S3n06b6+Be2z_A0402EyNy-8yECg@mail.gmail.com>
 <CAPDyKFrt01tDrCgdf7hjLDTqzOYWJ=m7fNMo-2PB-uHEOzZkmw@mail.gmail.com>
 <CAGETcx-kC18pwF7uDYE4XwVOWBJN8Lx48LD74LECgDts+VB0gA@mail.gmail.com>
 <c9a2dccd-50c0-5e9a-5ca7-69ec063e3630@samsung.com>
 <CAGETcx-CmDMYj2=2LRo37MX5C=9UipiburyiPisnaSULLQCBzw@mail.gmail.com>
In-Reply-To: <CAGETcx-CmDMYj2=2LRo37MX5C=9UipiburyiPisnaSULLQCBzw@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 8 May 2020 08:41:44 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+0DL260-h-2buV0YKxgYrJOxfk=kocBjm1aKdLhovpMg@mail.gmail.com>
Message-ID: <CAL_Jsq+0DL260-h-2buV0YKxgYrJOxfk=kocBjm1aKdLhovpMg@mail.gmail.com>
Subject: Re: [PATCH] amba: Retry adding deferred devices at late_initcall
To: Saravana Kannan <saravanak@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_064158_244177_2DF1DC70 
X-CRM114-Status: GOOD (  25.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 John Stultz <john.stultz@linaro.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 12:39 PM Saravana Kannan <saravanak@google.com> wrote:
>
> On Thu, May 7, 2020 at 4:44 AM Marek Szyprowski
> <m.szyprowski@samsung.com> wrote:
> >
> > Hi Saravana,
> >
> > On 04.05.2020 21:28, Saravana Kannan wrote:
> > > On Mon, May 4, 2020 at 12:11 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > >> In principle we should then be able to rely on the regular defered
> > >> probe mechanism, just that it's the dummy device that is being defered
> > >> probed (if we fail to read PID/CID).
> > >>> Any reason to not do something like that? I'd think that should clean
> > >>> up a whole lot of this code. Also, if we are primarily dealing with
> > >>> AMBA devices created from DT, then we might even be able to massage
> > >>> the fw_devlink feature to optimize this even more when fw_devlink=on.
> > >>>
> > >>> Just my 2 cents.
> > >> Someone should try to implement this to see if it fits well.
> > > I don't mind taking a stab at this if people are actually okay with
> > > this approach and will test and merge it if it works. I have no
> > > platform to test this. I'll wait to hear what others think before I
> > > jump on this.
> >
> > The time I've prepared my patch I've also considered something like
> > that, but I gave up because timer or notifier based approach was much
> > simpler.
>
> Maybe I'll reach the same conclusion. We'll see.
>
> > If you have some time to implement your idea I would be happy
> > to test it.
>
> Thanks. I'll take a stab at it then. Btw, does this need to support
> the non-DT/machine file way of populating device/getting resources
> too? Are or all supported configurations DT based?

Not sure. There may still be a few cases of non-DT. If everything is
DT, we could probably just get rid of AMBA bus and make everything
platform drivers. We have the compatible strings to match on already
(we only use 'arm,primecell' currently).

I'm not really a fan of creating a dummy platform device. There's
other cases of needing to power on or enable devices before probe.
SDIO devices are one case. That's how we ended up with the mmc-pwrseq
binding. I really think we need some bus/driver hook between device
add and probe. Or maybe more precisely it is just between add and the
add uevent.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
