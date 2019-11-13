Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C07FAD25
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:40:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUBljIjWa1vSdVUGMamuh/Jx0xWy1h57UNzzLTSkAU0=; b=BqgUyX0spebBVG
	Eu/HU278O25t9nwscEMoRuHSy10l9Q107K0x0R7UjnExD6CswfjqmDBYw5fFy6Ydqj28DV7eJ5bRm
	u79X/iu0DuNGVq0gfDYkw1vbC/zp7Vjpc0y75gv6xJuVNNOkTYG0+NIPgpCwc8OHb03oag4cQwmli
	HOmyd4Ia8t0Uk0JDy/7dPDrPLpMbajx7aykVz+zFQSy/YKfjEnT5CMv1Nnv4h0E9WIWbmLgna8hbF
	DL7k8xx6z4dzaa1UrqTVVpOj9x6hgeLIq458cPiB66/RhRxgRr2QQ+k3RdU+Xaws/4UMQAzNGUrt4
	EjMadLFApNeenlhLryVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUp8n-0007My-9f; Wed, 13 Nov 2019 09:40:45 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUp8b-0007K8-F3
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:40:36 +0000
Received: by mail-lj1-x242.google.com with SMTP id r7so1805462ljg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 01:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OrN8x9LyxKD7Xl1d/h9oz7KZmMmc0A5znbrf73E9+bA=;
 b=a676ZUZ7j8Q/YVK0Bi4A2cENhUW9DTDHjr8EReuSTbfFGUvF8kqNCs8Bo51EzHCTfr
 +kz0MvywQjdwCzed5RVZ/ltsXL1ng8RXtD1/6GPl8H7lg6uitxQgbRh7337hfbTPpxi7
 c0MPzJXnqSmZh5BK1mNl7g00o+3ot7uwReiUDx8mf+Xz1Qmy/8XCuM5WWG4bdkpxJ5O9
 LYO93Tg8FD4Z9PTaV5yL+ij91p4VjwPnYIyaurBh2OCqLjLQFUa58DJr7ylP/keLOwt9
 NA1P+BqzIB/OLwx5vA0TxDOn2k4Vuj1byrU1h72J11w+AOeOqJ3Z0rsAXcI5encccpgy
 Splg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OrN8x9LyxKD7Xl1d/h9oz7KZmMmc0A5znbrf73E9+bA=;
 b=lLilYzKK6sTe6qPah3MPpfdNKsz814LFe3M0/n7HpgKn6h1B5k5hpov0dIrg0K57GQ
 12ymuIVmtP6Mw24gbRVgqFUqALWlvZzA9ZQUOoP+BJ2vhtPkfEA1VKzMp80lK5GWSKgB
 TiC2JpUh0g3V0DAI5kZd8I7kKsIEogea7PS/LUIx37SZkMw62/dMXE4w9EKOvzk8+vMu
 CLYjP1Z3pDpkdvoty+oguGBBO6LnZKX+gKVjKeUge7Z1eJZfd3Z+BUe0rHACfIqBWM01
 aWQr/yS4xlKNzF6sp11U9yGvg/cE/qqMsGfjmrTFB50KJZBLZ5adDHVDfw6B37+O6mC+
 k8vw==
X-Gm-Message-State: APjAAAV1rqMFueiAmMi3xX5uSh0QWIKVUxYtzuKMTjniJrsj1WiptXCQ
 WXk5vjkhS8FlRUsTrWw77ZBRPBDk9LEFp0J8arDspQ==
X-Google-Smtp-Source: APXvYqyOFp98GI7jY2XSDtkSfkrTqobC6IABhD/Iv9amdhinzj3w5mpyUY8ScymlvcvvrEEwwPsb6sgbGb33/qncEqU=
X-Received: by 2002:a2e:5c46:: with SMTP id q67mr1815120ljb.42.1573638029531; 
 Wed, 13 Nov 2019 01:40:29 -0800 (PST)
MIME-Version: 1.0
References: <20191112141819.GA22076@localhost.localdomain>
 <201911131438.KT6pnFZ7%lkp@intel.com>
 <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel@fi.rohmeurope.com>
In-Reply-To: <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel@fi.rohmeurope.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 13 Nov 2019 10:40:17 +0100
Message-ID: <CACRpkdYAmye8wT39fqy=LN+6pXDvrcQ0SyDTCvG7aSgea3Uumw@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
To: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_014033_533125_B983A403 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "patrice.chotard@st.com" <patrice.chotard@st.com>,
 "paul@crapouillou.net" <paul@crapouillou.net>,
 "eric@anholt.net" <eric@anholt.net>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>, "lkp@intel.com" <lkp@intel.com>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "sean.wang@kernel.org" <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "wahrenst@gmx.net" <wahrenst@gmx.net>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-oxnas@groups.io" <linux-oxnas@groups.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 7:52 AM Vaittinen, Matti
<Matti.Vaittinen@fi.rohmeurope.com> wrote:
> On Wed, 2019-11-13 at 14:30 +0800, kbuild test robot wrote:
> > Hi Matti,
> >
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on 70d97e099bb426ecb3ad4bf31e88dbf2ef4b2e4c]
> >
>
> >    480        static int wmt_gpio_get_direction(struct gpio_chip
> > *chip, unsigned offset)
> >    481        {
> >    482                struct wmt_pinctrl_data *data =
> > gpiochip_get_data(chip);
> >    483                u32 bank = WMT_BANK_FROM_PIN(offset);
> >    484                u32 bit = WMT_BIT_FROM_PIN(offset);
> >    485                u32 reg_dir = data->banks[bank].reg_dir;
> >    486                u32 val;
> >    487
> >    488                val = readl_relaxed(data->base + reg_dir);
> >    489                if (val & BIT(bit))
> >  > 490                        GPIO_LINE_DIRECTION_OUT;
>
> Right. Return is missing. I think I already fixed this - I guess I sent
> wrong version... Sorry guys. I'll do v3 with only this return added -
> and I'll send it to limited amount of recipients as I think most of you
> guys may not be interested. Probably to Linus W, Geert and GPIO list
> only. Let me know if you want to see the v3 (or other subsequent
> patches)

I think I already merged it, just send a new patch on top fixing the
problem.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
