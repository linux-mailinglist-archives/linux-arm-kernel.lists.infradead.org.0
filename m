Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715A9973D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:50:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obtT0MkdOMBIZ9rRh1puWFLag1ALNv9gDQ8VMQCVa/o=; b=I+5dE1som461oP
	pWyvho25zUe5LmO5mkoCQvTbkNnu20r6P0DmnaFwAXaEUw6YCPd0HzXanrCOiNdadZ4O0/a3u6Nug
	F0Y7jx86kvy79g4u0mZ/SM7hVl64WGYbOMr6YvS16P3JWDgxNT9MDjmf6FR7f+9K0r4/5Kv3e9bw+
	QjURgxBs7+TbkmlCLZVhOk/BB9RrE85VN5Ul36yM9sz9ndwWd9U4lj2CVPsqvVxPipUshFlarEmcq
	2qfXsGq0m6c+2oDOlc3Bwx7xgtfKyi6g9KXQ4UAuOdpHpx/Bdj7eoAm7s9p6XzxZ91MpqmTyn/n+u
	gfdyfQW61u1oRO9Z00Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0LNg-0000Li-9c; Wed, 21 Aug 2019 07:50:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0LNP-0000KR-Rn
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:49:53 +0000
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C17F2233FC
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566373790;
 bh=48hZbPJtzSxx3b/A53I4PAXECxqgXTQufB/rcB8xTZM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=P7/gmtEOu+07urJK1FBTX+Ba4qDgS5ToQMx4eze7JbceXNNUR4u4m49iHD74LH3cp
 ZheENFVTNDmU4heunGKuD/ax/z6UiPmx6Al6Q1gc9brqPjwPysWKUVE5GyeFPUNyvH
 dXNfVYg87CsT9axD9YizhBrmwa4WId7PNziUkEjU=
Received: by mail-lj1-f182.google.com with SMTP id e27so1219214ljb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 00:49:49 -0700 (PDT)
X-Gm-Message-State: APjAAAUfbvpTOQ3IuyYtm3YG0krwgWoTgrxBdTp7Bddz0Eppr6Mq2rAD
 e10i1GEyXRGZTPVOb/eUp3PLt6kxmpxILVwVfmU=
X-Google-Smtp-Source: APXvYqyKZ6hp0isd++pSIdiygMNPAboh6ydC5w3pg7nv0BqAltG/55Aw8qIwfJ3UWnul58T3CByp6jMBOZQDlen5WuM=
X-Received: by 2002:a2e:9acf:: with SMTP id p15mr18348273ljj.13.1566373787954; 
 Wed, 21 Aug 2019 00:49:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150852eucas1p2be4c0ab5ec2c079e3daf1af24283b27c@eucas1p2.samsung.com>
 <20190813150827.31972-3-s.nawrocki@samsung.com>
 <b5359603-b337-dcd8-b025-ca7dff5f4a06@nvidia.com>
 <CAJKOXPf597CMx=M2JmSTWe2GzBfcHFefgzSJbJ+njZGp-WfR1A@mail.gmail.com>
 <1e428c8e-f4b5-0810-77f9-2c899c040fc7@kernel.org>
In-Reply-To: <1e428c8e-f4b5-0810-77f9-2c899c040fc7@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 21 Aug 2019 09:49:36 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcdeb08-2Xsmjpw_CsJCTah03GJaLUjQYw6n7=Xhiwoow@mail.gmail.com>
Message-ID: <CAJKOXPcdeb08-2Xsmjpw_CsJCTah03GJaLUjQYw6n7=Xhiwoow@mail.gmail.com>
Subject: Re: [PATCH v3 2/9] soc: samsung: Convert exynos-chipid driver to use
 the regmap API
To: Sylwester Nawrocki <snawrocki@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_004951_943007_50A20256 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org, vireshk@kernel.org,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jon Hunter <jonathanh@nvidia.com>, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, pankaj.dubey@samsung.com,
 linux-tegra <linux-tegra@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 20 Aug 2019 at 23:38, Sylwester Nawrocki <snawrocki@kernel.org> wrote:
>
> On 8/20/19 21:37, Krzysztof Kozlowski wrote:
> >>> diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
>
> >>> @@ -51,29 +48,24 @@ static const char * __init product_id_to_soc_id(unsigned int product_id)
> >>>   int __init exynos_chipid_early_init(void)
> >>>   {
> >>>        struct soc_device_attribute *soc_dev_attr;
> >>> -     void __iomem *exynos_chipid_base;
> >>>        struct soc_device *soc_dev;
> >>>        struct device_node *root;
> >>> -     struct device_node *np;
> >>> +     struct regmap *regmap;
> >>>        u32 product_id;
> >>>        u32 revision;
> >>> +     int ret;
> >>>
> >>> -     /* look up for chipid node */
> >>> -     np = of_find_compatible_node(NULL, NULL, "samsung,exynos4210-chipid");
> >>> -     if (!np)
> >>> -             return -ENODEV;
> >>> -
> >>> -     exynos_chipid_base = of_iomap(np, 0);
> >>> -     of_node_put(np);
> >>> -
> >>> -     if (!exynos_chipid_base) {
> >>> -             pr_err("Failed to map SoC chipid\n");
> >>> -             return -ENXIO;
> >>> +     regmap = syscon_regmap_lookup_by_compatible("samsung,exynos4210-chipid");
> >>> +     if (IS_ERR(regmap)) {
> >>> +             pr_err("Failed to get CHIPID regmap\n");
> >>> +             return PTR_ERR(regmap);
> >>>        }
> >> Following this change, I am now seeing the above error on our Tegra
> >> boards where this driver is enabled. This is triggering a kernel
> >> warnings test we have to fail. Hence, I don't think that you can remove
> >> the compatible node test here, unless you have a better way to determine
> >> if this is a samsung device.
> >
> > Right, this is really wrong... I missed that it is not a probe but
> > early init. And this init will be called on every board... Probably it
> > should be converted to a regular driver.
>
> I'm also inclined to have it converted to a regular driver.  We already
> have "exynos-asv" driver matching on the chipid node (patch 3/9).
> The ASV patches will not be merged soon anyway, all this needs some more
> thought. Krzysztof, can we abandon the chipid patches for now? Your
> pull request doesn't appear to be merged to arm-soc yet. Sorry about
> that.

Yes, let's abandon the pull request and rework the concept.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
