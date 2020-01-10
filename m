Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CCF136E53
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:41:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8FcEYijWhL9jDWCnt4LQ7aRkxNzHPPx0dgMh5tpDjU=; b=swEuLmwGvikkph
	7r7nnAuU7L1fvW765n2TDtnWSNoce856pctT05pXR7npx8cb2qISuI/rOVb+xLwV/If/zqoL6Fz+F
	AJWdyvlNj4TvGp0PTZgc3A0sbfT6RMH5ntIdDj+FQ7fmk8Bz9vZZhn6K/MzSDcAJf6cEJdGK6E2X9
	rKuzW2liuSkQjY9FHpCdwA83RaI6inBIPkXL6h/ivFnBFk3ppNTmzqjiy4GQmzSH1ushYSLrEY4fk
	7fyNmldiE6V7OH2orGNHzQrzZF8Cwgu2kzKQ/ILA2v7PZpVcNTFQ7opmaNyoY2ddpLv6dkjM0YBhd
	2DXoRFUdWaKGYPO9m2eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipuXD-0000yv-FI; Fri, 10 Jan 2020 13:41:07 +0000
Received: from lb3-smtp-cloud8.xs4all.net ([194.109.24.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuWa-0000XM-GK
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 13:40:30 +0000
Received: from [IPv6:2001:420:44c1:2577:c967:e1d3:183a:b8ef]
 ([IPv6:2001:420:44c1:2577:c967:e1d3:183a:b8ef])
 by smtp-cloud8.xs4all.net with ESMTPA
 id puWTinFt8pLtbpuWXiQqCI; Fri, 10 Jan 2020 14:40:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1578663625; bh=MHkmQDKT0r4fQcBBc2IMAMBUeWf7ULY+mdGIXIE99eE=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=O//lvPbN29U0TCDl8YaGRGESV2JX23l8A0Y20wPkKhQ1ks/tuf+x5unexaa6kdXTR
 FxMWw3eNi7id6vuDo7U48E1X6LmgJLBKrPoQPWPfsU/PWNJY4bvtYyTZRGasAk0q0P
 STzuC6gf+2lBnFZFBemXD/K6XacpXE6XYveEnTRvJ2QTa+a6kffkPUx8obna9vc9lO
 BJ0zBVsVzvXvW5MPItBtkSopbqfIgn10T5fUPwg5Qz9Y1BmoSICXRVWr4gdremE3zb
 qadwjJkbh51NxAENND7Y50fQ2yM7oVYubS3SJNpp+ARUcviojJLb+TKnLttAlW420C
 QcEGKYTwEG3OA==
Subject: Re: [PATCH v2 RFT] media: exynos4-is: add missed
 clk_disable_unprepare in remove
To: Chuhong Yuan <hslester96@gmail.com>
References: <20191219074824.15047-1-hslester96@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <f253eb6e-5e21-fd9b-8c2f-371beea66afa@xs4all.nl>
Date: Fri, 10 Jan 2020 14:40:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191219074824.15047-1-hslester96@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfJQy4Gzf1IEMxWqhmwovv3bnMJlsGgGc6jsSNp9UlIaXbaOBGCM0fOyz5BB9dlhYab0a2NZJ0/noauOBJA9ZdcBv5EwI55HwlTGDB1ynYVVBZd1h/03T
 O4hsaRHDYftag8lWWDgwg2HpVXRJhpL0ByqssqOfSMG60XEEof9G1kt9azOy0ZSPZ1lT5/O5D0cQV0zCMgR18p4XLKXVhsMurGXOmIUElYQL9sMt+3lOh/gy
 jOlDIECumrBQcgjW3o26Y/pWEB8nNRiD9pussXQNgPn0i1MPDERpuPiMuXkE7iNHDV3fykh/PXJfTdoc+86o0WxqlS2T97gne+u6LPaCMLyXZ2pZMcpoStfa
 vMYM8qzbUzlq0Jpv0evU2P9HgaPtlnkZe9rLpIbtE6PhroHQNgM8R4OxQRQd+pppfk+7G8FlWfBhZZwq2pg0CJ3GZahhjzMO+A9ZABOwepNQp9dwgraqkZAy
 jjO4/GgJIshj4mQuXHa36d+rkfhKky1U+f4Q1hkns0MAP8Ze2NZXAtWAe6ZBJheqQ60g8ZHgB19XDbOBm0v6ciHUr4sCCbZUMERG+M+o9AE8fWt8oaVS1ofT
 oS5ReaE/M81QCgIbqU7TVF4GBtAFAtZmMQ1Fn1RYo36CdQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054028_742572_17A553E4 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.29 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.29 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anyone able/willing to test this patch?

Regards,

	Hans

On 12/19/19 8:48 AM, Chuhong Yuan wrote:
> This driver forgets to disable and unprepare clock when remove.
> Add a call to clk_disable_unprepare() to fix it.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
> Changes in v2:
>   - Add a check of pm_runtime_enable() to match enable in probe.
>   - Add RFT tag.
> 
>  drivers/media/platform/exynos4-is/fimc-lite.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/media/platform/exynos4-is/fimc-lite.c b/drivers/media/platform/exynos4-is/fimc-lite.c
> index e87c6a09205b..17de14fbba31 100644
> --- a/drivers/media/platform/exynos4-is/fimc-lite.c
> +++ b/drivers/media/platform/exynos4-is/fimc-lite.c
> @@ -1614,6 +1614,9 @@ static int fimc_lite_remove(struct platform_device *pdev)
>  	struct fimc_lite *fimc = platform_get_drvdata(pdev);
>  	struct device *dev = &pdev->dev;
>  
> +	if (!pm_runtime_enabled(dev))
> +		clk_disable_unprepare(fimc->clock);
> +
>  	pm_runtime_disable(dev);
>  	pm_runtime_set_suspended(dev);
>  	fimc_lite_unregister_capture_subdev(fimc);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
