Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F3C96B8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 23:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJbrvKMlvoQWNlOWabg2U7j96+d91KoOZgQZwSN0k9E=; b=mvwqCblXcPsx8D
	RnB2PkRQSJUsS4ZVDdWJEwNldjvDK1Cje2bUwF9R0cLFN7f+XR0Ps1izFC2GVS0PnsvaVMhqKmhCp
	kY8TDVLCko8nxdN2MhEIb2VbKA7x/bunJNg5D8sv4inJLgN5a2quhZoO3xhDPEuqC6eXfT5kkcCG7
	LJ3XbIlANH27Q+XkSNUEmD7hNe83Zf1DlZo1RzKjxdc+l0GGFcvDCc9SG9tFopIyYFsvfF/6NeqF6
	+gnxmL7TwxGNKHOJDf2u6fjZzr3rKfgdy3Yw3SR/x+WXo5/TjtOQxQ1+6lFsIbXajd0hTIzv7r88w
	AJbPnNb3PEXM2woZiPPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0BpZ-0001HN-Qw; Tue, 20 Aug 2019 21:38:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0BpS-0001H2-L6
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 21:38:11 +0000
Received: from [192.168.0.26] (89-70-52-201.dynamic.chello.pl [89.70.52.201])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC0BF22D6D;
 Tue, 20 Aug 2019 21:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566337089;
 bh=gLlIXUezQ3H0zuhcdhL9pLDm+sYyFfXAb5ejydPRRmo=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=YSKysIziONSdYqDaBp1ouXGTLLHWaQibOh262t4q8PqwcS1xHNYPe/dQwWYeTWl6A
 mVEskQ4pZhKpl0mK5B/28GUIIVpvfdjEH60nAHGv3fSCz434vvwZyCNxJDnDUxhTja
 /1OxRfvJm9udJI/sh3ViWVKapHq8bT4gSwBQ+bvE=
Subject: Re: [PATCH v3 2/9] soc: samsung: Convert exynos-chipid driver to use
 the regmap API
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150852eucas1p2be4c0ab5ec2c079e3daf1af24283b27c@eucas1p2.samsung.com>
 <20190813150827.31972-3-s.nawrocki@samsung.com>
 <b5359603-b337-dcd8-b025-ca7dff5f4a06@nvidia.com>
 <CAJKOXPf597CMx=M2JmSTWe2GzBfcHFefgzSJbJ+njZGp-WfR1A@mail.gmail.com>
From: Sylwester Nawrocki <snawrocki@kernel.org>
Message-ID: <1e428c8e-f4b5-0810-77f9-2c899c040fc7@kernel.org>
Date: Tue, 20 Aug 2019 23:38:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPf597CMx=M2JmSTWe2GzBfcHFefgzSJbJ+njZGp-WfR1A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_143810_736496_389B9295 
X-CRM114-Status: GOOD (  15.79  )
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
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
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

On 8/20/19 21:37, Krzysztof Kozlowski wrote:
>>> diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c

>>> @@ -51,29 +48,24 @@ static const char * __init product_id_to_soc_id(unsigned int product_id)
>>>   int __init exynos_chipid_early_init(void)
>>>   {
>>>        struct soc_device_attribute *soc_dev_attr;
>>> -     void __iomem *exynos_chipid_base;
>>>        struct soc_device *soc_dev;
>>>        struct device_node *root;
>>> -     struct device_node *np;
>>> +     struct regmap *regmap;
>>>        u32 product_id;
>>>        u32 revision;
>>> +     int ret;
>>>
>>> -     /* look up for chipid node */
>>> -     np = of_find_compatible_node(NULL, NULL, "samsung,exynos4210-chipid");
>>> -     if (!np)
>>> -             return -ENODEV;
>>> -
>>> -     exynos_chipid_base = of_iomap(np, 0);
>>> -     of_node_put(np);
>>> -
>>> -     if (!exynos_chipid_base) {
>>> -             pr_err("Failed to map SoC chipid\n");
>>> -             return -ENXIO;
>>> +     regmap = syscon_regmap_lookup_by_compatible("samsung,exynos4210-chipid");
>>> +     if (IS_ERR(regmap)) {
>>> +             pr_err("Failed to get CHIPID regmap\n");
>>> +             return PTR_ERR(regmap);
>>>        }
>> Following this change, I am now seeing the above error on our Tegra
>> boards where this driver is enabled. This is triggering a kernel
>> warnings test we have to fail. Hence, I don't think that you can remove
>> the compatible node test here, unless you have a better way to determine
>> if this is a samsung device.
>
> Right, this is really wrong... I missed that it is not a probe but
> early init. And this init will be called on every board... Probably it
> should be converted to a regular driver.

I'm also inclined to have it converted to a regular driver.  We already
have "exynos-asv" driver matching on the chipid node (patch 3/9). 
The ASV patches will not be merged soon anyway, all this needs some more
thought. Krzysztof, can we abandon the chipid patches for now? Your
pull request doesn't appear to be merged to arm-soc yet. Sorry about
that.

--
Regards,
Sylwester


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
