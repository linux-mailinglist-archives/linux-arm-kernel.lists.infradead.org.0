Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CE5E183F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eE8ZJaPUDz19KPdkDL9zzZs6fWeN9VpVahlCQYTGIvg=; b=O9Ef5PcKXU4Lnd
	eIgwmOzkAd6W6nOtQIYUWmUN2IEzIjQUEWEZQ7nhkvA9Kwor3kv0dhYmOlfcXdwgLZf0MziLIuJLl
	5IbHF8rIwtSWtdS1jUtFA0jZgbhzg3zWDKGq0E4gpAvwPC5QSImW7fbZKQBT9JnB4aKxxzDJ4I578
	m9joO/kU9GhVvPlGH/H+9XIyVeB4rZKCz2B8a/ifaurkgadtYS5cgpwHsLzLPTYz6Z0Wq6jPX+CHz
	vN6ZlD5e9q6NDrz9uZQ526fmu1cd1tPzkwnb6XaLpCe/RwOTqqlhiGFP8hf2NPreNyz++XOiU/QKx
	BCh87mlEv48pG+P+NtXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNECO-00070T-7c; Wed, 23 Oct 2019 10:49:04 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNEC9-0006zm-Vp
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 10:48:52 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191023104846euoutp01850370568ab9d8ba94453d6f3d250c33~QQP1S-22M1742617426euoutp01h
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 10:48:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191023104846euoutp01850370568ab9d8ba94453d6f3d250c33~QQP1S-22M1742617426euoutp01h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1571827726;
 bh=4J7gfhNSSVkz/hTa1HYEN56M/lHsqUW4MDuMxwJnr2k=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=tuqacLYkFV7pMu5TRDKGJWXQwc2mgrDSXdQh/9Ku8AE6o+E3WW+PbSWangr7Gyqxb
 i6SAf7sYbJprf3E4wZgObWQI/8OcrXaZe72bDrcFoncUxskHrWqcM04OaeGNdmkeln
 Mx9UtN9Kddy03XYfxBpD/Xl7FuwCElhIgcUHtRdM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191023104845eucas1p2d964dacb4e7f3f8e0c78ffe3fba94625~QQP0l7Ilf0349903499eucas1p21;
 Wed, 23 Oct 2019 10:48:45 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 94.24.04469.D0030BD5; Wed, 23
 Oct 2019 11:48:45 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191023104845eucas1p2f011bbc6a6200824e329208f407a2871~QQP0LW5xH1120011200eucas1p2H;
 Wed, 23 Oct 2019 10:48:45 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191023104845eusmtrp2746075daab7c09ffbe7c2fd569175836~QQP0KTZO50714107141eusmtrp2U;
 Wed, 23 Oct 2019 10:48:45 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-21-5db0300d5af0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E3.5A.04117.D0030BD5; Wed, 23
 Oct 2019 11:48:45 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191023104844eusmtip128ceb1c5ad40705fbd39b15cef921b40~QQPzoNOZ42579225792eusmtip1b;
 Wed, 23 Oct 2019 10:48:44 +0000 (GMT)
