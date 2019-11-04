Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F436EF0A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 23:32:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhobRndpv6NLsgNiGGp86MigUVcEGH3+0MJEHdsB/vQ=; b=TkRnirYkLmvAug
	JSxD6nNwneU95B2RqrhC2qEmBAOotwa5ncfatYr0P3FZWe8v/st7Gt0X0bcWHerpiaRCULsZzMJ4X
	WzuCwEteNO8h1A0pt317EsFUEQ/dHwzNKkAlzzmlhAUqC4HNBa6YvsXXVXAAkFN7/eL69VIbZwr1h
	zeVu15clXVnkILEK5oCYsOWNbPIvwphG3cUy8f78g23V9GuYXjOq+7qiwJCmRECNgmU5KPECO+b0y
	oZfszIE0O70bVB3yoGPXbUroGyeuyGyOBmYjbpFfA/W5GPAfxwYBP/9NQhpAQceAdxA0FuSqu4zQX
	iPj9Wth1yOX7UUz624bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRkt7-0007C1-IO; Mon, 04 Nov 2019 22:31:53 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRksz-0007AP-Sn; Mon, 04 Nov 2019 22:31:47 +0000
Received: by mail-oi1-x244.google.com with SMTP id y194so15713149oie.4;
 Mon, 04 Nov 2019 14:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/geFBMEqf7twdLKHSVdVT6FyWVKwx2NVIgtA+twsQkE=;
 b=a+MdlyvEiOU8aVaiBQk7eZ1yzA7XLzs5bUKhswBKAOj829P1WsrId1fjxcmSMHq8gj
 NspcXXwicor7YnC+bnT8Xxk+tmbIiLz10bUdTlShG1kpID8r4HDiZQGeEbDUGE6LwMaU
 dj9FsHVklDGCuQGMM3cJWuIeRBzXzY1LdoKQk6RtWq6FAoGwHuCDXcXU083BhStrehgo
 44ejbg2Ezjdd82Ei9VCASuj382uI5TGCAnogkliUyv97kHZWOfQcNHDgXk8w4uGUQFi+
 10StfI7b/HKvJ2jmqQjin2gdn4ehUBykG4EMkTjlhV+U9jrXVqeKQoCUsKuuXQXDcRIK
 ZTpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/geFBMEqf7twdLKHSVdVT6FyWVKwx2NVIgtA+twsQkE=;
 b=IF22J8mQIsSHc4SDyFUnCo3lOLRY6SNbl3fbTviOaH5ySofBQOhAoANRIz0mtnmzPO
 uGbM7lm8xeVbW3qoLemVuwq40xVU8QJa5quW97WZz1zodTtg1dBSsG7wXfAsguAd02cG
 XgAoyJbgMicoiIHYDrw2B15MsJp87cuClYHnmWiPOtE4T25FeBK+hPcG4ZqzteKji5S8
 onAIRf8ss0BJwusJC8NPOHygRfhwM4/RTp/pbxSnJY/FJeg95ld8zGl2YIdsGtsrjgg7
 gX/LkJBnUh0Bjp14vgRn0rHg0PaxTv35KQiX0LXokLw1gGnKURKB6tWSZ2AnhFtRyrhY
 vXsA==
X-Gm-Message-State: APjAAAWRC8OY50c1L+rYJoS0zE2dbJxZf0UxXXr+eGevqpYNQmkDVefE
 TG7m8X1EmM43OHQR0WFLUY3DIQHOiEMfDJmiXl3rtHmBCqo=
X-Google-Smtp-Source: APXvYqybWUfbZG4teeG01ZGKiXx9fDn+U4FWS4zJB69jNiVVHd20K3CuTz1NkqytBEFVmmei8TQlnR7feaE38XUb+tk=
X-Received: by 2002:aca:504d:: with SMTP id e74mr1229364oib.140.1572906703760; 
 Mon, 04 Nov 2019 14:31:43 -0800 (PST)
MIME-Version: 1.0
References: <20191027161805.1176321-1-martin.blumenstingl@googlemail.com>
 <20191027161805.1176321-4-martin.blumenstingl@googlemail.com>
 <1jd0e83vyp.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jd0e83vyp.fsf@starbuckisacylon.baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 4 Nov 2019 23:31:32 +0100
Message-ID: <CAFBinCC5RSkK_8Ww3LjAxG9tLL6Jik1uy3Y8CkEBqXRRKUsa4Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] clk: meson: meson8b: change references to the XTAL
 clock to use the name
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_143145_956948_DCCCE8F2 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On Mon, Nov 4, 2019 at 9:08 AM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Sun 27 Oct 2019 at 17:18, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>
> > The XTAL clock is an actual crystal which is mounted on the PCB. Thus
> > the meson8b clock controller driver should not provide the XTAL clock.
> >
> > The meson8b clock controller driver must not use references to
> > the meson8b_xtal clock anymore before we can provide the XTAL clock
> > via OF. Replace the references to the meson8b_xtal.hw by using
> > clk_parent_data.name = "xtal" (along with index = -1) because this works
> > regardless how the XTAL clock is registered (either as fixed-clock in
> > the .dtb or - if missing - when registered in the meson8b clock
> > controller driver).
> >
> > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > ---
> >  drivers/clk/meson/meson8b.c | 73 ++++++++++++++++++++-----------------
> >  1 file changed, 39 insertions(+), 34 deletions(-)
> >
> > diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
> > index d376f80e806d..b785b67baf2b 100644
> > --- a/drivers/clk/meson/meson8b.c
> > +++ b/drivers/clk/meson/meson8b.c
> > @@ -97,8 +97,9 @@ static struct clk_regmap meson8b_fixed_pll_dco = {
> >       .hw.init = &(struct clk_init_data){
> >               .name = "fixed_pll_dco",
> >               .ops = &meson_clk_pll_ro_ops,
> > -             .parent_hws = (const struct clk_hw *[]) {
> > -                     &meson8b_xtal.hw
> > +             .parent_data = &(const struct clk_parent_data) {
> > +                     .name = "xtal",
> > +                     .index = -1,
>
> if I got correctly, when transitioning to DT, you can specify both
> "fw_name" and "name". CCF should try to get the clock through DT and
> fallback to global name matching if not available
thank you for the hint - I may even get away with just setting fw_name
if I understand clk_core_get() correctly.
I'll try that during the weekend and report back


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
