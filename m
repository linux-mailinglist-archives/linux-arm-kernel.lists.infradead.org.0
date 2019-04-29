Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2D4DD61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 10:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ufo1W+0BV1qo6sZGiD+2jaQZkbyYInlJ5VH9LtIPKgc=; b=OoqCyeJxNATvp1
	yEiGHpUp6vs6+HBuZkGRlKqCtAxgmnUV9Ogw1c9lZkgwdXaIHSmr/tXr2Fk3g/7P8PI0dH/Gd3bis
	neDB10eBXNIu2tWn38PpSLxRQfZKbX9dJMvmEOmSk/uzGOgg73G900ChKQQ7svsmEeFlXP8tCbLpL
	Pf244rx/wK+aii6+1P2NTnsjpec/SRwAM1abzPTZ14RgHb66wFREW3sVmiBLIOqCSzAiKkX0In6zZ
	w3ChmhjeQIDIMY9d6oYOtG00mS4Ys3FRssEet27O62UEQiefGkBl4PivK2Ctovc6YIASrDYPqpfiK
	Dx5pkwTfg+auLjR2aHvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1KK-0004KN-QV; Mon, 29 Apr 2019 08:07:52 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1KE-0004Jt-4r
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 08:07:47 +0000
Received: by mail-qt1-f195.google.com with SMTP id c35so10942560qtk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 01:07:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uYi43Lpb2eQY3E2rRqP8+5ua3fkv4oukhSpEYQDHTQo=;
 b=OAJTSTTqlFKWgzpD6pVrrHtbW9RYsEIGzZMDpOaqdWIm7ybbmOEBw62wAyKfEXFN1b
 DeRaFV933hgPJLBHbsBfA+eMRr/0Ax7vPFnfbcHmtpkxxtWvmMHgqsPTNgQV6OS2czJo
 OpofnwF8yEdCTFrmEIJgmQVC2+od39BBOw3w7f1tMhoi3VBDR5bKnpEAU3JiiBU/jBf1
 rmnc7b4lrbZkM884F26ahAJ+XU2UG/+PriQGV9XrvDvRM9b7udwKBydaJ1gx+A2g/b2p
 aKSEg6dKSJGCQlwBuhsgKad0z5ViFjJTAKmEkvyQY0/QxCvJIY6sK/QGrntnS3s+B3nS
 wu2Q==
X-Gm-Message-State: APjAAAVY7RoZ90c/HOcPXWoISaPjtB8jWAok6hVKj8h3cZTFlUrEZn2m
 LWllhpTJXruFWSFdZNMarSSO0xU8G2Fv3i0EWAo=
X-Google-Smtp-Source: APXvYqznLxAna8C15dPs0Tu0zfUGa9/s0iQusViY1zaVgjjMaAT5ZmuIBABc+Ta4YiLYA4AYCPD1RNBQJKoW0whh8qs=
X-Received: by 2002:ac8:8cd:: with SMTP id y13mr36383548qth.96.1556525264286; 
 Mon, 29 Apr 2019 01:07:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190423142629.120717-1-venture@google.com>
 <CAO=notzjzpt0WHfJEWXMGgkoJU8UiLnqZnrGrPs-dRH5GNdJyQ@mail.gmail.com>
 <CAO=notz9QVoqKLrhJ3kx9FHja5+Mh68f36O36+1ewLG+SanmOA@mail.gmail.com>
 <20190425172549.GA12376@kroah.com>
 <CACPK8XemgKvM38wDSUJsXXeK51dwmeUoKWn+e3ZNHd9v5VBZHA@mail.gmail.com>
In-Reply-To: <CACPK8XemgKvM38wDSUJsXXeK51dwmeUoKWn+e3ZNHd9v5VBZHA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 29 Apr 2019 10:07:28 +0200
Message-ID: <CAK8P3a3CK4o8KnD6M084ULEmm+6_CtNFqYHjSqE5vp+U9YAmkA@mail.gmail.com>
Subject: Re: [PATCH v2] soc: add aspeed folder and misc drivers
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_010746_183946_0238350A 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, soc@kernel.org,
 arm-soc <arm@kernel.org>, Patrick Venture <venture@google.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 9:49 AM Joel Stanley <joel@jms.id.au> wrote:
>
> On Thu, 25 Apr 2019 at 17:25, Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Tue, Apr 23, 2019 at 08:28:14AM -0700, Patrick Venture wrote:
> > > On Tue, Apr 23, 2019 at 8:22 AM Patrick Venture <venture@google.com> wrote:
> > > >
> > > > On Tue, Apr 23, 2019 at 7:26 AM Patrick Venture <venture@google.com> wrote:
> > > > >
> > > > > Create a SoC folder for the ASPEED parts and place the misc drivers
> > > > > currently present into this folder.  These drivers are not generic part
> > > > > drivers, but rather only apply to the ASPEED SoCs.
> > > > >
> > > > > Signed-off-by: Patrick Venture <venture@google.com>
> > > >
> > > > Accidentally lost the Acked-by when re-sending this patchset as I
> > > > didn't see it on v1 before re-sending v2 to the larger audience.
> > >
> > > Since there was a change between v1 and v2, Arnd, I'd appreciate you
> > > Ack this version of the patchset since it changes when the soc/aspeed
> > > Makefile is followed.
> >
> > I have no objection for moving stuff out of drivers/misc/ so the SOC
> > maintainers are free to take this.
>
> I was on the fence about this. The downside of moving drivers out of
> drivers/misc is it allows SoCs to hide little drivers away from
> scrutiny, when in fact they could be sharing a common userspace API
> with other BMCs.  (Keep an eye out for the coming Nuvoton "bios post
> code" driver which is very similar to
> drivers/misc/aspeed-lpc-snoop.c).

Things like this should usually find a different home: drivers/misc
tends to be for one-of-a-kind stuff with a user interface, not for things
where you have multiple chips doing the same thing.

If you think there are going to be additional cases where you have
more than one bmc in need of a user interface for the same
functionality, we could introduce a drivers/bmc/ subsystem and
have a set of user interfaces backed by a set of chip specific
drivers.

> However, in the effort to move away from BMC that are full of shell
> scripts that bash on /dev/mem, we are going to see a collection of
> small, very SoC specific, drivers and it doesn't make sense to clutter
> up drivers/misc.
>
> Acked-by: Joel Stanley <joel@jms.id.au>
>
> The p2a driver has been merged by Greg. We should move that one over
> too. Arnd, can you advise Patrick on how to proceed? We could have him
> spin a v3 that includes the p2a driver, but it would depend on Greg's
> char-misc-next branch.

I don't think there is a rush here, so let's do that for the following
merge window.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
