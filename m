Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB36664550
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 12:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGIfmEVqcVkjIqYFPpSNnwBHpkysToiK8GIastxaLPU=; b=ZGaFJZjLmrdNDx
	fcFNlRbFOB9ciQ+tL34I6A3oTox7dlpUDQqU/Q5teFhgR8OVD0pYt4xX4CEqVvVKVc+eU40svyDCc
	jE/1Y7FQCtoaeCxhVY41iRzM9u+8Y/cCqI0En9NWFIAY2q/DMJOV7RsobXwlwVKt6GDGPJngiwlAx
	/5NyGYnRq8Qg6LBZRo2PgjdexkbNzx+7zl9a3u98rw8tK/8BRtbiq6LF0aGudxNjDjvrCxlCEAcFX
	5Y1pXYjZudsnnxZ6O5USnaGnOd8YPRbjHmaWmU+dlqkmt1okYYE8e/lDZKkRnjUFRQObQuHJz6Zfr
	/lfF8kxJMEqXES6hghAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlA4k-0000CO-Rk; Wed, 10 Jul 2019 10:43:50 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlA4c-0000Bm-5P
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 10:43:43 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190710104340euoutp016838cc43e258cacd685d95a1d9e11a50~wBcZpc4-G2177821778euoutp01B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 10:43:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190710104340euoutp016838cc43e258cacd685d95a1d9e11a50~wBcZpc4-G2177821778euoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562755420;
 bh=DGGSStnE8hfpWYVCDu2TLFZ0Ng6S0e/fEz3/71WaMS4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=PU3zUfUKbTxQGpP/eJNwFTYVWg9HGELEZYYT5xaLwXSXeS+iXV2Xsmrc4H2uW3M8z
 YzljColupHSUvCx0xto5+6flzm6Wng0nbJjGDv0Afrha2smRr25li6NbFW7RVi5Weh
 NPnAESVxcG7uCm7hSTzf04Cu7Rnjf6B5ar0fNy5E=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190710104339eucas1p2b87acc4b58219affc082fce7b280b574~wBcY8NakG2721527215eucas1p25;
 Wed, 10 Jul 2019 10:43:39 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id AB.33.04377.B51C52D5; Wed, 10
 Jul 2019 11:43:39 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190710104338eucas1p1d2047febe63064b119636f3d3937813e~wBcYMPbxF2192621926eucas1p1v;
 Wed, 10 Jul 2019 10:43:38 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190710104338eusmtrp2a14ee9863a89120a79e4597f45456a13~wBcYJi2Ty1066010660eusmtrp2D;
 Wed, 10 Jul 2019 10:43:38 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-63-5d25c15b8a28
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 83.4B.04140.A51C52D5; Wed, 10
 Jul 2019 11:43:38 +0100 (BST)
