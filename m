Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A13CEEDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 00:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1VJrl0SsUsaXMIzd5gQvHGnSCEHdS3bzqRDkeAUnFI=; b=akv5See+stBvrc
	eayN+tMQ3XiXJmHOakAYaOLBToYbrj7NTkcmfZJyY8QvdBjYoGN0IZY/Ci+7HbL7pZG1+GIZ6SW8I
	e1Y5k7/k48A56v9RDnEmWkoQnNoFgSWYbTR6ITjbKYWMfS5FCU8q/oKMSJ4PGzfRmI+eSPJ8ANrH6
	jwqAxjkR0PcIeuDaVb53PWYVjXfAbNxactE2wNN5yaGdXv8ZktYNOoZIeBSbyABXNrGvX/lYLMwXr
	27HXBaifstW9zHLR3An0qdRVO0OnxVXFJSDpizpqtxKRcDQjGmn2/91p5ZPD/nSFhA6z4tVKZ7qiF
	UpSq6XrtdMZsOnglqJ6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHbD6-0000lr-Si; Mon, 07 Oct 2019 22:10:32 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHbD0-0000kv-39
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 22:10:27 +0000
Received: by mail-qt1-f195.google.com with SMTP id m61so10569801qte.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 15:10:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ejfq0Mc5y2dQchNRlWvp8Diy33ha1r0LaAd27i+X0Y8=;
 b=GK/k6CISBUfNDcQkG/OrOJTxGb8EsoCKwqwk3r2RmcbvNr1w0vonnCX80MpeBJXN7q
 ke5jy8ZQE6YRjOqV6ysINWfjxl81sq9gopPaR815cnplqxNMvIF2PmJxcAeippC2JtGE
 ewBmmZAeCasyARYW8oJ1sjHte7IcAhRwi00IOFnyxbdQuhep+CLVXNI7Xj4ODx9S6ies
 LoDmwcjFOt0oCHXwsLuXq7lvy6cntMz/ahh60f4oKJLFIFdszvWNMK0VVbdftApjmwXL
 X0VOfOd7nDJ/1FF08kWGt27e94iYRmlAeBROsw3tnfYzzJH8RCP7pi/rUfDMQiynoBe9
 xFUA==
X-Gm-Message-State: APjAAAW6PYQQFmXpsBrF8E/OxKRYAgXXCJgqjr27cpVjoVtFb9TVEYM5
 8xVA9OIcx2cJM+WADpZPo5kBqfqJJNLn7UwqKIE=
X-Google-Smtp-Source: APXvYqzPRJFxFYuWxT4+ZfBG+w2vGH6NTchROSOQUcdmM5fCIL2BX1QvKN3iJG9HKm+wYCbZZdFHqvljXGP+vRDWt10=
X-Received: by 2002:ac8:342a:: with SMTP id u39mr32462138qtb.7.1570486224339; 
 Mon, 07 Oct 2019 15:10:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190617221134.9930-1-f.fainelli@gmail.com>
 <CACRpkdbqW2kJNdPi6JPupaHA_qRTWG-MsUxeCz0c38MRujOSSA@mail.gmail.com>
 <0ba50ae2-be09-f633-ab1f-860e8b053882@broadcom.com>
 <CAK8P3a2QBQrBU+bBBL20kR+qJfmspCNjiw05jHTa-q6EDfodMg@mail.gmail.com>
 <fbdc3788-3a24-2885-b61b-8480e8464a51@gmail.com>
In-Reply-To: <fbdc3788-3a24-2885-b61b-8480e8464a51@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 8 Oct 2019 00:10:08 +0200
Message-ID: <CAK8P3a1E_1=_+eJXvcFMLd=a=YW_WGwjm3nzRZV7SzzZqovzRw@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] KASan for arm
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_151026_130901_9634EE60 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michal Hocko <mhocko@suse.com>, Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, kvmarm@lists.cs.columbia.edu,
 Jonathan Corbet <corbet@lwn.net>, Abbott Liu <liuwenliang@huawei.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, kasan-dev <kasan-dev@googlegroups.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Dmitry Vyukov <dvyukov@google.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 drjones@redhat.com, Vladimir Murzin <vladimir.murzin@arm.com>,
 Kees Cook <keescook@chromium.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, philip@cog.systems,
 Jinbum Park <jinb.park7@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicolas Pitre <nico@fluxnic.net>, Greg KH <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Christoffer Dall <christoffer.dall@arm.com>, Rob Landley <rob@landley.net>,
 Philippe Ombredanne <pombredanne@nexb.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Garnier <thgarnie@google.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 11:35 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On 7/18/19 12:51 AM, Arnd Bergmann wrote:
> > On Thu, Jul 11, 2019 at 7:00 PM Florian Fainelli
> > <florian.fainelli@broadcom.com> wrote:
> >> On 7/2/19 2:06 PM, Linus Walleij wrote:
> >
> >>
> >> Great, thanks a lot for taking a look. FYI, I will be on holiday from
> >> July 19th till August 12th, if you think you have more feedback between
> >> now and then, I can try to pick it up and submit a v7 with that feedback
> >> addressed, or it will happen when I return, or you can pick it up if you
> >> refer, all options are possible!
> >>
> >> @Arnd, should we squash your patches in as well?
> >
> > Yes, please do. I don't remember if I sent you all of them already,
> > here is the list of patches that I have applied locally on top of your
> > series to get a clean randconfig build:
> >
> > 123c3262f872 KASAN: push back KASAN_STACK to clang-10
>
> This one seems to have received some feedback, not sure if it was
> addressed or not in a subsequent patch?

ebb6d35a74ce ("kasan: remove clang version check for KASAN_STACK")

got applied, it seems clang will remain broken with KASAN_STACK
for a while.

> > 053555034bdf kasan: disable CONFIG_KASAN_STACK with clang on arm32
>
> This one I did not take based on Linus' feedback that is breaks booting
> on his RealView board.

That likely means that there is still a bigger problem somewhere.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
