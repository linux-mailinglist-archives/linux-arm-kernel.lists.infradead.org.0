Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB7F73B04
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNBZQ1wMHXFHepawwLHH7jAWvHgpthyTK4PSAaEYtL4=; b=CE/0RkSyRIiw/x
	n6qtJXaeLZCjEplt6ccHe0Bpw5vx6opo175FQV2Ze4PZB9Mf7TPkyBx+YEK+dfqC/2lqzeMC3/o8V
	YXT3126TrYIfzlFWZtbGuHnyPKm2HRGln52GDDyIbYt56qJ1WmLz//dh1MYeD+A+Es17qbILwEyZX
	ms/8Ez8kYMYHvRh8DmcrAAk5Y/WHAkZ5eQgBJOqlyxQuFDWIitNOyV11GdXGXQ/etcQlGXpoYz84L
	Cdjyd+uRkTuNAZ88yR2biYcSaCLNJ8e/NZZmnTVUtaAVmrP1NyJ5BS93+y4krbLJRh9Oh7Kx0ETxm
	FqEfiEAp88tvP3kUs7Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNNO-0003rH-E6; Wed, 24 Jul 2019 19:56:38 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNNA-0003ok-AE
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 19:56:25 +0000
Received: by mail-io1-xd42.google.com with SMTP id g20so92183459ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 12:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XZt1VFBsfyDW8nwLopR3h8XPP4tphNg4YLYc8AkW2ho=;
 b=NEeZ+uUa6lhQAWD9vkktfpJZVl4pMOSxYJSXNt2bByMieaXwfzGB10mfQ6B2Li1wNw
 T4ZeKK3COOk1QFOqYMlmOLF4sOFI7nhmu+ImME1jtsxAS6J4BoCFBhU62jYMBtSqHVp7
 P2xLgUNJJoxlvGHXSm6CvOipxxbi6Jik9Btus=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XZt1VFBsfyDW8nwLopR3h8XPP4tphNg4YLYc8AkW2ho=;
 b=WCPRCFDHO0ka8aVYczAGCSk2uADmd++rwZnBfliMO6RpU24/KDznkssJ4q6WBqIX43
 XTBMKJmoAoegcwv6eRsafocFGMgYbU5WSuPMQkHQMx7q2MFICd099EMtzj0E8Uia3QN/
 I8+K9WHNat3XYIwqstiubFHdNEisM7tXJsz950rxhY8xs3sJT79ybd9FjEABgWJyz5Uz
 imT63ZdrcN32BbnuqRHZ99ePk498iW03KCzEJIm6LYSRsnahJrkI1K9fXSvGt5s2BN8E
 8RpERabQ43uOSE8mqeSVdbJXHQ+5XGOoE6HHetbdlZO3rozs2LV89FFTQ3JfSiqYTAfi
 CAqw==
X-Gm-Message-State: APjAAAXq+YnAymDVRClNE+IqdyC5P69wa2nbDC592jfhnYgcTUK6wNwS
 REcy+hTgVhi/JGHzgnuDET93bkZ0/Yw=
X-Google-Smtp-Source: APXvYqxorr3q3m08NdxrSHEu0t7S8R+BcdU2AXU86Ocx5wlySUROqCPeIVwzt1nHnkBGEWP8nieKRw==
X-Received: by 2002:a02:c492:: with SMTP id t18mr87430987jam.67.1563998181756; 
 Wed, 24 Jul 2019 12:56:21 -0700 (PDT)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com.
 [209.85.166.44])
 by smtp.gmail.com with ESMTPSA id y20sm38024101ion.77.2019.07.24.12.56.20
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 12:56:21 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id k20so92168488ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 12:56:20 -0700 (PDT)
X-Received: by 2002:a02:c6a9:: with SMTP id o9mr30860288jan.90.1563998180575; 
 Wed, 24 Jul 2019 12:56:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190723225258.93058-1-mka@chromium.org>
In-Reply-To: <20190723225258.93058-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 24 Jul 2019 12:56:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wk2meLxa6AszjFs=Mfp_wML_7OMsn81FLA5tcdEx=1kg@mail.gmail.com>
Message-ID: <CAD=FV=Wk2meLxa6AszjFs=Mfp_wML_7OMsn81FLA5tcdEx=1kg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Limit WiFi TX power on
 rk3288-veyron-jerry
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_125624_364840_9FCFA041 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Jul 23, 2019 at 3:53 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The downstream Chrome OS 3.14 kernel for jerry limits WiFi TX power
> through calibration data in the device tree [1]. Add a DT node for
> the WiFi chip and use the downstream calibration data.
>
> Not all calibration data entries have the length specified in the
> binding (Documentation/devicetree/bindings/net/wireless/marvell-8xxx.txt),
> however this is the data used by the downstream ('official') kernel
> and the binding mentions that "the length can vary between hw
> versions".
>
> [1] https://crrev.com/c/271237
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  arch/arm/boot/dts/rk3288-veyron-jerry.dts | 147 ++++++++++++++++++++++
>  1 file changed, 147 insertions(+)

I agree that this matches what's downstream and seems right.

As you pointed out the bindings are a bit on the sketchy side,
claiming a certain length in one place but then saying that the length
depends on the HW version in another place.  I'll also point out that
the bindings are inconsistent about the name that should be used.
AKA:

marvell,caldata-txpwrlimit-2g
 -vs-
marvell,caldata_00_txpwrlimit_2g_cfg_set

...but I think the answer is that it doesn't matter at all from a
practical point of view.  The code seems to just find everything that
starts with "marvell,caldata" and send the binary blindly to the WiFi
card.  Presumably there is enough of a header in the opaque binary
data that the card can make sense of what it's being sent.


So it seems like this is the best we can do given the current state of
the world.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
