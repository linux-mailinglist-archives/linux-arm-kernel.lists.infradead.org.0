Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC97570C0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 23:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5Gm+R6yAj7CVoBg3YJKp4bz6fmIRhy8iDErcLddWhQ=; b=FNLEAW50+m+a4B
	8M0P7Wb1oufhM5YuLxbWV9XAVNwsKU+jULnGZqkuU5gYPxsEs8h7/ouIcxZdPqMpxjGtx0MdxxIB/
	xnMqNksP3oeLOmH0Pl877TYconC3SmSX3eUivpY5w5Oyxnw49aWS1Uk2WKlRm/FVq3hXpLO/TEbIV
	FCqe9DZSUz6IOcrp1mWPeSwdedarJUSQCNsEuXXpfHpfcpg0O6yDjQLNbSR5Ebc3L8pV8NmPBKwnb
	yt7EpPtzHyul5EK3v+xK/PKBYEb+H914YMwfIm8is5oD1Jhjf6VasjBLkOlCqK9MK4Jcquy6DQhU1
	OBXX+WzYzvXl8l2nRtxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgEg-0005To-QN; Mon, 22 Jul 2019 21:52:47 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgEQ-0005Sy-V9
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 21:52:32 +0000
Received: by mail-io1-xd43.google.com with SMTP id k8so77450393iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 14:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M4B5MWHaBM5L6mAB44C8VC587AuJcqw9v3suudathig=;
 b=mV4yN9XbiPm46rZRFWHIwRnJLaAHpFcZQXjZTtYF+lvWkpqAE8M0TSjnqF7x9XW2/A
 wJ5yzv+XKjZLlUo+WTNIs2iqS8X0STj8twa3zEjI9a8G2KOBbGN0BkP/IRtZmdHoJKu2
 KI2kXbrAtzBfyIjLpL/W0Sft1zOYuf7ZqdFt8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M4B5MWHaBM5L6mAB44C8VC587AuJcqw9v3suudathig=;
 b=ai9+UMp8+eSfm2LSNhuPxyGsVuCWWRRs5kdCJwqjOOcVSRlHPuFDS0vngRQaxI7LJV
 PrxIrToIhvzQ/KR0ZkgTtfr+xIFIu0UHgjlZPCWBZ5bVUL/z3U4wsXVLYxWmWHF4Ln01
 GYGip1fmn8t89fbabEU4VnIeTEWXlav9vGAd14K0ECajZttSFX6mtlo6gS+DJj3KxaNo
 PHA4vU0AMcHnqFUB4PWEEUKbyvcUkU+cI6loDdn3tA631RZpSqBKkONXeKbyao2ozTBu
 pYPFxtvPcxVNYv4NUPLGiljieZlOQATlVsr53Um386W1wb9mW7/Gel/ZTOqpZbyrpQm2
 SzHg==
X-Gm-Message-State: APjAAAXdVmKtBrrP3MXiBb48Chv0c1Rs9SdYO4XMeaTELAtI+dBOan0F
 T5zVcCj9tV56RSKU+iXCHjddqIhbJb8=
X-Google-Smtp-Source: APXvYqzykjByORREur0WvTcyYSC8H96qGhGcjUkyoAob76pRr/UjPvIB12GZCWd8skzqEssY46XM+A==
X-Received: by 2002:a6b:ee12:: with SMTP id i18mr7255641ioh.172.1563832349739; 
 Mon, 22 Jul 2019 14:52:29 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com.
 [209.85.166.51])
 by smtp.gmail.com with ESMTPSA id y5sm43458660ioc.86.2019.07.22.14.52.28
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 14:52:28 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id h6so77363465iom.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 14:52:28 -0700 (PDT)
X-Received: by 2002:a02:ac03:: with SMTP id a3mr77628446jao.132.1563832348559; 
 Mon, 22 Jul 2019 14:52:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190507234857.81414-1-dianders@chromium.org>
 <79ca5499-6b7d-fe55-2030-283f5cfb1d27@rock-chips.com>
 <82480aa5-ab2e-11c5-8dd5-c395f72fc6e7@ti.com>
 <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
In-Reply-To: <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 22 Jul 2019 14:52:16 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XgawwLf6BQ-ruY5e36VyA3jM4Vf5gpFPfC8nLQwxwW_w@mail.gmail.com>
Message-ID: <CAD=FV=XgawwLf6BQ-ruY5e36VyA3jM4Vf5gpFPfC8nLQwxwW_w@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_145231_028327_A8E37464 
X-CRM114-Status: GOOD (  30.83  )
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
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Lin Huang <hl@rock-chips.com>,
 Derek Basehore <dbasehore@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 Huang Jiachai <hjc@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "nickey.yang \(nickey.yang@rock-chips.com\)" <nickey.yang@rock-chips.com>,
 Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>,
 wzz <wzz@rock-chips.com>, Guenter Roeck <groeck@chromium.org>,
 Caesar Wang <wxt@rock-chips.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kishon,

