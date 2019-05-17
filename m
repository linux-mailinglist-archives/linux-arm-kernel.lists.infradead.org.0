Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE34C220D4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 01:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmGlTJiWUIXNTm5l3Cv5c5l2lCT8SDamN3UDOHkeo5E=; b=I+UYkwlySm53Bf
	YtDn3Oj0rMc9q298aex4J0ZxTYmfB89XKFoVrDrGYQQIaUrN7qNITJVe6/5uuLn1isKQ8PACUN2R9
	ha97qkJmMTtgkCDrd0dUezb1GW6O+g/hoYkY+iPY5LsXFbYgkEOfvYwlhB6DACyEjk3uGHDqAWW23
	g/9KlFMuHUMTjwHhxYDVgUGt6XStaqb8f3gTvJ9ztXuP2lyTf9odPCxdVlNEbHoSdia6FSmyLLWuk
	qsUFgBltzg3LXljN1ZcrkSVTBdSRTU/+Qwm+yophFVZM7jy+rlM0GBC3KG+xutI8qGVEYHitJ1kal
	VihT7E4Oyj+Zkde+iJrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRmjs-0001DY-6k; Fri, 17 May 2019 23:58:12 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRmjk-0001CF-6E
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 23:58:05 +0000
Received: by mail-vs1-xe41.google.com with SMTP id m1so5683559vsr.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 16:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eU8u53UhGSiSMje2IyjSxqc78UCrxRNCDadIMBeoHNs=;
 b=XrY8nsGDvXJXyRC700yrc0hjfACIdkpMyCBQSK7uMnG5V42FIsUwH7x+Eh7nvTae7p
 e6Qq4CCb4WDoqohJMQccu+Wiu7PJRl/+l3upzZafEKz+yVdsl2xQlB9TePygNV2WRG6b
 67Q0Bbq7el6nkWMdzq1/ATAvrS9ORek0PlUcE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eU8u53UhGSiSMje2IyjSxqc78UCrxRNCDadIMBeoHNs=;
 b=P9i6nPgMaNL7H36u202nky5E275cGdHS8Hd2SrIN/10Poja5lbVnO+Db+y9iqupi5g
 gJX5FE29yLgnbvsAxt7o7Z7vdMBH8ZTK9rCxqWGGsij9gRUyWyFN29TowT2uaVs+MwK5
 7WnSQOpL+J2Uh8hQVDxh+iFI/hUltcgv9arEcrjlDKPRIvjh5Caz2CFAAMRbzsaInZ2B
 B8u+da7DzLlGUMN7xikSKAzbp2OCDf0oyDuiZhOL6NYvNNdjSRAVRLpyzfta/HAy/PRo
 Zp8hYmpIhoIP6GbXEpHLhu58UC8x+XZN83TKfs1A8JcVRFv1gWDT5WTNAxeyabqanZes
 SOpg==
X-Gm-Message-State: APjAAAVLYso3lFX1aVfSTmePAMcq2GW5DTEajKWIlKADXssNF4MNGSGY
 2n1y4KVAfZ40Odc1f4EM4VJIWczr3f8=
X-Google-Smtp-Source: APXvYqyNR35QFi8Rt+YJNbSnLpLKeY7PQb6lKy9xDOB3QP0l+lOuEriyz8ojGIsPtS/Gnrc7IjPhsQ==
X-Received: by 2002:a67:8042:: with SMTP id b63mr28247300vsd.202.1558137482862; 
 Fri, 17 May 2019 16:58:02 -0700 (PDT)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com.
 [209.85.221.179])
 by smtp.gmail.com with ESMTPSA id p75sm1290898vkf.29.2019.05.17.16.58.00
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 16:58:00 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id l199so2494503vke.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 16:58:00 -0700 (PDT)
X-Received: by 2002:a1f:d884:: with SMTP id p126mr1000822vkg.70.1558137479874; 
 Fri, 17 May 2019 16:57:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190507234857.81414-1-dianders@chromium.org>
In-Reply-To: <20190507234857.81414-1-dianders@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 17 May 2019 16:57:47 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VcF688tSArf5gu0sV5oKVgFEvPBxXm7j-5GXXMP_CYRw@mail.gmail.com>
Message-ID: <CAD=FV=VcF688tSArf5gu0sV5oKVgFEvPBxXm7j-5GXXMP_CYRw@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
To: Elaine Zhang <zhangqing@rock-chips.com>, Caesar <wxt@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_165804_226220_D7C72013 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
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
Cc: Lin Huang <hl@rock-chips.com>, Derek Basehore <dbasehore@chromium.org>,
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Elaine and Caesar,

On Tue, May 7, 2019 at 4:50 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> While testing a newer kernel on rk3288-based Chromebooks I found that
> the power draw in suspend was higher on newer kernels compared to the
> downstream Chrome OS 3.14 kernel.  Specifically the power of an
> rk3288-veyron-jerry board that I tested (as measured by the smart
> battery) was ~16 mA on Chrome OS 3.14 and ~21 mA on a newer kernel.
>
> I tracked the regression down to the fact that the "DP PHY" driver
> didn't exist in our downstream 3.14.  We relied on the eDP driver to
> turn on the clock and relied on the fact that the power for the PHY
> was default turned on.
>
> Specifically the thing that caused the power regression was turning
> the eDP PHY _off_.  Presumably there is some sort of power leak in the
> system and when we turn the PHY off something is leaching power from
> something else and causing excessive power draw.
>
> Doing a search through device trees shows that this PHY is only ever
> used on rk3288.  Presumably this power leak is present on all
> rk3288-SoCs running upstream Linux so let's just whack the driver to
> make sure we never turn off power.  We'll still leave the parts that
> turn _on_ the power and grab the clock, though.
>
> NOTES:
> A) If someone can identify what this power leak is and fix it in some
>    other way we can revert this patch.
> B) If someone can show that their particular board doesn't have this
>    power leak (maybe they have rails hooked up differently?) we can
>    perhaps add a device tree property indicating that for some boards
>    it's OK to turn this rail off.  I don't want to add this property
>    until I know of a board that needs it.
>
> Fixes: fd968973de95 ("phy: Add driver for rockchip Display Port PHY")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> As far as I know Yakir (the original author) is no longer at Rockchip.
> I've added a few other Rockchip people and hopefully one of them can
> help direct even if they're not directly responsible.
>
>  drivers/phy/rockchip/phy-rockchip-dp.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)

Can you help direct this to the right person?  ...or should we just
land it and assume it's fine?

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
