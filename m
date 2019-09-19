Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1D4B7A92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 15:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ucXx8Bs9NBCw79RBPQiinT1I51WRLfHFSOeUcEik7Y=; b=gghEqLqDtfkamy
	zNqY71LeJK6NiI115M98nF7gKPn9uOfiCIwpOQIErHik44xUPiAiFoOk1ty8oSpVqVU6WYhJUF5hp
	IjmS02/areGVl9wb4s0QZhXv1kTd9m+mUXmYMl7dC0W5jF3xS6/m09SDdn4/iwR1HWdVHhBd1u5Y9
	6v/Dn+vLiWuy09BzhOI5qSrJopChwGuQErPJ1Y/Q50a6v8lMGQJrEsbPxs9jUtNkPrvAjTUiepWKM
	Wnee8jBiTMje0LN3epXBd01ME0CHqM0kPTL1SX3wCVK7Xtz2KOLePQ0u1tTyw2mLOrIkY9iVpkQl0
	eDg6DktGK7qggiKlp7mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwYS-0001AN-2O; Thu, 19 Sep 2019 13:33:04 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAwY9-00018w-SK; Thu, 19 Sep 2019 13:32:47 +0000
Received: by mail-oi1-f195.google.com with SMTP id k9so2706050oib.7;
 Thu, 19 Sep 2019 06:32:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=6Vbzint3TNkF0RwuJRnvSz0zFNi0mSUxmrLncCYz9Sc=;
 b=PM3tuzWgUr5BKphmKG3kMi7IUwDsPoe4HOwhIrGKXAg/xwCr8GmK0m5ogg8TnlwV/+
 N+jchDcjc/f99lNQ+MRbrBBfRqajZRPVaeYW9gtByfwOzJexwE+uytWOuN9E76TB4MA1
 uUnk5Dh4T/FPPcGtrFstMc4QBuZThr0LKCjcdnhl3r3YNW7TsygdObz+jHJz7PdDo3+j
 gr4AvigzRrR+7we1wEmOndLQlrwF0KWujpucf0F7Qs1CYosofy7hsdVPyIHUjCofhjsV
 vaQZCB2WG1gXz4MKIifMtPjxC5e7bfsLgfC4C0j2r1sovqjUgyBdE3LXmif+HV9k3FGC
 OBzg==
X-Gm-Message-State: APjAAAVm0lSP2QEcLzDW6orhmshctiHfHbH9Fe2T8fc4FVHM64z+DGAF
 be9oM0DsYi6ZApGlZVgQgA==
X-Google-Smtp-Source: APXvYqzK08G1BtpQyRdlr3bjTtuu66Pn1FaJm7NcodUZdbVk+gT9gx+YwSgdEuoRELSfmX52YLpvVA==
X-Received: by 2002:aca:dcc4:: with SMTP id t187mr2208633oig.136.1568899963907; 
 Thu, 19 Sep 2019 06:32:43 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 17sm482618oiz.3.2019.09.19.06.32.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 06:32:42 -0700 (PDT)
Date: Thu, 19 Sep 2019 08:32:42 -0500
From: Rob Herring <robh@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2] of: restore old handling of cells_name=NULL in
 of_*_phandle_with_args()
Message-ID: <20190919133242.GA27990@bogus>
References: <20190918063837.8196-1-u.kleine-koenig@pengutronix.de>
 <b00ca30f-2c06-7722-96b2-123d15751cb6@axentia.se>
 <20190918084748.hnjkiq7wc5b35wjh@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918084748.hnjkiq7wc5b35wjh@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_063245_917589_3A1EC98D 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Frank Rowand <frowand.list@gmail.com>, Peter Rosin <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Sep 2019 10:47:48 +0200, Uwe =3D?iso-8859-1?Q?Kleine-K=3DF6nig?=
=3D          wrote:
> Before commit e42ee61017f5 ("of: Let of_for_each_phandle fallback to
> non-negative cell_count") the iterator functions calling
> of_for_each_phandle assumed a cell count of 0 if cells_name was NULL.
> This corner case was missed when implementing the fallback logic in
> e42ee61017f5 and resulted in an endless loop.
> =

> Restore the old behaviour of of_count_phandle_with_args() and
> of_parse_phandle_with_args() and add a check to
> of_phandle_iterator_init() to prevent a similar failure as a safety
> precaution. of_parse_phandle_with_args_map() doesn't need a similar fix
> as cells_name isn't NULL there.
> =

> Affected drivers are:
>  - drivers/base/power/domain.c
>  - drivers/base/power/domain.c
>  - drivers/clk/ti/clk-dra7-atl.c
>  - drivers/hwmon/ibmpowernv.c
>  - drivers/i2c/muxes/i2c-demux-pinctrl.c
>  - drivers/iommu/mtk_iommu.c
>  - drivers/net/ethernet/freescale/fman/mac.c
>  - drivers/opp/of.c
>  - drivers/perf/arm_dsu_pmu.c
>  - drivers/regulator/of_regulator.c
>  - drivers/remoteproc/imx_rproc.c
>  - drivers/soc/rockchip/pm_domains.c
>  - sound/soc/fsl/imx-audmix.c
>  - sound/soc/fsl/imx-audmix.c
>  - sound/soc/meson/axg-card.c
>  - sound/soc/samsung/tm2_wm5110.c
>  - sound/soc/samsung/tm2_wm5110.c
> =

> Thanks to Geert Uytterhoeven for reporting the issue, Peter Rosin for
> helping pinpoint the actual problem and the testers for confirming this
> fix.
> =

> Fixes: e42ee61017f5 ("of: Let of_for_each_phandle fallback to non-negativ=
e cell_count")
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> =

> On Wed, Sep 18, 2019 at 08:01:05AM +0000, Peter Rosin wrote:
> > On 2019-09-18 08:38, Uwe Kleine-K=F6nig wrote:
> > >  EXPORT_SYMBOL(of_parse_phandle_with_args);
> > >  =

> > > @@ -1765,6 +1779,18 @@ int of_count_phandle_with_args(const struct de=
vice_node *np, const char *list_na
> > >  	struct of_phandle_iterator it;
> > >  	int rc, cur_index =3D 0;
> > >  =

> > > +	/* If cells_name is NULL we assume a cell count of 0 */
> > > +	if (cells_name =3D=3D NULL) {
> > =

> > A couple of nits.
> > =

> > I don't know if there are other considerations, but in the previous two
> > hunks you use !cells_name instead of comparing explicitly with NULL.
> > Personally, I find the shorter form more readable, and in the name of
> > consistency bla bla...
> =

> Ack, changed to !cells_name here, too.
> =

> > =

> > Also, the comment explaining this NULL-check didn't really make sense
> > to me until I realized that knowing the cell count to be zero makes
> > counting trivial. Something along those lines should perhaps be in the
> > comment?
> =

> You're right, I extended the comment a bit.
>  =

> > But as I said, these are nits. Feel free to ignore.
> =

> I considered resending already anyhow as I fatfingerd my email address.
> this is fixed now, too. Additionally I fixed a typo in one of the
> comments.
> =

> Thanks for your feedback.
> =

> Best regards
> Uwe
> =

>  drivers/of/base.c | 35 +++++++++++++++++++++++++++++++++--
>  1 file changed, 33 insertions(+), 2 deletions(-)
> =


Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
