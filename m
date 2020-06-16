Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 060391FBEBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 21:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcbmxukZSbeAQJPWHHFEya8+KYQruj2uEXccLQJ2jk8=; b=qOiXruY0Q1RmP+
	Sci8nCyLzzOKWwWBqIYjXsfTrNilwnN80hhf/7pRyzfiBb5n+XuZCac9nST51YtWH2WEYX9S+OQN4
	qH5MR7R6KaG/D4OOKgqFPsHiMcufXQPtyZwl03dljyQu3xRoXYLnHUp5xxno402I69C7H+02sgdYg
	GGqhCrutDVeLMGFNPk6eerZE7OaY57v9eHLZOSrnjKTEduUObNo6b++SqOxJ+bQu5/hk4qpl3323X
	T9xntn46peGjIuTbr62axfrKXRe4x1E7VKAsjqTLYT36xGYpALxtqv5aWU39gw0qGN727AYoT4k+V
	zCsZdwbBFp2ddwrTQDgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlGvL-0004JH-Or; Tue, 16 Jun 2020 19:07:07 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlGvF-0004Iu-Nz
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 19:07:03 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ee918230000>; Tue, 16 Jun 2020 12:06:11 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 16 Jun 2020 12:06:59 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 16 Jun 2020 12:06:59 -0700
Received: from [10.26.75.222] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 16 Jun
 2020 19:06:58 +0000
Subject: Re: [PATCH 02/73] ARM: tegra: Remove simple clocks bus
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
 <20200616135238.3001888-3-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <74f8be81-216b-b69b-4517-c90d5f7d578a@nvidia.com>
Date: Tue, 16 Jun 2020 20:06:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200616135238.3001888-3-thierry.reding@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1592334371; bh=R2i0lM6/Q2GYNtUg/5aZk4Dq/DDByTEiEOBnYdFl5H4=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=oFNo6rWySVm7C3865r6yK8ZWn6xIfYx3w+gdXGcFYy4ryJlPY70EbiVggqKD+Lzvq
 IlTsdrdNw2nMaM7o9ryVRdiQetCmnx8jm9rrM+ZHrnj545vAHlp8DaKotrv1WYg6de
 kL8cy+aJdyVwiK+QZmCTQFJ4KTHEFVuW6c9BJVZvqmg0xEsRDl4H2VwWSPyRF71et5
 hYZ/dbeYG+HSxVgTf69FlPdbkhaMIySRSeFZHQHWRS64BZDIM4imkRtpdWZfpCRUi1
 WfwI1QPuXy6hqolXR4unVaVA3R3po9II7yVxWmD6MFRRSSmDNF76Sgj7evpu5U2C4u
 EWsHTlTNNvu6g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_120701_783985_8715944B 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 16/06/2020 14:51, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The standard way to do this is to list out the clocks at the top-level.
> Adopt the standard way to fix validation.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm/boot/dts/tegra114-dalmore.dts    | 15 ++++-----------
>  arch/arm/boot/dts/tegra114-roth.dts       | 15 ++++-----------
>  arch/arm/boot/dts/tegra114-tn7.dts        | 15 ++++-----------
>  arch/arm/boot/dts/tegra124-jetson-tk1.dts | 15 ++++-----------
>  arch/arm/boot/dts/tegra124-nyan.dtsi      | 15 ++++-----------
>  arch/arm/boot/dts/tegra124-venice2.dts    | 15 ++++-----------
>  arch/arm/boot/dts/tegra20-harmony.dts     | 15 ++++-----------
>  arch/arm/boot/dts/tegra20-paz00.dts       | 15 ++++-----------
>  arch/arm/boot/dts/tegra20-seaboard.dts    | 15 ++++-----------
>  arch/arm/boot/dts/tegra20-trimslice.dts   | 19 ++++++-------------
>  arch/arm/boot/dts/tegra20-ventana.dts     | 15 ++++-----------
>  arch/arm/boot/dts/tegra30-beaver.dts      | 15 ++++-----------
>  arch/arm/boot/dts/tegra30-cardhu.dtsi     | 15 ++++-----------
>  13 files changed, 54 insertions(+), 145 deletions(-)

...

> diff --git a/arch/arm/boot/dts/tegra20-trimslice.dts b/arch/arm/boot/dts/tegra20-trimslice.dts
> index 8debd3d3c20d..5b26482a55b7 100644
> --- a/arch/arm/boot/dts/tegra20-trimslice.dts
> +++ b/arch/arm/boot/dts/tegra20-trimslice.dts
> @@ -366,30 +366,23 @@ usb-phy@c5008000 {
>  		status = "okay";
>  	};
>  
> -	sdhci@c8000000 {
> +	mmc@c8000000 {
>  		status = "okay";
>  		broken-cd;
>  		bus-width = <4>;
>  	};
>  
> -	sdhci@c8000600 {
> +	mmc@c8000600 {
>  		status = "okay";
>  		cd-gpios = <&gpio TEGRA_GPIO(P, 1) GPIO_ACTIVE_LOW>;
>  		wp-gpios = <&gpio TEGRA_GPIO(P, 2) GPIO_ACTIVE_HIGH>;
>  		bus-width = <4>;
>  	};

I think that the above belongs in patch 13/73.

Jon
-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
