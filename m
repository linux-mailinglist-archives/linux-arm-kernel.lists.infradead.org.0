Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13166122560
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 08:25:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xromFJBHfKgy5XEmjG2/oBsQ9HwibxvvraEfRJxtSzY=; b=Um1bjsxIBCSN0m
	9rQH4Lx3NsvFI8VoA2KoZdIxniUdHEjP+wkJK+n7aZIebp2iT9Su6z2CO5fi0/V1Nn6tp4SOGBPr6
	nHh+A4Zq3YhuSbTTQ4hwf1oiO9h1dpkL0mxKKy7ohQnQXh+GpPap3JgssBeG3xMt4lGBLz9cEbH/1
	d9/ZzJ+pA7mP4X5NBNYKzvpumaaSES8+go9ckNOyEzd8sKF1DKnn8Qf2TeJ9OQtYV7FcXPBm4ym7F
	u3tn47NoptgRndKT71f8EXkbtazjMZGI35x5nuR0ZQBemGzsQtx3iL4wj2ove++TECd0HxdzhjLre
	F9pwgqcP1hU6WVLZnXog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7EW-0003uQ-Nq; Tue, 17 Dec 2019 07:25:28 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7EK-0003t8-SR
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 07:25:20 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191217072510epoutp026ca6b22acfe5a30e04f69e6745cf75db~hF8whI0m22502025020epoutp02s
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 07:25:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191217072510epoutp026ca6b22acfe5a30e04f69e6745cf75db~hF8whI0m22502025020epoutp02s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576567510;
 bh=jsZgMfZBFENSHUxjARWp1+l9QDIbLF9XpJF95DHtcvY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=cUkwmnpHs3QEA8gZc8j6pIlISP9HAOh2Sm+8f64QgqZsNNCHx+2Cer/teZO4C/nuQ
 SKqWESzNH7lFN/pD8bGEEuDHR6Wq1yL8Yuf2DdkpDRstA5shM48udP6nIqsM2XCaMR
 moTgvfZ0pae8qi0qSsxwqhrh8VnA4SXbxph6th14=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191217072509epcas1p4324b8c934d6a4ca1cf86b4e178b3001f~hF8wDyjSu3077330773epcas1p4V;
 Tue, 17 Dec 2019 07:25:09 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47cV5t4jxwzMqYkk; Tue, 17 Dec
 2019 07:25:06 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 93.54.52419.2D288FD5; Tue, 17 Dec 2019 16:25:06 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191217072506epcas1p36bf0e286c809f5e9b82f3ccf9e75f586~hF8s4nCAw2913129131epcas1p3X;
 Tue, 17 Dec 2019 07:25:06 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191217072506epsmtrp1e9479d2e9221b0e08a8f7ed6a1c528d8~hF8s3pAnI0758107581epsmtrp1U;
 Tue, 17 Dec 2019 07:25:06 +0000 (GMT)
X-AuditID: b6c32a37-5b7ff7000001ccc3-98-5df882d268e3
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 DE.85.10238.1D288FD5; Tue, 17 Dec 2019 16:25:06 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191217072505epsmtip2e0f5fca9c77e96f2a1eb00806e493075~hF8skYWcr0201702017epsmtip2Z;
 Tue, 17 Dec 2019 07:25:05 +0000 (GMT)
Subject: Re: [v5, PATCH 0/5] Add cpufreq and cci devfreq for mt8183, and SVS
 support
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, Stephen
 Boyd <sboyd@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <cfce1a04-68e9-f948-0d3a-3bccfa44c797@samsung.com>
