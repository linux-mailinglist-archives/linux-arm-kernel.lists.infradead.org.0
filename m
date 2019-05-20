Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C870A244C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 01:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F81vbgBcRDgYgBjyp2pM7DxMZlNgTOttjxvtbIh3NCs=; b=hGA6wFREBgUdjb
	OjOsHWgDneDfMUoQTBopMvM5h2POUQz0DaNL320Vjf5g8mNfPnPx6LTdqYEr+94BRdJsI/aWDMdPm
	o+ok8aFgiB+CM/sh4ViydI3rHbjQbWRnKqaFQI6ZAvem0s4jpqY1NpHSftvCA+GasV0ecoTyMytYr
	rUx5KMDM9laobqP2yLdShe0TTt/0ucL611Gph/PfGu8mPR1Qo9veLPLoP9czLM3pDqN1Krkn8VSNZ
	P2Z729elmA+d1NHbGr15EqBF/zs6Lesq/lrwdGIKMkRcTPK3eU8cP0EghmD2Ij8lD37RHrtzKfsxW
	HHxw+TPn1o5xRUbbtzDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSs5x-0005Bm-Tm; Mon, 20 May 2019 23:53:29 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSs5r-0005BD-1S
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 23:53:24 +0000
Received: by mail-vs1-xe42.google.com with SMTP id x184so9030098vsb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 16:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DOow0La3W2Essx5H031uTOWFbAnDcBGJlXVfamcoL3w=;
 b=Dx4+lU9jqXDtln/17Mrd8EV4Dxp/5zASL+1Y8Niio9Pqb06rC0aI8wedP3ohgziyEW
 jppEZzDyXiAo/njLuzUnS0cZqB4tlCDf5SInO7A6W3spDccr9FtwpNa39rs9vTjn9Pol
 gFjx66w14oqATAsCg/4xevDnAIAQo2Q0YzZMa3Njt5yFKOelm+SuxVUsWhk4woonxC/+
 9D5FC/UAWBXCau72ARfrLZBFx2zGvzGs/3QYXrUb8NFYR9FnDOYRxbwkdocqirkPGsSw
 AxoIYh3MeUP070fRiIy388VcetefsVsnX0FjFahzGTgGe2zBg5LkCE8dqpCaiB/D65kK
 79Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DOow0La3W2Essx5H031uTOWFbAnDcBGJlXVfamcoL3w=;
 b=IZSSKYvxU/hfd6d4GyL85X3mLHmpKDEL9kSedcfdIvCPDegvDlOUSK48YT3842DEEr
 8t+yHbf2So8jf7bKLxeX3RTxKMQqVlyqb9HKRsvGWYQKWtCMliWu3yzhjK9hS6UERegV
 v0caI/vChmv7bQy6otRRsHmQ5zwlKp+r8VGo/brlLn4VSiEQf4tJlWioNgPb0xzInh6+
 zb95NOZngu5tSs3JSQgWu3+jceWDQirW74TPkzGGZwN2DnZ4ORo8M1b517/xiiUhdXpN
 RmPotWwRexDm0As3MgJYzKd5eD5bHfgycRFyviCepNcHycQfQHfN9DbnFx2WzyFidiwV
 G0oA==
X-Gm-Message-State: APjAAAUCeywNNIxnwTRBKxVWkqM8lTBSNiirIoeUJKH+3xoszv9yuocr
 yNlB+K8NVJerln1PZcbD0hYnw8uFOHAURBO9g8FGVw==
X-Google-Smtp-Source: APXvYqyR0JsazypV3hCmWgdEzYpNKlJ3PjKF8ENA0Fjbz+eEGES/3XAyQs/kAm4YlbOIpNAtAAzvW9GW3+g1GtceCfY=
X-Received: by 2002:a67:be17:: with SMTP id x23mr26047761vsq.173.1558396399029; 
 Mon, 20 May 2019 16:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
