Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6817133364
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ontT6zKq61Q/5fK5+PG70jXW3BPzZJ80QZF3aXHXj5g=; b=cl0/yFIntWzs1C
	WT8Gae8O+oQteanS2pf+q4AVnSRrjIrHcgj6BFz4n3Xhy4nB0Q9T9vUhxLTiHln8T96ZaeKixvdyK
	NbWboqOrK0ycpWbVLXCja9m7FHitgSt3gwsknLUVPCnZuO/fDZfHxTcm3VTrwmR9KLKEUzjnWX+s0
	LKaCqHE1F+Ux/tLszLl2felPZhpBXmm+vx6qnmxMZeFOBw0zx0nDugsl7p7yXQDUDBtBc8KM8FD+D
	T/NfVkTwxvAHl/Gpvz4UpGwB+XSAWPClpUtM6nUvy7YuTCdGi6MyIoLb9Av+DidEidCRKwZvsVVkL
	8saPhuPXi42H4cibmpwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXonJ-0003UC-Qn; Mon, 03 Jun 2019 15:22:41 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXonC-0003TY-SV
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:22:36 +0000
Received: by mail-vs1-xe44.google.com with SMTP id g24so9427049vso.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 08:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uUAvxoeII5KrsgiehiEtR11+rs8kWwhifr5LUT7zXxA=;
 b=bGT+bYiM3Dp5MVMx/qeUbjdC9FkljtDPAIP5Y7y07YFogHMKYZCTZn6cpmxLd36Zoa
 89x/+hE3F5AEu0RGNwuirn+ZIHlIhaGBP9FXH5ukvhc757Ro3DIkQjQwkqxwKzaq5iEY
 6FssEapPaCShNs7o8uR9nQ4L+vr2XPr4rjW20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uUAvxoeII5KrsgiehiEtR11+rs8kWwhifr5LUT7zXxA=;
 b=uIAiOWGkLItRUX0oLy7cFhSvG18iylwOaLsqv7PLKrAH6tjavqpITOK8/+JwQbzk+J
 zfqhTE3SZ0fI6/2CHRDYk4t5DzOxBZml1YLrK+m1T0QfAWpn42FEl5c0oyRxn//UzWzF
 Momhd1B2SfXpL3mWnZ5UXYQnZs6veuuqIZgTdNNh/pEl+MMnGJYVBS3HwRBIEvrCKRWm
 6VDMY+4THFBHIGU0bRE2O4Cc5wfkrAfghSH9SnaXiZV7x2A4pDmQi518TduWH9Ih55pM
 XHt9FIww9BHqE9ufjOZS8g8kI18S4ExKftjfhBUTExu2eBK5SLv5H6Msf4XLRHPewhvd
 RLiQ==
X-Gm-Message-State: APjAAAXiOogt+jqCdSehTTnq3Fi42iTMA/VtWFuwU5WcRpwDUQlgH+dw
 EntzD2n+3y7E691pwY8OkspfR3G07rc=
X-Google-Smtp-Source: APXvYqxvuBPdZn2wojWIfQMgv85Vc/B82ytNPI6MjmvxO1com2KeJsGgfbYp8ktTsuVv9raRMfUD+g==
X-Received: by 2002:a67:ff8b:: with SMTP id v11mr13121621vsq.88.1559575351948; 
 Mon, 03 Jun 2019 08:22:31 -0700 (PDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com.
 [209.85.222.45])
 by smtp.gmail.com with ESMTPSA id r6sm2588124vso.21.2019.06.03.08.22.31
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 08:22:31 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id a95so6587156uaa.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 08:22:31 -0700 (PDT)
X-Received: by 2002:ab0:670c:: with SMTP id q12mr12649951uam.106.1559575350775; 
 Mon, 03 Jun 2019 08:22:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190507234857.81414-1-dianders@chromium.org>
 <79ca5499-6b7d-fe55-2030-283f5cfb1d27@rock-chips.com>
 <82480aa5-ab2e-11c5-8dd5-c395f72fc6e7@ti.com>
