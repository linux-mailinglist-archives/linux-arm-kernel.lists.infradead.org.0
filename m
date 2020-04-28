Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768B31BBD9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0Y2zua6FaGeHk6A5iwxrOALmauifcCjo4QUsTCdeg8=; b=kS0i/PhHL62agf
	j4A+KlpIB1EF5sKIZtsDIBu5gPurxXNh1PX9Y7D+gPq7Hw9Pb0NAvlOt2NAU0pFw5UuCCohoTW4NM
	+YBUSWYzZyeaJ6sSY/pBD/9soV4dU9p0iiS4BXWD9iRorCSQNY8egqmjMNu9nCXLadQw3AVmNDIvG
	VZ8Ga7AK/JuMxoWc6JUwpx2f2jT+HAYs/7Q4wRnjkC/0Wufb7+GOSUEuR5pVxi2Rrw8uv+0Sv0isV
	5k3NdllbQjvhpMsT+mGOGCaM5vSCTZzAht0VP7RBtTdyHDu9iR8QPhJM82/uieuzQTe5/0jSWJK3/
	L3KNw2yyDD3mx8EsBzIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPN3-0003rd-7k; Tue, 28 Apr 2020 12:29:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPMt-0003qN-R0; Tue, 28 Apr 2020 12:29:45 +0000
X-UUID: 358b2e3429084e688c347b59f59eba32-20200428
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=x82FlLAEXLzeRSBYPB5msRYu1TSUP46MR6Ng6NKD4bQ=; 
 b=BQ9HwHWaqAbYJZuEfgm6yf+6PYVc3qEbxlpdWNnil9yV1ghDnx/fKbFmvoViLddfi75e1yE9x1i4SCL83m5pGMi77fxufghyb/ohwSMgqzzgVFIAheyM8Waxs+QOmp+18Ago4lsOyA9rPdkHWIKTMF3256wmUNlhsb2EqAfJp00=;
X-UUID: 358b2e3429084e688c347b59f59eba32-20200428
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.mao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 712341618; Tue, 28 Apr 2020 04:29:33 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 28 Apr 2020 05:29:37 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 28 Apr 2020 20:29:34 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 28 Apr 2020 20:29:32 +0800
Message-ID: <1588076927.730.2.camel@mhfsdcap03>
Subject: Re: [PATCH v5 3/5] mmc: mediatek: refine msdc timeout api
From: "yong.mao@mediatek.com" <yong.mao@mediatek.com>
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Date: Tue, 28 Apr 2020 20:28:47 +0800
In-Reply-To: <1588031768-23677-4-git-send-email-chun-hung.wu@mediatek.com>
References: <1588031768-23677-1-git-send-email-chun-hung.wu@mediatek.com>
 <1588031768-23677-4-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E01AAD61AB5BB27155A77063CBEA1604E31F717DA3D8618061EF502A15332D7C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_052943_881836_EB9919F1 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kate
 Stewart <kstewart@linuxfoundation.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 wsd_upstream@mediatek.com, linux-mmc@vger.kernel.org, Linus
 Walleij <linus.walleij@linaro.org>, Al
 Cooper <alcooperx@gmail.com>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Florian Fainelli <f.fainelli@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Andy Gross <agross@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Allison Randal <allison@lohutok.net>, kernel-team@android.com,
 Pan Bian <bianpan2016@163.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, mirq-linux@rere.qmqm.pl,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Thomas
 Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-04-28 at 07:56 +0800, Chun-Hung Wu wrote:
> Extract msdc timeout api common part to have
> better code architecture and avoid redundent
please correct the word "redundant" in next version
> code.
> 
> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Acked-by: Yong Mao <yong.mao@mediatek.com>
> ---
>  drivers/mmc/host/mtk-sd.c | 32 ++++++++++++++++++++++----------
>  1 file changed, 22 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> index 7726dcf..a2328fb 100644
> --- a/drivers/mmc/host/mtk-sd.c
> +++ b/drivers/mmc/host/mtk-sd.c
> @@ -699,21 +699,21 @@ static void msdc_unprepare_data(struct msdc_host *host, struct mmc_request *mrq)
>  	}
>  }
>  
> -/* clock control primitives */
> -static void msdc_set_timeout(struct msdc_host *host, u32 ns, u32 clks)
> +static u64 msdc_timeout_cal(struct msdc_host *host, u64 ns, u64 clks)
>  {
> -	u32 timeout, clk_ns;
> +	u64 timeout, clk_ns;
>  	u32 mode = 0;
>  
> -	host->timeout_ns = ns;
> -	host->timeout_clks = clks;
>  	if (host->mmc->actual_clock == 0) {
>  		timeout = 0;
>  	} else {
> -		clk_ns  = 1000000000UL / host->mmc->actual_clock;
> -		timeout = (ns + clk_ns - 1) / clk_ns + clks;
> +		clk_ns  = 1000000000ULL;
> +		do_div(clk_ns, host->mmc->actual_clock);
> +		timeout = ns + clk_ns - 1;
> +		do_div(timeout, clk_ns);
> +		timeout += clks;
>  		/* in 1048576 sclk cycle unit */
> -		timeout = (timeout + (0x1 << 20) - 1) >> 20;
> +		timeout = DIV_ROUND_UP(timeout, (0x1 << 20));
>  		if (host->dev_comp->clk_div_bits == 8)
>  			sdr_get_field(host->base + MSDC_CFG,
>  				      MSDC_CFG_CKMOD, &mode);
> @@ -723,9 +723,21 @@ static void msdc_set_timeout(struct msdc_host *host, u32 ns, u32 clks)
>  		/*DDR mode will double the clk cycles for data timeout */
>  		timeout = mode >= 2 ? timeout * 2 : timeout;
>  		timeout = timeout > 1 ? timeout - 1 : 0;
> -		timeout = timeout > 255 ? 255 : timeout;
>  	}
> -	sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC, timeout);
> +	return timeout;
> +}
> +
> +/* clock control primitives */
> +static void msdc_set_timeout(struct msdc_host *host, u64 ns, u64 clks)
> +{
> +	u64 timeout;
> +
> +	host->timeout_ns = ns;
> +	host->timeout_clks = clks;
> +
> +	timeout = msdc_timeout_cal(host, ns, clks);
> +	sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC,
> +		      (u32)(timeout > 255 ? 255 : timeout));
>  }
>  
>  static void msdc_gate_clock(struct msdc_host *host)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