Date: Tue, 17 Dec 2019 16:31:40 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHJsWRmVeSWpSXmKPExsWy7bCmru6lph+xBic7VSy2r3/BajH/yDlW
 i293fjNZnG16w26x6fE1VovLu+awWVxuvsho8bn3CKPF0usXmSyaWowtbjeuYLN48+Msk8WZ
 05dYLVr3HmG3+HdtI4vF9LtCFhu/ejgIeqyZt4bRY+esu+wem1Z1snncubaHzWPzknqPlpP7
 WTy2XG1n8ejbsorR4/iN7UwenzfJBXBFZdtkpCampBYppOYl56dk5qXbKnkHxzvHm5oZGOoa
 WlqYKynkJeam2iq5+AToumXmAH2jpFCWmFMKFApILC5W0rezKcovLUlVyMgvLrFVSi1IySmw
 LNArTswtLs1L10vOz7UyNDAwMgUqTMjO+LHvMVvBb+6K53s/sTcw9nF2MXJySAiYSNztn87Y
 xcjFISSwg1Fi94cLTBDOJ0aJpV/3sEE43xglzr3ZzAzTsnzXJRaIxF5GiUUXp7JDOO8ZJY40
 rmIBqRIWCJN4PG8VK0hCRGASs8SEzQ8YQRLMArcYJV7vZwOx2QS0JPa/uAFm8wsoSlz98Ris
 hlfATuLw+fesIDaLgKrEkvWnweKiQENPbmuBqhGUODnzCdgyTgFfiVPTT7FDzBeXuPVkPhOE
 LS+x/e0cZpAjJATusUvsfTOdHeIHF4mr3X9YIWxhiVfHt0DFpSRe9rdB2dUSK08eYYNo7mCU
 2LL/AlSDscT+pZOBNnAAbdCUWL9LHyKsKLHz91yoJ/kk3n3tYQUpkRDglehoE4IoUZa4/OAu
 E4QtKbG4vZNtAqPSLCTvzELywiwkL8xCWLaAkWUVo1hqQXFuemqxYYExcnxvYgSndS3zHYwb
 zvkcYhTgYFTi4S0o+x4rxJpYVlyZe4hRgoNZSYR3hwJQiDclsbIqtSg/vqg0J7X4EKMpMLQn
 MkuJJucDc05eSbyhqZGxsbGFiaGZqaGhkjgvx4+LsUIC6YklqdmpqQWpRTB9TBycUsAUNfPP
 JGaz+P0Rix73HLy7ZYWIrIz4D1alpLiel26B3xOnT77haLYsoFnko2DXybtpZVJ7xHM4br9d
 9SJ47b66tsWLrRzOTfMxS5DdzspVepWj6fnBRd/FvXr+69y/9/bskt/2Gd+Vgz4X7wt49Vf/
 NMNfR95yiy9mrQutj597NXvBjdSEubrySizFGYmGWsxFxYkANpRDiwEEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJIsWRmVeSWpSXmKPExsWy7bCSvO6lph+xBqfPMFpsX/+C1WL+kXOs
 Ft/u/GayONv0ht1i0+NrrBaXd81hs7jcfJHR4nPvEUaLpdcvMlk0tRhb3G5cwWbx5sdZJosz
 py+xWrTuPcJu8e/aRhaL6XeFLDZ+9XAQ9Fgzbw2jx85Zd9k9Nq3qZPO4c20Pm8fmJfUeLSf3
 s3hsudrO4tG3ZRWjx/Eb25k8Pm+SC+CK4rJJSc3JLEst0rdL4Mr4se8xW8Fv7ornez+xNzD2
 cXYxcnJICJhILN91iaWLkYtDSGA3o8Szt4dZIBKSEtMuHmXuYuQAsoUlDh8uhqh5yyixaP9h
 VpAaYYEwicfzVrGCJEQEpjFLPP33mg3EYRa4xSixqfkIO0TLAkaJ3lvXwVrYBLQk9r+4wQZi
 8wsoSlz98ZgRxOYVsJM4fP49WA2LgKrEkvWnweKiQCt2LnnMBFEjKHFy5hOw8zgFfCVOTT/F
 DmIzC6hL/Jl3iRnCFpe49WQ+E4QtL7H97RzmCYzCs5C0z0LSMgtJyywkLQsYWVYxSqYWFOem
 5xYbFhjmpZbrFSfmFpfmpesl5+duYgRHuJbmDsbLS+IPMQpwMCrx8EqUfI8VYk0sK67MPcQo
 wcGsJMK7QwEoxJuSWFmVWpQfX1Sak1p8iFGag0VJnPdp3rFIIYH0xJLU7NTUgtQimCwTB6dU
 A6NWsJdIk+0nj+R7NdYhC0pi7grPnJK5/vCPXKXUKL5K+c+dG3cclX5/LnRHWjz/qoLYNXfE
 K2eove20n8Ghc/z/2o5nU4S38E/yZn1WmPjxz6zzD2ft+6uSsMBPzcnv4T+3++tmqRyzf+uz
 fOcGG+6jexqkO7bufBu9h3eZqJHRNuEzIs4pCvuVWIozEg21mIuKEwE7Gqa27AIAAA==
X-CMS-MailID: 20191217072506epcas1p36bf0e286c809f5e9b82f3ccf9e75f586
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191126115058epcas1p3caa6da2508caa5fbe71c202834184b15
References: <CGME20191126115058epcas1p3caa6da2508caa5fbe71c202834184b15@epcas1p3.samsung.com>
 <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_232517_271448_41902363 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, fan.chen@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/26/19 8:50 PM, Andrew-sh.Cheng wrote:
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> 
> MT8183 supports CPU DVFS and CCI DVFS, and LITTLE cpus and CCI are in the same voltage domain.
> So, this series is to add drivers to handle the voltage coupling between CPU and CCI DVFS.
> 
> For SVS support, need OPP_EVENT_ADJUST_VOLTAGE and corresponding reaction.

What is correct full word of SVS?
- S(?) VS (Voltage Scaling) ?

> depend on:
> 	https://patchwork.kernel.org/patch/11193513/ 
> 
> Change since v4:
> 	- Remove redundant code
> 
> 
> Andrew-sh.Cheng (5):
>   cpufreq: mediatek: add clock enable for intermediate clock
>   dt-bindings: devfreq: add compatible for mt8183 cci devfreq
>   devfreq: add mediatek cci devfreq
>   cpufreq: mediatek: add opp notification for SVS support
>   devfreq: mediatek: cci devfreq register opp notification for SVS
>     support
> 
>  .../bindings/devfreq/mt8183-cci-devfreq.txt        |  20 ++
>  drivers/cpufreq/mediatek-cpufreq.c                 |  92 +++++-
>  drivers/devfreq/Kconfig                            |  10 +
>  drivers/devfreq/Makefile                           |   1 +
>  drivers/devfreq/mt8183-cci-devfreq.c               | 308 +++++++++++++++++++++
>  5 files changed, 429 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt
>  create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
