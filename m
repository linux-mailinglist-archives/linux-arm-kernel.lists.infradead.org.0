Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C71C5B6D6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 22:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GhSnytxiHPsLN67r9IspvS2w/3npT4XG2GqYG3wrVmQ=; b=CPgYCshZ4TztIl
	Q+BYqTYfV+JFBOpcM/aZVejydIHAYApbSBO7qPHi9y2TWu7xjI5su/nigxckHSIwmGA+1Meb44Kef
	xE0tUi5vM5TrLEZ4q9oiP0YNPWcKMWbKEZ+syit1kE9nTY2/UV1SCnV8tCCjJZoIjayK5ckl5Pi3s
	rW5W7ohS3sl/vCNUEkjH6GUt3LfRooSlYRIvW6dJ4cEme2BkIvvuJ4pKNWssiUQWjFcePutIPQ8PL
	q+cv8FziL7HYvcVbiaUhsJEqrn5iR+Xhe5JNgHV0xaOVfTwR7LAwlNXgSAYXu4sPagb05NaeJg0eY
	J7hiJMYv4bIuwiZCRX+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAgR3-0005lf-CB; Wed, 18 Sep 2019 20:20:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAgQp-0005cA-Tb
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 20:20:09 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iAgQe-0000Mf-W0; Wed, 18 Sep 2019 22:19:56 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iAgQc-0005uR-DN; Wed, 18 Sep 2019 22:19:54 +0200
Date: Wed, 18 Sep 2019 22:19:54 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2] of: restore old handling of cells_name=NULL in
 of_*_phandle_with_args()
Message-ID: <20190918201954.2phyqxqhoj5jwklt@pengutronix.de>
References: <20190918063837.8196-1-u.kleine-koenig@pengutronix.de>
 <b00ca30f-2c06-7722-96b2-123d15751cb6@axentia.se>
 <20190918084748.hnjkiq7wc5b35wjh@pengutronix.de>
 <CAL_JsqJuJrOj+D4xkGACC1=zaB5OUkt=SNzCOiOiTVtM9E9z+A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJuJrOj+D4xkGACC1=zaB5OUkt=SNzCOiOiTVtM9E9z+A@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_132007_967593_B70AC3D6 
X-CRM114-Status: GOOD (  27.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Frank Rowand <frowand.list@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Robin Murphy <robin.murphy@arm.com>,
 Will Deacon <will@kernel.org>, Peter Rosin <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 03:09:06PM -0500, Rob Herring wrote:
> On Wed, Sep 18, 2019 at 3:47 AM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> >
> > Before commit e42ee61017f5 ("of: Let of_for_each_phandle fallback to
> > non-negative cell_count") the iterator functions calling
> > of_for_each_phandle assumed a cell count of 0 if cells_name was NULL.
> > This corner case was missed when implementing the fallback logic in
> > e42ee61017f5 and resulted in an endless loop.
> >
> > Restore the old behaviour of of_count_phandle_with_args() and
> > of_parse_phandle_with_args() and add a check to
> > of_phandle_iterator_init() to prevent a similar failure as a safety
> > precaution. of_parse_phandle_with_args_map() doesn't need a similar fix
> > as cells_name isn't NULL there.
> >
> > Affected drivers are:
> >  - drivers/base/power/domain.c
> >  - drivers/base/power/domain.c
> >  - drivers/clk/ti/clk-dra7-atl.c
> >  - drivers/hwmon/ibmpowernv.c
> >  - drivers/i2c/muxes/i2c-demux-pinctrl.c
> >  - drivers/iommu/mtk_iommu.c
> >  - drivers/net/ethernet/freescale/fman/mac.c
> >  - drivers/opp/of.c
> >  - drivers/perf/arm_dsu_pmu.c
> >  - drivers/regulator/of_regulator.c
> >  - drivers/remoteproc/imx_rproc.c
> >  - drivers/soc/rockchip/pm_domains.c
> >  - sound/soc/fsl/imx-audmix.c
> >  - sound/soc/fsl/imx-audmix.c
> >  - sound/soc/meson/axg-card.c
> >  - sound/soc/samsung/tm2_wm5110.c
> >  - sound/soc/samsung/tm2_wm5110.c
> >
> > Thanks to Geert Uytterhoeven for reporting the issue, Peter Rosin for
> > helping pinpoint the actual problem and the testers for confirming this
> > fix.
> >
> > Fixes: e42ee61017f5 ("of: Let of_for_each_phandle fallback to non-negat=
ive cell_count")
> > Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >
> > On Wed, Sep 18, 2019 at 08:01:05AM +0000, Peter Rosin wrote:
> > > On 2019-09-18 08:38, Uwe Kleine-K=F6nig wrote:
> > > >  EXPORT_SYMBOL(of_parse_phandle_with_args);
> > > >
> > > > @@ -1765,6 +1779,18 @@ int of_count_phandle_with_args(const struct =
device_node *np, const char *list_na
> > > >     struct of_phandle_iterator it;
> > > >     int rc, cur_index =3D 0;
> > > >
> > > > +   /* If cells_name is NULL we assume a cell count of 0 */
> > > > +   if (cells_name =3D=3D NULL) {
> > >
> > > A couple of nits.
> > >
> > > I don't know if there are other considerations, but in the previous t=
wo
> > > hunks you use !cells_name instead of comparing explicitly with NULL.
> > > Personally, I find the shorter form more readable, and in the name of
> > > consistency bla bla...
> >
> > Ack, changed to !cells_name here, too.
> >
> > >
> > > Also, the comment explaining this NULL-check didn't really make sense
> > > to me until I realized that knowing the cell count to be zero makes
> > > counting trivial. Something along those lines should perhaps be in the
> > > comment?
> >
> > You're right, I extended the comment a bit.
> >
> > > But as I said, these are nits. Feel free to ignore.
> >
> > I considered resending already anyhow as I fatfingerd my email address.
> > this is fixed now, too. Additionally I fixed a typo in one of the
> > comments.
> >
> > Thanks for your feedback.
> >
> > Best regards
> > Uwe
> >
> >  drivers/of/base.c | 35 +++++++++++++++++++++++++++++++++--
> >  1 file changed, 33 insertions(+), 2 deletions(-)
> =

> Can I get a proper patch please.

I don't understand what is wrong with my patch. Can you please expand
what you are missing? I just tried to git-am it and the result looks
fine.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
