Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79556194B54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 23:13:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dMKUo2zEVRY7EkaAltKlUuVqq9qrxhEmSRBru0OQFCs=; b=toPLmsx6Sm21RG
	d6WmXCAUllEwIGowsEkLnL8+QoDg3TbTam1pw+6p5HCZxiQ+lQFV48Fvs75cmUjXO40ALDFHqTpcK
	WGvkki7ddDbncZvODY5QM53MUj3HQRmryzhnx/HDzgjNB7EQ62PHetEIgSEki2geTleu0j2/06+D7
	N0qZDKAqg7mLtaoOyvA/mPys6I1MOmNNeimeDAwmCpUZYoSIi1I/R1MWf5J7q+h0pBwXEyGunvJlc
	bZS0ZrpMsNH4pk9vyPjOERuykkr92PUS8UrD4DamnmkNMpV7KxHhHdED0L4PNxatWV44Qxduz9GhG
	su1i7HM7mn0JnS/sMt6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHakG-0000iP-7Z; Thu, 26 Mar 2020 22:13:00 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHak7-0000hv-R0
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 22:12:53 +0000
Received: by mail-lj1-x22a.google.com with SMTP id p14so8127208lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 15:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u7tUZYGA0QbOPuM154H2IhCSht9dpzKEOAUnNMjJPVo=;
 b=vz3gD/LFoO7eMxGHrSXbDxQKjZBb2vmwW4Cp0LAQwDAVBDP+xBrjdf5EVmlVAeIZ9J
 KIIiewnbl57PlVZR/9QpAT8xkaO927iIUKqL27B698FuoS5HS3Ng07sjrcBYXXJ9ROcN
 EmoySxZpTwr+oD51UAzqI1ENYs3dyYyuVQlhTuZWH3iNx/w8pDQD0Xb74UCQV+FDNESs
 Tj1P2SL6MRPtzzVi2k0RL+7Nsi/4z0V69ciAVy8LZMe2mVmRMuDvQB8H2eEr/EIIfo4d
 /3vyHq/gS6YlCKMUxE1D4blKpH2v3/mAbMgAC84yrd1Y3QlZbXCzHISHmTJBPtdPDxdP
 3jyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u7tUZYGA0QbOPuM154H2IhCSht9dpzKEOAUnNMjJPVo=;
 b=JNEE3brZIcrerASVazVc+r/2nCfifmSVAvDwr04V/ubUX0n+7qX3/5ARjg2lCdL+9d
 cfWIQkFsBkg3Tm1Hsu8mHW5oU61lkOaquZM4uFVFqoyUU9Dy//04bH5+vjB3E8pn5rGH
 uLtinzBvHCjArf67KEL1LC9xn9kQQBHASyRxc08H7B93TyVkxnUU5Irlw/7dBsJox5BP
 hfSU7r7Z3Ba9yzbSVsytieZk0vH1KSOr2NWuGtC3bDtlF8MSfodQlu3l7cbh+nDQL/yU
 LFzdI398A7Qgy8SUjEsJ9N/sc7MBY0wPue8XRzo/hEsnNoU80QlofkDDcdjK0p+jIxWz
 RKhA==
X-Gm-Message-State: AGi0PuZHjkEWsZW7+5nPSrHgZBlSfXfdAs0gF6JB6sBQQ7e7tWAHVRlq
 nY6tqjjmF+BhlMvHNI4VmL26jx/TB4dyllUc/0HeQg==
X-Google-Smtp-Source: ADFU+vuYMCcThbn+rrKbA1NpPqw1sK7PfCX9UffjtDGV8YGQs4n6NpHhXCVGWh4kvmJxVaEowMYIeCDxT57tRP9GMrU=
X-Received: by 2002:a2e:a412:: with SMTP id p18mr6724645ljn.39.1585260770047; 
 Thu, 26 Mar 2020 15:12:50 -0700 (PDT)
MIME-Version: 1.0
References: <5e7cdaf9.1c69fb81.7b511.491d@mx.google.com>
 <CAK8P3a0eRw1rn3QzsO0omJHNJ8ftNFJkixBmdmUTGxenDZbZVw@mail.gmail.com>
 <CACRpkdajmVJTmkDjxyKzPW1N58CAP5HsDrc_zZozfqi5OaJo7Q@mail.gmail.com>
 <CAK8P3a3Rcxs-M64cUbHRyEWWS2kE7trrfwDB-iAr+pPDvH3Tig@mail.gmail.com>
In-Reply-To: <CAK8P3a3Rcxs-M64cUbHRyEWWS2kE7trrfwDB-iAr+pPDvH3Tig@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Mar 2020 23:12:38 +0100
Message-ID: <CACRpkdbPNLdE43rnWNODuwcgnqjN8y0wsQ612G5XK-STPdsk5Q@mail.gmail.com>
Subject: Re: ux500 warnings, Re: soc build: 52 warnings 2 failures
 (soc/v5.6-rc6-845-ga9295ff5fc977)
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_151251_909627_D6C7599B 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22a listed in]
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

On Thu, Mar 26, 2020 at 10:57 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Thu, Mar 26, 2020 at 10:53 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> >
> > On Thu, Mar 26, 2020 at 8:29 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > On Thu, Mar 26, 2020 at 5:42 PM Olof's autobuilder <build@lixom.net> wrote:
> > > >
> > > > DTS Warnings:
> > > >
> > > > /build/arch/arm/boot/dts/ste-href-stuib.dtsi:203.11-208.7: Warning (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on default #address-cells value
> > > > /build/arch/arm/boot/dts/ste-href-stuib.dtsi:203.11-208.7: Warning (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on default #size-cells value
> > > > /build/arch/arm/boot/dts/ste-href-stuib.dtsi:205.6-16: Warning (reg_format): /soc/mcde@a0350000/dsi@a0351000/panel:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
> > >
> > > These stick out to me (more below). Linus, have you seen them before?
> > > I just merged your ux500 DT series, which may have introduced the
> > > warnings (I have not checked older build logs yet).
> >
> > I think Rob recently turned on W=1 on the DTB builds so this is a bit all over
> > the place and we need to iron it out step by step.
>
> It's strange though that I only see the warnings for ux500 and none of
> the other platforms.

Hm maybe a bit of screwup here then ... I'll try to reproduce and send
a patch to fix it up on top of -next!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