Subject: Re: [PATCH v5 3/4] soc: samsung: Add Exynos Adaptive Supply Voltage
 driver
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <ccd20b0e-9c4c-93cd-2e7e-40aef1bb336c@samsung.com>
Date: Wed, 23 Oct 2019 12:48:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022190419.GB8305@kozik-lap>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTcRTG+2/37l616d00PGlZjCQKfFlZXCqsIGhiUF+CUkatvKjkpuw6
 TSUUbZKmNv2QcwzfMHwJ003TtFSYc8ssRQUtbKboB1GUckoMUXNeJb/9znmewzkPHJIv7sUD
 yERVKqNWKZIkAk+sw+YaDhGGt8rDTTMXaJO+BaerrMM4PTLSStDmuQmcdhZbEa0f6eXRzVYH
 QWt7rAQ9PmcS0FsTJoxum7EJrnnJzE0FAllbXbbs+WAfJitpb0IypznoDh7jeSWOSUpMY9Rh
 kQ89E94XGQUppdKnC61dRA76croQeZBARcDaSh9WiDxJMdWA4LPTweOKNQRzLuue4kTww7bA
 3x/p1tkITqhH0NDfiLhiGYHr1VuB2+VL3YWeyhLkZj/qDExu/sXdJj5VxIPfDhvuFgSUFIoH
 OJOQioSaoVXMzRgVDPXmnJ11JHmEugdD6wrOIoLBivldiwcVCuOOxd1RPuUPuWuNOMcnoHPZ
 uHfpGAH6oRiOb0DZaiXBsS8s2tv3+Bhsd1XtZgYqD0HRxymCK3QIftmrEee6DP32Udx9EH8n
 TUt3GNe+Dovftgl3Gyhv+L4s4m7whrKOcj7XFsKLfDHnPgUbTeU8jgPg5fw2pkMSw4FkhgNp
 DAfSGP7vrUZYE/JnNKwynmGlKiY9lFUoWY0qPvRxstKMdr5qaMu++gGtjz2yIIpEksNC/Z93
 cjGuSGMzlBYEJF/iJ/wZ3iwXC+MUGZmMOvmBWpPEsBYUSGISf2HWoZlYMRWvSGWeMEwKo95X
 eaRHQA7KlovMRXmtNR0L0/qoLNGb6qWlr88KbJYBdlQ3e9EWPZ0xELXps3myGMmPg3F2wyso
 LaJKaow6568KtGfOB2ffLtXmT/lc3a7V3rr5Oj2oUd0ee6nNlCUkXEmadSx6Jb4uW3X0k7Gz
 dpAXeT630Xxf2zUZElJeoZs1iC1BNRKMTVBIz/LVrOIf8PlWSVEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrIIsWRmVeSWpSXmKPExsVy+t/xu7q8BhtiDe7vlrHYOGM9q8X8I+dY
 Lc6f38BusenxNVaLz71HGC1mnN/HZLH2yF12i9a9R9gtLj/eyGbx79pGFovND46xOXB7bFrV
 yeaxeUm9R8vJ/SwefVtWMXp83iQXwBqlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwe
 a2VkqqRvZ5OSmpNZllqkb5egl7G1Zw5bwUTDihcbdrI3MJ5S72Lk5JAQMJHYNeEYexcjF4eQ
 wFJGiY+f7jB3MXIAJaQk5rcoQdQIS/y51sUGUfOaUWLbg7lsIAlhgVCJvfP6GEFsEQFNiet/
 v7OCFDEL9DBJnOxfzwjR8ZRR4u2UtawgVWwChhK9RyE6eAXsJBae/sQCYrMIqEos39TADGKL
 CkRIPN9+A6pGUOLkzCdgNZwCehKX774CizMLqEv8mXeJGcIWl2j6spIVwpaX2P52DvMERqFZ
 SNpnIWmZhaRlFpKWBYwsqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQKjc9uxn1t2MHa9Cz7E
 KMDBqMTD6/B+XawQa2JZcWXuIUYJDmYlEd47BmtjhXhTEiurUovy44tKc1KLDzGaAj03kVlK
 NDkfmDjySuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwrjux+/h3
 KQfDZiHtnie/3gh4bPBlyG5myvj5yn7LNKujljdjbrNKCssvWs96Oq/MI+pMa1D8v+1y4Rlv
 15a/UdPM8uJVKNuSXTY9/UTmt5ffS6VuT8yxO3819tvlFyklJneeX3sl/GByHFt2YeAGDlnX
 G1KMvK0qjrVpydO6Y6ROLQ2bduyKEktxRqKhFnNRcSIALnoN3+QCAAA=
X-CMS-MailID: 20191023104845eucas1p2f011bbc6a6200824e329208f407a2871
X-Msg-Generator: CA
X-RootMTR: 20191016145813eucas1p1623db169f1ee93f88cb2c75090804747
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191016145813eucas1p1623db169f1ee93f88cb2c75090804747
References: <20191016145756.16004-1-s.nawrocki@samsung.com>
 <CGME20191016145813eucas1p1623db169f1ee93f88cb2c75090804747@eucas1p1.samsung.com>
 <20191016145756.16004-4-s.nawrocki@samsung.com>
 <20191022190419.GB8305@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_034850_231092_CC52C100 