Received: from [106.120.51.18] (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190710104338eusmtip23e52dc9119a4006f313b1f6cfaa72859~wBcXaYpTL2747527475eusmtip2h;
 Wed, 10 Jul 2019 10:43:37 +0000 (GMT)
Subject: Re: [PATCH 1/3] opp: core: add regulators enable and disable
To: Viresh Kumar <viresh.kumar@linaro.org>
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
Message-ID: <1795603c-686f-dfb5-5982-c836b36dca9c@partner.samsung.com>
Date: Wed, 10 Jul 2019 12:43:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190709054014.o3g4e6gbovrq3vvn@vireshk-i7>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SeUhUURjFu2+b59DIdVT80DamDCxNi5bbghS0zD9GRaAkU436MtExmefS
 AmVRlpPpmIE2hVNkqZNpLriVljppmktSaYvRoIYtaoZTJITW+JL878c55+OeA5enlUOsJx8V
 Gy/oY7UxKk7OVDZPdPqFNnhrAi52uZHSnBKW9NqHWGK2drIkY+ArTbq67stIx5lhGSkb6GHJ
 i9rrHBm/ZEUkp6ueIves72Xkdm83Rd6dLuDI8K8Oipyrs8rIZE8pQ0p/qEm5rZnbrFQX5RYh
 dZkllVP39Tzk1OV5p9TpFRakbnldRanHyxbsku2Tb4oQYqISBb1/4EH54Y6RFCrOLD/a2TfG
 JqNq3oCceMCrobiphDMgOa/EBQjumrNZh6HEdgTna/ZLxjiC/udp3MxF+61vtBTKRzCatVEK
 jSDorXsyHXLF2+CVOf9viOfd8DL4/EZwZGg8wcD9F6UyR4bD66C/qp1ysAJvh1/dhdO3DPaG
 vOxR5GB3HAJt1lxGyrhA69XBaXbC62H04s/ppjT2gLeDZkrihVA1cp2WimbyUJSxSOKtYHlw
 l5LYFb60VMgkngdTNeZ/ehJ8vJkucxQFfBaB7fx3RjI2QlNLN+sYQ2MfKKn1l+QtMJDaRDlk
 wM7wesRFquAMlyuzaUlWwIUUpZT2g9ypdlZiLzBMFbNGpDLNGmaaNcY0a4zp/7s3EGNBHkKC
 qIsUxFWxQtIKUasTE2IjV4Qf0ZWhv9/v2WSLvRrV/g5rRJhHqrkKOLtEo2S1ieIxXSMCnla5
 Kep3LNYoFRHaY8cF/ZED+oQYQWxEXjyj8lCcmGMLVeJIbbwQLQhxgn7GpXgnz2RE37TJXZBn
 in/4q0T6cZpzVdPSO0HBFuOn3aErzw2LvjH6Sbthc9AhYtuQNWH/EuyzNoc0vAwwPzJqAlvT
 MzyMXmGB/rq6vj1vPZMyi3Z+LdQaTYaTY21ON+zv90Ul7t2S8PQa2eWd5usX35P6I2RN3PxT
 hg/d0dlX3IfeLXdvG1Ix4mHtymW0XtT+AbSY9TZ6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLIsWRmVeSWpSXmKPExsVy+t/xe7pRB1VjDb5u1bPYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht9j0+BqrxeVdc9gsPvceYbSYcX4fk8XaI3fZLZZev8hk
 cbtxBZvFmx9nmSxa9x5ht/h3bSOLxcavHhabHxxjcxDyWDNvDaPHplWdbB53ru1h89i8pN6j
 b8sqRo/jN7YzeXzeJBfAHqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9n
 k5Kak1mWWqRvl6CXcfZtG1PBfK6Kc3c+sDYw7uDoYuTkkBAwkTiz+D1zFyMXh5DAUkaJiR1/
 WSES0hKNp1czQdjCEn+udbFBFL1mlDiyZwVYQljAVeLq/OVA3RwcIgJaEi9vpoLUMAv8ZpHY
 v/A8VEMTk8TuYwfZQBrYBMwlHm0/A9bMK+Am8ePiSrA4i4CqxJLp7xhBbFGBCIlJ13ayQNQI
 Spyc+QTM5hSwlHjX/Q3sOmYBdYk/8y4xQ9jiEreezGeCsOUltr+dwzyBUWgWkvZZSFpmIWmZ
 haRlASPLKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMCo33bs55YdjF3vgg8xCnAwKvHwSrSo
 xAqxJpYVV+YeYpTgYFYS4d3nrhwrxJuSWFmVWpQfX1Sak1p8iNEU6LmJzFKiyfnAhJRXEm9o
 amhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoGx+rMsy2Qz1fxn99ncNxel
 vJxexMPtfOhiCfe3y1VPv2z/taMz7UH403N198sZWQ+WRXI0NkZ8aHep/n/jop97d/8vjh0p
 sV4lSjfZpFS6GDi/5iut8zvH9NqLv+7aj3SxI+Zv3wTvENmnkmbc/GzCdgXdO64WFmXTc2PU
 uVpEb2Rc/fF6gYoSS3FGoqEWc1FxIgDuwhf2EAMAAA==
X-CMS-MailID: 20190710104338eucas1p1d2047febe63064b119636f3d3937813e
X-Msg-Generator: CA
X-RootMTR: 20190708141159eucas1p1751506975ff96a436e14940916623722
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190708141159eucas1p1751506975ff96a436e14940916623722
References: <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <CGME20190708141159eucas1p1751506975ff96a436e14940916623722@eucas1p1.samsung.com>
 <20190708141140.24379-2-k.konieczny@partner.samsung.com>
 <20190709054014.o3g4e6gbovrq3vvn@vireshk-i7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_034342_423416_2BD183FC 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09.07.2019 07:40, Viresh Kumar wrote:
> On 08-07-19, 16:11, k.konieczny@partner.samsung.com wrote:
>> From: Kamil Konieczny <k.konieczny@partner.samsung.com>
>>
>> Add enable regulators to dev_pm_opp_set_regulators() and disable
>> regulators to dev_pm_opp_put_regulators(). This prepares for
>> converting exynos-bus devfreq driver to use dev_pm_opp_set_rate().
>>
>> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
>> ---
>>  drivers/opp/core.c | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>>
>> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
>> index 0e7703fe733f..947cac452854 100644
>> --- a/drivers/opp/core.c
>> +++ b/drivers/opp/core.c
>> @@ -1580,8 +1580,19 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
>>  	if (ret)
>>  		goto free_regulators;
>>  
>> +	for (i = 0; i < opp_table->regulator_count; i++) {
>> +		ret = regulator_enable(opp_table->regulators[i]);
>> +		if (ret < 0)
>> +			goto disable;
>> +	}
> 
> I am wondering on why is this really required as this isn't done for
> any other platform, probably because the regulators are enabled by
> bootloader and are always on.

It is not ABI break, it should work with existing DTBs

-- 
Best regards,
Kamil Konieczny
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
