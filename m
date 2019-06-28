Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3485A074
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 18:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4DyXgugJpQpHqaj++kgmspP3W4lq5wPkEpr9vtfJ0IY=; b=fHHSOzT4j2mF1o
	iRL8h2EoZHPXnVOYNZCsO3HFGTz4JOYFzxEz6Kc7PA94bZT4K5bLR5k67Qhb3PTXJcx8lnyHSfxen
	BTnLWq1LAX2K5Exi0gOFiBR1IekLs1XTfWKgBK/JM8UWSvaa9ey7WB/SIHfMVoZWTUyWbFVnl3J+Y
	vGRs5QfR58te/+N0jZmj5KT11EcqvJyVsi9b7ebQRNvAQFDcxM9zRv9Xz1fLqRyv/3uTK55DXdrHd
	pn3b7Am5PDUIb92jkF9h3hTui88Dsmec6+yqvLWhxUTw8RpxOYK1ydJxRsty7dIGl9B3qfVBbsaNp
	JLLfTcbv8NX6k+60hDCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtSL-0003kE-Ro; Fri, 28 Jun 2019 16:10:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtSA-0003je-Hb; Fri, 28 Jun 2019 16:10:24 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6FB5216E3;
 Fri, 28 Jun 2019 16:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561738222;
 bh=JT2+LjdeGYwAzgiQO03rJyeR6d1ItE4i/2D95RggsE0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2jPfie8PRDa4umctnjlAEeWpw3BkCmoC0WH18fW0TkvsFQ7RsdkA1hCqoVP0ei99p
 DiYQXIXkyt2+Mt+6ZLrCD09gMxB2R29SmABRJMeRvyvKaERRxanck59+m1nOVipH+B
 x6rjzkLBBU1UFtKGMM5ebhZp3sbY2dzzZoPP7kl4=
Received: by mail-qk1-f174.google.com with SMTP id m14so5252195qka.10;
 Fri, 28 Jun 2019 09:10:21 -0700 (PDT)
X-Gm-Message-State: APjAAAVXGewvnOicTBklYzLtKCroBiZFx5UmOC9Mnpma7kUn8n03eABB
 AllNadmALLvyRUHP13gYp0vDtRsYpit6OsYY2A==
X-Google-Smtp-Source: APXvYqyWvAhqS9/ekWTKjDusvBvbzTg0jA8Pn2h4OITXjwQUgHtqy5AWS+DPlCXsn23dZ+IMB0pxlEQeYQRMQrLcvXU=
X-Received: by 2002:a05:620a:1447:: with SMTP id
 i7mr9535724qkl.254.1561738221012; 
 Fri, 28 Jun 2019 09:10:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190626130007.GE23428@ravnborg.org>
 <CAD=FV=U4UU8q+CS76uuuGUP=EVnE6+BTUf8U=j7uwfczNgkrZw@mail.gmail.com>
 <CAD=FV=Vi2C7s2oWBDD0n+HK=_SuBYhRM9saMK-y6Qa0+k-g17w@mail.gmail.com>
In-Reply-To: <CAD=FV=Vi2C7s2oWBDD0n+HK=_SuBYhRM9saMK-y6Qa0+k-g17w@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 28 Jun 2019 10:10:09 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJGtUTpJL+SDEKi09aDT4yDzY4x9KwYmz08NaZcn=nHfA@mail.gmail.com>
Message-ID: <CAL_JsqJGtUTpJL+SDEKi09aDT4yDzY4x9KwYmz08NaZcn=nHfA@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] drm/panel: simple: Add mode support to devicetree
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_091022_615714_CD1429C6 
X-CRM114-Status: GOOD (  26.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Viresh Kumar <viresh.kumar@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Sam Ravnborg <sam@ravnborg.org>, Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 9:55 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Wed, Jun 26, 2019 at 7:41 AM Doug Anderson <dianders@chromium.org> wrote:
> >
> > Hi,
> >
> > On Wed, Jun 26, 2019 at 6:00 AM Sam Ravnborg <sam@ravnborg.org> wrote:
> > >
> > > Hi Douglas.
> > >
> > > On Mon, Apr 01, 2019 at 10:17:17AM -0700, Douglas Anderson wrote:
> > > > I'm reviving Sean Paul's old patchset to get mode support in device
> > > > tree.  The cover letter for his v3 is at:
> > > > https://lists.freedesktop.org/archives/dri-devel/2018-February/165162.html
> > > >
> > > > No code is different between v4 and v5, just commit messages and text
> > > > in the bindings.
> > > >
> > > > I've pulled together the patches that didn't land in v3, addressed
> > > > outstanding feedback, and reposted.  Atop them I've added patches for
> > > > rk3288-veyron-chromebook (used for jaq, jerry, mighty, speedy) and
> > > > rk3288-veryon-minnie.
> > > >
> > > > Please let me know how they look.
> > > >
> > > > In general I have added people to the whole series who I think would
> > > > like the whole series and then let get_maintainer pick extra people it
> > > > thinks are relevant to each individual patch.  If I see you respond to
> > > > any of the patches in the series, though, I'll add you to the whole
> > > > series Cc list next time.
> > > >
> > > > Changes in v5:
> > > > - Removed bit about OS may ignore (Rob/Ezequiel)
> > > > - Added Heiko's Tested-by
> > > > - It's not just jerry, it's most rk3288 Chromebooks (Heiko)
> > >
> > > What are the plans to move forward with this?
> > > Or did you drop the whole idea again?
> >
> > At the moment I'm blocked on Thierry responding, either taking the
> > patch or telling me what I need to do to fix it.  I saw Sean Paul ping
> > Thierry on IRC on June 3rd and as far as I could tell there was no
> > response.
> >
> > https://people.freedesktop.org/~cbrill/dri-log/?channel=dri-devel&highlight_names=&date=2019-06-03&show_html=true
> >
> > ...and as you can see Heiko pinged this thread on June 14th.
> >
> > Thierry: can you help give us some direction?  Are you uninterested in
> > reviewing them and would prefer that I find someone to land them in
> > drm-misc directly?
>
> Sam: Oh!  I hadn't noticed that you've been added as a panel
> maintainer in commit ef0db94f94a0 ("MAINTAINERS: Add Sam as reviewer
> for drm/panel").  Does that mean you are able to provide some advice
> for how to land this series?  As far as I know everything is in order
> for it to land, but if you are aware of something I need to do to spin
> it then please let me know!

BTW, at least for the binding, this will get implicitly supported in
the schema conversion[1] as simple-panel as a binding is gone and
panel-common already had timing node defined. A schema for the timing
node is still needed though (hint :) ).

Rob

[1] https://patchwork.ozlabs.org/patch/1121538/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
