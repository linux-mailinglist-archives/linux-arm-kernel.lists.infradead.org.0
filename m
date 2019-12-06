Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C61114FF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 12:46:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiAqfVomLGvQ/mXXr53C9tLMyWA6SeuhzhX0Tv3FcXo=; b=GRNFyeZJ1tOWaO
	yaqIwWW4nAfiWoxBq0xNykS/oPZqGZ67/TtpFdpNcM49L7HMrVV+R+BCSuD2TgMory1xJI6JFjQ9q
	QH4YRB049GF0xVztueUV+oSGjJCJBzpyCdNnhyIZRVwENLDj5CIdgvoINLm/HcTjfDZfPj2GMv//8
	DcFoh6mnbunyeMDyrdDInAWK+3Rb25Uk2CLA8qZI9GEPSDjz4Xqki1/SasEIJFyUMGZ+QHcBPehlk
	UuzYga6VEAmbjIURL7qvsxsRAbZFZlbB/rsau4HC/HMz2KXT3K8fDIaONlaUfiRRY1GEbnpHcCRkE
	+3qwAR+qIZlTuQ7Qo21w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idC40-0004ey-Cm; Fri, 06 Dec 2019 11:46:24 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idC3t-0004dR-CK
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 11:46:19 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191206114614euoutp014ce0ac0c3b6077b2f19c7c87c2ee3563~dxakpIoBN3066430664euoutp01Y
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Dec 2019 11:46:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191206114614euoutp014ce0ac0c3b6077b2f19c7c87c2ee3563~dxakpIoBN3066430664euoutp01Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575632775;
 bh=9oqbt/YoxE9ewYGvwAnCxMcAVSivXi3Xzu/zRpPkl+A=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=J8xREQQX21WEgN3QViALH4lvQxJO9Z3Mx+YHs6EDPwrQRoUlbnJJN1WU2bStI+v72
 2HyXhOa5k7bz2djwSnM1a4MECMSFe7+/sspMBA5Bb37791dUzU0n6jqEmFEhqVj81a
 A6w9jTdrzxaTP9OJ7NOjcbE6LyC+5odFIfHKXFRg=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191206114614eucas1p1e13a0ce5b2997151a28511035986ef3e~dxakPJuM_0584305843eucas1p1H;
 Fri,  6 Dec 2019 11:46:14 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id BC.78.60698.68F3AED5; Fri,  6
 Dec 2019 11:46:14 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191206114613eucas1p2454e9af3dbc8a315405da5f8d04d6db7~dxajMYQZN1645116451eucas1p2O;
 Fri,  6 Dec 2019 11:46:13 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191206114613eusmtrp271a40490cb01b67dac870abe2765558f~dxajLyniP2763827638eusmtrp2o;
 Fri,  6 Dec 2019 11:46:13 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-d3-5dea3f86356c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D9.BF.08375.58F3AED5; Fri,  6
 Dec 2019 11:46:13 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191206114612eusmtip1e9434b31cd64fb27b57e7e358b932458~dxaiypoIk3097330973eusmtip1Z;
 Fri,  6 Dec 2019 11:46:12 +0000 (GMT)
Subject: Re: [PATCH 1/2] dmaengine: pl330: Drop boilerplate code for
 suspend/resume
