Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF5C6BDF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 16:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6CTt3bQ/ZHgKHpw89LuQcmNynQ1l3ddNuOlfucnvNVY=; b=I912FOV6J8NthI
	/ql8fs0fnW/tGv2KS/4jJ0ernIc/EzpyK6Bo5Io1k778beumaCwx/UiYWVIus4HEcL4aKwbSY4WXy
	OOldnuc57kThMNG+Xmnp6CGQVxiFiLqzTFTOyojO45NK1z8aEvV6tEUVAU/YIsTD3KACeBvQRTgXg
	ZhkYi5tlQdLFeQs67jNyEaSqOzQUIB8z6jFiCxFrMGLWfZROjrGoL3YMnfJnLR7eE5yLhbaWl0wBT
	9M+yvSlSwfvBX4h7lDVTVPLYJ71hbLJvnUUURTRAKKQCI9GZEwhrFZxI3gTyrg3Nac4Fd5DGwyoww
	TadJJFqeGIaK4HhzLOwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnki9-0000NN-W1; Wed, 17 Jul 2019 14:15:14 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnkhw-0000D9-0O
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 14:15:01 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190717141458euoutp02d46664a35f205f0b102da94f3b958c99~yN14dT52b1441314413euoutp02Y
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 14:14:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190717141458euoutp02d46664a35f205f0b102da94f3b958c99~yN14dT52b1441314413euoutp02Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563372898;
 bh=fNdvBycqAzOsl6BRjfW8bEg4vOX4q3GZdaaLfQQ1784=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=tpdvtAXVZ5S1tm9BSWIhB/0HdF9nCiTtyGAlBO788Ho8Tki7Kh+mpWD6yD+dfB/JE
 7scWmm0qPCSc7vQFF8UUltAt5GIpshsiQ/0K96dKTSgvSGTsZGPYElxVW4SY6P33tE
 aQjmXqbCHCcXDHqvT1VdNqEgVz0y97UAVLH2xM+0=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190717141457eucas1p18e06f7dfb9e56fc44f64ac71ef517c9c~yN13u7C9t2448224482eucas1p1s;
 Wed, 17 Jul 2019 14:14:57 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id C7.A7.04377.06D2F2D5; Wed, 17
 Jul 2019 15:14:56 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190717141456eucas1p188c4893c75ce04a9c1c10d41ecd9eef5~yN13CPcRo3260032600eucas1p1M;
 Wed, 17 Jul 2019 14:14:56 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190717141456eusmtrp17d1d73dbd2e54903ada6b09075072a25~yN13BgcCN1477414774eusmtrp1n;
 Wed, 17 Jul 2019 14:14:56 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-ae-5d2f2d60d555
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id CB.80.04140.06D2F2D5; Wed, 17
 Jul 2019 15:14:56 +0100 (BST)
