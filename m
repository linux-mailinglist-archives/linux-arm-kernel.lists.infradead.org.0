Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2348DE18B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 13:20:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIDF3j7jAk4NKOJu9BZS03YQN63sUU3URcdbGjvYNxM=; b=FRW32EhgTAzncH
	yUUDMoD4mkMaKShKe8SlpKrFb3KPJMFMQLMwil7Q4ZDNzbw4YIVmHw/dvywzZc6IlDsicGmd6ueHO
	SDAuTUFUUHQde2J6gaGS5e/oeJ2uiyR90gMpL4nAnrTSrRqX41hX003W4J+HXSzoCI3vpmfNryoQS
	57GN02N2wKS6j1Pcg4SigkHYf9306DyHrQBSeXc8uMliyyCJDz1q4Y8LFrK8X7r3hB50QgdZqgq7Q
	VWSjVZeyHc9MgswjMc3B9DvcJ3EfU+ZlcUwkgFJQLkpgUQXMCnxyPpC7HUYUepixG8xqvPyo0Ck3y
	fef2HoJnXJ92JQXqrHtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNEgs-0007kM-1Y; Wed, 23 Oct 2019 11:20:34 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNEgh-0007ju-Nd
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 11:20:25 +0000
Received: by mail-ed1-f67.google.com with SMTP id f20so15450059edv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 04:20:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=U1Iv9oLwBhuv6+4c57usa5tS2bPjjw9Q5y32EOCdMPE=;
 b=cst97IlogoHscYt1Hj7pCCqj9VS2iktlUX//8h1b7nU8LgPx1v/DrFt8tUbkuvmSxQ
 5E+ItTsh9n7U77xbuaEX8INF9wfv27v1LE1gOrQup22penV+udpMjKYdXAVPRXMbWiJo
 9Ig9DtY2LD+MwwS01ob0NbRAuvmvVKHB3lwDPKB0sqgtgVqZaN5qU8BFebo4BzoUUCJV
 Mi0xmZ0duTjhcyJBwVtWf1NRlaQXZTlvn6z6X1yTyYAA/dhKHEk98rcWylmATgjiISFq
 9PGQ/q1KyjxV9+lZHymdrvyG00BHqLlCioL/HIiGDxhNRsfIAHDG7DvEknPurrY49FU3
 FJEw==
X-Gm-Message-State: APjAAAXBRft1qEZgJlNbVItbTukH/oWXzhFYy5dk8eFZjCh+AS5HOYir
 1zZW4ZPy/5cHiP4Ygf2hZeqUk6oi
X-Google-Smtp-Source: APXvYqy24GIYro5b1SoxVfr90EPpn8DCMCQe6kqjHK5M83joyPKQX8ukV30FpXmPc6MEabt8o9/tvw==
X-Received: by 2002:a17:906:e296:: with SMTP id
 gg22mr14621989ejb.211.1571829622111; 
 Wed, 23 Oct 2019 04:20:22 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id j5sm873792edj.62.2019.10.23.04.20.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 04:20:21 -0700 (PDT)
Date: Wed, 23 Oct 2019 13:20:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v5 3/4] soc: samsung: Add Exynos Adaptive Supply Voltage
 driver
Message-ID: <20191023112019.GA10883@pi3>
References: <20191016145756.16004-1-s.nawrocki@samsung.com>
 <CGME20191016145813eucas1p1623db169f1ee93f88cb2c75090804747@eucas1p1.samsung.com>
 <20191016145756.16004-4-s.nawrocki@samsung.com>
 <20191022190419.GB8305@kozik-lap>
 <ccd20b0e-9c4c-93cd-2e7e-40aef1bb336c@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ccd20b0e-9c4c-93cd-2e7e-40aef1bb336c@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_042023_775270_C29D07D7 
