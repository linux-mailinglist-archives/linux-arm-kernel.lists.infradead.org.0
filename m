Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0716C86160
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sv7yW0ss5vz2v9ZZ7Q90D8KFdurqvEW0fdzOmiY8tO8=; b=BXCiygnM1EVUl/
	zfmoxQ8QS3iaugjHdO4RuthnHF9657Jl+24YJA/UuraYjp0a/88j2QUq1sv1+cQjTxT4SNWiSE+NI
	kXvte1smK/qBMvg92fXXD+xaOhXni4AI+z8WVpGnyPevovb6JBLZb7mmkPvkdRy0o/qlq5GphOp4q
	h44Ri7Jci3515DURFaEMPyEnU2guKOpZOueaF2CkoZeeqgUQio+taLtcL2luKhnp/M34l6hkIxM6K
	TXYnFsBy+YhqhzOTQAI87bYzGKOal/x8CdawjZoXoBNM67gfYI6ZXIKlUpNMnZOPwOCbm3o6AE4rR
	MN/YS7vBSR1ZmFEaNGbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhCj-0002ar-R9; Thu, 08 Aug 2019 12:07:38 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhCQ-0002Vp-RJ
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:07:20 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190808120717euoutp0165478f8f5a7ddb95dc78803adfec82f3~48SsCfa872552925529euoutp01i
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  8 Aug 2019 12:07:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190808120717euoutp0165478f8f5a7ddb95dc78803adfec82f3~48SsCfa872552925529euoutp01i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565266037;
 bh=i8JGwppC3HzczEgBCKedSj/ArWZ6Yk5+D5tGqqs19EY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=D9XZBCMiatOhRnT8eu5I3jljotJEzooPefgvXb1kbfFBSdgFls3kpYYzkDiORf5tC
 vTPqDFDRFDFLbUGGOJ3KEONov3RMxC3R9HFxFqzDeWexlaZpBHCIQYx/JFBVzKg2+W
 k04BcE8eJsoHj7J4KuA/zi+UVfYedvf8uZ3C+Q1o=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190808120716eucas1p24f95bc266056befb0166718e1f6927ec~48SrW0Hrt1079610796eucas1p2f;
 Thu,  8 Aug 2019 12:07:16 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 70.B6.04374.4701C4D5; Thu,  8
 Aug 2019 13:07:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190808120715eucas1p2cb283e1492099f487aa15134de10834f~48SqSneGL0329003290eucas1p2B;
 Thu,  8 Aug 2019 12:07:15 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190808120715eusmtrp189a4622e9026786067b925c35308545a~48SqETiby2071120711eusmtrp1c;
 Thu,  8 Aug 2019 12:07:15 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-0b-5d4c1074bbca
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C6.37.04166.3701C4D5; Thu,  8
 Aug 2019 13:07:15 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190808120714eusmtip21c3ee73d1a4b1879ca4996da685be688~48Spg1Qce2980729807eusmtip2j;
 Thu,  8 Aug 2019 12:07:14 +0000 (GMT)