Received: from [106.120.51.18] (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190717141455eusmtip1dd79072acb7a012c06e6ad5b0825b8a2~yN12UtBET2565325653eusmtip1H;
 Wed, 17 Jul 2019 14:14:55 +0000 (GMT)
Subject: Re: [PATCH v2 1/4] opp: core: add regulators enable and disable
To: Viresh Kumar <viresh.kumar@linaro.org>
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
Message-ID: <237a3f15-7a44-01ce-5477-be94092295ec@partner.samsung.com>
Date: Wed, 17 Jul 2019 16:14:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190716100539.4uqelbxqz7bmtmea@vireshk-i7>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTURzHPbv37l5Hq+PU/JVhMRBMUSuiTk8KLG4PwqCiB6IrL1o+2Zxm
 QZmllmlqD3RLpqWVmJaPUrPSsuUIX4gyHxUNp1mWUTrBIiznNfK/z/n9Pr9zfl84HKX4xCzm
 jkfHCepoVaRSKqNrmn+2+4b4+getyH69gVTmPWRIj22YIQXGdoZkWb9QpKOjgiVtyV9ZUmU1
 M6SrPl9KxjONiOR1NEhIufE9S+70dErI23MlUvJ1sk1CUp4bWTJlrqRJ5QRPqi3N0i0KvsxQ
 hviq0ktS/p35mZSvLj7LX3lUinhTb62EH6/yCGQPyzaGCpHH4wW1/+YQWfhor46OTXM9ef7J
 BJuEfuB05MgBXg1ZDzKQnRW4BMHHbI90JJtmG4LLTROs2BhH8PvDmn8DxW0GRpTuIdCPdM8e
 RhGU97yU2i1nzIOpe3iaOc4Fe8PnPsHuUPgnDRVdlTO3SvFaGKhtldhZjrdDkjllZpbGnpBb
 NDzjuOKDMGZ5xYiOE7zRDdJ2dsTroCHXPMMUdoP+wQKJyEuhdjSfsj8GOIeDX521tLh2ADR+
 n2JEdoYR0yNW5CXQci1j1kmAoVtXWHH4AgJL2o/ZxgZ4Zepk7GkovBwe1vuL5a1w9eZdZC8D
 ng+9o07iDvPhak0uJZblcDFVIdq+YPjTOruBO6T/ecBkI6V+TjL9nDT6OWn0/98tRHQpchO0
 mqgwQbMqWkjw06iiNNroML9jMVFVaPr/tUyZbHWo/vfRJoQ5pJwnT1rmH6RgVPGaxKgmBByl
 dJFvmvAJUshDVYmnBHVMsFobKWiakDtHK93kpx0sRxQ4TBUnRAhCrKD+15VwjouT0IH+Hfm7
 87rPb9OWmZ569w/lLpF5ZmSl9oUsHNy1z7D3cXq1S841S/KhCssRsHX0e714ur5v8nHhWmve
 9W0D3TbvnbrN3wTdyNIYh5xS3aaA/daFjXFOEdqaujNxCRLh9JexE7FjYUqj833rnswS/aJT
 45NeJTKXRcFFqT43FtxuDlTSmnDVSm9KrVH9BaPPjJ97AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrDIsWRmVeSWpSXmKPExsVy+t/xu7oJuvqxBo9WSVlsnLGe1eL6l+es
 FvOPnGO16H/8mtni/PkN7BZnm96wW2x6fI3V4vKuOWwWn3uPMFrMOL+PyWLtkbvsFkuvX2Sy
 uN24gs3izY+zTBate4+wW/y7tpHFYuNXD4vND46xOQh5rJm3htFj06pONo871/aweWxeUu/R
 t2UVo8fxG9uZPD5vkgtgj9KzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rez
 SUnNySxLLdK3S9DLeHtjJktBu2hF886v7A2MHwW6GDk5JARMJJacnccKYgsJLGWU2PhNCCIu
 LdF4ejUThC0s8edaF1sXIxdQzWtGieW/Z4I1CAt4SBy/8hwowcEhIqAl8fJmKkgNs8BvFon9
 C89DNTQwSbzcNoEZpIFNwFzi0fYzYFN5BdwkGq61soHYLAKqEtMXP2cHsUUFIiQO75jFCFEj
 KHFy5hMWEJtTwFJi3/RrYDazgLrEn3mXmCFscYlbT+YzQdjyEtvfzmGewCg0C0n7LCQts5C0
 zELSsoCRZRWjSGppcW56brGRXnFibnFpXrpecn7uJkZgzG879nPLDsaud8GHGAU4GJV4eG8o
 6ccKsSaWFVfmHmKU4GBWEuG1/aodK8SbklhZlVqUH19UmpNafIjRFOi5icxSosn5wHSUVxJv
 aGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBcZbPs/c/3HJa8j3vOPm+
 No7be7T93LkuXlutTqO+XhMmlo47c6+lf+x6U2OZaXlIt3uKlKnFEr5Zl2qye1NWXTL/GBhT
 FW/WKTdTZLXVydm3D++wWbc+hutk8fT5PxY09LhcWFh8+X5iQFyXrI16oI5B8sq3bELLbD+5
 vZzQpRe5mVv15L2pSizFGYmGWsxFxYkAmjqHig8DAAA=
X-CMS-MailID: 20190717141456eucas1p188c4893c75ce04a9c1c10d41ecd9eef5
X-Msg-Generator: CA
X-RootMTR: 20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3
References: <20190715120416.3561-1-k.konieczny@partner.samsung.com>
 <CGME20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3@eucas1p1.samsung.com>
 <20190715120416.3561-2-k.konieczny@partner.samsung.com>
 <20190716100539.4uqelbxqz7bmtmea@vireshk-i7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_071500_189964_3273B87E 
X-CRM114-Status: GOOD (  24.92  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 16.07.2019 12:05, Viresh Kumar wrote:
> On 15-07-19, 14:04, Kamil Konieczny wrote:
>> Add enable regulators to dev_pm_opp_set_regulators() and disable
>> regulators to dev_pm_opp_put_regulators(). This prepares for
>> converting exynos-bus devfreq driver to use dev_pm_opp_set_rate().
>>
>> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
>> --
>> Changes in v2:
>>
>> - move regulator enable and disable into loop
>>
>> ---
>>  drivers/opp/core.c | 18 +++++++++++++++---
>>  1 file changed, 15 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
>> index 0e7703fe733f..069c5cf8827e 100644
>> --- a/drivers/opp/core.c
>> +++ b/drivers/opp/core.c
>> @@ -1570,6 +1570,10 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
>>  			goto free_regulators;
>>  		}
>>  
>> +		ret = regulator_enable(reg);
>> +		if (ret < 0)
>> +			goto disable;
> 
> The name of this label is logically incorrect because we won't disable
> the regulator from there but put it. Over that, I would rather prefer
> to remove the label and add regulator_put() here itself.

I will change this and following according to your suggestions and will send v3.

>> +
>>  		opp_table->regulators[i] = reg;
>>  	}
>>  
>> @@ -1582,9 +1586,15 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
>>  
>>  	return opp_table;
>>  
>> +disable:
>> +	regulator_put(reg);
>> +	--i;
>> +
>>  free_regulators:
>> -	while (i != 0)
>> -		regulator_put(opp_table->regulators[--i]);
>> +	for (; i >= 0; --i) {
>> +		regulator_disable(opp_table->regulators[i]);
>> +		regulator_put(opp_table->regulators[i]);
> 
> This is incorrect as this will now try to put/disable the regulator
> which we failed to acquire. As --i happens only after the loop has run
> once. You can rather do:
> 
> 	while (i--) {
> 		regulator_disable(opp_table->regulators[i]);
> 		regulator_put(opp_table->regulators[i]);
>         }
> 
> 
>> +	}
>>  
>>  	kfree(opp_table->regulators);
>>  	opp_table->regulators = NULL;
>> @@ -1610,8 +1620,10 @@ void dev_pm_opp_put_regulators(struct opp_table *opp_table)
>>  	/* Make sure there are no concurrent readers while updating opp_table */
>>  	WARN_ON(!list_empty(&opp_table->opp_list));
>>  
>> -	for (i = opp_table->regulator_count - 1; i >= 0; i--)
>> +	for (i = opp_table->regulator_count - 1; i >= 0; i--) {
>> +		regulator_disable(opp_table->regulators[i]);
>>  		regulator_put(opp_table->regulators[i]);
>> +	}
>>  
>>  	_free_set_opp_data(opp_table);
>>  
>> -- 
>> 2.22.0
> 

-- 
Best regards,
Kamil Konieczny
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