To: Ulf Hansson <ulf.hansson@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <d413878c-1383-7964-1f94-d35dbb0b07d8@samsung.com>
Date: Fri, 6 Dec 2019 12:46:12 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191205143746.24873-2-ulf.hansson@linaro.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFKsWRmVeSWpSXmKPExsWy7djP87pt9q9iDda+krVYPfUvq8X58xvY
 LTY9vsZqMeP8PiaL42vDLXbeOcHswOaxaVUnm8eda3vYPDYvqff4vEkugCWKyyYlNSezLLVI
 3y6BK+P1lDusBa94Kt7Pf8PYwLiUq4uRg0NCwERi7iWzLkYuDiGBFYwS/S8WskI4Xxglfl35
 zwbhfGaU6Li3nwWm4/cZJ4j4ckaJy5N2skA4bxklnv09ANTBySEsECqx5coDFhBbRCBFYsqc
 xawgzcwCJRIP7vqBhNkEDCW63naxgYR5BewkPrZrg4RZBFQkJh1fCxYWFYiV6FieARLmFRCU
 ODnzCdhATgEbiUv/37GD2MwC8hLb385hhrDFJW49mc8Eco2EwCp2iS2bdjFBnOwi8fxSMUiN
 hICwxKvjW9ghbBmJ/zth6psZJR6eW8sO4fQA/dU0gxGiylri8PGLUOdrSqzfpQ8RdpToXbqU
 FWI+n8SNt4IQN/BJTNo2nRkizCvR0SYEUa0mMev4Ori1By9cYp7AqDQLyWezkHwzC8k3sxD2
 LmBkWcUonlpanJueWmycl1quV5yYW1yal66XnJ+7iRGYYk7/O/51B+O+P0mHGAU4GJV4eGd8
 fhErxJpYVlyZe4hRgoNZSYQ3ne9lrBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXFe40VAKYH0xJLU
 7NTUgtQimCwTB6dUAyP7J1HjYxxB1nGiW7lvPtf6rnDPc11T6tG0za7bPf5ucHd05a8/EfF+
 4bHVJ5meTg8yE7pgu3ONSaz85NWtq1eW2Unrqhg+5m779HO5QHbQK0HVqS/+//S3jJov4n+S
 P4Lj1JGaqeXb+s6qXkv7a6tq/3Bq1e1ffhvP/c0pfHrExEtRvjfZJEeJpTgj0VCLuag4EQD7
 st8ZLQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPIsWRmVeSWpSXmKPExsVy+t/xu7qt9q9iDe6sFbFYPfUvq8X58xvY
 LTY9vsZqMeP8PiaL42vDLXbeOcHswOaxaVUnm8eda3vYPDYvqff4vEkugCVKz6Yov7QkVSEj
 v7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSezLLVI3y5BL+P1lDusBa94Kt7Pf8PY
 wLiUq4uRg0NCwETi9xmnLkYuDiGBpYwSG2duYO9i5ASKy0icnNbACmELS/y51sUGUfSaUaLt
 yB82kISwQKjElisPWEBsEYEUiXNtD1lBhjILlEjMepEFUX+QUeLR4S+MIDVsAoYSXW9BBnFw
 8ArYSXxs1wYJswioSEw6vhZspKhArMT3lZ/AynkFBCVOznwCNp5TwEbi0v93YLcxC5hJzNv8
 kBnClpfY/nYOlC0ucevJfKYJjEKzkLTPQtIyC0nLLCQtCxhZVjGKpJYW56bnFhvqFSfmFpfm
 pesl5+duYgRG1rZjPzfvYLy0MfgQowAHoxIP74zPL2KFWBPLiitzDzFKcDArifCm872MFeJN
 SaysSi3Kjy8qzUktPsRoCvTcRGYp0eR8YNTnlcQbmhqaW1gamhubG5tZKInzdggcjBESSE8s
 Sc1OTS1ILYLpY+LglGpgFF3CY6tu7XtLjc/1ovHBu6sK5kkk/vTfK3VU9Ut4Wrz8/QufFhz2
 PM22IE9/s5tk8rv2Ew+OZ/T/0Qm/e2Dh6sePIi5sL7jhvdijYKUO2/ylr7+L+9oo/IpeZlO0
 Y9muBTN/hfDFbWCZVBhzoFBgVv6SK52b/CYXP5W6Na0x5yUzo9qJ493fPiixFGckGmoxFxUn
 AgD1Kl+/wgIAAA==
X-CMS-MailID: 20191206114613eucas1p2454e9af3dbc8a315405da5f8d04d6db7
X-Msg-Generator: CA
X-RootMTR: 20191205143807eucas1p25392de83697a408fcd303a2289d4e88a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191205143807eucas1p25392de83697a408fcd303a2289d4e88a
References: <20191205143746.24873-1-ulf.hansson@linaro.org>
 <CGME20191205143807eucas1p25392de83697a408fcd303a2289d4e88a@eucas1p2.samsung.com>
 <20191205143746.24873-2-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_034617_549198_91F82985 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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

Hi Ulf,

On 05.12.2019 15:37, Ulf Hansson wrote:
> Let's drop the boilerplate code in the system suspend/resume callbacks and
> convert to use pm_runtime_force_suspend|resume(). This change also has a
> nice side effect, as pm_runtime_force_resume() may decide to leave the
> device in low power state, when that is feasible, thus avoiding to waste
> both time and energy during system resume.
>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

Works fine on various Samsung Exynos boards I have for tests.

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>

> ---
>   drivers/dma/pl330.c | 12 ++----------
>   1 file changed, 2 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
> index 6cce9ef61b29..8e01da157518 100644
> --- a/drivers/dma/pl330.c
> +++ b/drivers/dma/pl330.c
> @@ -2961,12 +2961,7 @@ static int __maybe_unused pl330_suspend(struct device *dev)
>   {
>   	struct amba_device *pcdev = to_amba_device(dev);
>   
> -	pm_runtime_disable(dev);
> -
> -	if (!pm_runtime_status_suspended(dev)) {
> -		/* amba did not disable the clock */
> -		amba_pclk_disable(pcdev);
> -	}
> +	pm_runtime_force_suspend(dev);
>   	amba_pclk_unprepare(pcdev);
>   
>   	return 0;
> @@ -2981,10 +2976,7 @@ static int __maybe_unused pl330_resume(struct device *dev)
>   	if (ret)
>   		return ret;
>   
> -	if (!pm_runtime_status_suspended(dev))
> -		ret = amba_pclk_enable(pcdev);
> -
> -	pm_runtime_enable(dev);
> +	pm_runtime_force_resume(dev);
>   
>   	return ret;
>   }

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
