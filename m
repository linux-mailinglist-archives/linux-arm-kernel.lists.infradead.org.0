Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 623B814E976
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kM2dRSBTLpjUP8pk9o9Q6GT8Dg2E63whDPkjRopBmyE=; b=c+SeVMYDGx+1qT
	g2sQEjhXM4JNDhDJtZyQOhEByk4xRb6NFN5++aySA7qEYY9cEeWaSuip8pB4wSHLDc5iqDgVkGYQd
	wbVpdHxOLuotshXln82VPl8CUoWa040VmKSOcWzuHYfsBkvfRmNpX7zfL8rahFfyKexXy/wZxX62w
	nD3+5OoRd/f4qrb16qMjQ09Cs9tJDI8ecc8bJ+YXOY577TlCWtGW3zjIpZt8rCDx9oxNCAfgsDfkB
	o0OnrwQChgck5KH1wSNSolNbB7wm8Z+NITXrf/kmO8nYlXH25zTYITHvam99KadiH7U0sHSv5fFtN
	QZmJUa6NRzoSq1FY3hBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRRI-0004gC-Gk; Fri, 31 Jan 2020 08:14:08 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRRA-0004XL-Oa
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:14:03 +0000
Received: by mail-oi1-f195.google.com with SMTP id q81so6516093oig.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 00:14:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=whAXdHdznYjIr0eEK/ikQOAsAYBnA7TNWNtods2FE2c=;
 b=TrbIKPH1EqP2PBrPwkk2pcRmDmvF3cZeN2xyjju9HlVFUzc+UbvOAHhrYjONQKR7J/
 iTqf7sTdjB0vuDiNprosDebkcXvLNAWW07tu8sFqNeefL/BUh1p8PVEX33Q5Ame2MAZ+
 qcgA80ZyTJCgFe3vQKzfRmyjMWQipPVdzcUGpLOEacpjglWEzR1FWX67h4Afx6kYkvDH
 2m/txw8HxBx+S8odhWctMJsCLGJDfkCpYMfrbU9ERN1MZSv2QeSzP3DLmXknFx2hPCI4
 cyrj9Yq47KC8EjXcxgAMydJP9HSAGW1UNFVCZlE5StkhT6Sa9HdzfHVxvCl4ITErnXqq
 dYyw==
X-Gm-Message-State: APjAAAXzXej/A1mJWACWeTqKO+HZ4pEf2k9TXwS0HozF+WzhSDXW5RhJ
 whoMe4maQW5gHigZpOrouzxIih9jW7YFwY9oNxs=
X-Google-Smtp-Source: APXvYqxVsELFIbYc2E/Dk5r14mT05UKx5Y5iElcBd1BjTk4T4kMv0zIzqRCoNBGqWWZoA1rxpFFIVrR1UIOSbIHgmLQ=
X-Received: by 2002:a54:4707:: with SMTP id k7mr5313336oik.153.1580458438520; 
 Fri, 31 Jan 2020 00:13:58 -0800 (PST)
MIME-Version: 1.0
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-4-geert+renesas@glider.be>
 <78f934a3-ec7a-479e-9f63-4df7c4428ae5@www.fastmail.com>
 <CACPK8XfUG08CmxK7_V=PGp1SBO2UE6CSyKPSi9Hiwz2td4Lq1w@mail.gmail.com>
In-Reply-To: <CACPK8XfUG08CmxK7_V=PGp1SBO2UE6CSyKPSi9Hiwz2td4Lq1w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 31 Jan 2020 09:13:47 +0100
Message-ID: <CAMuHMdXK0_5VbUe2Zo364YNx0kQzt+ESr2GcVSYZc_VW2tn36g@mail.gmail.com>
Subject: Re: [PATCH 04/20] ARM: aspeed: Drop unneeded select of HAVE_SMP
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_001400_801468_1977FC0D 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joel,

On Fri, Jan 31, 2020 at 4:50 AM Joel Stanley <joel@jms.id.au> wrote:
> On Tue, 28 Jan 2020 at 01:05, Andrew Jeffery <andrew@aj.id.au> wrote:
> > On Tue, 21 Jan 2020, at 21:07, Geert Uytterhoeven wrote:
> > > Support for the 6th generation Aspeed SoCs depends on ARCH_MULTI_V7.
> > > As the latter selects HAVE_SMP, there is no need for MACH_ASPEED_G6 to
> > > select HAVE_SMP.
> > >
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > Cc: Joel Stanley <joel@jms.id.au>
> > > Cc: Andrew Jeffery <andrew@aj.id.au>
> >
> > Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
>
> Acked-by: Joel Stanley <joel@jms.id.au>
>
> Geert, did you intend for these to be picked up by Arnd and Olof?

Feel free to pick it up.
I'll resend the remaining patches to the arm-soc maintainers later.

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
