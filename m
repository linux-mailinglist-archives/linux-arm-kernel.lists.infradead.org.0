Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1987194B7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 23:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnmYFIqgO0ydA42byWt4tWglXLIW7cBFo/TVbTG6Uxs=; b=Brb9rpibRlrTax
	IkgKXWyx+RbmI7LQRWYACDoHH5QJv2O8Sm09OLP0D/HEkarMwVKK9ZCD5I1g727rUdBF2uDk7BKOa
	BdCbGv85QOSySuzxeod/0AMBAc4D3x1jRHN9egP8Rd+xqr28EWOOE0aO/+U+Osu8cOCvUcx8xbhfe
	6W7Va1MdxGkl4iNcc39xQI3cAI0JaxEF/GqInDOIRJjvQ5MUCVePkZOVFDq9ZHi1txoxhYJ24wN0k
	2KTnGOjNG2UPvoWzTuRmLYAHlFPIcHcARsV8x1WP1tNp+K6oZ2mHYETxqqbozUwg66T8zPJlRA1Er
	e20GfAEZ+YyAkeWo47Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHaxr-0006D0-Fw; Thu, 26 Mar 2020 22:27:03 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaxg-0006CQ-OQ
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 22:26:54 +0000
Received: by mail-lj1-x235.google.com with SMTP id i20so8198571ljn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 15:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6xyO8FuvXE6CVE7oxQyeyjLYEzLOngOQh+aHZSRVeqs=;
 b=TmiYiXNP7nQUqlfsi7vWGm/1YJ9mVNkv+7A2lQ5GBRahuVUxV2EevaFmQKAy/8ROW7
 6TIU2Zn1yEf3c74hQSJUhP1dmaTQ+WVpCgwptXlM57ijFCSuoeggCIi5yXBCRN2H9cZN
 dsFgKiZqHkBfLiLe3Z8rWqB6NDbfwSJ4XyM6C7zt8oy6cF8kmN586bAa5xGNodnrXUwj
 3uKdP2DqLwToVsnH2BsAu5cFYe0ekKK7mDH4ZjI228Lct3j4WEwT8Fk5wl5nNVh+mA5G
 yyMAI0D7/7EUeR3tCQV8sHYnbgqHMnQHTWbGjNRiuDaqc/Og3n0Lo/AISDdQCmDmoIje
 QVbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6xyO8FuvXE6CVE7oxQyeyjLYEzLOngOQh+aHZSRVeqs=;
 b=De9dggx9f7vshHoaLZIwUdX7cbWInf6PKEdfJRw0KfE4/9QLqVQ7rtGDGmJp7ystbZ
 rXlaVARr6UIajGAhckXLFZGq4mmFTsvj1TA/g8kSx2toLbW+Q0HJXTB+JdZTUK0ACcS+
 coeNtICqpjBsCIDUhFsvd2pZN3DaSQZFW3oX9tPqy7LmxGezEM5l/ZLualawY/r+Ymhy
 AwXryKcv/m5HF00LYHb6Olug6Bm99hsphUOyisRgKTy1SueGbTiTaKIwEhBqOirwoku2
 Fr3C0MK5AeV7Gb0q02vsRqo9hk1LDkpGKdGErd1Rtlo6qU4lMRk9Lot8JtVRtYfJrkUa
 AFeQ==
X-Gm-Message-State: AGi0PuZEe9rR5X9VtSObufg3e2szEmx7aBnC3GS14OtW6X37M1rkIr0q
 9dxk0LO6m5xfKLDtY4apx6BCrR2LAYi0tBR+9hDzYA==
X-Google-Smtp-Source: APiQypI1bGUF9gEfBjXFbywVo5PH6ckICPZnsBOMKF2v3rVwVlOySbJcm3WCYku6mrc7IeLpDIjfbVB2XmkriwZMhVU=
X-Received: by 2002:a2e:5048:: with SMTP id v8mr6071530ljd.99.1585261610638;
 Thu, 26 Mar 2020 15:26:50 -0700 (PDT)
MIME-Version: 1.0
References: <5e7cdaf9.1c69fb81.7b511.491d@mx.google.com>
 <CAK8P3a0eRw1rn3QzsO0omJHNJ8ftNFJkixBmdmUTGxenDZbZVw@mail.gmail.com>
 <CACRpkdajmVJTmkDjxyKzPW1N58CAP5HsDrc_zZozfqi5OaJo7Q@mail.gmail.com>
 <CAK8P3a3Rcxs-M64cUbHRyEWWS2kE7trrfwDB-iAr+pPDvH3Tig@mail.gmail.com>
 <CACRpkdbPNLdE43rnWNODuwcgnqjN8y0wsQ612G5XK-STPdsk5Q@mail.gmail.com>
In-Reply-To: <CACRpkdbPNLdE43rnWNODuwcgnqjN8y0wsQ612G5XK-STPdsk5Q@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Mar 2020 23:26:39 +0100
Message-ID: <CACRpkdbyYwFhpJaRzBgr5Td=ELQT5dd7Mmx4VFO5Aa5frRvfmg@mail.gmail.com>
Subject: Re: ux500 warnings, Re: soc build: 52 warnings 2 failures
 (soc/v5.6-rc6-845-ga9295ff5fc977)
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_152652_801783_1861DC5B 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Olof Johansson <olof@lixom.net>,
 Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Olof's autobuilder <build@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 11:12 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Thu, Mar 26, 2020 at 10:57 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Thu, Mar 26, 2020 at 10:53 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> > >
> > > On Thu, Mar 26, 2020 at 8:29 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > On Thu, Mar 26, 2020 at 5:42 PM Olof's autobuilder <build@lixom.net> wrote:
> > > > >
> > > > > DTS Warnings:
> > > > >
> > > > > /build/arch/arm/boot/dts/ste-href-stuib.dtsi:203.11-208.7: Warning (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on default #address-cells value
> > > > > /build/arch/arm/boot/dts/ste-href-stuib.dtsi:203.11-208.7: Warning (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on default #size-cells value
> > > > > /build/arch/arm/boot/dts/ste-href-stuib.dtsi:205.6-16: Warning (reg_format): /soc/mcde@a0350000/dsi@a0351000/panel:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
> > > >
> > > > These stick out to me (more below). Linus, have you seen them before?
> > > > I just merged your ux500 DT series, which may have introduced the
> > > > warnings (I have not checked older build logs yet).
> > >
> > > I think Rob recently turned on W=1 on the DTB builds so this is a bit all over
> > > the place and we need to iron it out step by step.
> >
> > It's strange though that I only see the warnings for ux500 and none of
> > the other platforms.
>
> Hm maybe a bit of screwup here then ... I'll try to reproduce and send
> a patch to fix it up on top of -next!

OK I found my silly mistakes and sent a patch to fix it up, should
be landed in the patchwork as well when you see this.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