On Mon, Jun 3, 2019 at 8:22 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Kishon,
>
> On Mon, Jun 3, 2019 at 4:22 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> >
> > Hi,
> >
> > On 20/05/19 1:34 PM, Caesar Wang wrote:
> > > Hi Doug,
> > >
> > > For now,  nobody of rockchip is responsible for this driver.
> > > Cc: Nickey, Zain, Hjc
> > >
> > >
> > > On 5/8/19 7:48 AM, Douglas Anderson wrote:
> > >> While testing a newer kernel on rk3288-based Chromebooks I found that
> > >> the power draw in suspend was higher on newer kernels compared to the
> > >> downstream Chrome OS 3.14 kernel.  Specifically the power of an
> > >> rk3288-veyron-jerry board that I tested (as measured by the smart
> > >> battery) was ~16 mA on Chrome OS 3.14 and ~21 mA on a newer kernel.
> > >>
> > >> I tracked the regression down to the fact that the "DP PHY" driver
> > >> didn't exist in our downstream 3.14.  We relied on the eDP driver to
> > >> turn on the clock and relied on the fact that the power for the PHY
> > >> was default turned on.
> > >>
> > >> Specifically the thing that caused the power regression was turning
> > >> the eDP PHY _off_.  Presumably there is some sort of power leak in the
> > >> system and when we turn the PHY off something is leaching power from
> > >> something else and causing excessive power draw.
> > >>
> > >> Doing a search through device trees shows that this PHY is only ever
> > >> used on rk3288.  Presumably this power leak is present on all
> > >> rk3288-SoCs running upstream Linux so let's just whack the driver to
> > >> make sure we never turn off power.  We'll still leave the parts that
> > >> turn _on_ the power and grab the clock, though.
> > >>
> > >> NOTES:
> > >> A) If someone can identify what this power leak is and fix it in some
> > >>     other way we can revert this patch.
> > >> B) If someone can show that their particular board doesn't have this
> > >>     power leak (maybe they have rails hooked up differently?) we can
> > >>     perhaps add a device tree property indicating that for some boards
> > >>     it's OK to turn this rail off.  I don't want to add this property
> > >>     until I know of a board that needs it.
> > >>
> > >> Fixes: fd968973de95 ("phy: Add driver for rockchip Display Port PHY")
> > >> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > >
> > >
> > > Reviewed-by: Caesar Wang <wxt@rock-chips.com>
> > >
> > >> ---
> > >> As far as I know Yakir (the original author) is no longer at Rockchip.
> > >> I've added a few other Rockchip people and hopefully one of them can
> > >> help direct even if they're not directly responsible.
> > >>
> > >>   drivers/phy/rockchip/phy-rockchip-dp.c | 11 +++++++----
> > >>   1 file changed, 7 insertions(+), 4 deletions(-)
> > >>
> > >> diff --git a/drivers/phy/rockchip/phy-rockchip-dp.c
> > >> b/drivers/phy/rockchip/phy-rockchip-dp.c
> > >> index 8b267a746576..10bbcd69d6f5 100644
> > >> --- a/drivers/phy/rockchip/phy-rockchip-dp.c
> > >> +++ b/drivers/phy/rockchip/phy-rockchip-dp.c
> > >> @@ -35,7 +35,7 @@ struct rockchip_dp_phy {
> > >>   static int rockchip_set_phy_state(struct phy *phy, bool enable)
> > >>   {
> > >>       struct rockchip_dp_phy *dp = phy_get_drvdata(phy);
> > >> -    int ret;
> > >> +    int ret = 0;
> > >>         if (enable) {
> > >>           ret = regmap_write(dp->grf, GRF_SOC_CON12,
> > >> @@ -50,9 +50,12 @@ static int rockchip_set_phy_state(struct phy *phy, bool
> > >> enable)
> > >>       } else {
> > >>           clk_disable_unprepare(dp->phy_24m);
> > >>   -        ret = regmap_write(dp->grf, GRF_SOC_CON12,
> > >> -                   GRF_EDP_PHY_SIDDQ_HIWORD_MASK |
> > >> -                   GRF_EDP_PHY_SIDDQ_OFF);
> > >> +        /*
> > >> +         * Intentionally don't turn SIDDQ off when disabling
> > >> +         * the PHY.  There is a power leak on rk3288 and
> > >> +         * suspend power _increases_ by 5 mA if you turn this
> > >> +         * off.
> > >> +         */
> >
> > Can someone in Rockchip try to find the root-cause of the issue? Keeping the
> > PHY off shouldn't increase power draw.
>
> It sounded like Caesar already answered this, though?  Basically things
> aren't hooked up in a way that this line can be turned safely turned
> off in rk3288 with the current state of the world.  Chris says that
> there's an ordering problem where we've got to turn off PD_VIO
> _before_ we turn off SIDDQ.  ...but PD_VIO is a power domain that
> contains much more than just eDP.  So if we truly wanted to try to
> solve this we'd need to come up with a way to make sure PD_VIO got all
> the way off and then turn this off only afterwards.
>
> ...and right now on rk3288 it looks like we never actually turn off
> PD_VIO while the system is running.

Is now a good time to land this patch since 5.3-rc1 is out?  Do you
need me to re-send?  Hopefully your concerns are all addressed?

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
