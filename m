Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A062FABB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 13:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTI52+xwvyKQzgGU2PRuZwyH7QmZrmOBSADJ3dFqIDM=; b=g6O5DGsSYS+amH
	c4sqvpEJyRalVZKzI4VcahPWzxUhAlChP11pbXOhGe6iusXFoNrcP0RM4skpFubfo5TnYznVvO/6a
	ZUPKIBfjpUyxvXb5hOe9uq+NC1/z+1LF6VV28s1nt3E2xAj3LuhiDwcvg92Hcfqy3XvK9Ci5kFrUg
	/sdsbAkdNQTdqqtzsUXszKMFCdUchKbDiD597Qhty86vLafpx7gyXqSfWNjdx9I5nrrFo1RSkvFUu
	KmcA8iKoNET0Wg200jLS4mm5Lu+WtRe6p9DYQXtO2zl+RB1XYsNPg2MMh2vpTpUc/iQVjY/d/rBcJ
	4+VD0gDccLJkhPvI0LEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWJ03-00008k-6W; Thu, 30 May 2019 11:13:35 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWIzv-00008H-7p
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 11:13:29 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190530111323euoutp02505cb620343a775376d942ee7814e73c~jcZpAgYh60809308093euoutp02R
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 11:13:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190530111323euoutp02505cb620343a775376d942ee7814e73c~jcZpAgYh60809308093euoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559214803;
 bh=BfhHNZxrJQwUOEFilSzsVER/q8DLDg227clvMkyf9Tg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=NVnYPMtZpHys+hY7tos7EOUEsqa5rrG06HXeW2intLiATrXn6RfqTckqnkiIqnVXJ
 hPUZlvO5DpWGqDZij6g/3qa5cRJKAhcYAo05sXdF+5GmFpw/ipF+hCeeWEL98YbfGX
 +Xtktjtw1mUKzTFzzGUW3ZHnBw0sgm2hnhvakLwk=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190530111322eucas1p2bb9a94497bcc26d656899441dda8cb86~jcZoaGmly1273212732eucas1p2J;
 Thu, 30 May 2019 11:13:22 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id FA.A8.04377.2DABFEC5; Thu, 30
 May 2019 12:13:22 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190530111321eucas1p2941943c0bbd01e9bd2ad078fd2734d36~jcZnYzOqe1058510585eucas1p2b;
 Thu, 30 May 2019 11:13:21 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190530111321eusmtrp253cac4dbe7583aad1fedbee86fea1595~jcZnJR4da0638806388eusmtrp2E;
 Thu, 30 May 2019 11:13:21 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-ee-5cefbad2465d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A8.DD.04140.1DABFEC5; Thu, 30
 May 2019 12:13:21 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190530111320eusmtip2df9bcccdb1e84c7ac6d8bba3fd7858d7~jcZmzO9-Y0782107821eusmtip2a;
 Thu, 30 May 2019 11:13:20 +0000 (GMT)
