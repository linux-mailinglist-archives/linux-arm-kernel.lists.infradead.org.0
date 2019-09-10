Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B6DAE99B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 13:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbOGEs0ERNJe+O0USttud2FcZtUNerV7Vh1C8ZoJ104=; b=Pc+hz6g7IwiRn5
	rOMtxDIkBIFZ8fqFaWWDhyJLRqu2aiihmMswgGaj7cDuZ5yO1Gvo6GdCOIVb4DAb9QQo3nkzlRyov
	BFG+qVH+9CqdMw634EtPsC2CrjNojZAWbUOj7TNMwZ4rzq0BlghEgOW0g2InRMAo9vHPymCKc9JLj
	zhA8nCxw8oJqaiq0CXj409DyyuvEljloJvTg07RPv5vOVFJmgFgzLdw8b673el1Xz6OPwbm6CICcF
	hV09CWws9KoElecKaNK0h31iW9DL4j761VO8LwqvdzfcbhFzbqG8Bb+KgC28XgTPiEUgSlvjYeuw5
	u1HRGZv5BEtsnXpJkWbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7elW-00019Z-RT; Tue, 10 Sep 2019 11:56:58 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7elG-00018d-T9
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 11:56:44 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 10 Sep 2019 20:56:41 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 723BB605F8;
 Tue, 10 Sep 2019 20:56:41 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Tue, 10 Sep 2019 20:56:41 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 4F5B740357;
 Tue, 10 Sep 2019 20:56:41 +0900 (JST)
Received: from [127.0.0.1] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 24B391204AA;
 Tue, 10 Sep 2019 20:56:41 +0900 (JST)
Date: Tue, 10 Sep 2019 20:56:40 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH] reset: uniphier-glue: Add Pro5 USB3 support
In-Reply-To: <1568101695.3062.1.camel@pengutronix.de>
References: <1568080527-1767-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1568101695.3062.1.camel@pengutronix.de>
Message-Id: <20190910205640.6ABD.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_045643_049914_649B5610 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

On Tue, 10 Sep 2019 09:48:15 +0200 <p.zabel@pengutronix.de> wrote:

> Hi Kunihiko,
> 
> On Tue, 2019-09-10 at 10:55 +0900, Kunihiko Hayashi wrote:
> > Pro5 SoC has same scheme of USB3 reset as Pro4, so the data for Pro5 is
> > equivalent to Pro4.
> > 
> > Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> 
> If it is exactly the same, you could keep using the same compatible:

This driver is derived from reset-simple, so the method to control reset
in the glue block is the same for each SoC.

And both Pro4 and Pro5 need same parent clock and reset, so the data for
these SoCs refer same parent clock names and parent reset names.

However, since the glue block itself can be different, I think that
compatible string should be distinguished for each SoC.

For example, "pxs2-usb3-reset", "ld20-usb3-reset" and "pxs3-usb-reset"
in this driver are distinguished for the same reason.

Thank you,

> 
> > ---
> >  Documentation/devicetree/bindings/reset/uniphier-reset.txt | 5 +++--
> >  drivers/reset/reset-uniphier-glue.c                        | 4 ++++
> >  2 files changed, 7 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/reset/uniphier-reset.txt b/Documentation/devicetree/bindings/reset/uniphier-reset.txt
> > index ea00517..e320a8c 100644
> > --- a/Documentation/devicetree/bindings/reset/uniphier-reset.txt
> > +++ b/Documentation/devicetree/bindings/reset/uniphier-reset.txt
> > @@ -130,6 +130,7 @@ this layer. These clocks and resets should be described in each property.
> >  Required properties:
> >  - compatible: Should be
> >      "socionext,uniphier-pro4-usb3-reset" - for Pro4 SoC USB3
> > +    "socionext,uniphier-pro5-usb3-reset" - for Pro5 SoC USB3
> 
> +    "socionext,uniphier-pro5-usb3-reset", "socionext,uniphier-pro4-usb3-reset" - for Pro5 SoC USB3
> 
> [...]
> > diff --git a/drivers/reset/reset-uniphier-glue.c b/drivers/reset/reset-uniphier-glue.c
> > index a45923f..2b188b3bb 100644
> > --- a/drivers/reset/reset-uniphier-glue.c
> > +++ b/drivers/reset/reset-uniphier-glue.c
> > @@ -141,6 +141,10 @@ static const struct of_device_id uniphier_glue_reset_match[] = {
> >  		.data = &uniphier_pro4_data,
> >  	},
> >  	{
> > +		.compatible = "socionext,uniphier-pro5-usb3-reset",
> > +		.data = &uniphier_pro4_data,
> > +	},
> > +	{
> >  		.compatible = "socionext,uniphier-pxs2-usb3-reset",
> >  		.data = &uniphier_pxs2_data,
> >  	},
> 
> And this change would not be necessary.
> 
> regards
> Philipp

---
Best Regards,
Kunihiko Hayashi



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
