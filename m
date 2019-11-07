Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A62F2547
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 03:22:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3blI8+A5FapSP2Pp1OnlR/RIHPrCFUXDdPPVdnlX2rY=; b=FrbOlHo68ptiMz
	kSygBF2XAJEZn2+yyXm5aEWtT/TZ0kHaHWGHOcjKl+PxJB/cWoeE9nVA04zDGqjUDAu/eqb9tQnrg
	63JLDVKH/DlxUP7HJ9Gqc/CKtOzmyd8Y83w6lDT9yUn8a7GxchqjjtmtRko+FsuSDw+srhPcgr22W
	OQ8aq8QzJTowqYWapFYPd7JY0he2wnzMejpuRsYdDpb5lzma0SOKpwwAPuEk2jSG1p+q6qSCIHuOm
	OuAg/nWJ4U0up17jsw2vLpJAR3hPIJE2l4yGwIOfLxGi4Mtn24bi+at8tYB0DszS+lU+0FVagUvjW
	wngPn6q8Js9dwzSaJo9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSXRY-0002D1-7Y; Thu, 07 Nov 2019 02:22:40 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSXRP-0002CZ-S6
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 02:22:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id k7so394018pll.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 18:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NIN5v3fAUcj/LrA9LEeK5InHeUpLOw2uQDiHG191Meg=;
 b=dEkXwsxI/7/hNhGSyjVTk1KO+wKhv2QUccoxYIopV5I/6lGrN0QN4OfFpzJh33q0xP
 jntgoLq3q6dRzyr58WWrVZawJw2P5iEKzt8kAwj5XUf6PwoGhp202WE4Z06S8IgS9Qni
 mCzAhzT01/lCle8rtKQFayydGux/WcK7WRbFKgGDaeTUoVnzgpf+7HZL1wXOSixUqxsx
 PBcoqIsi0D8lRq4Ke927WyMdkKJVJa2NTrLmR4WG1c+o8g0K2M/4Pd5/PNEvnIiBLRgG
 rchS43/fK/ot4LPMbERie0b0qCcM29DX2LS/VrgoZSrMc4eAjwKLXnjpuZ3SN5MI7bUg
 N9XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NIN5v3fAUcj/LrA9LEeK5InHeUpLOw2uQDiHG191Meg=;
 b=dA2bR76cB2Jm+uGzes3TzlhrRwY6hcJ2WRpESQD5u6B9M1YQ8pDzhwdfWF06+BKOR5
 JeGk36pz38OEgj78kQDpBBhlLPEdKyfc7fmzRqYVR/Zc+Zefh8+Jg1ZdEVH4eRnwXFYF
 ujkZ1jLcHQbUXJ5fqO4EL3OXcg6LvG6b0CNVY09n1/3GooGZhlkcKiCeKH2JJJihshCT
 1+UQ9e5V0R0QtolXF8GqRo0ogaRjrIMetrA9WWFH5KPLGGxE+aBUgLxxSwf5Le4h7jo9
 38zXgy4T08tY/iM1gdqF386zdFkt/UdsBLw1kAbb8EPNmPLrj/AfZdzGTck7VHFDgjZ4
 Ig/w==
X-Gm-Message-State: APjAAAU5dyBBnubgx7QNyHvt83/3YarmEBXuoNYvZPPYtYKtHH+BDNYF
 C0gwIUY21NcHFs67bfcRW710Sg==
X-Google-Smtp-Source: APXvYqwCkWoXqJ9eKOopzqrHOLc2N2rsz96iqN0wSUDBFmcihEHNZvH3q7JRpRvqafMJedRwQCgxxw==
X-Received: by 2002:a17:902:b40e:: with SMTP id
 x14mr1005028plr.262.1573093351235; 
 Wed, 06 Nov 2019 18:22:31 -0800 (PST)
Received: from localhost ([122.171.110.253])
 by smtp.gmail.com with ESMTPSA id z25sm326951pfa.88.2019.11.06.18.22.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Nov 2019 18:22:30 -0800 (PST)
Date: Thu, 7 Nov 2019 07:52:27 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH 11/11] thermal: zx2967: Appease the kernel-doc deity
Message-ID: <20191107022227.kw7vu2vhbqqjjsnv@vireshk-i7>
References: <cover.1573046440.git.amit.kucheria@linaro.org>
 <b8cca2b414eeb2db19f297571dd4654a733a2417.1573046440.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8cca2b414eeb2db19f297571dd4654a733a2417.1573046440.git.amit.kucheria@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_182231_906631_AEF08571 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 edubezval@gmail.com, Kukjin Kim <kgene@kernel.org>,
 Guillaume La Roque <glaroque@baylibre.com>, linux-pm@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Jun Nie <jun.nie@linaro.org>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-11-19, 18:58, Amit Kucheria wrote:
> Fix up the following warning when compiled with make W=1:
> 
> linux.git/drivers/thermal/zx2967_thermal.c:57: warning: Function
> parameter or member 'dev' not described in 'zx2967_thermal_priv'
> 
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  drivers/thermal/zx2967_thermal.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/thermal/zx2967_thermal.c b/drivers/thermal/zx2967_thermal.c
> index 7c8a82c8e1e92..8e3a2d3c2f9a3 100644
> --- a/drivers/thermal/zx2967_thermal.c
> +++ b/drivers/thermal/zx2967_thermal.c
> @@ -45,6 +45,7 @@
>   * @clk_topcrm: topcrm clk structure
>   * @clk_apb: apb clk structure
>   * @regs: pointer to base address of the thermal sensor
> + * @dev: struct device pointer
>   */
>  
>  struct zx2967_thermal_priv {

Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
