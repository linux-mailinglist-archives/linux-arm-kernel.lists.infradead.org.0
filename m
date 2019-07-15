Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EE1685DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 11:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCFjz2xUPThDXFmE9cXHrbUugOyJpu1bMUMt3gtHdtA=; b=NbeaiwZ5256I95
	H58e24IggXk+v0zSSSRMZT5vmFLSxkeiL4sB5IalZO+snIEMgdA9DXQqwGl8CgyQkXEZ4YZc3o/9C
	OQVqGQlEsluvGKkArvwrXWX0EZzOeeypoDvWobG7s9sMOoC/XepK6opfGOxrhx4RzKcPmpksb31qY
	LUOZMY0hVzN31f5rlMYscvKkh6aMGlh+1QmFgaHmKlGxlmJ6l2YpA4dXTzoSkRzXYmL7Uz5Ri71rG
	js7x2+XvZqO25by2Xoz6TU6a4EobZshgXTCSdQmqjEFX3eYvsgiEANhz7MtLKpcjvJn8fIXY4w5Tf
	gvK5r1mQV077JZJ2qf9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmwqf-0001R8-DR; Mon, 15 Jul 2019 09:00:41 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmwqT-0001Ph-Nz
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 09:00:31 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715090024euoutp022160dce5fd9a2b6d6cfe64eab996bedd~xiQqgVtGn1141511415euoutp024
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 09:00:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715090024euoutp022160dce5fd9a2b6d6cfe64eab996bedd~xiQqgVtGn1141511415euoutp024
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563181224;
 bh=4Pc+fO1+/ZMl5J0ti/1yRmjXong6iDuRO9je3QCE9Q0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=u3ZMvk7jnxyJLVLbr/+tv1MzHMvram7blahiR5CjL73c+nCMzAGpq/VqSdAa+cBLz
 xynNOxsr1UPT+hvgwI6ob0cVPnl5LNxhSn5WP/awFnkqgTzgEb5DWIaQRzMMkDcMA2
 eX5DOSc1UTWVu+VeN3Tl7lfkwTadrzLZO5EyXrZI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715090024eucas1p26e6f7a1817078948ccb0674890a12909~xiQqMM2wy1153111531eucas1p2e;
 Mon, 15 Jul 2019 09:00:24 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 05.B3.04325.7A04C2D5; Mon, 15
 Jul 2019 10:00:23 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715090023eucas1p2ab541c5d4b4debe766295d3c6efbd1cd~xiQpaqaWs2765727657eucas1p2T;
 Mon, 15 Jul 2019 09:00:23 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715090023eusmtrp1f100dd8f1e965e9836e58ab0e75d3a31~xiQpMgm-i2192721927eusmtrp1R;
 Mon, 15 Jul 2019 09:00:23 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-a4-5d2c40a78be5
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id FE.E3.04146.6A04C2D5; Mon, 15
 Jul 2019 10:00:22 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715090022eusmtip2c2db709b559c4ac92afa9b8002fb0a03~xiQoxN0U10255602556eusmtip2U;
 Mon, 15 Jul 2019 09:00:22 +0000 (GMT)
Subject: Re: [PATCH v3 15/24] media: exynos4-is: Remove call to memset after
 dma_alloc_coherent
