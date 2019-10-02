Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A131C8D72
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GY8mVJVI6BlBgos5pJ4zjOdQmObbO5xSWRqo6aF0zPY=; b=qaNkh1qTx1T+CP
	xTAqAPSJZSXASOOpvdax2mEuSFWcmFslwc6i8Feat1pYyBDNMTUgVdQ2g165qe2NPyrznqvD+H8f8
	p5TSG9/2dtsf1HNlqacLc/G0WCAzV8by2rzg0F2Gy3Rzbg8ZyrDzDunt986vcXjlA11fcfFacPvjS
	nQtnZcEpB5LboCqgm5lmsgj5ExnpSEWM7Vh5UCmP0AYSvmGEAi1Gm4rnH4rYG09Rm6QiVflzvUvuv
	IqIdVxprxve2CKsGxhx6rpRZbxU5Jq/Zhn5NEWOvFAIO5y9zy/z+ElQwWOcUBwv6b3M/QslvVNXth
	XzBRBXTkvjO7MzxlDAmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFgxv-0003vX-G0; Wed, 02 Oct 2019 15:54:59 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFgxm-0003ui-FH
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:54:52 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191002155448euoutp02cd1ce11ad3a74e4c909fd0fa86f7df87~J34Cdp-8T3143331433euoutp023
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  2 Oct 2019 15:54:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191002155448euoutp02cd1ce11ad3a74e4c909fd0fa86f7df87~J34Cdp-8T3143331433euoutp023
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570031688;
 bh=dO98rwiJ4tvmdexXBQqD68SKjJaPBN1+ST7RvpER/yg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Rik/3mFaYggaSmisUCEjz6jwDaT5L7pU+idLcipx6RMJhyH/1rTHn+kaev0sFH/6D
 nNX7o8wl1Jv5dA7PJgQd1ErzWjdTsGpAg5VtNm7pXn1db0n6owuOw7OuCo1QCYTbHP
 k7kxbqHVv/j3Yd75EAAL730fUxvAYqR1ozQqSt74=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191002155448eucas1p246e67cfa52a412c3d3e41a8f6bd78b71~J34CDIQjb3055930559eucas1p2X;
 Wed,  2 Oct 2019 15:54:48 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 5B.22.04309.848C49D5; Wed,  2
 Oct 2019 16:54:48 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191002155447eucas1p27fedafa6277bb3fbff62be76ecec61d3~J34BwhW5d2815328153eucas1p2y;
 Wed,  2 Oct 2019 15:54:47 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191002155447eusmtrp1994d135604b7ad804df78150467540fc~J34Bv4hwf1558815588eusmtrp1G;
 Wed,  2 Oct 2019 15:54:47 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-92-5d94c8486127
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 77.35.04166.748C49D5; Wed,  2
 Oct 2019 16:54:47 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191002155447eusmtip2f9fcb187e200c69f7015f72d91c42f9d~J34BOmENe0880708807eusmtip23;
 Wed,  2 Oct 2019 15:54:47 +0000 (GMT)
Subject: Re: [PATCH v4 1/6] opp: Handle target/min/max voltage in
 dev_pm_opp_adjust_voltage()