In-Reply-To: <20190517144931.GA56186@arrakis.emea.arm.com>
From: Evgenii Stepanov <eugenis@google.com>
Date: Mon, 20 May 2019 16:53:07 -0700
Message-ID: <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_165323_108924_4D788FE3 
X-CRM114-Status: GOOD (  27.23  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Elliott Hughes <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 7:49 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> Hi Andrey,
>
> On Mon, May 06, 2019 at 06:30:46PM +0200, Andrey Konovalov wrote:
> > One of the alternative approaches to untagging that was considered is to
> > completely strip the pointer tag as the pointer enters the kernel with
> > some kind of a syscall wrapper, but that won't work with the countless
> > number of different ioctl calls. With this approach we would need a custom
> > wrapper for each ioctl variation, which doesn't seem practical.
>
> The more I look at this problem, the less convinced I am that we can
> solve it in a way that results in a stable ABI covering ioctls(). While
> for the Android kernel codebase it could be simpler as you don't upgrade
> the kernel version every 2.5 months, for the mainline kernel this
> doesn't scale. Any run-time checks are relatively limited in terms of
> drivers covered. Better static checking would be nice as a long term
> solution but we didn't get anywhere with the discussion last year.
>
> IMO (RFC for now), I see two ways forward:
>
> 1. Make this a user space problem and do not allow tagged pointers into
>    the syscall ABI. A libc wrapper would have to convert structures,
>    parameters before passing them into the kernel. Note that we can
>    still support the hardware MTE in the kernel by enabling tagged
>    memory ranges, saving/restoring tags etc. but not allowing tagged
>    addresses at the syscall boundary.
>
> 2. Similar shim to the above libc wrapper but inside the kernel
>    (arch/arm64 only; most pointer arguments could be covered with an
>    __SC_CAST similar to the s390 one). There are two differences from
>    what we've discussed in the past:
>
>    a) this is an opt-in by the user which would have to explicitly call
>       prctl(). If it returns -ENOTSUPP etc., the user won't be allowed
>       to pass tagged pointers to the kernel. This would probably be the
>       responsibility of the C lib to make sure it doesn't tag heap
>       allocations. If the user did not opt-in, the syscalls are routed
>       through the normal path (no untagging address shim).
>
>    b) ioctl() and other blacklisted syscalls (prctl) will not accept
>       tagged pointers (to be documented in Vicenzo's ABI patches).
>
> It doesn't solve the problems we are trying to address but 2.a saves us
> from blindly relaxing the ABI without knowing how to easily assess new
> code being merged (over 500K lines between kernel versions). Existing
> applications (who don't opt-in) won't inadvertently start using the new
> ABI which could risk becoming de-facto ABI that we need to support on
> the long run.
>
> Option 1 wouldn't solve the ioctl() problem either and while it makes
> things simpler for the kernel, I am aware that it's slightly more
> complicated in user space (but I really don't mind if you prefer option
> 1 ;)).
>
> The tagged pointers (whether hwasan or MTE) should ideally be a
> transparent feature for the application writer but I don't think we can
> solve it entirely and make it seamless for the multitude of ioctls().
> I'd say you only opt in to such feature if you know what you are doing
> and the user code takes care of specific cases like ioctl(), hence the
> prctl() proposal even for the hwasan.
>
> Comments welcomed.

Any userspace shim approach is problematic for Android because of the
apps that use raw system calls. AFAIK, all apps written in Go are in
that camp - I'm not sure how common they are, but getting them all
recompiled is probably not realistic.

The way I see it, a patch that breaks handling of tagged pointers is
not that different from, say, a patch that adds a wild pointer
dereference. Both are bugs; the difference is that (a) the former
breaks a relatively uncommon target and (b) it's arguably an easier
mistake to make. If MTE adoption goes well, (a) will not be the case
for long.

This is a bit of a chicken-and-egg problem. In a world where memory
allocators on one or several popular platforms generate pointers with
non-zero tags, any such breakage will be caught in testing.
Unfortunately to reach that state we need the kernel to start
accepting tagged pointers first, and then hold on for a couple of
years until userspace catches up.

Perhaps we can start by whitelisting ioctls by driver?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
