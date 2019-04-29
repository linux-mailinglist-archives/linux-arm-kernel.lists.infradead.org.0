Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8E2EAD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 21:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTyVX2e2/zqXU5QP04IQugVVVpxc0APBBzy0oHf6eaM=; b=dmlWlnqWHO/aMe
	zEzXR5f9e3ubsFfBLzdsjfIUF/zLDNwoKwZb3jK+4k2SW2NfQ3fwrURiuGNgLerZaMxgaF54hsLAN
	rTNmAq+ys/BTmS/c3BVXMQ/hfIv2u+Y41PEUXos1D/3TNbhaO2ac2hRFOqaj/+pszzPPVMQ6jrPsq
	rIez7znchJpa8O6yDNAejFFGAbvtgrBdUmcxdsaJ4fEeRY3C9+2Q4lNJI4DvjyyfCHMTDEitFEUuC
	sgWZU5IwEqiqRerqki3aTIm22HvhrQmxysjRQyGrRmPrFmaSUtlSjzYn/+XlgBe5rr1U5A/Ej5iEg
	WtGDGypXGNoEmmEMSjOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLBvu-0001qM-69; Mon, 29 Apr 2019 19:27:22 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLBvm-0001pz-E3
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 19:27:15 +0000
Received: by mail-io1-xd43.google.com with SMTP id m9so3646690iok.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 12:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yM+qItkSV7cyOzrR0XusuAc8CsANFg6gCkRKBVgtPLc=;
 b=mkOtiQnY+tvJCO67zt0OTJfLIOW19SiBik3Jn1sSE0wipaqZ4CuUeTsZTMJ8OfKmOW
 TnmafCROZ1COEoBVSrZCsHNaJ7QZXwp5eB8BBM/hfmstC0gRXW6S8gsAkVtyY/kOIquE
 Z7k2wQEx4eQzDuFCenwXp4/9+Rl+u+8YBV1uuk1Xh4XfsYnjPNngdzNjJhUWkDzZQI/M
 uLziucGwmZhjK81QF8kp9SbfjaUM3w+UTTDKt+bcsT0E5mLLnraryYmsqs0slNft/vGM
 F7nVVva4kjQdHT48m4TjAgelo2XBZRYTjLjzqxT1XaqfN3vq1sCvSHzZfPft1sbJ0fGS
 cfqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yM+qItkSV7cyOzrR0XusuAc8CsANFg6gCkRKBVgtPLc=;
 b=C7MKT93cDuikZW77A+01hKf4h1+mecx1yYy9nHPlc5QMa/njt2eZl23HtEKYxcunWU
 Iaza/LUsbxoYW2sCFktIPMoelBBXdoqS8/l+Xhtr+FazsbDSEWie9QbYIiSOjz1lr+hk
 kgZkIZ+bnI7D+D93VGvLMG4AdTS4PTF63SMBGH+CRqy3VEK6x9ktgd8i10Hi0oBZxsWK
 M/5+QAUkUX7Z23MTaM6LBk+Mkk0gANA6AyUEUFp/xbNFlV4tairl76uk76x8BHA1SJV4
 kkM19qvJJXet30P2trztH+pxYatmCnktEHPTTJD+t/+IBLuLc5xmLTL2lGxECQ5raguR
 FdMw==
X-Gm-Message-State: APjAAAVyRNjXhv/tluYXPTkxvTfH9sOTImkHAMs5ts/eKPjmEz5FrPgw
 ypJlhT0M55eUu84Ufv8CHDo2nlsHL2yAqKw7w7AU5A==