To: Krzysztof Kozlowski <krzk@kernel.org>, vireshk@kernel.org
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <ada1bb2f-a824-c34e-6561-04a35782a9b8@samsung.com>
Date: Wed, 2 Oct 2019 17:54:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002143310.GA15898@pi3>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJKsWRmVeSWpSXmKPExsWy7djP87oeJ6bEGlz5z26xccZ6Vov5R86x
 WvQ/fs1scf78BnaLTY+vsVpc3jWHzeJz7xFGixnn9zFZrD1yl92ide8RdovND46xOXB7bFrV
 yeaxeUm9R9+WVYwenzfJBbBEcdmkpOZklqUW6dslcGUsfn+EseAKW8XCpp3MDYxbWbsYOTgk
 BEwkFu8P6mLk4hASWMEo8X7XcRYI5wujRN/TN4wQzmdGibttd4E6OME6Vq/9ApVYzijx+Osj
 RpCEkMBbRonzN71BbGGBeIkdkw6wg9giArYSd75OARvLLPCfUeJQ3082kASbgKFE79E+sGZe
 ATuJH3vngW1gEVCReNa8mAnEFhWIkPj04DArRI2gxMmZT1hAbE4BTYlPl06D1TALiEs0fVnJ
 CmHLS2x/O4cZZJmEwCl2ia4Ve5ggznaR+LT6HDOELSzx6vgWdghbRuL05B4WiIZmRome3bfZ
 IZwJjBL3jy9ghKiyljh8/CI4yJiBVq/fpQ8RdpR483w3GyQk+SRuvBWEOIJPYtK26cwQYV6J
 jjYhiGoVid+rpkOdIyXR/eQ/ywRGpVlIXpuF5J1ZSN6ZhbB3ASPLKkbx1NLi3PTUYqO81HK9
 4sTc4tK8dL3k/NxNjMAEdfrf8S87GHf9STrEKMDBqMTD2xA0OVaINbGsuDL3EKMEB7OSCO+l
 9VNihXhTEiurUovy44tKc1KLDzFKc7AoifNWMzyIFhJITyxJzU5NLUgtgskycXBKNTAy7pg2
 I0eSS11d56nM1L4fBw1m6f78LG6i/SGHdcnN9TWdMmWa6zYVnGEXvGxdXad6lt0o+1m62bvA
 fTu+cwW92L/2xU5dn+V9U4TXPZSNj/H7pWcQ3XrTPaI0Zf5CpsMruH7clBRu92g6PvcPC8PL
 2ccep0VYqMlo9SXIMYWof3Gou30vm0uJpTgj0VCLuag4EQC7epL4TAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDIsWRmVeSWpSXmKPExsVy+t/xe7ruJ6bEGvxoMbTYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y27RuvcIu8XmB8fYHLg9Nq3q
 ZPPYvKTeo2/LKkaPz5vkAlii9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX0
 7WxSUnMyy1KL9O0S9DIWvz/CWHCFrWJh007mBsatrF2MnBwSAiYSq9d+Yexi5OIQEljKKHHw
 wGumLkYOoISUxPwWJYgaYYk/17rYIGpeM0q0d25mA0kIC8RL7Jh0gB3EFhGwlbjzdQoLSBGz
 wH9Gia6uw1Ad9xglfvQeZAGpYhMwlOg92scIYvMK2En82DsP7AwWARWJZ82LmUBsUYEIicM7
 ZkHVCEqcnPkErJdTQFPi06XTYDXMAuoSf+ZdYoawxSWavqxkhbDlJba/ncM8gVFoFpL2WUha
 ZiFpmYWkZQEjyypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzAmNx27OfmHYyXNgYfYhTgYFTi
 4W0ImhwrxJpYVlyZe4hRgoNZSYT30vopsUK8KYmVValF+fFFpTmpxYcYTYGem8gsJZqcD0wX
 eSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGC1CLSK/lEy4n5hm
 Z6xU579LtPlJnDULE/uVW8L3/wbvnmmSyXji8XxDjmmKudfyHrR+it7SfW+7u+nBgvqmYouy
 azPkwl9sS6yfNveGqZxKX1D0sw8mBbIZS1jky/ayz9ZwZDylcnfHq8K4+giJ+8Ga7/ebtl6R
 ePleubTsUYmDt6Dil22LlFiKMxINtZiLihMB6R928t8CAAA=
X-CMS-MailID: 20191002155447eucas1p27fedafa6277bb3fbff62be76ecec61d3
X-Msg-Generator: CA
X-RootMTR: 20190910123636eucas1p250ec04901f227b947cc38936563f63b2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190910123636eucas1p250ec04901f227b947cc38936563f63b2
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123636eucas1p250ec04901f227b947cc38936563f63b2@eucas1p2.samsung.com>
 <20190910123618.27985-2-s.nawrocki@samsung.com> <20191002143310.GA15898@pi3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_085450_714091_0BAC897C 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/2/19 16:33, Krzysztof Kozlowski wrote:
> On Tue, Sep 10, 2019 at 02:36:13PM +0200, Sylwester Nawrocki wrote:
>> To be squashed with patch "PM / OPP: Support adjusting OPP voltages
>> at runtime".
>>
>> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
>> ---
>>
>>  drivers/opp/core.c     | 10 ++++++++--
>>  include/linux/pm_opp.h |  3 ++-
>>  2 files changed, 10 insertions(+), 3 deletions(-)
>
> I'll take the ASV driver via samsung-soc but I see it depends on this
> one.  Please provide me a stable tag with it or an Ack.

There is further dependency on patch 
"[PATCH v4 6/8] PM / OPP: Support adjusting OPP voltages at runtime"
https://lore.kernel.org/linux-arm-kernel/1565703113-31479-7-git-send-email-andrew-sh.cheng@mediatek.com

Viresh, what are your plans WRT to those patches?

-- 
Thanks,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
