Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB3DD3C2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 11:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUAUkJvAvpO3lrX+s0rOxnTmpyo9irtTP7KJ1pp+uZg=; b=DAHr4P4/AShjrr
	xBg8uJ5Je/2GnXReOEfzbSu2pzXBUx79DrMu1wy/xC0Besy8DYZxpA6HbxwS+Rn91w8v1urodCRIl
	OOdH8jnkXhs+edJ2q6TmKN5v0GaDXMgcfnf6hmsgauP6RbWTNLBeYZlOVRx4gKowkURBQvyhp3Xnm
	YrxRRD+bP5zQoaNG6uY3fd2bmvoMNCJ9HKQ57YEJ8B9QRrEzkQqZVCYzA9o10HuoemxvuaY4O2TS2
	Hgzih4qG76PDbm9DQkSbeyokvFvcJFB9exgeb91TIjXLhebZ542ErKmyDKnHAkpvzbQoSmtD77A7r
	Tnkyfnkx0I39tWgFyJKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIr5w-0003OH-Ro; Fri, 11 Oct 2019 09:20:20 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIr5L-00038d-QK
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 09:19:45 +0000
Received: by mail-ot1-f68.google.com with SMTP id y39so7376422ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 02:19:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2T/zHCiz5lRoZLCCsEBaHrm43xLEtwr/JLAYUvgdwzE=;
 b=ftK8hfIwdkW+s0NdyDpDliS/Tl7CpR0tMX5R3dcWM/sYXDE8ZRelvDL4Da+evvY8bj
 7XJPK+DbGFM5OL+XjhjbRjMMiqCzAD14XyJFVtGCVEaj9N1HfmubASqjMStG+SL7qHpw
 S7HgcniNIi53dlKRz7RoAwGCU1eE81WVAuQ5Jp+yydq9YTBvr8mkWAfCCe+DqSJMtm1Z
 rz/bO8VqKO1EYYGM7R9y/7sqSgNl84Kni5EVO+FjnKuBIWSNrqudEmIXPsaNJZojrzXA
 nA9wfolgCJRj1gMue7fiHDeaCyKv5ThzO4MS1n5T58oRKDmNZ/nIFVPb+hfqAwozHIhC
 aPtQ==
X-Gm-Message-State: APjAAAWorew3SLuWcBk/I7tQ5KRQ/rKLwNkcaNnbZf0+9dttgRLWM1bX
 sukgtb/YTZVJuL/ZnUQHi0AT/isaAGPBWjWpfBI39ddb
X-Google-Smtp-Source: APXvYqzLdkyO6uQN8+aYqrrf0f1ZoJ5UC4uoBKWGKBUzVnWDCeCgMeWJjJBH6Q06m328j8fpzF+F7jTX6lgsPrk7ois=
X-Received: by 2002:a05:6830:1685:: with SMTP id
 k5mr11530897otr.250.1570785582416; 
 Fri, 11 Oct 2019 02:19:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191010123046.15291-1-geert+renesas@glider.be>
 <20191011073515.2933918c@canb.auug.org.au>
 <fc7ec17b-c61b-842e-13d9-1e154ce2a654@cogentembedded.com>
In-Reply-To: <fc7ec17b-c61b-842e-13d9-1e154ce2a654@cogentembedded.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 11 Oct 2019 11:19:30 +0200
Message-ID: <CAMuHMdVurk2akpKFAGKoNN2YxPMBMx2VrvUfTfCX-AiUaFAcxQ@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Remove Simon as Renesas SoC Co-Maintainer
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_021943_864866_2ADC0F4D 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Olof Johansson <olof@lixom.net>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sergei,

On Fri, Oct 11, 2019 at 11:00 AM Sergei Shtylyov
<sergei.shtylyov@cogentembedded.com> wrote:
> On 10.10.2019 23:35, Stephen Rothwell wrote:
> >> At the end of the v5.3 upstream kernel development cycle, Simon stepped
> >> down from his role as Renesas SoC maintainer.
> >>
> >> Remove his maintainership, git repository, and branch from the
> >> MAINTAINERS file, and add an entry to the CREDITS file to honor his
> >> work.
> >>
> >> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >
> > So, I will remove Simon's Renesas tree from linux-next and rename the
> > renesas-geert tree to be renesas, OK?
>
>     I thought Geert's new repo is called renesas-devel?

The repository is called "renesas-devel".
The branch Stephen pulls is "next" (colloquially called "renesas-next" ;-)
The linux-next-specific handle Stephen uses is called "renesas".

Cfr. "git show next-20191011:Next/Trees | grep renesas".

I hope this clears up the confusion...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
