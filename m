Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD88E4A2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 13:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGHndMSBYVv2u4AkiKn+/JFwsrycgf7IgEkSZsjrsmQ=; b=f9DjIlZpVcr5bw
	G88BZi9bJOZO9PoSmUsFG0DGlXv57XM1woWmdap6QJ9e9gV3Zy1QylXRgum9AO/W5VB41D8q5xFJ7
	gNlbJLF1nPzJ/wLr6JN1zp9ulkhSklqF3q4dSkziTG7QPSMamVZSLbOac/ynWNZJ8DuvQ4czq3i2U
	NYlDgfzKyd6R8SdMYi4BCOybEoJQA6rx3zCMdwJyscXxRUXiwQPxRlnvI4XIpA1VAsDhuyP3gybRJ
	1cp5DLWPb6n3N2Q78RNvonVTGN5yn+Mm6MV94iRndLFr3QD4E4PM+fnxiBwJRF3HtuToyC/oX+byg
	I84md9M6A8KsKT7Belnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNxzJ-0003gP-6c; Fri, 25 Oct 2019 11:42:37 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNxz9-0003fg-HI
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 11:42:29 +0000
Received: by mail-oi1-f193.google.com with SMTP id o205so1406505oib.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 04:42:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BcGJu1l7UIRQ0EFIw5C2ACnhv/97dGEXhKfxlqmxdJM=;
 b=R0cGrqlwGJC+KfuX1bT9XgD6Qdzcqu59nmon1C9ilur0sm4G3oB2o2AS892odrjcZo
 oTG+/gbrumKBroV1XIJAEFdabXuAKplfdOC+ds692iuQVzE2xDuUcpZWGPpH+BYep++J
 G09kKS4G8WBW18ubF/ROoBrFJJ4X7R0zBSvm7dEd6nSXLTSMzMA+S5qjTGa5CSdgUuA0
 208//pEH31DLTlunAb8z/uMMLhJwq7TfC1NFCd9CN9xButdjny31hQUb2PRW7UuAlaAS
 02Pa8e9IDZJOb9DE23ZQE2TGtkPPlGQRlgoPiRLmpWbyciDLmqGLxQ/ND6BTvve/5LQK
 owRQ==
X-Gm-Message-State: APjAAAV0IT7htNahqiNGoIsx1unV1OzbUBpbLV+6XXePkLqwNWz8NvZD
 Wz4gXsS2Wx1aLPGUSiIKxyby26W1wfv32pA1MI4=
X-Google-Smtp-Source: APXvYqx2AE+sN8UHL3sRoH6FX9kL2APsqTSX1ZwdK3PcIXZcG4Q4tRECEJxY7lT0jOw3NzCSETNK6NJH/5K0P+dzPf8=
X-Received: by 2002:a05:6808:3b4:: with SMTP id
 n20mr2516418oie.131.1572003745968; 
 Fri, 25 Oct 2019 04:42:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1906241613280.32342@nanos.tec.linutronix.de>
 <20190624142346.pxljv3m4npatdiyk@shell.armlinux.org.uk>
 <20190624144924.GE29120@arrakis.emea.arm.com>
In-Reply-To: <20190624144924.GE29120@arrakis.emea.arm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 25 Oct 2019 13:42:14 +0200
Message-ID: <CAMuHMdX_KzP9n=H4vL4J9ijT=2GYy9X1BBpAdomkchoxnCcjfA@mail.gmail.com>
Subject: Re: [PATCH v7 00/25] Unify vDSOs across more architectures
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_044227_572234_1A7A02E1 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Salyzyn <salyzyn@android.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Michael Kelley <mikelley@microsoft.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 Linux-Arch <linux-arch@vger.kernel.org>, Dmitry Safonov <dima@arista.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Will Deacon <will.deacon@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Sasha Levin <sashal@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Andrei Vagin <avagin@openvz.org>,
 Huw Davies <huw@codeweavers.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, LKML <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On Mon, Jun 24, 2019 at 4:51 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> On Mon, Jun 24, 2019 at 03:23:46PM +0100, Russell King wrote:
> > On Mon, Jun 24, 2019 at 04:18:28PM +0200, Thomas Gleixner wrote:
> > > I talked to Russell King and he suggested to file the ARM parts into his
> > > patch system and he'll pick them up after 5.3-rc1.
> > >
> > >    https://www.arm.linux.org.uk/developer/patches/
> > >
> > > I paged out how to deal with it, but you'll surely manage :)
> >
> > Easy way: ask git to add the "KernelVersion" tag as a header to the
> > email using --add-header to e.g. git format-patch, and just mail them
> > to patches@armlinux.org.uk
>
> Although I haven't send patches to Russell in a while, I still have a
> git alias in my .gitconfig (only works with one patch at a time IIRC,
> sending multiple patches may arrive in a different order):
>
> [alias]
>         send-rmk-email = !git send-email --add-header=\"KernelVersion: $(git describe --abbrev=0)\" --no-thread --suppress-cc=all --to="patches@arm.linux.org.uk"

Doesn't seem to work: no header was added, and my patch was rejected.
There does seem to be a "--add-header" option for git-format-patch, but
it adds the header at the top, just below the "Subject:"-header, instead
of below the "---", so that needs manual editing, too.

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