Subject: Re: [PATCH v2 2/9] soc: samsung: Convert exynos-chipid driver to
 use the regmap API
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <dc34402e-6e94-09e7-414d-10f87beb3e7c@samsung.com>
Date: Thu, 8 Aug 2019 14:07:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfLPjmjgX01UAyu_=7etUO1G7osMQDmyHVBNxF2Sdh=yA@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHKsWRmVeSWpSXmKPExsWy7djPc7olAj6xBquvyVtsnLGe1WL+kXOs
 Fv2PXzNbnD+/gd1i0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdYtPULu0Xr3iPsFpsfHGNz
 4PHYtKqTzWPzknqPvi2rGD0+b5ILYInisklJzcksSy3St0vgynjz5TRjwRb+ipXXbrA3MK7i
 6WLk5JAQMJFYcaOXHcQWEljBKNG706eLkQvI/sIosXjPanYI5zOjxIvNE5lgOrb072GFSCxn
 lFj26iBU1VtGiek995lBqoQF4iRe73gL1iEioClx/e93VhCbWWAxs8SnuaYgNpuAoUTv0T5G
 EJtXwE7iVt9RsHoWARWJ34u7WUBsUYEIiU8PDrNC1AhKnJz5BCzOKRAocaL/ABPETHGJpi8r
 oebLS2x/O4cZ5CAJgUvsEpvezIQ620XixKELrBC2sMSr41vYIWwZidOTe1ggGpoZJXp232aH
 cCYwStw/voARospa4vDxi0DdHEArNCXW79KHCDtKbOroYAcJSwjwSdx4KwhxBJ/EpG3TmSHC
 vBIdbUIQ1UB/rZoOdY6URPeT/ywTGJVmIXltFpJ3ZiF5ZxbC3gWMLKsYxVNLi3PTU4uN81LL
 9YoTc4tL89L1kvNzNzECU9Xpf8e/7mDc9yfpEKMAB6MSD++JU96xQqyJZcWVuYcYJTiYlUR4
 75V5xgrxpiRWVqUW5ccXleakFh9ilOZgURLnrWZ4EC0kkJ5YkpqdmlqQWgSTZeLglGpg3LAz
 forWLCN21Vlltz3bjWLluB7MFZrmtDE5n3XqTPm7+n9jBLv3CCf2zPpT9HfZH9WcclWXGX8P
 7TCrf1vZWvtu4YXtaS4tO6bfvK3euzu7QkHtQtGanR+LmXa6qP9im9QhFqws36N2t/d85fqC
 nUlbfsS1WR+d92xXyhSuj7YrC9kPvVu9WomlOCPRUIu5qDgRAAa+xw9RAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPIsWRmVeSWpSXmKPExsVy+t/xe7rFAj6xBtd3i1hsnLGe1WL+kXOs
 Fv2PXzNbnD+/gd1i0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdYtPULu0Xr3iPsFpsfHGNz
 4PHYtKqTzWPzknqPvi2rGD0+b5ILYInSsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaP
 tTIyVdK3s0lJzcksSy3St0vQy3jz5TRjwRb+ipXXbrA3MK7i6WLk5JAQMJHY0r+HtYuRi0NI
 YCmjxMWV7WxdjBxACSmJ+S1KEDXCEn+udbFB1LxmlDj+eRNYjbBAnMT8GxkgNSICmhLX/34H
 m8MssJhZ4sL6+ewgCSGBDiaJq60mIDabgKFE79E+RhCbV8BO4lbfUSYQm0VAReL34m4WEFtU
 IELi8I5ZUDWCEidnPgGLcwoESpzoPwBWzyygLvFn3iVmCFtcounLSlYIW15i+9s5zBMYhWYh
 aZ+FpGUWkpZZSFoWMLKsYhRJLS3OTc8tNtQrTswtLs1L10vOz93ECIzMbcd+bt7BeGlj8CFG
 AQ5GJR7eghPesUKsiWXFlbmHGCU4mJVEeO+VecYK8aYkVlalFuXHF5XmpBYfYjQFem4is5Ro
 cj4waeSVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamC0nLKAk/m/
 TmqfONeZnTssenZEWqZzNkj892/MZGyY67Gt+q+kxZGDi+IVcnnlv7gpdn8orNNkL71x4VB2
 999VMzzWFaVraWqYzVj3sv8jz/IguTcfulpz9Ls8Y/P352s9vRnZsvNl/Y5sEZEVD9nkPN9e
 l/hYeMTNckVqUPCe9X3inxVvlCqxFGckGmoxFxUnAgAxJUiO4gIAAA==
X-CMS-MailID: 20190808120715eucas1p2cb283e1492099f487aa15134de10834f
X-Msg-Generator: CA
X-RootMTR: 20190718143128eucas1p2677ae16d229dddcd9a0db8084f0da5cf
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190718143128eucas1p2677ae16d229dddcd9a0db8084f0da5cf
References: <CGME20190718143128eucas1p2677ae16d229dddcd9a0db8084f0da5cf@eucas1p2.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190718143044.25066-3-s.nawrocki@samsung.com>
 <CAJKOXPfLPjmjgX01UAyu_=7etUO1G7osMQDmyHVBNxF2Sdh=yA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_050719_349585_688A2115 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com,
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, vireshk@kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/23/19 15:01, Krzysztof Kozlowski wrote:
> On Thu, 18 Jul 2019 at 16:31, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>>
>> Convert the driver to use regmap API in order to allow other
>> drivers, like ASV, to access the CHIPID registers.
>>
>> This patch adds definition of selected CHIPID register offsets
>> and register bit fields for Exynos5422 SoC.
>>
>> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>

>> diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
>> index 78b123ee60c0..594b00488013 100644
>> --- a/drivers/soc/samsung/exynos-chipid.c
>> +++ b/drivers/soc/samsung/exynos-chipid.c
>> @@ -9,18 +9,16 @@
>>   */
>> @@ -53,29 +51,24 @@ static const char * __init product_id_to_soc_id(unsigned int product_id)
>>  int __init exynos_chipid_early_init(void)
>>  {

>> +       regmap = syscon_regmap_lookup_by_compatible("samsung,exynos4210-chipid");
>> +       if (IS_ERR(regmap)) {
>> +               pr_err("%s: failed to get regmap\n", __func__);
> 
> Other places do not use __func__ prefix so make it consistent. Add it
> in patch #1?

I would rather drop the function name prefix here, there should be 
no problem in finding those error messages with grep. I'll just make
the above log a bit more specific.

>> +               return PTR_ERR(regmap);
>>         }

>> diff --git a/include/linux/soc/samsung/exynos-chipid.h b/include/linux/soc/samsung/exynos-chipid.h
>> new file mode 100644
>> index 000000000000..25359d70d617
>> --- /dev/null
>> +++ b/include/linux/soc/samsung/exynos-chipid.h
>> @@ -0,0 +1,48 @@

>> +#define EXYNOS_CHIPID_REG_PRO_ID       0x00
>> + #define EXYNOS_SUBREV_MASK            (0xf << 4)
> 
> " #define" is unusual syntax. I think not used anywhere else. Stick to
> regular one.

Indeed it's almost not used anywhere, I will drop those leading spaces.

git grep "^\ #define" *.[ch] | wc -l

-- 
Regards,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
