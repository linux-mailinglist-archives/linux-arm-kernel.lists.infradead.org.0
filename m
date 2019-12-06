Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF91114FF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 12:46:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCFXZ8b8QdbScPEIxk1u76BrWiLvO+f1/4N2V1QErKo=; b=L6TLkYR7OMyl3N
	UiaQW68+N/jIIGL2XRYoJ8nkSdNLv9UTjnlo+rBRafNTYP33C0zyxjxka0PcDT8gntp+nxHntqU8n
	4iwLBrwnxTQHSMkTHiwF7Dv3M5ZTPKBYs81GJGc6uNFqFfWC0xyKl8Z/hdoojuAgg+eHjVbxQwhfl
	09o1TN5/nEfLeEB1EF4Pn9VKCEUw8G0mPFQhRe/w2tfAbIY93pP4KIdrD++mwZTqxRivCxB8TTsR9
	2H6CfinPHN3NnUet6Wy3aauFlbbXoGRr5sJsz6TwPqfPsmoXUa0OCJ1iebAjkEWQR6iSgFF1RYAjN
	uH6hePRoXHYT42HsROVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idC4L-0004xR-1m; Fri, 06 Dec 2019 11:46:45 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idC49-0004vV-FJ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 11:46:35 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191206114631euoutp02026a1a8aaf0e6e7daecc5f3f4b0a039d~dxaz__67j3161631616euoutp02L
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Dec 2019 11:46:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191206114631euoutp02026a1a8aaf0e6e7daecc5f3f4b0a039d~dxaz__67j3161631616euoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575632791;
 bh=svjuCCVEXJk6xEMPEM9gCBIhbE25vykclQTcfBA9yTk=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=fowoM1Jnhv1fVdwI+A25kV/kTBvpdJYT9012TiUqs+MLDOZKQ9gSLwHYuO6CbJyJA
 vd+hUGJj6nL9c8/l7toJavDOediMBGqvRX8scIxWLrc3t1Jz2hjdEDyYcgrfJIAITO
 QTWs0G91JiFT6hYYFdnidDW70XzeV3+/CgHS4kaM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191206114631eucas1p1a7fa8fb65a2a33237fb6f23ef8b44a2b~dxazy5hkp0753707537eucas1p1H;
 Fri,  6 Dec 2019 11:46:31 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 07.88.60698.79F3AED5; Fri,  6
 Dec 2019 11:46:31 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191206114630eucas1p2e7f83a827da063649b2308ede1a8dc6b~dxazft6Hj2249122491eucas1p2N;
 Fri,  6 Dec 2019 11:46:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191206114630eusmtrp24d6f90b580cc149a5cb7d5dc6c4f08c6~dxazfIVbk2763727637eusmtrp2G;
 Fri,  6 Dec 2019 11:46:30 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-06-5dea3f970aca
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 2D.90.07950.69F3AED5; Fri,  6
 Dec 2019 11:46:30 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191206114630eusmtip2e6238553c02e57269920faa1ab773881~dxazIjI943030430304eusmtip2f;
 Fri,  6 Dec 2019 11:46:30 +0000 (GMT)
Subject: Re: [PATCH 2/2] dmaengine: pl330: Convert to the *_late and *_early
 system sleep callbacks
