Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEA4CAE82
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 20:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqrzEuPL0F2sHH9zm8C9Ws2Ut7GYFviVm3scHdbsqzU=; b=P+Y9mr12T3Bw1n
	ak/XdveTvJnXFRWseL6nrdsXQB2FmyS8xGBR4Mkv39HmvNk2a+CFkcOvzhIgoTfP3zYW9gp/JyGGT
	6t8Ze55G7ru2Lv+1rpaRWxV8/Kc9tjRrtEPjXeyIugXXrdst7EJNeh65KN/JAnEztLoLp6Bl3S+u0
	od1uhOWoWnSEXJJEaVYbaVwKdjZv9oiFfJZXr1an+1FQj+0iYJsMSDzsCv9tAI+PVHwtjZarY/S20
	WIoVpGVN4vFeOSAdHW67MNGBNxWT/cRcbpub06GwV20BjV8JMW4PcbOQMumnbfzCGcVAMeM4d1BRK
	iGIvwlfD2LJx6BySgIpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6AC-0001co-QM; Thu, 03 Oct 2019 18:49:20 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6A4-0001au-JC
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 18:49:14 +0000
Received: by mail-io1-xd42.google.com with SMTP id n197so7933969iod.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 11:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4bYXjGFVT5M4BPwSyoV9TrBf9Kkv65nfJ31r2xLDzZU=;
 b=EmOe+8mi8SJNDbJCkY/leXIR58hNDc6XJa30oWJMy598KhE/OlmxkDz1hWH2Y1zBSU
 FiEzgzPY69cw6bb7b8ItJYERLWC/ZHGAoieXc82zRqAIXoMlGCLZdazUqZLhMtsrfqHF
 eLszIT8IdmfVVs6uEVjwai/tpfb0EBagW5YH0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4bYXjGFVT5M4BPwSyoV9TrBf9Kkv65nfJ31r2xLDzZU=;
 b=NqmBOVyQBDMreqNvdUAb//DHwZ7uYWMrwhN4dNpeWWnfrZh8YfqnTCPw2CryC9lDnv
 8hZ0ekW5QJgDo6T1OiZnHWrwCLgQf5RvCnF3IUT1cLI93i6rpqGYnNxL71afk4vR0DUq
 yVaJaPB3ax0kDKZOzZPXZ0O73ENguDL6VL9EzLWy43XmoarJDqyR1ctYKVwMl4fzQ2ZX
 j8uWT8xkRmFIhyrAwdghrwXj7eMmjcuXPXcnbwHh2qdQ+sZtNBxxYIkR54GD6vOetmpQ
 ug6SJP7xeeS13cyQ0isuwzC81wR5accpOtbWEZXj6s6fe8WdBfrbnJXF9umljenL0NYi
 ZjKQ==
X-Gm-Message-State: APjAAAWHKGXAqNFxQlecxeqlYsgMl6fUMsBee1jMLkdyBryIiGSUhSoW
 fvCxsVtlTwIh+3xOy1Yu21XjHmDjY60=
X-Google-Smtp-Source: APXvYqzFh+a797eYQs8L/WuoBe3H1FqHIKgnKcgPumXPngOsUQE+GQP+JbJ89Fmzs18K3Up6iK8l2Q==
X-Received: by 2002:a5d:9396:: with SMTP id c22mr9679700iol.198.1570128551342; 
 Thu, 03 Oct 2019 11:49:11 -0700 (PDT)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com.
 [209.85.166.41])
 by smtp.gmail.com with ESMTPSA id t4sm1341940iln.82.2019.10.03.11.49.09
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 11:49:10 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id b136so8011284iof.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 11:49:09 -0700 (PDT)
X-Received: by 2002:a5e:d817:: with SMTP id l23mr9427708iok.142.1570128549025; 
 Thu, 03 Oct 2019 11:49:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191003102003.1.Ib233b3e706cf6317858384264d5b0ed35657456e@changeid>
 <CAMavQKKTdsJmVy1wz8K66qyZ_iONqStM8JXJwX=9XspVAKT28A@mail.gmail.com>
In-Reply-To: <CAMavQKKTdsJmVy1wz8K66qyZ_iONqStM8JXJwX=9XspVAKT28A@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 3 Oct 2019 11:48:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UnC_b1DfN0Aq1bcw_1Oz95Kc-2hkkEULY84+bMfd4sNw@mail.gmail.com>
Message-ID: <CAD=FV=UnC_b1DfN0Aq1bcw_1Oz95Kc-2hkkEULY84+bMfd4sNw@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: Round up _before_ giving to the clock
 framework
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_114912_631764_9BC9FB56 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Tomasz Figa <tfiga@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 Ryan Case <ryandcase@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Oct 3, 2019 at 11:37 AM Sean Paul <sean@poorly.run> wrote:
>
> On Thu, Oct 3, 2019 at 1:20 PM Douglas Anderson <dianders@chromium.org> wrote:
> >
> > I'm embarassed to say that even though I've touched
> > vop_crtc_mode_fixup() twice and I swear I tested it, there's still a
> > stupid glaring bug in it.  Specifically, on veyron_minnie (with all
> > the latest display timings) we want to be setting our pixel clock to
> > 66,666,666.67 Hz and we tell userspace that's what we set, but we're
> > actually choosing 66,000,000 Hz.  This is confirmed by looking at the
> > clock tree.
> >
> > The problem is that in drm_display_mode_from_videomode() we convert
> > from Hz to kHz with:
> >
> >   dmode->clock = vm->pixelclock / 1000;
> >
> > ...so when the device tree specifies a clock of 66666667 for the panel
> > then DRM translates that to 66666000.  The clock framework will always
> > pick a clock that is _lower_ than the one requested, so it will refuse
> > to pick 66666667 and we'll end up at 66000000.
> >
> > While we could try to fix drm_display_mode_from_videomode() to round
> > to the nearest kHz and it would fix our problem,
>
> I got a bit confused reading this and Doug straightened me out in a
> sideband conversation.
>
> To summarize, the drm_display_mode_from_videomode() call referenced
> above is from panel-simple, and this downslotting is specific to
> rockchip's clock driver. So I've asked to clarify these 2 points so
> it's clear from the commit message that this patch is the best
> solution. With that addressed,
>
> Reviewed-by: Sean Paul <seanpaul@chromium.org>

Thanks for the review!  Hopefully people don't mind the quick spin...

https://lore.kernel.org/r/20191003114726.v2.1.Ib233b3e706cf6317858384264d5b0ed35657456e@changeid

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
