Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5418129D2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 05:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1s6LnEExIs0AncMEX8i457fUrMrR2E0ddfUxX8NX5/0=; b=heXM4HnBq1Q8qU
	cBuhF1zAYpHTasuWOobRHGjywFbXit/sQeuOHe/BVVER4SdrppHWPCU24IqPquvLlAePbdKSFcUgS
	MvbtDmLZR8n9YDGwLMeilSJ/0qWnA84yCGzZLis3/Q1f2EwVEpbbmanBxH0fqgOuKBnFz99Bykgt+
	HwKDAEsyTIyPYRLbehltCEt/RTi4TOScJsu4WASIXNDDBPb0SwCt5c+a6HYfc51A7cdjELO7+R7Bk
	Y7sReArxHCavdnIFOEhFCn+8GFDUd5RgFli01wYu8ZV//vb4Zx1eNf5Kp26TW8hq7P6YVfenrNFxn
	OxM1V2a1OjFFZSrm96iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijbNB-0005oX-9M; Tue, 24 Dec 2019 04:00:41 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijbN0-0005nc-9X
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 04:00:32 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191224040023epoutp047d7c923a6dc9e369e18473b37fce0fa9~jMq9zr27W2055420554epoutp04b
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 04:00:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191224040023epoutp047d7c923a6dc9e369e18473b37fce0fa9~jMq9zr27W2055420554epoutp04b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1577160023;
 bh=uQY0Ejr1lqxO3NWqbSaO04+QA2XF/w19ImMi7FAHKMo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Z971ftgfB69YtWGg0tqIu42m/zVgvZ1PXCvDV0EYDnjpyznUPHMJAIoTXQDe3+aIC
 lyZunAIQw+SYamFYR6QRrjsGRwQGKRHSL42BFqJq1k3ZBoauPCXW+LH0V70bJPn4rI
 WJtZ2dl+SeuOBnvwZTvhZll225yQz4BkrutMQd8k=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191224040022epcas1p48e4d6cb225f0cbdb5c607610ede80378~jMq88pPbX1759517595epcas1p49;
 Tue, 24 Dec 2019 04:00:22 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.156]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47hjDN0B7KzMqYkZ; Tue, 24 Dec
 2019 04:00:20 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 CF.65.48498.35D810E5; Tue, 24 Dec 2019 13:00:19 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191224040018epcas1p45d9c176d204a753f410567406e6be508~jMq5TnVLL1598815988epcas1p4Q;
 Tue, 24 Dec 2019 04:00:18 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191224040018epsmtrp1784239067cb376af17824518732bb54e~jMq5Sweos3130831308epsmtrp16;
 Tue, 24 Dec 2019 04:00:18 +0000 (GMT)
X-AuditID: b6c32a36-a3dff7000001bd72-03-5e018d53b1fa
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 96.BE.10238.25D810E5; Tue, 24 Dec 2019 13:00:18 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191224040018epsmtip2294363190d25eeb29d81905ab27d77a0~jMq5GSuJi2529525295epsmtip2r;
 Tue, 24 Dec 2019 04:00:18 +0000 (GMT)
Subject: Re: [PATCH] PM / devfreq: exynos-bus: Add error log when get event
 fails
