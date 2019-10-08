Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33A0D0070
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 20:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+j4Fo03Tvph4Fp08rzVDn9YiM01vyQkaJ+1OjqDCbEE=; b=kuQawzV3dJb3kw
	bbC6b1KZPqjfiR1klC4RtjsdHAXQ/3iGXs11jslVRLHAtvzgKKJHwdCIbRgguF1ijuZNeq2+x1wM+
	NjdIl9NpK+9KprR0vE5jQqcENW1XOv2DwV2J2C8c5ccAJrgvPE2hI3Rm4EX7o1iZG9UfjzIK6Uv2H
	ebUqIay85z5wkxczURKKMGKuk/XgTJzz377wV4m1O1dncWKobAesL6x7jMjAYWn/nEGuJAHZEIwic
	TZy6dip8C0B1hWIXBjJIZAW+2ll45iJXcm1Z2N8kKP5dbI4RwFeh3FoJJAncREAGR+/z+nnsPRJ4h
	G3+PveQl00FI4Ou/g+Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtrs-0007ql-3L; Tue, 08 Oct 2019 18:05:52 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtrg-0007q4-E1
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 18:05:41 +0000
Received: by mail-io1-xd43.google.com with SMTP id v2so38466385iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 11:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7HI75GouwRxYN8A61a1OmNG/T9ubH5sh09rpMiJz5bs=;
 b=JG+hpqwrxAKEEYcv+zMT9gPASAVNdwQPfuQybjrMkqX/JlIEn7BlrTVVWK3rnK72rp
 IrP1u4TMxOUbhXCRKUMtovSns1sZr0NWLjFJ1Sha5/epWnT4NpUp0kHnroYgRKJ2I5AG
 /kVf66tqMQ5oGVfF2ibcRgZyOpKNYmuoC9kTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7HI75GouwRxYN8A61a1OmNG/T9ubH5sh09rpMiJz5bs=;
 b=BdPAH4/vNqRj4cw5SfIHAeQoGKo0DCLM2eo/MzuUkkkVLKvHbuFaffewWndpBXY+7s
 uKSWqPbgf5FAlZBYnPvPP4sjBy+DsvREDnnTjlqwyc2gBtz6bIs3zlfLf/Al8Xym0ws5
 Mf62f3jEA5ZYdH5hY0LVS8K32D+7s5oLhJvZr9WOU35t+VhStA1sE4a/YQSpYdqR4ijP
 R8dzaWWKCY1jRgg6VfYh0+G/4xhh7Lp1IZ85rZ0y03wzeHTUztUsr/SjzzQNyGt+AAk0
 gX1aQublUc6mKN1jQJXZiBGy/E+IllCUgnYPXGsceYZCsnnBDDDBVy0Nh4JXia9OFuhd
 d5Fg==
X-Gm-Message-State: APjAAAXR198ZK3NBfTkKSOwrq7Y9qPDoNFdaWqYQbh0/wmfnP6kHkwVB
 QmNwyMSYLS1s0f8gnmHdd8JOsnNh2mw=
X-Google-Smtp-Source: APXvYqwnbjiWNVVul509Ik+smAAO2VW9ZUQQtWQFXC+55INlpS/0lqQHF9RGtpKIRlEMNYvKpEN0Lw==
X-Received: by 2002:a92:83c4:: with SMTP id p65mr38651653ilk.233.1570557939364; 
 Tue, 08 Oct 2019 11:05:39 -0700 (PDT)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com.
 [209.85.166.53])
 by smtp.gmail.com with ESMTPSA id c25sm6598039iod.47.2019.10.08.11.05.36
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2019 11:05:38 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id c6so38421687ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 11:05:36 -0700 (PDT)
X-Received: by 2002:a5d:9812:: with SMTP id a18mr13195587iol.168.1570557936383; 
 Tue, 08 Oct 2019 11:05:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191003094137.v2.1.Ic9fd698810ea569c465350154da40b85d24f805b@changeid>
In-Reply-To: <20191003094137.v2.1.Ic9fd698810ea569c465350154da40b85d24f805b@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 8 Oct 2019 11:05:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xi-M=Kk0axj=ukGMDr4p0a86LRdiL-6WyPZnL2vuDZGA@mail.gmail.com>
Message-ID: <CAD=FV=Xi-M=Kk0axj=ukGMDr4p0a86LRdiL-6WyPZnL2vuDZGA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: rockchip: Use interpolated brightness tables
 for veyron
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_110540_499709_CCD9F54D 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Oct 3, 2019 at 9:42 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Use interpolated brightness tables (added by commit 573fe6d1c25
> ("backlight: pwm_bl: Linear interpolation between
> brightness-levels") for veyron, instead of specifying every single
> step. Some devices/panels have intervals that are smaller than
> the specified 'num-interpolated-steps', the driver interprets
> these intervals as a single step.
>
> Another option would be to switch to a perceptual brightness curve
> (CIE 1931), with the caveat that it would change the behavior of
> the backlight. Also the concept of a minimum brightness level is
> currently not supported for CIE 1931 curves.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> Changes in v2:
> - added 0 as first step for devices/panels that require a minimum
>   PWM duty cycle
> - increased 'num-interpolated-steps' values by one, it's not the
>   number of steps between levels, but that number +1
>
>  arch/arm/boot/dts/rk3288-veyron-edp.dtsi   | 35 ++--------------------
>  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 35 ++--------------------
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 35 ++--------------------
>  arch/arm/boot/dts/rk3288-veyron-tiger.dts  | 35 ++--------------------
>  4 files changed, 8 insertions(+), 132 deletions(-)

I guess if someone wanted to they could try to increase the number of
steps and see if they got prettier backlight transition, but what's
there now doesn't bother me and has the advantage of matching what has
been in use forever.  Thus:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
