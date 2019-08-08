Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BDB8615C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0IjXyay0xWmmLWjWgnJw0q0oO5zWZP6xIxzDklLTXU=; b=i5QeKTqv2P7gX0
	lNo5iRcdWf38z1ed2iOG3ONjZGhd8C+2n2Yow1oML0hXo6LwuUodlDhymC9+WdZCYfvbhYFsAB1YL
	PZoi89gDrt+Lc5cRnKhbuQIBqSA7+kqroEZpZDFVw+EnerKYz7EOafV42fOQgOD0P8BdhlYO8WfWN
	8cvT6kLd0mt+QMOX2gBZIqFI6N3ImcWofYTq1AxZPJu83ogFkKKyQZXhB/sF56ySMAyZFLqtSqoml
	oE49OaYZDuuJTqOU8xVwgkhUrTXVv+UCmsb3g4mQbKgGzi0gcvQ67pAl4BzrcGNxbrtjM0i2bkjWW
	6ZNJNtFZPNswr8WaoZWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhCT-0002PB-Mw; Thu, 08 Aug 2019 12:07:21 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhCF-0002OH-5d
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:07:09 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190808120705euoutp017a4edf04a8215c960f8d2882e26a3984~48SgjZN0l2553525535euoutp01W
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  8 Aug 2019 12:07:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190808120705euoutp017a4edf04a8215c960f8d2882e26a3984~48SgjZN0l2553525535euoutp01W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565266025;
 bh=wTw/zSeiLhrpgMAmruYSw68EDrMJ/8vKBiwL047PITk=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ZD9Qby7HYzK2lC/Vjog5BsNSIQok+U2a79R4NfUYZ5OVWLZfcwlUnx0f647kw6yUO
 Knw+x+gXeRGmB+G9KZ8qdxXpn2yQCHWxWWnK5uDRw08HrL19Fzb/m/8vMc03shMpl7
 Y61oYV36bxW4+HvjPLjyHP+iDmbVJ8zRmUpIuCUs=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190808120704eucas1p27aa37a816849c9af2f5fddc64eccffdc~48Sf44cAI2249122491eucas1p2O;
 Thu,  8 Aug 2019 12:07:04 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 2E.16.04469.8601C4D5; Thu,  8
 Aug 2019 13:07:04 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190808120703eucas1p1a79a8e2eab56201d5bdf16bf674302db~48SfLFaJE1416214162eucas1p1k;
 Thu,  8 Aug 2019 12:07:03 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190808120703eusmtrp1b9096581da07a64626585cf295b0c250~48Se8jPPA2071120711eusmtrp1T;
 Thu,  8 Aug 2019 12:07:03 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-0e-5d4c10681521
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A0.37.04166.7601C4D5; Thu,  8
 Aug 2019 13:07:03 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190808120702eusmtip140fc4db0fc50f1d5d9b94f81dfd5dc16~48SeYg4pt0142001420eusmtip13;
 Thu,  8 Aug 2019 12:07:02 +0000 (GMT)