X-CRM114-Status: GOOD (  25.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi Krzysztof,

On 10/22/19 21:04, Krzysztof Kozlowski wrote:
 
> I wanted to apply this patch but spotted some unusual printk... 
> and then started looking for more...
> 
> Sparse complains:
> ../drivers/soc/samsung/exynos5422-asv.c:457:5: warning: symbol 
> 'exynos5422_asv_init' was not declared. Should it be static?
 
#include "exynos5422-asv.h" should be added to 
drivers/soc/samsung/exynos5422-asv.c.

>>  drivers/soc/samsung/Kconfig          |  10 +
>>  drivers/soc/samsung/Makefile         |   3 +
>>  drivers/soc/samsung/exynos-asv.c     | 179 ++++++++++
>>  drivers/soc/samsung/exynos-asv.h     |  82 +++++
>>  drivers/soc/samsung/exynos5422-asv.c | 509 +++++++++++++++++++++++++++
>>  drivers/soc/samsung/exynos5422-asv.h |  25 ++
>>  6 files changed, 808 insertions(+)
>>  create mode 100644 drivers/soc/samsung/exynos-asv.c
>>  create mode 100644 drivers/soc/samsung/exynos-asv.h
>>  create mode 100644 drivers/soc/samsung/exynos5422-asv.c
>>  create mode 100644 drivers/soc/samsung/exynos5422-asv.h
>>

>> +++ b/drivers/soc/samsung/exynos-asv.c

>> +#include <linux/cpu.h>
>> +#include <linux/delay.h>
> 
> Do you use this header?

It can be removed now, after conversion to dev_pm_opp_adjust_voltage().

>> +static int exynos_asv_probe(struct platform_device *pdev)
>> +{
>> +	int (*probe_func)(struct exynos_asv *asv);
>> +	struct exynos_asv *asv;
>> +	struct device *cpu_dev;
>> +	u32 product_id = 0;
>> +	int ret, i;
>> +
>> +	cpu_dev = get_cpu_device(0);
>> +	ret = dev_pm_opp_get_opp_count(cpu_dev);
>> +	if (ret < 0)
>> +		return -EPROBE_DEFER;
>> +
>> +	asv = devm_kzalloc(&pdev->dev, sizeof(*asv), GFP_KERNEL);
>> +	if (!asv)
>> +		return -ENOMEM;
>> +
>> +	asv->chipid_regmap = syscon_node_to_regmap(pdev->dev.of_node);
> 
> Since this binds to the same node as chipid, why do you need syscon for
> it? Why regular IO access does not work? Eventually, if this has to be
> regmap because of locking (does it?), then maybe simply
> device_node_to_regmap()?

We just need regmap available to any of the two drivers whichever needs it
first. device_node_to_regmap() sounds like a good idea. Then we could drop
"syscon" compatible from the binding.

>> +	if (IS_ERR(asv->chipid_regmap)) {
>> +		dev_err(&pdev->dev, "Could not find syscon regmap\n");
>> +		return PTR_ERR(asv->chipid_regmap);
>> +	}
>> +
>> +	regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_PRO_ID, &product_id);
>> +
>> +	switch (product_id & EXYNOS_MASK) {
>> +	case 0xE5422000:
>> +		probe_func = exynos5422_asv_init;
>> +		break;
>> +	default:
>> +		dev_err(&pdev->dev, "Unsupported product ID: %#x", product_id);
> 
> Is this going to scream for every Exynos matching the 4210-chipid?

Yes, it should really be dev_info() or removed entirely.

>> +		return -ENODEV;
>> +	}


>> +++ b/drivers/soc/samsung/exynos-asv.h

>> +enum {
>> +	EXYNOS_ASV_SUBSYS_ID_ARM,
>> +	EXYNOS_ASV_SUBSYS_ID_EGL = EXYNOS_ASV_SUBSYS_ID_ARM,
>> +	EXYNOS_ASV_SUBSYS_ID_KFC,
>> +	EXYNOS_ASV_SUBSYS_ID_INT,
>> +	EXYNOS_ASV_SUBSYS_ID_MIF,
>> +	EXYNOS_ASV_SUBSYS_ID_G3D,
>> +	EXYNOS_ASV_SUBSYS_ID_CAM,
>> +	EXYNOS_ASV_SUBSYS_ID_MAX
>> +};
> 
> I cannot find usage of it in generic part of ASV driver. What's the
> purpose? Isn't it specific to Exynos5422?

It was meant as generic enumeration of available subsystems, it's not
Exynos5422 specific. It could be moved to the exynos5422 part of the 
driver (limited to EXYNOS_ASV_SUBSYS_ID_ARM, EXYNOS_ASV_SUBSYS_ID_KFC)
until support for of ther subsystems than CPU clusters is added.
The CPUs are now matched by compatible.

>> +struct regmap;
>> +
>> +/* HPM, IDS values to select target group */

>> +struct exynos_asv_subsys {
>> +	struct exynos_asv *asv;
>> +	const char *cpu_dt_compat;
>> +	int id;
>> +	struct exynos_asv_table table;
>> +
>> +	unsigned int base_volt;
>> +	unsigned int offset_volt_h;
>> +	unsigned int offset_volt_l;
>> +};
>> +
>> +struct exynos_asv {
>> +	struct device *dev;
>> +	struct regmap *chipid_regmap;
>> +	struct exynos_asv_subsys subsys[2];
>> +
>> +	int (*opp_get_voltage)(struct exynos_asv_subsys *subs, int level,
>> +			       unsigned int voltage);
>> +	unsigned int group;
>> +	unsigned int table;
>> +
>> +	/* True if SG fields from PKG_ID register should be used */
>> +	bool use_sg;
>> +	/* ASV bin read from DT */
>> +	int of_bin;
>> +};
>> +
>> +static inline u32 __asv_get_table_entry(struct exynos_asv_table *table,
> 
> 'table' looks here like pointer to const.

Yes, const could be added here.

>> +					unsigned int row, unsigned int col)
>> +{
>> +	return table->buf[row * (table->num_cols) + col];
>> +}
>> +
>> +static inline u32 exynos_asv_opp_get_voltage(struct exynos_asv_subsys *subsys,
>> +					unsigned int level, unsigned int group)
>> +{
> 
> The same, for subsys.

Agreed.
 
>> +	return __asv_get_table_entry(&subsys->table, level, group + 1);
>> +}

>> +++ b/drivers/soc/samsung/exynos5422-asv.c

>> +#include <linux/bitrev.h>
>> +#include <linux/device.h>
> 
> Is it used?
> 
>> +#include <linux/errno.h>
>> +#include <linux/of.h>
> 
> The same?

Some might be not used now, I will check it again.

>> +#include <linux/regmap.h>
>> +#include <linux/soc/samsung/exynos-chipid.h>
>> +#include <linux/slab.h>
>> +
>> +#include "exynos-asv.h"


>> +static int exynos5422_asv_opp_get_voltage(struct exynos_asv_subsys *subsys,
>> +				int level, unsigned int volt)
> 
> subsys is not modified.
 

>> +static unsigned int exynos5422_asv_parse_table(struct exynos_asv *asv,
>> +				      unsigned int pkg_id)
>> +{
> 
> The same, for asv. Looks BTW unused...

Indeed the asv argument should be dropped now.

>> +	return (pkg_id >> EXYNOS5422_TABLE_OFFSET) & EXYNOS5422_TABLE_MASK;
>> +}

>> +int exynos5422_asv_init(struct exynos_asv *asv)
>> +{
>> +	struct exynos_asv_subsys *subsys;
>> +	unsigned int table_index;
>> +	unsigned int pkg_id;
>> +	bool bin2;
>> +
> 
> How about checking if asv != null? It's a header exposed function.

Do we really need it? The caller will ensure that asv is not null.

>> +	regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_PKG_ID, &pkg_id);

-- 
Regards,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
