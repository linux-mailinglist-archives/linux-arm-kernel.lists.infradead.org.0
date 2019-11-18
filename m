Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7D91004BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:50:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4auETw5/SmbLbWfYfbO8gyB3UrxF0i5uFpJoRL/Yk8=; b=akJBcJKFlgMczR
	HyaJ9+OjsAfxVLLDLG23OZNanMYqs+eIjcEeoUnBCXYjcMVCuqaOl+2x/7b2UeX1IK/tGFsmrsaC8
	OzQLDyEmqs0iGSaxeHBzgdhOlKpxtZSsNzEPgTiM5H636+jHpaOffsDNHwqYf72jklW0pNFUnufhq
	ahNr/w8NqQcn1jPe2w6F79npG7RIkl7VQdlTvvvhuIcNcSCXJknzp+HTek/fJI5A8xyClHFCzO3zo
	jPadvBbrWgbP7DpYv2Ecdo4FsXBwImVOF8Gd/qYBPXIm8HbHZUbldTFDnTOwk3D8VYvmDLq6f3/t8
	+t91fBvaIEo4Ru/UFz7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfYN-00081r-Gw; Mon, 18 Nov 2019 11:50:47 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfYF-00081T-DR
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:50:40 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5dd2858b0000>; Mon, 18 Nov 2019 03:50:35 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 18 Nov 2019 03:50:38 -0800
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 18 Nov 2019 03:50:38 -0800
Received: from [10.26.11.241] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 18 Nov
 2019 11:50:36 +0000
Subject: Re: [PATCH 1/3] soc/tegra: pmc: Use lower-case for hexadecimal
 literals
To: Thierry Reding <thierry.reding@gmail.com>
References: <20191118063348.1816857-1-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <823d83ea-43fe-ff95-dac4-13d0175cfc18@nvidia.com>
Date: Mon, 18 Nov 2019 11:50:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118063348.1816857-1-thierry.reding@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1574077835; bh=fW4OBLsb3fhl18/LrFjJiXznAlL7+PUeaFu8tV8alv0=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=NsNgGvVO4fkgb1rkQ7Yz6Jo1PMf1y0dW//+EdBV3Mva5GcrcU2UeT6h1K4jeDhCBV
 r3uA3Gk4+xxSSMnfwlgPYbnnAUGBaKULCNAlvp9OGUyHXpGbW9vx3fs7nXkAI2ZKDf
 j05s4kXWTeoV+jT2WD4N81nLdMoIAZnjuQadf+YW6cwjsi9+H3waXJEiyCC5RaX9or
 DRTHXwM7gY8AZhSe+0lKg7ewFbaTdACLugHISekDnEWZ4W0n3gzuCe5Y9xhePHPcN2
 DojBAV5mpI3s9KW+0cI4dG06o/0ItrfDe171vXmaVCwEPR5elJOXFwipZjmlVHB5oj
 sayPCJlyDS4NQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_035039_464170_14354027 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Sowjanya Komatineni <skomatineni@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Vidya Sagar <vidyas@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 18/11/2019 06:33, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The remainder of the file uses lower-case for hexadecimal literals, so
> change the only odd-one-out occurrence for consistency.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  drivers/soc/tegra/pmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
> index 4e51248634f8..927eeecd34e5 100644
> --- a/drivers/soc/tegra/pmc.c
> +++ b/drivers/soc/tegra/pmc.c
> @@ -2805,7 +2805,7 @@ static const struct tegra_pmc_regs tegra186_pmc_regs = {
>  	.dpd2_status = 0x80,
>  	.rst_status = 0x70,
>  	.rst_source_shift = 0x2,
> -	.rst_source_mask = 0x3C,
> +	.rst_source_mask = 0x3c,
>  	.rst_level_shift = 0x0,
>  	.rst_level_mask = 0x3,
>  };

Acked-by: Jon Hunter <jonathanh@nvidia.com>

Cheers!
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