Subject: Re: [PATCH v2 1/9] soc: samsung: Add exynos chipid driver support
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <b3a31424-84ec-63d7-16ca-26333ad12123@samsung.com>
Date: Thu, 8 Aug 2019 14:07:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfLBif-=09B9jZ3qN1kWdTAcrBQZGvZ+A-MUifXK4si9Q@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRT2t3vv7nVs+nNaHuyFQ+wB+YCKC4a9ySzQiKAUqVte1NymbGpZ
 gVpoapqilY+MNJVsEepKDcWQOZ0mKdoyQXyhZQ8NUsPMV5tXyf++c77vfOd8cBhC3kC5MBHq
 GF6j5pQKsYSsbZ3r3B2OT4V4VbVI2er8Sop9Yuyk2KzRHwTb1VVFs/rRXor9UF8kZqczjYjN
 73orYl8aB2j2ac0MzSY3Gmn21XCr+KDUT69LE/u9Kkvwu/dah/ym9VsDySDJ/lBeGRHHazx9
 L0rCsxpzyegs6lr6XLEoEZWR6ciWAbwH3s0lEelIwshxBYLucTNtJeR4BsHQC3uBmEaQ9t6A
 1iZyar6JBOIZgorqMVooJhE01d21MAzjiP2hPFljHXDCO+HT4ixlxQQuJWDq8V4rFmNvyGy5
 h6xyGfaFFiNjbZPYDXQl6SvyDfgcTA03r2AZdoD2grGVq23xaTAWlJOCpTPcmnm+ar8N6iaL
 VtIA7qVhxNhPWP0BH4WRJGfhfkf4bnpNC3gzdORmkIL+NoKMhn5aKLIt6U3Fq4l9oNnUTVmN
 CEuYynpPoX0I+trGKMHfDvomHYQb7CCnNm91rQxSU+SC2g3mdXkiAbvA3bFlMhspCtclK1yX
 pnBdmsL/e4sRqUPOfKxWFcZrvdX8VQ8tp9LGqsM8Lkep9MjyUh1Lpqk36HfPJQPCDFJIZdFt
 J0PkFBenjVcZEDCEwkk2GHciRC4L5eKv85qoC5pYJa81oE0MqXCW3bAZDpbjMC6Gj+T5aF6z
 xooYW5dE9ODAuFl/7Ka9wTPz/N+ofWX2W45zgXUTf5ruyMx5E5CAvCIYLmDRN7gqxWZqhzRI
 fNjO4+yR0T5mY4pKmbFQWtD+sGvB33VWaTY1Lie5Gjzc08Rmu5yf24dCl5PuLw18vPLrc1NJ
 qddgUOrwsa9nHmkCRuZyp0skkV98jqrn3XsUpDac895FaLTcP8VQrehOAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPIsWRmVeSWpSXmKPExsVy+t/xu7rpAj6xBrObJCw2zljPajH/yDlW
 i/7Hr5ktzp/fwG6x6fE1VovLu+awWXzuPcJoMeP8PiaLtUfuslss2vqF3aJ17xF2i80PjrE5
 8HhsWtXJ5rF5Sb1H35ZVjB6fN8kFsETp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvH
 WhmZKunb2aSk5mSWpRbp2yXoZfTvncxS0M9a0fVzAVMD4xKWLkZODgkBE4lJW18ydTFycQgJ
 LGWUeLLuEHMXIwdQQkpifosSRI2wxJ9rXWwQNa8ZJZ5fuMgEUiMs4CWxtLUIpEZEQFPi+t/v
 rCA1zAKLmSUurJ/PDtHQwSTRPBVkAycHm4ChRO/RPkaQZl4BO4mjRzhAwiwCKhKrFnaxgtii
 AhESh3fMYgSxeQUEJU7OfAJ2KKdAoMSRmUvBbGYBdYk/8y4xQ9jiEk1fVrJC2PIS29/OYZ7A
 KDQLSfssJC2zkLTMQtKygJFlFaNIamlxbnpusaFecWJucWleul5yfu4mRmBkbjv2c/MOxksb
 gw8xCnAwKvHwFpzwjhViTSwrrsw9xCjBwawkwnuvzDNWiDclsbIqtSg/vqg0J7X4EKMp0HMT
 maVEk/OBSSOvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVANjRuS0
 ihWtOkdz1HSZ3aZJKC7f/+a8/0PTgD1p61+pncrKDpdMVA97o6wX+enVqw0/krwz2Sf9Ubr2
 6PHxko49UQtu1rxMSvgWsU7X2f9MVzK/1oSM7eJL2iaZehVKRC+e+7j9YKz6zSSzXpvPJwvv
 LPw8Zw3DkvU3FbjeTtGQ2HI2peTcwuaVSizFGYmGWsxFxYkA9u7/3OICAAA=
X-CMS-MailID: 20190808120703eucas1p1a79a8e2eab56201d5bdf16bf674302db
X-Msg-Generator: CA
X-RootMTR: 20190718143127eucas1p13b1e2c98d270140a87f09562ef46c9a3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190718143127eucas1p13b1e2c98d270140a87f09562ef46c9a3
References: <CGME20190718143127eucas1p13b1e2c98d270140a87f09562ef46c9a3@eucas1p1.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190718143044.25066-2-s.nawrocki@samsung.com>
 <CAJKOXPfLBif-=09B9jZ3qN1kWdTAcrBQZGvZ+A-MUifXK4si9Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_050707_507857_B611B451 
X-CRM114-Status: GOOD (  11.04  )
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

On 7/23/19 14:57, Krzysztof Kozlowski wrote:
>> diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c

>> --- /dev/null
>> +++ b/drivers/soc/samsung/exynos-chipid.c
>> @@ -0,0 +1,111 @@
>> +// SPDX-License-Identifier: GPL-2.0

>> +#include <linux/io.h>
>> +#include <linux/of.h>
>> +#include <linux/of_address.h>
>> +#include <linux/of_platform.h>
>> +#include <linux/platform_device.h>
>
> Any changes here from my previous comments?

Oops, I tried hard to not miss any of the comments but probably not hard enough.
The two above platform header files will be removed in v3.

-- 
Regards,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
