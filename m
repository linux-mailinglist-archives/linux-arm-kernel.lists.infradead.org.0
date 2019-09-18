Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A963EB5F70
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 10:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7c9NM++mP2ANhs+NUaGvaugyBLZQc7B6Me+z979h9A=; b=frM8qkuUtgVWkK
	7kS/OI8nO3UPa58a18YFxCzOUCG2MMBMxPFhcN7peU2Pf0aOOir7L2saOdLm9LDT9KGgbu6of576G
	OD0yljlCWTSf06TUCoz3UCJrPVTlHqgO6OvTfuTK9zVt+cnvCzeCwUBYOf5tDzVP8j5tx8Y12M29m
	IGXvA6HbxLM7XUiW9Vp6O0c7WcPP5CO33rG5jD5hbIlpQK21RXxiT+QfPIl7nMO36zzh6QKBBahrD
	0BpH83M2YqIjOIczNCtvwlgC6QssgSWh85aleg1dJS21ykMQGYXJ0p3zOKxyYBbv0COQXIgXnLxJ4
	Y6giY3KvnQMrVgjHkNHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVdA-0005pG-Oh; Wed, 18 Sep 2019 08:48:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVcy-0005nP-Do
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 08:47:58 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iAVcr-0001B8-T8; Wed, 18 Sep 2019 10:47:49 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iAVcq-0007mf-Bu; Wed, 18 Sep 2019 10:47:48 +0200
Date: Wed, 18 Sep 2019 10:47:48 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v2] of: restore old handling of cells_name=NULL in
 of_*_phandle_with_args()
Message-ID: <20190918084748.hnjkiq7wc5b35wjh@pengutronix.de>
References: <20190918063837.8196-1-u.kleine-koenig@pengutronix.de>
 <b00ca30f-2c06-7722-96b2-123d15751cb6@axentia.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b00ca30f-2c06-7722-96b2-123d15751cb6@axentia.se>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_014756_461032_8B9C50B5 
X-CRM114-Status: GOOD (  25.05  )
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
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before commit e42ee61017f5 ("of: Let of_for_each_phandle fallback to
non-negative cell_count") the iterator functions calling
of_for_each_phandle assumed a cell count of 0 if cells_name was NULL.
This corner case was missed when implementing the fallback logic in
e42ee61017f5 and resulted in an endless loop.

Restore the old behaviour of of_count_phandle_with_args() and
of_parse_phandle_with_args() and add a check to
of_phandle_iterator_init() to prevent a similar failure as a safety
precaution. of_parse_phandle_with_args_map() doesn't need a similar fix
as cells_name isn't NULL there.

Affected drivers are:
 - drivers/base/power/domain.c
 - drivers/base/power/domain.c
 - drivers/clk/ti/clk-dra7-atl.c
 - drivers/hwmon/ibmpowernv.c
 - drivers/i2c/muxes/i2c-demux-pinctrl.c
 - drivers/iommu/mtk_iommu.c
 - drivers/net/ethernet/freescale/fman/mac.c
 - drivers/opp/of.c
 - drivers/perf/arm_dsu_pmu.c
 - drivers/regulator/of_regulator.c
 - drivers/remoteproc/imx_rproc.c
 - drivers/soc/rockchip/pm_domains.c
 - sound/soc/fsl/imx-audmix.c
 - sound/soc/fsl/imx-audmix.c
 - sound/soc/meson/axg-card.c
 - sound/soc/samsung/tm2_wm5110.c
 - sound/soc/samsung/tm2_wm5110.c

Thanks to Geert Uytterhoeven for reporting the issue, Peter Rosin for
helping pinpoint the actual problem and the testers for confirming this
fix.

Fixes: e42ee61017f5 ("of: Let of_for_each_phandle fallback to non-negative =
cell_count")
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
---

On Wed, Sep 18, 2019 at 08:01:05AM +0000, Peter Rosin wrote:
> On 2019-09-18 08:38, Uwe Kleine-K=F6nig wrote:
> >  EXPORT_SYMBOL(of_parse_phandle_with_args);
> >  =

> > @@ -1765,6 +1779,18 @@ int of_count_phandle_with_args(const struct devi=
ce_node *np, const char *list_na
> >  	struct of_phandle_iterator it;
> >  	int rc, cur_index =3D 0;
> >  =

> > +	/* If cells_name is NULL we assume a cell count of 0 */
> > +	if (cells_name =3D=3D NULL) {
> =

> A couple of nits.
> =

> I don't know if there are other considerations, but in the previous two
> hunks you use !cells_name instead of comparing explicitly with NULL.
> Personally, I find the shorter form more readable, and in the name of
> consistency bla bla...

Ack, changed to !cells_name here, too.

> =

> Also, the comment explaining this NULL-check didn't really make sense
> to me until I realized that knowing the cell count to be zero makes
> counting trivial. Something along those lines should perhaps be in the
> comment?

You're right, I extended the comment a bit.
 =

> But as I said, these are nits. Feel free to ignore.

I considered resending already anyhow as I fatfingerd my email address.
this is fixed now, too. Additionally I fixed a typo in one of the
comments.

Thanks for your feedback.

Best regards
Uwe

 drivers/of/base.c | 35 +++++++++++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 2f25d2dfecfa..1d667eb730e1 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1286,6 +1286,13 @@ int of_phandle_iterator_init(struct of_phandle_itera=
tor *it,
 =

 	memset(it, 0, sizeof(*it));
 =

+	/*
+	 * one of cell_count or cells_name must be provided to determine the
+	 * argument length.
+	 */
+	if (cell_count < 0 && !cells_name)
+		return -EINVAL;
+
 	list =3D of_get_property(np, list_name, &size);
 	if (!list)
 		return -ENOENT;
@@ -1512,10 +1519,17 @@ int of_parse_phandle_with_args(const struct device_=
node *np, const char *list_na
 				const char *cells_name, int index,
 				struct of_phandle_args *out_args)
 {
+	int cell_count =3D -1;
+
 	if (index < 0)
 		return -EINVAL;
-	return __of_parse_phandle_with_args(np, list_name, cells_name, -1,
-					    index, out_args);
+
+	/* If cells_name is NULL we assume a cell count of 0 */
+	if (!cells_name)
+		cell_count =3D 0;
+
+	return __of_parse_phandle_with_args(np, list_name, cells_name,
+					    cell_count, index, out_args);
 }
 EXPORT_SYMBOL(of_parse_phandle_with_args);
 =

@@ -1765,6 +1779,23 @@ int of_count_phandle_with_args(const struct device_n=
ode *np, const char *list_na
 	struct of_phandle_iterator it;
 	int rc, cur_index =3D 0;
 =

+	/*
+	 * If cells_name is NULL we assume a cell count of 0. This makes
+	 * counting the phandles trivial as each 32bit word in the list is a
+	 * phandle and no arguments are to consider. So we don't iterate through
+	 * the list but just use the length to determine the phandle count.
+	 */
+	if (!cells_name) {
+		const __be32 *list;
+		int size;
+
+		list =3D of_get_property(np, list_name, &size);
+		if (!list)
+			return -ENOENT;
+
+		return size / sizeof(*list);
+	}
+
 	rc =3D of_phandle_iterator_init(&it, np, list_name, cells_name, -1);
 	if (rc)
 		return rc;
-- =

2.23.0


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
