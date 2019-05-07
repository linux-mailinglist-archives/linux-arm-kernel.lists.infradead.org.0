Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C1E1644C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1ruKsVVVitQTdV6nX5Zl5OCdCbyxJPvhiH/JgcPkTU=; b=hpZAgeRI04vSgf
	PHJLClATLp1sWfbTgW5K2uiVFv99H8h50O0YBaXDK91BiRaazbZr/hvRGD9tF2/5B8OFupzUYJ8uJ
	UlKUny5I9MFeJFbpVG/9R8Sf78DnYIYbxPOoYiHocU9bEqraQ5mjVevqTMZDfbk/o/wEV5Z7NSM1j
	Z/wNDJ9K1/uLbo01Q20H011+Vlg3Fjy+1cmfIHZLFG2fms27HRRqSbqDXd7V3NeW0m9h6cS8tECQ+
	fUGBjZJgh66R8kuDXltOr5X5qg5iHenDLDQpNp5diCKugFFE4joA6cnlRdNDgKS6By6DdvxpVdrW6
	+GKWyqC2mE/tcJzdVRwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzs2-0002kA-2F; Tue, 07 May 2019 13:10:58 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzrt-0002id-3k
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:10:50 +0000
Received: by mail-ot1-x343.google.com with SMTP id u3so9376186otq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 06:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pAgdAjAQ41e+k9RIOAaf7UwVPbjN19zPzB9CqtCyi8o=;
 b=S8yvcDyHGUuySevVVbPrSHU3t8AKRaaUF6KGBJy+P2dAJmiCw3ZklE01rjGliEZPW4
 C2yMlpkmHc1FHLb2I0w5+p1/BEmwSl2dl/i+CsulO4YWdZcu/KtbaktRVu7wpNNzIGXI
 zbFYwyoJyeynlp/9dqdvyIh1uQnz4KrRNOPaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pAgdAjAQ41e+k9RIOAaf7UwVPbjN19zPzB9CqtCyi8o=;
 b=hkK0+JuTMBX5Ys2gCCTs0iPQVIsz1j56KeLA//jvkkh7EgfJP5lqDWlg4ZTqNlvYMb
 0MKe49Sb9bebCfHgX8OyCRjKMQV89/Vg6FgvAdIim9PNDVuHZzgwTN62svfVLt9s4o8N
 HzIfJFs6xf+lhiDmgZ7Ozwd2g7mSujrvPZIVuiv2JpV08ldqVWzmbMU+i8j6orKfIUm6
 TdpwHtDunDzt+sffy7/a198J990kjkaSaocxIvRScHQj3D0GQ/5VHhFHV5iP8WRLwRU3
 7ZHmiVAj6E/DK9DzrjjSUyr1pXSF4D72qSilOoU/fQ8k7fx2pIOMpQKE4d8Oycg232Sz
 94Lw==
X-Gm-Message-State: APjAAAV9O4MK0eezCai1mCgB8RrbRKODc0TdFJwZ47/a2Cj6TIqm8+aG
 ZjbOkGPbl7CxXktS9t7Ey6QgD/1azX0DcmUugda9Qw==
X-Google-Smtp-Source: APXvYqyq6Oa3R9ujCSp5aX2pGJv5ioCCjL3fBgrFeYLXZnoYKeISsxqO4YXczAuWqNLSXAJntbNAN0ExsIJit4gfVno=
X-Received: by 2002:a05:6830:111:: with SMTP id
 i17mr4016302otp.322.1557234647846; 
 Tue, 07 May 2019 06:10:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
 <20190501193429.GA9075@ravnborg.org>
 <CAMty3ZAfwVyvmAmenhrQHJcy3eq-Yb61a4WLop_8jS-7vM940A@mail.gmail.com>
 <CAL_Jsq+mYy1JF_cM7sD82aLuUSnZnwsSD6-Q-W1uTp+_oSdRmg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+mYy1JF_cM7sD82aLuUSnZnwsSD6-Q-W1uTp+_oSdRmg@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 7 May 2019 18:40:36 +0530
Message-ID: <CAMty3ZBpRABe4u26ZN91JRB+vVF4Z96k-LDoe37d6EdVDkfJsg@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/panel: simple: Add FriendlyELEC HD702E 800x1280
 LCD panel
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_061049_157309_8347837B 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 8:34 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Mon, May 6, 2019 at 4:56 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > Hi Sam,
> >
> > On Thu, May 2, 2019 at 1:04 AM Sam Ravnborg <sam@ravnborg.org> wrote:
> > >
> > > Hi Jagan
> > >
> > > On Wed, May 01, 2019 at 05:44:47PM +0530, Jagan Teki wrote:
> > > > HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
> > > > resolution. It has built in Goodix, GT9271 captive touchscreen
> > > > with backlight adjustable via PWM.
> > > >
> > > > Add support for it.
> > > >
> > > > Cc: Thierry Reding <thierry.reding@gmail.com>
> > > > Cc: Sam Ravnborg <sam@ravnborg.org>
> > > > Cc: David Airlie <airlied@linux.ie>
> > > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > > Cc: dri-devel@lists.freedesktop.org
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > >
> > > Please submit the binding in a separate patch as per
> > > Documentation/devicetree/bindings/submitting-patches.txt
> >
> > Hmm.. prepared like this initially but few of my patches were combined
> > earlier even-though I sent it separately. anyway let me separate it
> > again.
>
> For what subsystem? All the maintainers that I was aware of doing that
> have stopped.

May be it was recent, Dmitry combined by previous dt and driver changes.

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ae97fb589648cd5558f1ceea317404a639307501
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=a5f50c501321249d67611353dde6d68d48c5b959

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