In-Reply-To: <82480aa5-ab2e-11c5-8dd5-c395f72fc6e7@ti.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 3 Jun 2019 08:22:18 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
Message-ID: <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_082234_941498_80F2224D 
X-CRM114-Status: GOOD (  28.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

On Mon, Jun 3, 2019 at 4:22 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi,
>
> On 20/05/19 1:34 PM, Caesar Wang wrote:
> > Hi Doug,
> >
> > For now,  nobody of rockchip is responsible for this driver.
> > Cc: Nickey, Zain, Hjc
> >
> >
> > On 5/8/19 7:48 AM, Douglas Anderson wrote:
> >> While testing a newer kernel on rk3288-based Chromebooks I found that
> >> the power draw in suspend was higher on newer kernels compared to the
> >> downstream Chrome OS 3.14 kernel.  Specifically the power of an
> >> rk3288-veyron-jerry board that I tested (as measured by the smart
> >> battery) was ~16 mA on Chrome OS 3.14 and ~21 mA on a newer kernel.
> >>
> >> I tracked the regression down to the fact that the "DP PHY" driver
> >> didn't exist in our downstream 3.14.  We relied on the eDP driver to
> >> turn on the clock and relied on the fact that the power for the PHY
> >> was default turned on.
> >>
> >> Specifically the thing that caused the power regression was turning
> >> the eDP PHY _off_.  Presumably there is some sort of power leak in the
> >> system and when we turn the PHY off something is leaching power from
> >> something else and causing excessive power draw.
> >>
> >> Doing a search through device trees shows that this PHY is only ever
> >> used on rk3288.  Presumably this power leak is present on all
> >> rk3288-SoCs running upstream Linux so let's just whack the driver to
> >> make sure we never turn off power.  We'll still leave the parts that
> >> turn _on_ the power and grab the clock, though.
> >>
> >> NOTES:
> >> A) If someone can identify what this power leak is and fix it in some
> >>     other way we can revert this patch.
> >> B) If someone can show that their particular board doesn't have this
> >>     power leak (maybe they have rails hooked up differently?) we can
> >>     perhaps add a device tree property indicating that for some boards
> >>     it's OK to turn this rail off.  I don't want to add this property
> >>     until I know of a board that needs it.
> >>
> >> Fixes: fd968973de95 ("phy: Add driver for rockchip Display Port PHY")
> >> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >
> >
> > Reviewed-by: Caesar Wang <wxt@rock-chips.com>
> >
> >> ---
> >> As far as I know Yakir (the original author) is no longer at Rockchip.
> >> I've added a few other Rockchip people and hopefully one of them can
> >> help direct even if they're not directly responsible.
> >>
> >>   drivers/phy/rockchip/phy-rockchip-dp.c | 11 +++++++----
> >>   1 file changed, 7 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/phy/rockchip/phy-rockchip-dp.c
> >> b/drivers/phy/rockchip/phy-rockchip-dp.c
> >> index 8b267a746576..10bbcd69d6f5 100644
> >> --- a/drivers/phy/rockchip/phy-rockchip-dp.c
> >> +++ b/drivers/phy/rockchip/phy-rockchip-dp.c
> >> @@ -35,7 +35,7 @@ struct rockchip_dp_phy {
> >>   static int rockchip_set_phy_state(struct phy *phy, bool enable)
> >>   {
> >>       struct rockchip_dp_phy *dp = phy_get_drvdata(phy);
> >> -    int ret;
> >> +    int ret = 0;
> >>         if (enable) {
> >>           ret = regmap_write(dp->grf, GRF_SOC_CON12,
> >> @@ -50,9 +50,12 @@ static int rockchip_set_phy_state(struct phy *phy, bool
> >> enable)
> >>       } else {
> >>           clk_disable_unprepare(dp->phy_24m);
> >>   -        ret = regmap_write(dp->grf, GRF_SOC_CON12,
> >> -                   GRF_EDP_PHY_SIDDQ_HIWORD_MASK |
> >> -                   GRF_EDP_PHY_SIDDQ_OFF);
> >> +        /*
> >> +         * Intentionally don't turn SIDDQ off when disabling
> >> +         * the PHY.  There is a power leak on rk3288 and
> >> +         * suspend power _increases_ by 5 mA if you turn this
> >> +         * off.
> >> +         */
>
> Can someone in Rockchip try to find the root-cause of the issue? Keeping the
> PHY off shouldn't increase power draw.

It sounded like Chris already answered this, though?  Basically things
aren't hooked up in a way that this line can be turned safely turned
off in rk3288 with the current state of the world.  Chris says that
there's an ordering problem where we've got to turn off PD_VIO
_before_ we turn off SIDDQ.  ...but PD_VIO is a power domain that
contains much more than just eDP.  So if we truly wanted to try to
solve this we'd need to come up with a way to make sure PD_VIO got all
the way off and then turn this off only afterwards.

...and right now on rk3288 it looks like we never actually turn off
PD_VIO while the system is running.

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
