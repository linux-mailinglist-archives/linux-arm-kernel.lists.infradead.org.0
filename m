Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 132D33B8F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHh1k6zZssbduHf4CJusV2LLTgOcmXVs5vmEO9nKUhA=; b=AOIVgHfswRFKzk
	DRdMvdO9QUN/TgcGuZav85KbIRYTO8y9R3mXYCkDG4jz2w5dK+CcwuwT0Jhhg+7G+QT9vhCduS8PX
	jOxwCnUwRyGLJuRwV/4rVruvUxJl/0ijIiE0RV4n6HGww26+V4rWJVOojuKMr9fKAlGhCwwEALOtS
	IZPTAzCn3orl+ZYWfrdpM92dnw4pHGdTTE6ZYYImkdazkvNR1VXHP8hLyotUyQuBwq+gd3Fqj+37z
	hC00vEmFscBwWXe0eHiXHpT8fdYxTM4jNMMXmLWCs35w+nWkDwOhMFdIEChQx53md1qQLXk2Wi1uz
	eod9/nVcYQ6Y9L78YwDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMoJ-0001Y1-OI; Mon, 10 Jun 2019 16:06:15 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMo6-0001WP-Mw
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:06:05 +0000
Received: by mail-pg1-x542.google.com with SMTP id q15so3092558pgr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 09:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=+I+xDmvcQKHmO9dh102ZKpExR/xb5wT9g6AOUjcf0i0=;
 b=HRZ6d0btQjpro8mwTrmGvklpATd5mRNEN52DdDuz/6kuyjIjQ4eAQSTs+/HolrLRJF
 R46ckAicM6miqcI8kDAYBiRTp74s7MgVOJtU7IjDaFSEIgs2m0ZDdbkV0XoV+3WlWFpS
 CGCyiM/WFQ6sHMPCaB8LOdNrF/www8lWUCttKSxq7ihl4gGYKI5tUHPPaEzE1xLOFNse
 R2yFIRzdXh9MZzz4r6Vc11GRojUrJPzx/ZW7FSAhE11IhdWMxfH5VMLWrfsD+0ERwwFN
 OgJIy3ihs7dLDenjIv+P5/ik0a0O34QzAhxlTCLpViHDPU7vJlwdAfjQMlr0Eel6IaN6
 SJKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=+I+xDmvcQKHmO9dh102ZKpExR/xb5wT9g6AOUjcf0i0=;
 b=E3o/0laHbZ/SABLK5qhybEgjvN6s9VUXOl88dPadEgtqTog6/SKIGyT1T0kDFV1Yxi
 TuAN5vafASJwjL0wr4hLaxeSXPcDXsUok+fbF+YNN2zoItDz5kalygyuCyu7vMJDkKYo
 tjQyW1a84lM/J3q8XCm7OZB9XafDXu0aYSjlE3jcZL9UfCM29g++VoiXCXuhn0nK63wl
 TnPMO8px+pif/T52cp/xsZQXLws5XSD4FL491LDlCfIAAFMBUW21m25TntsLEntGfR5i
 GxIW4C2pWQXvY31GdeYYH34gbm4WiL+hBI7+sVV9BqTtc/77N5noSDkTLmwuPIX8Z/dI
 QvUg==
X-Gm-Message-State: APjAAAU54rECvZFF37raOMNmCPtJ+JDf2Y4AtuTF/Q+U3ZIDy6S/nZPO
 V3u+y15qyztluGEKQd5jLWU9
X-Google-Smtp-Source: APXvYqyPStAbOOnuohurlk0zpLRLMxEkhlvLZbtp16fWZxTRI9S6Jt2woTfc68wM1hNRZFPRhCC6/g==
X-Received: by 2002:a63:5d54:: with SMTP id o20mr15547024pgm.97.1560182761868; 
 Mon, 10 Jun 2019 09:06:01 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id y1sm11062506pfe.19.2019.06.10.09.05.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 09:06:01 -0700 (PDT)
Date: Mon, 10 Jun 2019 21:35:55 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 1/7] clk: actions: Fix factor clk struct member access
Message-ID: <20190610160555.GB31461@mani>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
 <20190608195317.6336-2-manivannan.sadhasivam@linaro.org>
 <29ef33a9-f1f1-fe10-9288-8103714d40fa@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29ef33a9-f1f1-fe10-9288-8103714d40fa@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_090603_995027_33635759 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, sboyd@kernel.org,
 linux-actions@lists.infradead.org, linus.walleij@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 thomas.liau@actions-semi.com, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Andreas,

On Mon, Jun 10, 2019 at 03:36:42PM +0200, Andreas F=E4rber wrote:
> Hi Mani,
> =

> Am 08.06.19 um 21:53 schrieb Manivannan Sadhasivam:
> > Since the helper "owl_factor_helper_round_rate" is shared between factor
> > and composite clocks, using the factor clk specific helper function
> > like "hw_to_owl_factor" to access its members will create issues when
> > called from composite clk specific code. Hence, pass the "factor_hw"
> > struct pointer directly instead of fetching it using factor clk specific
> > helpers.
> > =

> > This issue has been observed when a composite clock like "sd0_clk" tried
> > to call "owl_factor_helper_round_rate" resulting in pointer dereferenci=
ng
> > error.
> > =

> > Fixes: 4bb78fc9744a ("clk: actions: Add factor clock support")
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/clk/actions/owl-factor.c | 7 +++----
> >  1 file changed, 3 insertions(+), 4 deletions(-)
> > =

> > diff --git a/drivers/clk/actions/owl-factor.c b/drivers/clk/actions/owl=
-factor.c
> > index 317d4a9e112e..f419dfdd334f 100644
> > --- a/drivers/clk/actions/owl-factor.c
> > +++ b/drivers/clk/actions/owl-factor.c
> > @@ -64,11 +64,10 @@ static unsigned int _get_table_val(const struct clk=
_factor_table *table,
> >  	return val;
> >  }
> >  =

> > -static int clk_val_best(struct clk_hw *hw, unsigned long rate,
> > +static int clk_val_best(const struct owl_factor_hw *factor_hw,
> > +			struct clk_hw *hw, unsigned long rate,
> >  			unsigned long *best_parent_rate)
> >  {
> > -	struct owl_factor *factor =3D hw_to_owl_factor(hw);
> > -	struct owl_factor_hw *factor_hw =3D &factor->factor_hw;
> >  	const struct clk_factor_table *clkt =3D factor_hw->table;
> >  	unsigned long parent_rate, try_parent_rate, best =3D 0, cur_rate;
> >  	unsigned long parent_rate_saved =3D *best_parent_rate;
> > @@ -126,7 +125,7 @@ long owl_factor_helper_round_rate(struct owl_clk_co=
mmon *common,
> >  	const struct clk_factor_table *clkt =3D factor_hw->table;
> >  	unsigned int val, mul =3D 0, div =3D 1;
> >  =

> > -	val =3D clk_val_best(&common->hw, rate, parent_rate);
> > +	val =3D clk_val_best(factor_hw, &common->hw, rate, parent_rate);
> >  	_get_table_div_mul(clkt, val, &mul, &div);
> >  =

> >  	return *parent_rate * mul / div;
> =

> While at it, I think it would be a good idea to rename it to
> owl_clk_val_best. Pretty confusing that you're touching only owl files
> for a clk_ refactoring, which sounds like common clk code.
> =


Sure, will do.

Thanks,
Mani

> Regards,
> Andreas
> =

> -- =

> SUSE Linux GmbH, Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
> HRB 21284 (AG N=FCrnberg)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