To: Yangtao Li <tiny.windzz@gmail.com>, myungjoo.ham@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, krzk@kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <7230b556-7a96-14d1-ed22-43b5a6cd5a71@samsung.com>
Date: Tue, 24 Dec 2019 13:07:05 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20191223191923.10450-1-tiny.windzz@gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SeUgUcRTH++3szo7i1K/tem1RNtEleIzb2lhaQQdLSUhSUdTaoIO7uFcz
 u9LxR3ba5RFR2JIdZlEWKCoeZRm2UYblRSGKYJhRVlZ2Sdu1s2Pkf5/f+37f7733+z2K0JWR
 esrqcAuig7cxZKi6+v6CyMiUXGSOqe9P4PL73hJcS0u5lnuy/52Wq+h7ruE6bp0juc+5PsQV
 ttxVcd37rpFckb+AXB5iqvP2aE0VpUdJU2XJXlNeVSkyfa6YkazZkplgEfh0QQwXHGnOdKsj
 I5FZm5K6ItUYF8NGsvHcIibcwduFRGZlUnLkaqst0A8TnsXbPIFQMi9JTPTSBNHpcQvhFqfk
 TmQEV7rNFe+Kkni75HFkRKU57YvZmJhYY8C4PdPSVdOmdQ3RO/9cfYCykS/0GAqhAC+Eyu5h
 9TEUSulwLYKhwQ8q5TCEYKC5eUT5hqC48pP6X0rZlTZCZh2+g6A2L1oxfUBQ72/XyMIEnAIN
 v7qRLEzE2QhKfvmCVxH4EIKiVn/QReIIaHjdSco8Ds+CZ8N9gQyKovFSqPkeL4fVeA5cHGpD
 Mk/CG6Gp+mCQaTwems6+DHYUgpdATs+rIBN4CnS9vKBSeCbUvD9HyHUBH9DC19/5IyOshIO1
 wyM8AQYeVmkV1sOb/MMjvAeuN/lIJfkIgqqGVo0iGKDhyimV3CiBF0DZrWglPAvq/EVIKTwW
 Br+e0MgWwDQcOaxTLLOho7dHpfBUuJxzlCxAjHfUON5RI3hHjeD9X+wiUpeiyYJLsmcIEuuK
 Hf3dFSi4rBFxtaj4aVIjwhRiwujy+2PMOg2fJe2yNyKgCGYifUNEZh2dzu/aLYjOVNFjE6RG
 ZAy89klCPynNGVh9hzuVNcYaDAZuIRtnZFlmCk0Nt23T4QzeLWQKgksQ/+WpqBB9NlpXYtx8
 XO1Z1uU/nTswds9t1bT8F68GzpbF21eTc27WrOkvmBm1Y9q28hwmqniyGHEvs/DRKnremUvH
 k75/sXo6qgdTDFv1iWFnwtYX9JPW9o+9KC/W96OzaNPjn6cfbDT3L+4Js8xVn2ec68UD5vrS
 x3nL6pqzet/Nn76hvevGhU23GbVk4dkIQpT4v0r0Cy/CAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFIsWRmVeSWpSXmKPExsWy7bCSvG5QL2OcQedGHYv+x6+ZLc6f38Bu
 cbbpDbvFpsfXWC0u75rDZvG59wijxYzz+5gsbjeuYLOY+3sCmwOnx85Zd9k9Nq3qZPPYvKTe
 o2/LKkaPz5vkAlijuGxSUnMyy1KL9O0SuDJubb/IXvCJt+L/sqOMDYxHuLoYOTkkBEwk1i+9
 yNzFyMUhJLCbUWLDs042iISkxLSLR4ESHEC2sMThw8UQNW8ZJX7c3cgMUiMsECyx/+9tRpCE
 iEADo8Tsc+fAHGaBVkaJR9sXsEC09DFK/Fo2ix2khU1AS2L/ixtgK/gFFCWu/njMCLKCV8BO
 Yvt3S5Awi4CqxIJPFxlBbFGBMImdSx4zgdi8AoISJ2c+YQGxOQWsJdrvPgOzmQXUJf7Mu8QM
 YYtL3HoynwnClpfY/nYO8wRG4VlI2mchaZmFpGUWkpYFjCyrGCVTC4pz03OLDQsM81LL9YoT
 c4tL89L1kvNzNzGCY0xLcwfj5SXxhxgFOBiVeHg3HGaIE2JNLCuuzD3EKMHBrCTCu7qIMU6I
 NyWxsiq1KD++qDQntfgQozQHi5I479O8Y5FCAumJJanZqakFqUUwWSYOTilgSL5psjJK4b31
 VOJQkcf/iN/Z09YkeTZ+KbPbZvh30ZreeOmHKnl2n+7JaLyf8vnekeuzrn15t9JI6fQXbatZ
 4pFOrRnWZ6ouFZxn32Qt/8eyo+aVxd5A8fOhK9hLfNe2iGrtCyrmebBE5YPUNcu/n4waL2s+
 zz2vt3X+lzVH9x5RWHmyfvusXUosxRmJhlrMRcWJAOkiIgytAgAA
X-CMS-MailID: 20191224040018epcas1p45d9c176d204a753f410567406e6be508
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191223191928epcas1p128d39bb875b8654d61ae21364e466ec7
References: <CGME20191223191928epcas1p128d39bb875b8654d61ae21364e466ec7@epcas1p1.samsung.com>
 <20191223191923.10450-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_200030_817395_DD9A9383 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I think that you better to use 'devfreq-event' instead of just 'event'
as following:

PM / devfreq: exynos-bus: Add error log when fail to get devfreq-event

On 12/24/19 4:19 AM, Yangtao Li wrote:
> Adding an error log makes it easier to trace the function's error path.
> Because the error code may be rewritten on return, print error code here.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/devfreq/exynos-bus.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
> index 948e9340f91c..634d63fd00ea 100644
> --- a/drivers/devfreq/exynos-bus.c
> +++ b/drivers/devfreq/exynos-bus.c
> @@ -126,6 +126,8 @@ static int exynos_bus_get_dev_status(struct device *dev,
>  
>  	ret = exynos_bus_get_event(bus, &edata);
>  	if (ret < 0) {
> +		dev_err(dev, "failed to get event from devfreq-event devices %d\n",
> +			ret);

Better to make it under 80 char as following:

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index f5d4c369c7fb..10f4fa1a0363 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -126,7 +126,8 @@ static int exynos_bus_get_dev_status(struct device *dev,
 
        ret = exynos_bus_get_event(bus, &edata);
        if (ret < 0) {
-               dev_err(dev, "failed to get event from devfreq-event devices %d\n",
+               dev_err(dev,
+                       "failed to get event from devfreq-event devices %d\n",
                        ret);
                stat->total_time = stat->busy_time = 0;
                goto err;


>  		stat->total_time = stat->busy_time = 0;
>  		goto err;
>  	}
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
