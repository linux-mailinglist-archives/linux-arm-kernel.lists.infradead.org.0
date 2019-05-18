Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED242221D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 09:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gp6OZONG9NVNGej3dzFd6XKXuNGcWzPSG3o4IIkLliI=; b=o6hkyDTQNeskyQ
	mIzxtXRJxz79Fi0zJpb8ORaW1Uk2JJIiDrGekl8TxnFE1RInZ6XNdAJnHQsVolxaX5ndZe3XE/B7l
	hzILjkEZFGZSey/xzBeDxZ4sdtJDcaeJdhUX2a66yQm3Ar1MnEDhS7TwREvZi4yE3HZGxB7PnzUJt
	1/PVfVaNjKKxI5LR4qxW4P4ewm/xI0ruecatV8JGzoIvsE4y5B3QJjIVEaoP6gdJby/mT4ElxU/as
	6qpPymvDA4lVTkpxvDGzL9XO1zSpEoLv6josBcKmKA9RV8FkRCIDGP3H+tE/+sGj8x6H4hQq6jAx5
	mTZQsus7YappwB10Lplg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRu7p-0008Gc-0N; Sat, 18 May 2019 07:51:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRu7h-0008Fp-Lu; Sat, 18 May 2019 07:51:19 +0000
Received: from p508fcf3a.dip0.t-ipconnect.de ([80.143.207.58]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hRu7X-0005Nr-HM; Sat, 18 May 2019 09:51:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Doug Anderson <dianders@chromium.org>, Guenter Roeck <groeck@chromium.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
Date: Sat, 18 May 2019 09:51:06 +0200
Message-ID: <1862323.vETM5zrFmV@phil>
In-Reply-To: <CAD=FV=VcF688tSArf5gu0sV5oKVgFEvPBxXm7j-5GXXMP_CYRw@mail.gmail.com>
References: <20190507234857.81414-1-dianders@chromium.org>
 <CAD=FV=VcF688tSArf5gu0sV5oKVgFEvPBxXm7j-5GXXMP_CYRw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_005117_868989_1678635F 
X-CRM114-Status: GOOD (  23.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Derek Basehore <dbasehore@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>,
 Caesar <wxt@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Samstag, 18. Mai 2019, 01:57:47 CEST schrieb Doug Anderson:
> Elaine and Caesar,
> 
> On Tue, May 7, 2019 at 4:50 PM Douglas Anderson <dianders@chromium.org> wrote:
> >
> > While testing a newer kernel on rk3288-based Chromebooks I found that
> > the power draw in suspend was higher on newer kernels compared to the
> > downstream Chrome OS 3.14 kernel.  Specifically the power of an
> > rk3288-veyron-jerry board that I tested (as measured by the smart
> > battery) was ~16 mA on Chrome OS 3.14 and ~21 mA on a newer kernel.
> >
> > I tracked the regression down to the fact that the "DP PHY" driver
> > didn't exist in our downstream 3.14.  We relied on the eDP driver to
> > turn on the clock and relied on the fact that the power for the PHY
> > was default turned on.
> >
> > Specifically the thing that caused the power regression was turning
> > the eDP PHY _off_.  Presumably there is some sort of power leak in the
> > system and when we turn the PHY off something is leaching power from
> > something else and causing excessive power draw.
> >
> > Doing a search through device trees shows that this PHY is only ever
> > used on rk3288.  Presumably this power leak is present on all
> > rk3288-SoCs running upstream Linux so let's just whack the driver to
> > make sure we never turn off power.  We'll still leave the parts that
> > turn _on_ the power and grab the clock, though.
> >
> > NOTES:
> > A) If someone can identify what this power leak is and fix it in some
> >    other way we can revert this patch.
> > B) If someone can show that their particular board doesn't have this
> >    power leak (maybe they have rails hooked up differently?) we can
> >    perhaps add a device tree property indicating that for some boards
> >    it's OK to turn this rail off.  I don't want to add this property
> >    until I know of a board that needs it.
> >
> > Fixes: fd968973de95 ("phy: Add driver for rockchip Display Port PHY")
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> > As far as I know Yakir (the original author) is no longer at Rockchip.
> > I've added a few other Rockchip people and hopefully one of them can
> > help direct even if they're not directly responsible.
> >
> >  drivers/phy/rockchip/phy-rockchip-dp.c | 11 +++++++----
> >  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> Can you help direct this to the right person?  ...or should we just
> land it and assume it's fine?

I tink Kishon as phy-maintainer is the correct person to take on this
patch, but maybe he's waiting for the merge-window to be over.


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