Subject: Re: [PATCH] clk: samsung: exynos5433: Use of_clk_get_parent_count()
To: Kefeng Wang <wangkefeng.wang@huawei.com>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <b57d66da-9b18-7b1d-ffa6-3b4600f9dc5a@samsung.com>
Date: Thu, 30 May 2019 13:13:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190525115542.107929-1-wangkefeng.wang@huawei.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLKsWRmVeSWpSXmKPExsWy7djPc7qXdr2PMbj7Sdii//FrZovz5zew
 W2x6fI3V4mPPPVaLGef3MVlcPOVq8e/aRhaLxs/3GR04PN7faGX3aDnyltVj06pONo/NS+o9
 Pm+SC2CN4rJJSc3JLEst0rdL4Mp42fSXreAOZ8WS2SvYGxj7OboYOTkkBEwknsycygpiCwms
 YJTYtEmii5ELyP7CKPGo+yYrhPOZUWL77mmsMB2PZ+xmgkgsZ5T4/m8OM4TzllGi7e1aNpAq
 YQEfia2n3gAlODhEBHQkFh4uBalhFuhhkph3/SsLSA2bgKFE79E+RhCbV8BOonXuVrBeFgFV
 iVmda8C2iQpESHzZuQmqRlDi5MwnYL2cAo4Sx25cZAaxmQXEJZq+rGSFsOUltr+dwwxx6S52
 id6XCRC2i8Stq4/YIWxhiVfHt0DZMhL/d84H+0ZCoJlRomf3bXYIZwKjxP3jCxghqqwlDh+/
 yAryDbOApsT6XfoQYUeJC6dB6jmAbD6JG28FIW7gk5i0bTozRJhXoqNNCKJaReL3qulMELaU
 RPeT/ywTGJVmIflsFpJvZiH5ZhbC3gWMLKsYxVNLi3PTU4uN8lLL9YoTc4tL89L1kvNzNzEC
 E9Hpf8e/7GDc9SfpEKMAB6MSD++E/HcxQqyJZcWVuYcYJTiYlUR4fy4HCvGmJFZWpRblxxeV
 5qQWH2KU5mBREuetZngQLSSQnliSmp2aWpBaBJNl4uCUamCUt7Vo1X+pn2xif6GhcY356YJ3
 1bu5FmnyZnOWXAm7dTbg5A43lstm9w8p3U9a6ivIdrU4+H2/g7W7SEiVaN7Ri1pxa4rn301V
 OKJrwKf6el5fs5vJrrp9u+K/vzsyJ+7tDK/qhgzPNQrPxHvPqqx9/7vksMM9J/aHH64Jaet8
 rxaeY6hZWKzEUpyRaKjFXFScCACieAJmQAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrAIsWRmVeSWpSXmKPExsVy+t/xe7oXd72PMXj/SMii//FrZovz5zew
 W2x6fI3V4mPPPVaLGef3MVlcPOVq8e/aRhaLxs/3GR04PN7faGX3aDnyltVj06pONo/NS+o9
 Pm+SC2CN0rMpyi8tSVXIyC8usVWKNrQw0jO0tNAzMrHUMzQ2j7UyMlXSt7NJSc3JLEst0rdL
 0Mt42fSXreAOZ8WS2SvYGxj7OboYOTkkBEwkHs/YzdTFyMUhJLCUUWL9+5OMXYwcQAkpifkt
 ShA1whJ/rnWxQdS8ZpQ4dLyRESQhLOAjsfXUG2aQehEBHYmFh0tBapgFepgkth3/wQ7RMIVR
 YuubH2ANbAKGEr1H+8BsXgE7ida5W9lAbBYBVYlZnWtYQWxRgQiJ2bsaWCBqBCVOznwCZnMK
 OEocu3GRGcRmFlCX+DPvEpQtLtH0ZSUrhC0vsf3tHOYJjEKzkLTPQtIyC0nLLCQtCxhZVjGK
 pJYW56bnFhvpFSfmFpfmpesl5+duYgTG3rZjP7fsYOx6F3yIUYCDUYmHd0L+uxgh1sSy4src
 Q4wSHMxKIrw/lwOFeFMSK6tSi/Lji0pzUosPMZoCPTeRWUo0OR+YFvJK4g1NDc0tLA3Njc2N
 zSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTDuji5tvzRR3+GjYQaHwS7u3XOM1262WH9I
 K+2ynItyCufsK87GKpOEwyOKp9t995GI+KFyYFmlZdBO2zvPHMUXvUs+Kd+0ccmKh9smpHG6
 BuU76r16nLb719r2tcm+33t2K0XVie88ZVz4fsP5zIYd+ZMezHCcdrOMP/S+ZVPRPcmUGUn3
 M2OUWIozEg21mIuKEwFt29Rf0wIAAA==
X-CMS-MailID: 20190530111321eucas1p2941943c0bbd01e9bd2ad078fd2734d36
X-Msg-Generator: CA
X-RootMTR: 20190525114732epcas3p1fdc42650975c9f7b1a39a87561e65a29
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190525114732epcas3p1fdc42650975c9f7b1a39a87561e65a29
References: <CGME20190525114732epcas3p1fdc42650975c9f7b1a39a87561e65a29@epcas3p1.samsung.com>
 <20190525115542.107929-1-wangkefeng.wang@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_041327_578492_ECEE6CF3 
X-CRM114-Status: GOOD (  17.04  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-samsung-soc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/25/19 13:55, Kefeng Wang wrote:
> Use of_clk_get_parent_count() instead of open coding.
> 
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>

Patch applied, thank you.

In future please make sure to also Cc linux-clk@vger.kernel.org mailing list 
and the clk maintainers (Stephen, Michael) when sending clk patches.

> ---
>  drivers/clk/samsung/clk-exynos5433.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/samsung/clk-exynos5433.c b/drivers/clk/samsung/clk-exynos5433.c
> index dae1c96de933..14e253915ca4 100644
> --- a/drivers/clk/samsung/clk-exynos5433.c
> +++ b/drivers/clk/samsung/clk-exynos5433.c
> @@ -5590,8 +5590,8 @@ static int __init exynos5433_cmu_probe(struct platform_device *pdev)
>  	data->nr_clk_save = info->nr_clk_regs;
>  	data->clk_suspend = info->suspend_regs;
>  	data->nr_clk_suspend = info->nr_suspend_regs;
> -	data->nr_pclks = of_count_phandle_with_args(dev->of_node, "clocks",
> -						    "#clock-cells");
> +	data->nr_pclks = of_clk_get_parent_count(dev->of_node);
> +
>  	if (data->nr_pclks > 0) {
>  		data->pclks = devm_kcalloc(dev, sizeof(struct clk *),
>  					   data->nr_pclks, GFP_KERNEL);
>
-- 
Thanks,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