To: Ulf Hansson <ulf.hansson@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <5b0b6206-00c2-4abe-bdcd-97245ac6f692@samsung.com>
Date: Fri, 6 Dec 2019 12:46:30 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191205143746.24873-3-ulf.hansson@linaro.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLKsWRmVeSWpSXmKPExsWy7djPc7rT7V/FGux8w26xeupfVovz5zew
 W2x6fI3VYsb5fUwWx9eGW+y8c4LZgc1j06pONo871/aweWxeUu/xeZNcAEsUl01Kak5mWWqR
 vl0CV8aTWd/YCiZwVpzYdp+1gXEXexcjJ4eEgInEiZd3mboYuTiEBFYwSiz50MgK4XxhlOj+
 fAzK+cwoMbvlIiNMS++nyVAtyxklWj88YYdw3jJKfF3ZA+RwcAgLpEqs3WgO0iAikCIxZc5i
 VpAws0CJxIO7fiBhNgFDia63XWwgNq+AncSCSa2sIDaLgIrE2hOLWEDKRQViJTqWZ0CUCEqc
 nPmEBcTmFLCR2LnlCxOIzSwgL7H97RxmCFtc4taT+WCnSQgsYpfo+rmEBeJmF4nuzkNsELaw
 xKvjW6Del5H4vxOmoZlR4uG5tewQTg+jxOWmGVAfW0scPn4R6gFNifW79CHCjhLTL65kBglL
 CPBJ3HgrCHEEn8SkbdOhwrwSHW1CENVqErOOr4Nbe/DCJeYJjEqzkLw2C8k7s5C8Mwth7wJG
 llWM4qmlxbnpqcXGeanlesWJucWleel6yfm5mxiBieb0v+NfdzDu+5N0iFGAg1GJh3fG5xex
 QqyJZcWVuYcYJTiYlUR40/lexgrxpiRWVqUW5ccXleakFh9ilOZgURLnNV4ElBJITyxJzU5N
 LUgtgskycXBKNTCyvBIpmzL/RoSMxfO8F8rtuwuCH8++sN10vk7kuxz+Pd8dnCYUxmzj+bCs
 e1KJx2Xx99XNWW0VkceSrq6b0H1D1O5TyNIVyk5TOX/NDgxnOFDjG1KYot83W3DlxaKcP28q
 1r2qiozd7War2M8buThQR3Ad287tMTuaJSJ+6b398zpsbxTHOUMlluKMREMt5qLiRADEjJfY
 MAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHIsWRmVeSWpSXmKPExsVy+t/xe7rT7F/FGqxsNrdYPfUvq8X58xvY
 LTY9vsZqMeP8PiaL42vDLXbeOcHswOaxaVUnm8eda3vYPDYvqff4vEkugCVKz6Yov7QkVSEj
 v7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSezLLVI3y5BL+PJrG9sBRM4K05su8/a
 wLiLvYuRk0NCwESi99Nkpi5GLg4hgaWMEh/ffWOGSMhInJzWwAphC0v8udbFBmILCbxmlHjw
 2quLkYNDWCBVYu1Gc5CwiECKxLm2h6wgYWaBEolZL7Igqg8ySkzeaQRiswkYSnS9hZjCK2An
 sWBSK9h0FgEVibUnFrGA2KICsRLfV35ihKgRlDg58wlYnFPARmLnli9MIDazgJnEvM0PmSFs
 eYntb+dA2eISt57MZ5rAKDQLSfssJC2zkLTMQtKygJFlFaNIamlxbnpusZFecWJucWleul5y
 fu4mRmBcbTv2c8sOxq53wYcYBTgYlXh4Z3x+ESvEmlhWXJl7iFGCg1lJhDed72WsEG9KYmVV
 alF+fFFpTmrxIUZToOcmMkuJJucDYz6vJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZq
 akFqEUwfEwenVAOjzRkD/tgZF7j8ll1izzErUXhxwdZd36tacdZ048l7ioKcN7/fPl/5VXzK
 a+5UC4Poi/p/PjCr7PjhwCoroW/tzXslM+G6ud7izRFsWUuenfJ9MdPp+7uCP8y75oVVH9uu
 3zz/AqOVLvMXHw1HzuMHMubOFxY95cjy7ArLG8alR7bETzjm46asxFKckWioxVxUnAgAAsah
 G8ECAAA=
X-CMS-MailID: 20191206114630eucas1p2e7f83a827da063649b2308ede1a8dc6b
X-Msg-Generator: CA
X-RootMTR: 20191205143808epcas5p2d9182674322e4799497a87b59c6c8a7d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191205143808epcas5p2d9182674322e4799497a87b59c6c8a7d
References: <20191205143746.24873-1-ulf.hansson@linaro.org>
 <CGME20191205143808epcas5p2d9182674322e4799497a87b59c6c8a7d@epcas5p2.samsung.com>
 <20191205143746.24873-3-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_034633_642295_B9E7FBC2 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 05.12.2019 15:37, Ulf Hansson wrote:
> It has turned out that it's in general a good idea for dmaengines to allow
> DMA requests during the entire dpm_suspend() phase. Therefore, convert the
> pl330 driver into using SET_LATE_SYSTEM_SLEEP_PM_OPS.
>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

Works fine on various Samsung Exynos boards I have for tests.

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>

> ---
>   drivers/dma/pl330.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
> index 8e01da157518..88b884cbb7c1 100644
> --- a/drivers/dma/pl330.c
> +++ b/drivers/dma/pl330.c
> @@ -2981,7 +2981,9 @@ static int __maybe_unused pl330_resume(struct device *dev)
>   	return ret;
>   }
>   
> -static SIMPLE_DEV_PM_OPS(pl330_pm, pl330_suspend, pl330_resume);
> +static const struct dev_pm_ops pl330_pm = {
> +	SET_LATE_SYSTEM_SLEEP_PM_OPS(pl330_suspend, pl330_resume)
> +};
>   
>   static int
>   pl330_probe(struct amba_device *adev, const struct amba_id *id)

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
