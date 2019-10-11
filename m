Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C21ED3A02
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 09:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5gfsdK1v98140IrGtTXIrsLhp4EppSuzJTUq9itsRQ=; b=J8kC9NR9q33eRq
	wQ3H3Avff0sM/3+WxrKtDmwNGFvaQ/Q2mnGgcUF3K5XsJMxOM9fuMIKkp/bwAGcxod+e3Ot3fE+N0
	ZQ1D+5FxGn0uVVDtQ8iJtZb2fcFZ0Q8jptHnMqjSqmDGegvFDeA7CuJbAAFYmk6apUgf6+sOi45ZF
	CN+FA9RsNSyTwN/CESls29lGtCX3tc1bQpFkehxKenM7uBOEeyPvntJ9p2VfmVPLdGUZuWagYu3Y+
	e3l76eCSKJq+Jp75WCTofjCI+xWPvYSEOfievogijumcekZhQV3AiDr6Mtlzgt3Of+dj2xvL4oHkI
	Qn5mXnT5QLfVhu7h3c9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIpKY-0007Ia-Dg; Fri, 11 Oct 2019 07:27:18 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIpKO-0007Hr-VZ
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 07:27:10 +0000
Received: by mail-lj1-x241.google.com with SMTP id q64so8738625ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 00:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PXGQmsqTapiIi2DhUs9f3RGCuwoUA1FtXGFtbOssoUc=;
 b=aUcLe5s9fLYXfWdO1nU+IcaUqji/ba0XGgmPaXLGIqDAiKKfjNxU9dRwn51wVqsRk1
 X5hvDH19knyBjkXiN7DlZmt4cOzNly0AJpmQ5TcrqqUurlGTpHwWfQCiCX+JHuFeEdW+
 NUeWBOsIXokWt/pvgES23YR7C+RsSBZ6LJyyifkFpj1Y/wq9h7rrjb7LG4KDJ0x9qNZq
 VqMbmJHWVJrEcxeRkqmTnB8YLnzsq7SXs/79uFyA0apdMH9uUyMObiVBQ1a3jIL3sZv0
 Ya1MsLQ2+02db9YcVOhZROJPVFszzjIlWqNtQufqu7tMe69GbqHfZUtkyFuhUy1e0nL0
 ZTqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PXGQmsqTapiIi2DhUs9f3RGCuwoUA1FtXGFtbOssoUc=;
 b=Y6k+Kj4ae76qUOUp8YVilThC2J0hJCPIaiOxtWjJuXS7ZByPdHsJF/N8paAE18jqEP
 u2wtm9199S9PLt80tM/i+i+8Sj5TmVkqzbQE2ndDktTyEZGamzAqfuR/ZIdWuTIwOVjb
 0buV27qlzB+mRaYYZgUHrMEKTx0EiAozM3agQrjGwnhvIy8FwIY+BJNOVMBDAB2+Jt72
 wcUL2WibfAjypbzk9ucwHte++joQP2IQgBIkRKQna0j8k/VlCh3lfPZZWuwhHz0NEkvw
 jrMq3yrr8b0b4oVsHWwcVbAdsU0EhHS8fbuDdKI6npofwdhCL1Ix9yrTJv8+Fhtj2E6e
 x5Aw==
X-Gm-Message-State: APjAAAU4pXE2KkH6+AmeWhxp7wRJoedEX+3aUts+kvGYZue+cofSbQYj
 OQmbfris3HAib21TEQs+mLzivoiRVIk4NSvcg+aIJQ==
X-Google-Smtp-Source: APXvYqy90+Zu82pTgrHNKhjBbi/20ah6ebAn7AIrhS5P1XlF61ZPkrJsPOICAZmOkSbGNMnO5pNgabigCro3sumPiYw=
X-Received: by 2002:a2e:9e0a:: with SMTP id e10mr8732217ljk.35.1570778826314; 
 Fri, 11 Oct 2019 00:27:06 -0700 (PDT)
MIME-Version: 1.0
References: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
 <20191003000310.17099-3-chris.packham@alliedtelesis.co.nz>
 <CAMuHMdV7syxxtnHEcgFBrf5DLo-M_71tZFWHHQ6kTO=2A1eVhg@mail.gmail.com>
 <86blutdlap.wl-maz@kernel.org>
In-Reply-To: <86blutdlap.wl-maz@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Oct 2019 09:26:54 +0200
Message-ID: <CACRpkdb7W1iitkRh=B-cw1JGPey76SrAgasvHkh8a81o3n9qGQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: iproc: use unique name for irq chip
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_002709_045430_FC875ECB 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Branden <sbranden@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Li Jin <li.jin@broadcom.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 10:14 AM Marc Zyngier <maz@kernel.org> wrote:
> On Mon, 07 Oct 2019 08:30:50 +0100,
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> >
> > Hi Chris,
> >
> > CC MarcZ
> >
> > On Thu, Oct 3, 2019 at 2:03 AM Chris Packham
> > <chris.packham@alliedtelesis.co.nz> wrote:
> > > Use the dev_name(dev) for the irqc->name so that we get unique names
> > > when we have multiple instances of this driver.
> > >
> > > Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> >
> > A while ago, Marc Zyngier pointed out that the irq_chip .name field
> > should contain the device's class name, not the instance's name.
> > Hence the current code is correct?
>
> Thanks Geert for looping me in. The main reasons why I oppose this
> kind of "let's show as much information as we can in /proc/interrupts"
> are:
>
> - It clutters the output badly: the formatting of this file, which is
>   bad enough when you have a small number of CPUs, becomes unreadable
>   when you have a large number of them *and* stupidly long strings
>   that only make sense on a given platform.
>
> - Like it or not, /proc is ABI. We don't change things randomly there
>   without a good reason, and debugging isn't one of them.
>
> - Debug information belongs to debugfs, where we already have plenty
>   of stuff (see CONFIG_GENERIC_IRQ_DEBUGFS). I'd rather we improve
>   this infrastructure if needed, rather than add platform specific
>   hacks.
>
> </rant>

I have reverted the patch.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
