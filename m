Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EC7DD1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8ktmsVtxXG4UGXswY78KTC33Tv25P9fOMWzwvwRMac=; b=Yh2y9bi1EXEpP6
	xmqnZjPkRJDjciPJYcP1yVlpRiIB8Ft/VzvoM5+Njnlr6tjg4X1mS1/aKmeimpX9/QqKNVpbPhnzy
	7UjLVwjiGsezuDvlOh0jHOMOAuZPWBIYqY7C9Te95hn7WLeRhnqHIeoPbO3a1GwJetruPYEKq/s/F
	aG6rpkqESLsYNVidizQhAsF+NzgJ0n3hskgC5/ThpT9+2eXV8GrsLAzrfqhp11Sw8mpnhxHUnOrBL
	N/1N3jqVhckDED8YLvzTbD9lc1/w+XVr9WBOxKlOmYWPEy/3NADRTwDbt6LKnuOfxl6/LW8hJrpKD
	WDCzHwzYcqdLSpC6zzTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL12G-0004R0-QY; Mon, 29 Apr 2019 07:49:12 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL129-0004QD-KG
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 07:49:07 +0000
Received: by mail-qt1-x842.google.com with SMTP id i31so2119825qti.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 00:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0qeY97UX3qPR9mVn0ASslox/fHOez69lznk44IZQyJw=;
 b=UujbU0faikIxS++cH5j5UD1NhEIoggeoWj8ogOT52YaPJGsXef74ROHkAS6lFTVKul
 /CEwbKNYgZQIGON7B3EkfWKkF/i9yfWGNwYOKPG0Rtmy9DX3ol87CFrpTIoOfMexKfOZ
 JZ5iQdbtbOe66KvS8wQGKrJ1Hzz7G/Pl6OdNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0qeY97UX3qPR9mVn0ASslox/fHOez69lznk44IZQyJw=;
 b=oAldbT15x/e1gpHONtgOizwI2wxZL3ef27MLP0HH81NubROjR3IITt/xnLHlcdeGDu
 WJNR9B45N1rZ+Zbu7wxQS7Xnd7k+FP/nLnqsIC8PrYZe5UkHvQSokC/raE2GAySOGWEl
 HQ4g28oB7p1/wa7lhLpTWOXT65G76GqCMEDkiYaxGImwqt9Dpvz7JpY8GLo7Xc1lS4Hi
 3z9B9kbkThGrD28NlbBOnoi+en5ACE2iF8Cwv5KXpxReNSi5NorvAYgkuzrvY5dVVPJq
 JXUC3N4MlmOokzJ+cit3b8IHoCoVAOrXj+orSlE0tRG7wzs6Gr3j2gsUWpbMmoBm9mQi
 FzuA==
X-Gm-Message-State: APjAAAUnbeYkKZdfpET2ktAYAtbMKN9HaRBYvrrZ0yWcSarBx1q4gYFP
 SDtzmboqe+eBjpoy7WpxRPOunX4hlWYtmTmKn41p0smgdiHVXA==
X-Google-Smtp-Source: APXvYqzsVaFHI1mpvrMv9BhEk+TvbyuiHJPC8oNa5muwf3tjYXiBtUjwDtoUocY+KZOatuMT5qEd4Xcwx7ENT9rnVds=
X-Received: by 2002:a0c:948e:: with SMTP id j14mr17683473qvj.245.1556524143870; 
 Mon, 29 Apr 2019 00:49:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190423142629.120717-1-venture@google.com>
 <CAO=notzjzpt0WHfJEWXMGgkoJU8UiLnqZnrGrPs-dRH5GNdJyQ@mail.gmail.com>
 <CAO=notz9QVoqKLrhJ3kx9FHja5+Mh68f36O36+1ewLG+SanmOA@mail.gmail.com>
 <20190425172549.GA12376@kroah.com>
In-Reply-To: <20190425172549.GA12376@kroah.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 29 Apr 2019 07:48:52 +0000
Message-ID: <CACPK8XemgKvM38wDSUJsXXeK51dwmeUoKWn+e3ZNHd9v5VBZHA@mail.gmail.com>
Subject: Re: [PATCH v2] soc: add aspeed folder and misc drivers
To: Greg KH <gregkh@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_004905_927648_1BE3B3B0 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Patrick Venture <venture@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, soc@kernel.org,
 arm-soc <arm@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 25 Apr 2019 at 17:25, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Apr 23, 2019 at 08:28:14AM -0700, Patrick Venture wrote:
> > On Tue, Apr 23, 2019 at 8:22 AM Patrick Venture <venture@google.com> wrote:
> > >
> > > On Tue, Apr 23, 2019 at 7:26 AM Patrick Venture <venture@google.com> wrote:
> > > >
> > > > Create a SoC folder for the ASPEED parts and place the misc drivers
> > > > currently present into this folder.  These drivers are not generic part
> > > > drivers, but rather only apply to the ASPEED SoCs.
> > > >
> > > > Signed-off-by: Patrick Venture <venture@google.com>
> > >
> > > Accidentally lost the Acked-by when re-sending this patchset as I
> > > didn't see it on v1 before re-sending v2 to the larger audience.
> >
> > Since there was a change between v1 and v2, Arnd, I'd appreciate you
> > Ack this version of the patchset since it changes when the soc/aspeed
> > Makefile is followed.
>
> I have no objection for moving stuff out of drivers/misc/ so the SOC
> maintainers are free to take this.

I was on the fence about this. The downside of moving drivers out of
drivers/misc is it allows SoCs to hide little drivers away from
scrutiny, when in fact they could be sharing a common userspace API
with other BMCs.  (Keep an eye out for the coming Nuvoton "bios post
code" driver which is very similar to
drivers/misc/aspeed-lpc-snoop.c).

However, in the effort to move away from BMC that are full of shell
scripts that bash on /dev/mem, we are going to see a collection of
small, very SoC specific, drivers and it doesn't make sense to clutter
up drivers/misc.

Acked-by: Joel Stanley <joel@jms.id.au>

The p2a driver has been merged by Greg. We should move that one over
too. Arnd, can you advise Patrick on how to proceed? We could have him
spin a v3 that includes the p2a driver, but it would depend on Greg's
char-misc-next branch.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
