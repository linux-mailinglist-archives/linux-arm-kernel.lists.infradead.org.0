Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5CC79E99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 04:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/PXiDUZwJ9izV5tdIl/oJT1NCW1p8D5dFSU6yzo3ds=; b=td8Jwa+qUi9xNu
	JGnxXWVcrrzyG6+CDWBlwkDNxyIAm1lsm/4CRMrMqwy/XL7JKx8P3QGb/czDCmnoEgLu2G5UJbPIY
	Mojju0M+FmEcHvh45tyBSBh8+gFHkG2rvU+NUVjwqgnaZb6EX6Zc53gfWhFdFtnsIQ0XpS/X8oLsh
	swPRU5T5uMl3futLy/Jv0Gz0U8KOnuSZGw9nlof/CqvR0dSeA0DMsI0haZuEm5R+nCsDQhnXV3UAt
	OBl2vvmGbbbt6FIKr0C642rOg4Sm9+LMTp5DFO9OX8S85Yx3ZiM/w3/Uz4uwb2wXDtHVF8XW5pMtg
	qP6tBGfTqr5PjL49esKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsHmg-0000qc-PQ; Tue, 30 Jul 2019 02:22:38 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsHmA-0000e3-No
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 02:22:08 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 30 Jul 2019 11:22:05 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 1313860629;
 Tue, 30 Jul 2019 11:22:06 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Tue, 30 Jul 2019 11:22:06 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id DF57040370;
 Tue, 30 Jul 2019 11:22:05 +0900 (JST)
Received: from [127.0.0.1] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id BE93B120C1E;
 Tue, 30 Jul 2019 11:22:05 +0900 (JST)
Date: Tue, 30 Jul 2019 11:22:05 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 2/5] pinctrl: uniphier: Add another audio I/O pin-mux
 settings for LD20
In-Reply-To: <CAK7LNASuNMij8Fttup6T6hd=vyKSEu=B7HCPMAezWK6T2b0Gfg@mail.gmail.com>
References: <1562668156-12927-3-git-send-email-hayashi.kunihiko@socionext.com>
 <CAK7LNASuNMij8Fttup6T6hd=vyKSEu=B7HCPMAezWK6T2b0Gfg@mail.gmail.com>
Message-Id: <20190730112205.F397.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_192206_984723_5AE1ED26 
X-CRM114-Status: GOOD (  19.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Mon, 29 Jul 2019 22:44:27 +0900 <yamada.masahiro@socionext.com> wrote:

> On Tue, Jul 9, 2019 at 7:29 PM Kunihiko Hayashi
> <hayashi.kunihiko@socionext.com> wrote:
> >
> > This adds support for pinmux settings of aout1b groups. This group includes
> > aout1 signals derived from xirq pins.
> >
> > Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> > ---
> >  drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
> > index 28e54b3..2c66e70 100644
> > --- a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
> > +++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
> > @@ -544,6 +544,8 @@ static const struct pinctrl_pin_desc uniphier_ld20_pins[] = {
> >
> >  static const unsigned aout1_pins[] = {137, 138, 139, 140, 141, 142};
> >  static const int aout1_muxvals[] = {0, 0, 0, 0, 0, 0};
> > +static const unsigned aout1b_pins[] = {150, 151, 152, 153, 154, 155, 156};
> > +static const int aout1b_muxvals[] = {1, 1, 1, 1, 1, 1, 1};
> >  static const unsigned aoutiec1_pins[] = {135, 136};
> >  static const int aoutiec1_muxvals[] = {0, 0};
> >  static const unsigned int emmc_pins[] = {19, 20, 21, 22, 23, 24, 25};
> > @@ -664,6 +666,7 @@ static const unsigned int gpio_range2_pins[] = {
> >
> >  static const struct uniphier_pinctrl_group uniphier_ld20_groups[] = {
> >         UNIPHIER_PINCTRL_GROUP(aout1),
> > +       UNIPHIER_PINCTRL_GROUP(aout1b),
> >         UNIPHIER_PINCTRL_GROUP(aoutiec1),
> >         UNIPHIER_PINCTRL_GROUP(emmc),
> >         UNIPHIER_PINCTRL_GROUP(emmc_dat8),
> > @@ -708,6 +711,7 @@ static const struct uniphier_pinctrl_group uniphier_ld20_groups[] = {
> >  };
> >
> >  static const char * const aout1_groups[] = {"aout1"};
> > +static const char * const aout1b_groups[] = {"aout1b"};
> 
> If this has the same functionality as "aout1",
> shouldn't it be a part of aout1_groups?

Indeed.
I'll merge "aout1b" with aout1_groups.

> 
> 
> 
> 
> -- 
> Best Regards
> Masahiro Yamada

---
Best Regards,
Kunihiko Hayashi



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
