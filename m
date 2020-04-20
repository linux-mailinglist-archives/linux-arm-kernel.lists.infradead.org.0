Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FD61B0EC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5VaUFdOwDHoBHNNigIgfFEKJKkhOTBevMFISL4wHuU=; b=IGAtIej467rtGq
	ASbePtUFfIeoCrBBYbT/jourR1ffi0ML/mGmTnKGrDFTCcLmy/6nsRsPvypDAy+nquEeaP//qirs9
	4pSccCz5SrSkvDbo2ASMLHsIhQS56HHv0mBsSxrT5PLmQPy6TvRUKKzgT1zvQVhqaz1PD2mYkW5Hr
	dW9+ScEoSUESQlddBixuX4FWuE6ul+f78dIsFUsIdpOBqlYYHVONsBpGG0eBVq/8Cp0v2ibqfdQ8U
	gXTqkbQ3llHSy2bYqwYjKBySvRQhktp+vsS2VD87N22f6WvfkBtv47A10JhoP7Z2QMYjSevSEXfyI
	yXzxnp33mVz7DAoRtcDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXeL-0007Rl-Hl; Mon, 20 Apr 2020 14:43:53 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXeC-0007Qp-B7
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:43:45 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e9db4ac0000>; Mon, 20 Apr 2020 07:41:48 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 20 Apr 2020 07:43:42 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 20 Apr 2020 07:43:42 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 20 Apr
 2020 14:43:42 +0000
Received: from [10.26.73.5] (172.20.13.39) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 20 Apr
 2020 14:43:41 +0000
Subject: Re: [PATCH 1/2] soc/tegra: pmc: Enable PMIC wake event on Tegra186
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200417171117.2556374-1-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <ad9192c3-9835-0fb4-e4c5-9d719ba92d84@nvidia.com>
Date: Mon, 20 Apr 2020 15:43:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200417171117.2556374-1-thierry.reding@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1587393708; bh=GDcM0WjtKn4CMjkOnt2tPavdqktD1Z7rMLK1tu/JR0A=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=mGU/x2zkEg8aeIUk9eMSpFR/iIhKdZtSG+eNzkd4HZ6fAAPEKgWxKqefHZY78+BJQ
 mu6fLtWI6U1e/r4BxBaFK9jDJYmXtEzKtGxJCejCiUphAlqFiTtf4017GzufMyVBj9
 xRJ827Yh01KDVsmeeEP8D2RhiiZBZnHTm+d3X5eWqnqg+vGtvfdcDlmDb2OHBIc1vi
 FdmwLAhZTXRH9sSHgiwigvYXjcx05G16R5YbuwaSNnG/M1gsk5CsZq72I3Gx5IMeaG
 tYJegRNbGYOyvcYwKJnFjt5T80MZHgo5as54cMfY9VkFOZXfIrTjdYgNUIcC97hnDS
 5dRz4ocaSJ9GA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_074344_385536_C4FFD805 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 17/04/2020 18:11, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The PMIC wake event can be used to bring the system out of suspend based
> on certain events happening on the PMIC (such as an RTC alarm).
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  drivers/soc/tegra/pmc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
> index 1c533a969f54..72cfda7305d5 100644
> --- a/drivers/soc/tegra/pmc.c
> +++ b/drivers/soc/tegra/pmc.c
> @@ -3193,6 +3193,7 @@ static void tegra186_pmc_setup_irq_polarity(struct tegra_pmc *pmc,
>  }
>  
>  static const struct tegra_wake_event tegra186_wake_events[] = {
> +	TEGRA_WAKE_IRQ("pmu", 24, 209),
>  	TEGRA_WAKE_GPIO("power", 29, 1, TEGRA186_AON_GPIO(FF, 0)),
>  	TEGRA_WAKE_IRQ("rtc", 73, 10),
>  };
> 

Acked-by: Jon Hunter <jonathanh@nvidia.com>
Tested-by: Jon Hunter <jonathanh@nvidia.com>

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