To: Fuqian Huang <huangfq.daxian@gmail.com>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <37046e7b-fdde-c10f-4850-0b3efd4a00cd@samsung.com>
Date: Mon, 15 Jul 2019 11:01:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715031851.6890-1-huangfq.daxian@gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCKsWRmVeSWpSXmKPExsWy7djPc7rLHXRiDVbOMbBYduokq0X/49fM
 FufPb2C3ONv0ht1i0+NrrBaXd81hs+jZsJXVYsb5fUwWyzb9YXLg9Ng56y67x6ZVnWwem5fU
 e/RtWcXo8XmTXABrFJdNSmpOZllqkb5dAlfGmatXmAtmcVR0bXnD3MD4i62LkZNDQsBE4u71
 y6xdjFwcQgIrGCWWrrsO5XxhlNg6azUjhPOZUWLGvbeMMC2f1i5lg0gsZ5T4uPs3E4TzllFi
 cU8rK0iVsECiRM+0L0wgtoiAtsTH0y3MIEXMAquZJDYeWA+2nU3AUKL3aB/YWF4BO4kJzdtY
 QGwWAVWJXdP/g8VFBSIkTh2ZxwJRIyhxcuYTIJuDg1PAVuL+RwuQMLOAuETTl5WsELa8xPa3
 c8B2SQgcYpd4vegc1NkuEj29TSwQtrDEq+Nb2CFsGYnTk3tYIBqaGSV6dt9mh3AmMErcP74A
 qtta4vDxi6wgm5kFNCXW79IHMSUEHCWu3DKBMPkkbrwVhLiBT2LStunMEGFeiY42IYgZKhK/
 V01ngrClJLqf/GeZwKg0C8ljs5B8MwvJN7MQ1i5gZFnFKJ5aWpybnlpsnJdarlecmFtcmpeu
 l5yfu4kRmJZO/zv+dQfjvj9JhxgFOBiVeHgdUrRjhVgTy4orcw8xSnAwK4nw2n4FCvGmJFZW
 pRblxxeV5qQWH2KU5mBREuetZngQLSSQnliSmp2aWpBaBJNl4uCUamCUVkw/tnjF35jmrImr
 zCJEjQ8dqpgaqJNVe+NY1zJh4dq126yMtp6R1ln5/rqS0kw/3wX6r6ofb34bJsCXLGTRs0z6
 8vf+Q/GrTzyYcJaB60GA4zmG9EVNslaRr4oiry1eecn/QMLiO4o/U/WV9mz/81h57ob1p+b8
 V2tKW+H8cEbu6pvVCVNblViKMxINtZiLihMBUmnC3UcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCIsWRmVeSWpSXmKPExsVy+t/xe7rLHHRiDRoOWFosO3WS1aL/8Wtm
 i/PnN7BbnG16w26x6fE1VovLu+awWfRs2MpqMeP8PiaLZZv+MDlweuycdZfdY9OqTjaPzUvq
 Pfq2rGL0+LxJLoA1Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384mJTUn
 syy1SN8uQS/jzNUrzAWzOCq6trxhbmD8xdbFyMkhIWAi8WntUiCbi0NIYCmjxNojk9i7GDmA
 ElIS81uUIGqEJf5c64Kqec0osX/HH1aQhLBAokTPtC9MILaIgLbEx9MtzCBFzAKrmSRWLFrN
 BDJISMBG4tgbLpAaNgFDid6jfYwgNq+AncSE5m0sIDaLgKrErun/weKiAhESk67tZIGoEZQ4
 OfMJC8gYTgFbifsfLUDCzALqEn/mXWKGsMUlmr6sZIWw5SW2v53DPIFRaBaS7llIWmYhaZmF
 pGUBI8sqRpHU0uLc9NxiQ73ixNzi0rx0veT83E2MwBjcduzn5h2MlzYGH2IU4GBU4uF1SNGO
 FWJNLCuuzD3EKMHBrCTCa/sVKMSbklhZlVqUH19UmpNafIjRFOi3icxSosn5wPSQVxJvaGpo
 bmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBkf/Ym/VskxWjrjHe2x/S4prB
 HL1gYVX77W1lG8r/KBp7VjFs23rlW1Rroeketabd53huBTU/XlU6LZfLJrT8/fyCSylWH+fq
 1AcWzaqI37lsu1r0hdoXAi/KNsatSE9ekTzre4jXgcVqlo9DX72PDNohJ/N3ddfD8oxP3BkT
 3nnvFsw+862nS4mlOCPRUIu5qDgRAKgQjlbXAgAA
X-CMS-MailID: 20190715090023eucas1p2ab541c5d4b4debe766295d3c6efbd1cd
X-Msg-Generator: CA
X-RootMTR: 20190715090023eucas1p2ab541c5d4b4debe766295d3c6efbd1cd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715090023eucas1p2ab541c5d4b4debe766295d3c6efbd1cd
References: <20190715031851.6890-1-huangfq.daxian@gmail.com>
 <CGME20190715090023eucas1p2ab541c5d4b4debe766295d3c6efbd1cd@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_020029_993742_D63756E0 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/15/19 05:18, Fuqian Huang wrote:
> In commit 518a2f1925c3
> ("dma-mapping: zero memory returned from dma_alloc_*"),
> dma_alloc_coherent has already zeroed the memory.
> So memset is not needed

I can't see any changes in the above mentioned commit that would
make dma_alloc_coherent() (arm_coherent_dma_alloc()) zeroing its
returned memory. Maybe you need to add a reference to some other
instead?

> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>

>  drivers/media/platform/exynos4-is/fimc-is.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/media/platform/exynos4-is/fimc-is.c b/drivers/media/platform/exynos4-is/fimc-is.c
> index e043d55133a3..77633e356305 100644
> --- a/drivers/media/platform/exynos4-is/fimc-is.c
> +++ b/drivers/media/platform/exynos4-is/fimc-is.c
> @@ -341,7 +341,6 @@ static int fimc_is_alloc_cpu_memory(struct fimc_is *is)
>  		return -ENOMEM;
>  
>  	is->memory.size = FIMC_IS_CPU_MEM_SIZE;
> -	memset(is->memory.vaddr, 0, is->memory.size);
--
Thanks, 
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
