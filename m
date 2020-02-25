Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE4E16EC8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:31:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EV7fSaDfvUrB3Bj9WKfCVnaV7GI0kOStbD4lXZ8ySxw=; b=GT/kqApYzSs7J9
	GutVczCKStQTx2O4Cuak4qViFxN2PobtfdcN5N/arDmsVNWmRrqxMKSVHzR/qX/5lPHAtdgiu8UfO
	8cSMbmboTvpAD7G14XhKoPPmiBN2g5nOSK2+CB4Cl/lp48AnVlg8IusLgFbnV5k9JMtYjh6oIsaE1
	84Il3Z/QB7gTagDeHFMj7udC4uY/Jz4DpmZH64xT9iEPSsfIj14ZHq2W6CQgGRQF56UaPyVLSVLyr
	WVWutrUdL+zASJM6FkKnyQenGhO2APkmDapPbvTKlqqJ7F6r0F4rAiJdxnFd6MOEK7FI7CxbPJjAV
	hXDoiC3lZzVQqruUZPMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6e31-0006wN-2S; Tue, 25 Feb 2020 17:31:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6e2r-0006ul-EC
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:30:58 +0000
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C4E3F21D7E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 17:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582651857;
 bh=kJ4gLV2zo9mOE8R3kJ+hUPYqzvlp2reTJzAAi88WqDE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MdXTdtC4ZNyoLx+YYdwcKPTWewYOnxuU8W+bayx2tt1GEnQgUQruFbeuZmTRuAmGX
 fEv3uZihJTeyPlbVSHMZbTdNpVVY5voCaVPyGyHmqvocZN0cc2smEgCq9oLpmgoKIU
 IxN0kuvNw/s0S82X0v05wWZeqpsEKrpo1ju+gH4Q=
Received: by mail-wr1-f54.google.com with SMTP id u6so15781765wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:30:56 -0800 (PST)
X-Gm-Message-State: APjAAAVuA1zLBwLmwjbHz7oD1wy/LZ3DuNEIkndnEIeJzZeF8BLiae13
 SGbV2WvUkTyHXNkotdSboM5CPZuC39ih9mtrY/qwWQ==
X-Google-Smtp-Source: APXvYqywo7OQsDXLUxVIy25bJS38cWNxnmwkX5xj9lsCE2EG482HkO1IsQWZhIXYfri0DmUOaNr2JSCAeafbBYjgoH0=
X-Received: by 2002:adf:a411:: with SMTP id d17mr251171wra.126.1582651855177; 
 Tue, 25 Feb 2020 09:30:55 -0800 (PST)
MIME-Version: 1.0
References: <20200224121733.2202-1-ardb@kernel.org>
 <CACRpkda5VFzMHE483MPj86VN7uU7w4bNibY=ZeLUHyED=JD7Cw@mail.gmail.com>
 <CAKv+Gu8MOZHFLw-Of5yK15Q1z9gpOmdQNmYF405XRAkeiCoXDw@mail.gmail.com>
In-Reply-To: <CAKv+Gu8MOZHFLw-Of5yK15Q1z9gpOmdQNmYF405XRAkeiCoXDw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 25 Feb 2020 18:30:44 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu9chiLCJ=HKLq4sXAP2ooqkRB-mfKVyEJ3tqxuxQTQgrg@mail.gmail.com>
Message-ID: <CAKv+Gu9chiLCJ=HKLq4sXAP2ooqkRB-mfKVyEJ3tqxuxQTQgrg@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] ARM: decompressor: use by-VA cache maintenance for
 v7 cores
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_093057_499703_7A8500A7 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 Tony Lindgren <tony@atomide.com>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Feb 2020 at 18:18, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Tue, 25 Feb 2020 at 16:48, Linus Walleij <linus.walleij@linaro.org> wrote:
> >
> > On Mon, Feb 24, 2020 at 1:17 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > > While making changes to the EFI stub startup code, I noticed that we are
> > > still doing set/way maintenance on the caches when booting on v7 cores.
> > > This works today on VMs by virtue of the fact that KVM traps set/way ops
> > > and cleans the whole address space by VA on behalf of the guest, and on
> > > most v7 hardware, the set/way ops are in fact sufficient when only one
> > > core is running, as there usually is no system cache. But on systems
> > > like SynQuacer, for which 32-bit firmware is available, the current cache
> > > maintenance only pushes the data out to the L3 system cache, where it
> > > is not visible to the CPU once it turns the MMU and caches off.
> > >
> > > So instead, switch to the by-VA cache maintenance that the architecture
> > > requires for v7 and later (and ARM1176, as a side effect).
> >
> > I took this v3 patch set for a ride on some ARMv7 and ARMv6
> > (hardware) boards using zImage:s so the compressed path
> > should be exercised:
> >
> > - Ux500 (ARMv7 Cortex A9 x 2) works like a charm
> > - RealView PB11MPCore (ARM1176 x 4 MPCore) works like a charm
> >
> > Tested-by: Linus Walleij <linus.walleij@linaro.org>
> >
> > I can do more thorough tests with more boards if needed.
> >
>
> Thanks Linus. Do you happen to have any boards that boot with appended DTB?

Actually, I can easily test that myself as well in QEMU.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
