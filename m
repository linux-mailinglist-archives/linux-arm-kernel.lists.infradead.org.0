Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB911F9342
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rh+UX8VFpZNQSpRm5W7ACuwG5fa8gjOEpSZu4ggCtlA=; b=OxRvWWtxrrdrrd
	xezN/067ESVW9jTXcP8EUAN3tusqvKwOSwVS7DqFo5dzM2QPbG8GHgNztdKlc3my2pZjjdEgfx3Ua
	sCZELd2lVAFHb6c2PdlwmJoqbgJAdEUHj/EGHzb+L9AfgcKKMRtY+gZb9NAHnMstH2tt2SMsiLcS2
	vMQDtsFMSf+w4p3eaFMwUSOIYEdBDfpGm3B/27Q5XNd78Y1R0grU51IsOY7xYe3YRJtlm7XSN6f0c
	QED7i7nwzuuc6Wvuo6Ygo2NzyOSFR6iweElGtKVkvm0BA9YbRta7xmQJTmzQT6d+ZSyvn3I6W9SE/
	Zpap8kghbtKi7es1TKwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklLE-0000Mh-Ko; Mon, 15 Jun 2020 09:23:44 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl9B-0001s0-1A
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:11:18 +0000
Received: by mail-lj1-x22b.google.com with SMTP id s1so18266934ljo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=93ubyv2ijLwXe19Tt9xKHMpu+ryEtkx/l2lbgqZwMeI=;
 b=WCPakgZHAyE5H1SLatFgGwqf6A4OfabHc2p767umdV2YAAxUx7txfN6D+hiyJu8lxT
 3+vCpSgLgSeD6K//prLSYvb4LKFQrA79O+7Xy7E1xq9SBKLZTK9a3hG3cX4VSUNkVzyV
 80KOK+qpXdv33Mg5XsTkXRQ1DmYTdXSiXnng50jqFnSKlzD742VJYgjlb4lpP3D7D4mU
 ay2OFUZqOBbgVEJgWsHAq5hlYwU0oAY3r2F6X1gDJTEKPxmo1z6vg6k41VMLDSdQkhGY
 SbrO/5D+Xty8GcdADeNcZxYnC4EWrBg3fdR7wq9uFlxl08qiqipWrYa0zr04EX7sGBvY
 46vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=93ubyv2ijLwXe19Tt9xKHMpu+ryEtkx/l2lbgqZwMeI=;
 b=X9CKSUC4Ovy/mI0aW6hxuJHDWmjNHux+APE+9M2BcXBLjvC2VlU0Jc/SpqcTq/mrrL
 M38auP0LljT/AI0ekXbk0QCw9wLWF5211QSvwhdAQQYUKrciREKFfgFT7q5eAl5y56ss
 BtnI4AA/Oa6Kp/OOoEnskYPkDPShMwYPceEdwA6PzMVgbWnL9Farqc4dhV0RuDErr75g
 ddPi4jQjzCQ4/6k6oZsn6IXO91PeBJJjDnFDs5sKvTkrL0WiuaYf028hNKXxXXqDrHZ/
 S536V4BgpTuv82dF0Oka1PPMktBXrXoodsFEMmnOTBz7gH+2P4Hkb92C67Giz7oDFLjd
 CjdQ==
X-Gm-Message-State: AOAM533MH6OSwNYbdlCekjr0lSQorIzNbt8BFPNvKL61kx0ZeEvsudd/
 ezvGhrJT8BI7bBxZ35MbDMY2WnYlYSdGwHbh5J2isw==
X-Google-Smtp-Source: ABdhPJyTD1GjFMv10HFxk4EWmy+eG+SttC1xdYuvb+Pcr1HZqJT4elQemSSNYBchplU9b6uQI1C2Di2UTh9WaG1DjOI=
X-Received: by 2002:a2e:a40f:: with SMTP id p15mr13189882ljn.286.1592212274961; 
 Mon, 15 Jun 2020 02:11:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
 <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
 <20200607125932.GA4576@afzalpc> <20200607161116.GN1551@shell.armlinux.org.uk>
 <20200608110902.GA5736@afzalpc>
 <CACRpkdboPBGBdHaRtZ=OAFvikYZVh=BVu192uyiB8T=yeHHEbA@mail.gmail.com>
 <20200612102551.GA5377@afzalpc>
In-Reply-To: <20200612102551.GA5377@afzalpc>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 15 Jun 2020 11:11:04 +0200
Message-ID: <CACRpkdZB5usrY1HkunoceFtz8-QhtTAojJftD=-n0s6fBB2j1g@mail.gmail.com>
Subject: Re: ARM: vmsplit 4g/4g
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_021117_161484_DBCB52EE 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Afzal!

On Fri, Jun 12, 2020 at 12:25 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:

> > > Note that this was done on a topic branch for user copy. Changes for
> > > kernel static mapping to vmalloc has not been merged with these.
> > > Also having kernel lowmem w/ a separate asid & switching at kernel
> > > entry/exit b/n user & kernel lowmem by changing ttbr0 is yet to be
> > > done. Quite a few things remaining to be done to achieve vmsplit 4g/4g
> >
> > I will be very excited to look at patches or a git branch once you have
> > something you want to show. Also to just understand how you go about
> > this.
>
> Don't put too much expectation on me, this is more of a learning for
> me. For user copy, the baby steps has been posted (To'ed you). On the
> static kernel mapping on vmalloc front, i do not want to post the
> patches in the current shape, though git-ized, will result in me
> getting mercilessly thrashed in public :). Many of the other platforms
> would fail and is not multi-platform friendly. i do not yet have a
> public git branch, i can send you the (ugly) patches separately, just
> let me know.

OK I would be very happy to look at it so I can learn a bit about the
hands-on and general approach here. Just send it to this address
directly and I will look!

My interest is mainly to see this progress so any way I can help or
tinker I'm happy to do. You can just incorporate my contributions if
any, I don't care much about code authorship and such things, it
just makes things more complex.

> If you would like, we can work together, at the same time keep in mind
> that me spending time on it would be intermittent & erratic (though i
> am trying to keep a consistent, but slow pace) perhaps making it
> difficult to coordinate. Or else i will continue the same way & request
> your help when required.
>
> For the next 3 weeks, right now, i cannot say whether i would be able
> to spend time on it, perhaps might be possible, but only during that
> time i will know.

I'm going for vacation the next 2 weeks or so, but then it'd be great if
we can start looking at this in-depth!

Thanks!
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
