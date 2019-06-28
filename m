Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A9D5A021
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 18:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryZaisqaQMmv0IFxDjNa9nsCuFcrVKmMXPtsiQTtPWI=; b=tK+n0AcTIBanPF
	HvYyetn7tJR625HN5ZYSUOCHYXxepi/aHnWseuX5iQC423oIXTef/Xz+g963tAwlErEo16z7C06QK
	8QqyEfCZZE69nfwo3uLi5ZrTPTaKRnDTKrh5gdVcJbQhgSbgI0cruYKOsxjUv8n0Dz5LxIq+9/c8i
	nBCdrkdxuWQU5zsmNnRqgojdZhdCRGMI2kjmolA7Uuk7QNO9E+BiV3AxqeePuGnEG7Sl/LismSuzp
	8g6BTWQ/j+VUjsBDAZwkj0ihf1MpiNfre4CtogyjNAWuoP7CXYfGB2geFvf0rqjMYKETXKXfiYZsY
	SC7HQjnRHZa0hpoV2UOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtJo-0006Oa-20; Fri, 28 Jun 2019 16:01:44 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtJd-0006Nu-3v
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 16:01:34 +0000
Received: by mail-io1-xd43.google.com with SMTP id w25so13557428ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 09:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qvsku1LsJlCMNeTol53NqA/7OgT8tqKKHqYv+Wh37GE=;
 b=CzTrUukzMMeVRGwtHonyk2yl+qyq6WCscFXVn/MC+4gnXi3vA+3kMHy6iRQGqVZrU5
 w20Qcluka+u28ayDtwVRqBQcrYz+4pCRRXefNm0+pAj+0E4hSBY3IzGe9/jYZeN6+zm7
 0cy9PihW6uY+H+FazttpKeB7XOxwJRVWhPe0M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qvsku1LsJlCMNeTol53NqA/7OgT8tqKKHqYv+Wh37GE=;
 b=OgcCJ9LwTf3TAuEJUD2bAi37R6eiNNcNNHcTM4ZabF69W7+PUm/HJXv6tDFOWpmj2E
 Gt8ejDcXfKR8Pf95IrgjDo5p/GHC5waFiQ5HLgWMB1M3t/Qv1K2C+UuyNBIsqyna8Idn
 /pzR+BIKjSY2g3/c5oVGjOg1Yd8nSp+HxHatPmVMro8NSpo4mTW7Pf90jJgkV5aGURyJ
 uUcnCd1E5esWmhubeMWiADyVoaxqm2t/sjveiwVC3lhKnrgX/WKQBUdgcXj87hGwpo6E
 YGmh0mfJLEN93dbt/vjt61qxo6z77OYqWOn4HUw6ZUh4aASUJixhqyAQJMtYEHXNFq32
 hkUQ==
X-Gm-Message-State: APjAAAUty4XgxjVmfv3QXw5tXIs3I8/Gf6IUI9H4jSMK5S+Q7SebFQAu
 hKX0k+69Ob7mFURp3Jhwa4QCkEnqe7k=
X-Google-Smtp-Source: APXvYqy+5KM4QdFsmT+7PnMb4KhR263N22NxF4mHUuEmtJB+B26qHOST4i+qMVTkJonp5P4upNXEkw==
X-Received: by 2002:a6b:b602:: with SMTP id g2mr11759414iof.54.1561737692082; 
 Fri, 28 Jun 2019 09:01:32 -0700 (PDT)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com.
 [209.85.166.53])
 by smtp.gmail.com with ESMTPSA id p63sm4573626iof.45.2019.06.28.09.01.31
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 09:01:31 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id s7so13506766iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 09:01:31 -0700 (PDT)
X-Received: by 2002:a5d:96d8:: with SMTP id r24mr1014520iol.269.1561737344434; 
 Fri, 28 Jun 2019 08:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190626130007.GE23428@ravnborg.org>
 <CAD=FV=U4UU8q+CS76uuuGUP=EVnE6+BTUf8U=j7uwfczNgkrZw@mail.gmail.com>
In-Reply-To: <CAD=FV=U4UU8q+CS76uuuGUP=EVnE6+BTUf8U=j7uwfczNgkrZw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 28 Jun 2019 08:55:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vi2C7s2oWBDD0n+HK=_SuBYhRM9saMK-y6Qa0+k-g17w@mail.gmail.com>
Message-ID: <CAD=FV=Vi2C7s2oWBDD0n+HK=_SuBYhRM9saMK-y6Qa0+k-g17w@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] drm/panel: simple: Add mode support to devicetree
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_090133_187613_4F8C9507 
X-CRM114-Status: GOOD (  26.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
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
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Jun 26, 2019 at 7:41 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Wed, Jun 26, 2019 at 6:00 AM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > Hi Douglas.
> >
> > On Mon, Apr 01, 2019 at 10:17:17AM -0700, Douglas Anderson wrote:
> > > I'm reviving Sean Paul's old patchset to get mode support in device
> > > tree.  The cover letter for his v3 is at:
> > > https://lists.freedesktop.org/archives/dri-devel/2018-February/165162.html
> > >
> > > No code is different between v4 and v5, just commit messages and text
> > > in the bindings.
> > >
> > > I've pulled together the patches that didn't land in v3, addressed
> > > outstanding feedback, and reposted.  Atop them I've added patches for
> > > rk3288-veyron-chromebook (used for jaq, jerry, mighty, speedy) and
> > > rk3288-veryon-minnie.
> > >
> > > Please let me know how they look.
> > >
> > > In general I have added people to the whole series who I think would
> > > like the whole series and then let get_maintainer pick extra people it
> > > thinks are relevant to each individual patch.  If I see you respond to
> > > any of the patches in the series, though, I'll add you to the whole
> > > series Cc list next time.
> > >
> > > Changes in v5:
> > > - Removed bit about OS may ignore (Rob/Ezequiel)
> > > - Added Heiko's Tested-by
> > > - It's not just jerry, it's most rk3288 Chromebooks (Heiko)
> >
> > What are the plans to move forward with this?
> > Or did you drop the whole idea again?
>
> At the moment I'm blocked on Thierry responding, either taking the
> patch or telling me what I need to do to fix it.  I saw Sean Paul ping
> Thierry on IRC on June 3rd and as far as I could tell there was no
> response.
>
> https://people.freedesktop.org/~cbrill/dri-log/?channel=dri-devel&highlight_names=&date=2019-06-03&show_html=true
>
> ...and as you can see Heiko pinged this thread on June 14th.
>
> Thierry: can you help give us some direction?  Are you uninterested in
> reviewing them and would prefer that I find someone to land them in
> drm-misc directly?

Sam: Oh!  I hadn't noticed that you've been added as a panel
maintainer in commit ef0db94f94a0 ("MAINTAINERS: Add Sam as reviewer
for drm/panel").  Does that mean you are able to provide some advice
for how to land this series?  As far as I know everything is in order
for it to land, but if you are aware of something I need to do to spin
it then please let me know!

Thanks!

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