X-Google-Smtp-Source: APXvYqxnpM22Us/BjZc44Va9fpbRb6KCGDpMRCGC9vemv4K7V0RFwjfmFcku2NXR+S4Uf3aARtyunnitr8/59FB8k+M=
X-Received: by 2002:a5e:9307:: with SMTP id k7mr12222114iom.155.1556566033384; 
 Mon, 29 Apr 2019 12:27:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190423142629.120717-1-venture@google.com>
 <CAO=notzjzpt0WHfJEWXMGgkoJU8UiLnqZnrGrPs-dRH5GNdJyQ@mail.gmail.com>
 <CAO=notz9QVoqKLrhJ3kx9FHja5+Mh68f36O36+1ewLG+SanmOA@mail.gmail.com>
 <20190425172549.GA12376@kroah.com> <20190429165137.mwj4ehhwerunbef4@localhost>
 <CAO=notwewAeeLz=LsOcSj=DakLGW0KjeDHALP5Nv2ckgkRqnFA@mail.gmail.com>
In-Reply-To: <CAO=notwewAeeLz=LsOcSj=DakLGW0KjeDHALP5Nv2ckgkRqnFA@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 29 Apr 2019 12:27:02 -0700
Message-ID: <CAOesGMipoKED=XLg+VtEVG0Os_MUzsPgOfBFJ+qoJs_fNmP+3g@mail.gmail.com>
Subject: Re: [PATCH v2] soc: add aspeed folder and misc drivers
To: Patrick Venture <venture@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_122714_478555_65144550 
X-CRM114-Status: GOOD (  25.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, soc@kernel.org,
 arm-soc <arm@kernel.org>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 10:12 AM Patrick Venture <venture@google.com> wrote:
>
> On Mon, Apr 29, 2019 at 10:08 AM Olof Johansson <olof@lixom.net> wrote:
> >
> > On Thu, Apr 25, 2019 at 07:25:49PM +0200, Greg KH wrote:
> > > On Tue, Apr 23, 2019 at 08:28:14AM -0700, Patrick Venture wrote:
> > > > On Tue, Apr 23, 2019 at 8:22 AM Patrick Venture <venture@google.com> wrote:
> > > > >
> > > > > On Tue, Apr 23, 2019 at 7:26 AM Patrick Venture <venture@google.com> wrote:
> > > > > >
> > > > > > Create a SoC folder for the ASPEED parts and place the misc drivers
> > > > > > currently present into this folder.  These drivers are not generic part
> > > > > > drivers, but rather only apply to the ASPEED SoCs.
> > > > > >
> > > > > > Signed-off-by: Patrick Venture <venture@google.com>
> > > > >
> > > > > Accidentally lost the Acked-by when re-sending this patchset as I
> > > > > didn't see it on v1 before re-sending v2 to the larger audience.
> > > >
> > > > Since there was a change between v1 and v2, Arnd, I'd appreciate you
> > > > Ack this version of the patchset since it changes when the soc/aspeed
> > > > Makefile is followed.
> > >
> > > I have no objection for moving stuff out of drivers/misc/ so the SOC
> > > maintainers are free to take this.
> > >
> > > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >
> > I'm totally confused. This is the second "PATCH v2" of this patch that I came
> > across, I already applied the first.
>
> I think the issue here was that I added to the CC list another email
> and so you may see the v2  without that mailing list, and a v2 with it
> --
>
> Does this require a v3?  I honestly didn't think so, but this was the
> first time I had to add more people without needing other changes.

Well, v2 doesn't build. I'll fix it up locally by adding an 'endmenu'
to drivers/soc/aspeed/Kconfig. But... brings up questions how this was
tested before submitting?

scripts/kconfig/conf  --allnoconfig Kconfig
drivers/soc/Kconfig:24: 'menu' in different file than 'menu'
drivers/soc/aspeed/Kconfig:1: location of the 'menu'
drivers/Kconfig:233: 'menu' in different file than 'menu'
drivers/soc/aspeed/Kconfig:1: location of the 'menu'
<none>:34: syntax error

> >
> > Patrick: Follow up with incremental patch in case there's any difference.
> > Meanwhile, please keep in mind that you're adding a lot of work for people when
> > you respin patches without following up on the previous version. Thanks!
>
> w.r.t this patch series.  I found an issue with v1, and released a v2
> with the detail of what changed.  I thought that was the correct
> approach.  I apologize for creating extra work, that's something
> nobody needs.

It's ok to submit newer versions, but it's convenient when they get
threaded also in non-gmail mail readers (by using in-reply-to).


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