X-CRM114-Status: GOOD (  31.33  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, sboyd@kernel.org, vireshk@kernel.org,
 linux-pm@vger.kernel.org, roger.lu@mediatek.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 12:48:34PM +0200, Sylwester Nawrocki wrote:
> Hi Krzysztof,
> 
> On 10/22/19 21:04, Krzysztof Kozlowski wrote:
>  
> > I wanted to apply this patch but spotted some unusual printk... 
> > and then started looking for more...
> > 
> > Sparse complains:
> > ../drivers/soc/samsung/exynos5422-asv.c:457:5: warning: symbol 
> > 'exynos5422_asv_init' was not declared. Should it be static?
>  
> #include "exynos5422-asv.h" should be added to 
> drivers/soc/samsung/exynos5422-asv.c.
> 
> >>  drivers/soc/samsung/Kconfig          |  10 +
> >>  drivers/soc/samsung/Makefile         |   3 +
> >>  drivers/soc/samsung/exynos-asv.c     | 179 ++++++++++
> >>  drivers/soc/samsung/exynos-asv.h     |  82 +++++
> >>  drivers/soc/samsung/exynos5422-asv.c | 509 +++++++++++++++++++++++++++
> >>  drivers/soc/samsung/exynos5422-asv.h |  25 ++
> >>  6 files changed, 808 insertions(+)
> >>  create mode 100644 drivers/soc/samsung/exynos-asv.c
> >>  create mode 100644 drivers/soc/samsung/exynos-asv.h
> >>  create mode 100644 drivers/soc/samsung/exynos5422-asv.c
> >>  create mode 100644 drivers/soc/samsung/exynos5422-asv.h
> >>
> 
> >> +++ b/drivers/soc/samsung/exynos-asv.c
> 
> >> +#include <linux/cpu.h>
> >> +#include <linux/delay.h>
> > 
> > Do you use this header?
> 
> It can be removed now, after conversion to dev_pm_opp_adjust_voltage().
> 
> >> +static int exynos_asv_probe(struct platform_device *pdev)
> >> +{
> >> +	int (*probe_func)(struct exynos_asv *asv);
> >> +	struct exynos_asv *asv;
> >> +	struct device *cpu_dev;
> >> +	u32 product_id = 0;
> >> +	int ret, i;
> >> +
> >> +	cpu_dev = get_cpu_device(0);
> >> +	ret = dev_pm_opp_get_opp_count(cpu_dev);
> >> +	if (ret < 0)
> >> +		return -EPROBE_DEFER;
> >> +
> >> +	asv = devm_kzalloc(&pdev->dev, sizeof(*asv), GFP_KERNEL);
> >> +	if (!asv)
> >> +		return -ENOMEM;
> >> +
> >> +	asv->chipid_regmap = syscon_node_to_regmap(pdev->dev.of_node);
> > 
> > Since this binds to the same node as chipid, why do you need syscon for
> > it? Why regular IO access does not work? Eventually, if this has to be
> > regmap because of locking (does it?), then maybe simply
> > device_node_to_regmap()?
> 
> We just need regmap available to any of the two drivers whichever needs it
> first. device_node_to_regmap() sounds like a good idea. Then we could drop
> "syscon" compatible from the binding.

OK, let's keep the regmap for safe access to the same region by multiple
drivers.

> 
> >> +	if (IS_ERR(asv->chipid_regmap)) {
> >> +		dev_err(&pdev->dev, "Could not find syscon regmap\n");
> >> +		return PTR_ERR(asv->chipid_regmap);
> >> +	}
> >> +
> >> +	regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_PRO_ID, &product_id);
> >> +
> >> +	switch (product_id & EXYNOS_MASK) {
> >> +	case 0xE5422000:
> >> +		probe_func = exynos5422_asv_init;
> >> +		break;
> >> +	default:
> >> +		dev_err(&pdev->dev, "Unsupported product ID: %#x", product_id);
> > 
> > Is this going to scream for every Exynos matching the 4210-chipid?
> 
> Yes, it should really be dev_info() or removed entirely.

Remove it entirely please or leave it to dev_dbg (but even then add some
calming message like "Unsupported ...., skipping ASV"). Driver binds on
many devices and lack of ASV is kind of regular (till now there was no
ASV at all).

> 
> >> +		return -ENODEV;
> >> +	}
> 
> 
> >> +++ b/drivers/soc/samsung/exynos-asv.h
> 
> >> +enum {
> >> +	EXYNOS_ASV_SUBSYS_ID_ARM,
> >> +	EXYNOS_ASV_SUBSYS_ID_EGL = EXYNOS_ASV_SUBSYS_ID_ARM,
> >> +	EXYNOS_ASV_SUBSYS_ID_KFC,
> >> +	EXYNOS_ASV_SUBSYS_ID_INT,
> >> +	EXYNOS_ASV_SUBSYS_ID_MIF,
> >> +	EXYNOS_ASV_SUBSYS_ID_G3D,
> >> +	EXYNOS_ASV_SUBSYS_ID_CAM,
> >> +	EXYNOS_ASV_SUBSYS_ID_MAX
> >> +};
> > 
> > I cannot find usage of it in generic part of ASV driver. What's the
> > purpose? Isn't it specific to Exynos5422?
> 
> It was meant as generic enumeration of available subsystems, it's not
> Exynos5422 specific. It could be moved to the exynos5422 part of the 
> driver (limited to EXYNOS_ASV_SUBSYS_ID_ARM, EXYNOS_ASV_SUBSYS_ID_KFC)
> until support for of ther subsystems than CPU clusters is added.
> The CPUs are now matched by compatible.

Then let's move it to exynos5422 part, and later make it generic if
needed.

> 
> >> +struct regmap;
> >> +
> >> +/* HPM, IDS values to select target group */
> 
> >> +struct exynos_asv_subsys {
> >> +	struct exynos_asv *asv;
> >> +	const char *cpu_dt_compat;
> >> +	int id;
> >> +	struct exynos_asv_table table;
> >> +
> >> +	unsigned int base_volt;
> >> +	unsigned int offset_volt_h;
> >> +	unsigned int offset_volt_l;
> >> +};
> >> +
> >> +struct exynos_asv {
> >> +	struct device *dev;
> >> +	struct regmap *chipid_regmap;
> >> +	struct exynos_asv_subsys subsys[2];
> >> +
> >> +	int (*opp_get_voltage)(struct exynos_asv_subsys *subs, int level,
> >> +			       unsigned int voltage);
> >> +	unsigned int group;
> >> +	unsigned int table;
> >> +
> >> +	/* True if SG fields from PKG_ID register should be used */
> >> +	bool use_sg;
> >> +	/* ASV bin read from DT */
> >> +	int of_bin;
> >> +};
> >> +
> >> +static inline u32 __asv_get_table_entry(struct exynos_asv_table *table,
> > 
> > 'table' looks here like pointer to const.
> 
> Yes, const could be added here.
> 
> >> +					unsigned int row, unsigned int col)
> >> +{
> >> +	return table->buf[row * (table->num_cols) + col];
> >> +}
> >> +
> >> +static inline u32 exynos_asv_opp_get_voltage(struct exynos_asv_subsys *subsys,
> >> +					unsigned int level, unsigned int group)
> >> +{
> > 
> > The same, for subsys.
> 
> Agreed.
>  
> >> +	return __asv_get_table_entry(&subsys->table, level, group + 1);
> >> +}
> 
> >> +++ b/drivers/soc/samsung/exynos5422-asv.c
> 
> >> +#include <linux/bitrev.h>
> >> +#include <linux/device.h>
> > 
> > Is it used?
> > 
> >> +#include <linux/errno.h>
> >> +#include <linux/of.h>
> > 
> > The same?
> 
> Some might be not used now, I will check it again.
> 
> >> +#include <linux/regmap.h>
> >> +#include <linux/soc/samsung/exynos-chipid.h>
> >> +#include <linux/slab.h>
> >> +
> >> +#include "exynos-asv.h"
> 
> 
> >> +static int exynos5422_asv_opp_get_voltage(struct exynos_asv_subsys *subsys,
> >> +				int level, unsigned int volt)
> > 
> > subsys is not modified.
>  
> 
> >> +static unsigned int exynos5422_asv_parse_table(struct exynos_asv *asv,
> >> +				      unsigned int pkg_id)
> >> +{
> > 
> > The same, for asv. Looks BTW unused...
> 
> Indeed the asv argument should be dropped now.
> 
> >> +	return (pkg_id >> EXYNOS5422_TABLE_OFFSET) & EXYNOS5422_TABLE_MASK;
> >> +}
> 
> >> +int exynos5422_asv_init(struct exynos_asv *asv)
> >> +{
> >> +	struct exynos_asv_subsys *subsys;
> >> +	unsigned int table_index;
> >> +	unsigned int pkg_id;
> >> +	bool bin2;
> >> +
> > 
> > How about checking if asv != null? It's a header exposed function.
> 
> Do we really need it? The caller will ensure that asv is not null.

Indeed, it's not needed. Skip my comment.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
