Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F7A30556
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 01:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbOHgIsqzdUDjarrP8vMZXj52h+pK8lk2Gb8IPamifc=; b=DnhOnhofeCUtPt
	aU+eSuziWLTX4xK1+19VvSCcSe+4v7+8ji/5t4qiCaB1ObTj8TX6OjTQE/R/CbCyiVWmzhz1gE5UX
	f5bnJ0R+6i4eH0muXV4w9CKR9vjWqAgZT55WFhpMjgUpxz+0CPOw3upq5KgELgUI8azVE+AkTpKqi
	ZHhwPjRkWYDyMBzFoHXt8u9O+HAzZ6gwcfLvNdnZ1CRXapQ/10cgFv6hPr2uNFTtM1ZOGPjub1znW
	l+0dWCt6JldRYvHA3j0cfPLLJrDEKXsAy9T4Yfezjov9DYfp7jVdeAlLXjytCAvYPXbDNoTAFGeFw
	xMl22mrwAsPqLHbge4pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWUFo-0006RF-91; Thu, 30 May 2019 23:14:36 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWUFg-0006Qg-Sz
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 23:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XMtokYBuXFzIrBfx9/5SjcHYThm21r8rc5PsXoMbxPI=; b=jBLwuMjbqoKB4zmyB2KzNL6+y
 ylTMc8hZngSJdSnQ+AYe8kDj65u1XdWuPZFyVICELCBIwm9C3jeliyRUhFf6hd862wh1cu+mPnEBD
 mFiUvziZIBGMivraHnUBkXqduHl8o8mXHhsvNXIlM0B347+v4UD88cezi5XknI9TxMn51+Jo37EHk
 k9i+xPGNaxlVS+WoPUUS5iAzL+tlCnIxON2/G9eLrr4K1ZGxP4+v4E+MGQO/LU91FxRTzegUKtxbG
 cIzDCzZdyumaA8DzRCeiLD13ADw6q56urFzSMHKrKTQw82BAbaPg6trNS5TwcwNwwMKMVwjlAPdXd
 bz6/5Gpkg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:56080)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hWUFY-0005dA-VE; Fri, 31 May 2019 00:14:21 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hWUFW-0005mx-TE; Fri, 31 May 2019 00:14:18 +0100
Date: Fri, 31 May 2019 00:14:18 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ian Rogers <irogers@google.com>
Subject: Re: CONFIG_FRAME_POINTER support for Clang
Message-ID: <20190530231418.nuwn2kfatcn6cxlc@shell.armlinux.org.uk>
References: <CANA+-vBHL9a9fXDWxALXXuJk6r8ObZZjhrGp-p5JUnfOThEV5g@mail.gmail.com>
 <CAKwvOd=W35EwxS+g46tZVfhO9gDVH=g8oMhhHkZ+DHUqiYq7CQ@mail.gmail.com>
 <CAP-5=fUQQAEcZQ4KXAa8pLQFnD0nrN42faYGY2NPAziguTnwKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP-5=fUQQAEcZQ4KXAa8pLQFnD0nrN42faYGY2NPAziguTnwKg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_161428_989405_9A9A38C4 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tri Vo <trong@android.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Stefan Agner <stefan@agner.ch>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Matthias Kaehlcke <mka@chromium.org>, Manoj Gupta <manojgupta@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 04:12:05PM -0700, Ian Rogers wrote:
> Would it be practical to use __builtin_return_address for the caller's PC?

That works for arguments of zero, but guaranteed for non-zero arguments.

> 
> Thanks,
> Ian
> 
> On Thu, May 30, 2019 at 3:58 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > + Some more lists/people
> >
> > On Thu, May 30, 2019 at 3:56 PM Tri Vo <trong@android.com> wrote:
> > >
> > > Hello Russell,
> > >
> > > I'm trying to implement support for CONFIG_FRAME_POINTER when building Linux
> > > with Clang compiler.
> > >
> > > Currently, CONFIG_FRAME_POINTER relies on function prologue that is emitted by
> > > GCC using -mapcs flag. However, APCS is obsolete and Clang doesn't support it.
> > >
> > > So in order to accommodate Clang-emitted frame layout, I'm thinking of
> > > providing Clang-specific implementation of code that relies on frame pointer,
> > > most notably in these files:
> > >         lib/backtrace.S
> > >         arch/arm/kernel/stacktrace.c
> > >         arch/arm/net/bpf_jit_32.c
> > >
> > > This will likely involve putting "#ifdef CC_IS_CLANG" statements in the source
> > > code. Is that OK?
> > >
> > > Another caveat is that Clang implementation of backtracing won't be able to
> > > dump saved registers or dump precise pc value of the caller, because IIUC that
> > > information is derived from APCS's fixed prologue.
> > >
> > > What do you think about this approach?
> > >
> > > Thanks,
> > > Tri
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
