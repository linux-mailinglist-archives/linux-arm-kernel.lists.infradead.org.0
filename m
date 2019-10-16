Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223F4D8FDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 13:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFk5P3jSS0P2s7AU6Q3tyo+4AaDIiK+9oropSBiYKvk=; b=rcsboFm5ZuFlag
	gn9jvzgVs5djIZ5aku3Ltf7XyMR7KnYGvmSiV2W+sKQhfKYKIf6GZCC019czXYEVjtOsjax8sq+FP
	CtG74mYrgNrhXKjL+dPmnNLKcrqCa/Uv4tcnCZFI+uh0I8OEFhWHNfKfeOgJfPkTUor1K6Geg+u4F
	Dj63sNuIuzaw9lXq5Hlq9YTMUeXWJOfuChJo7XDMo3rhzz9CuGMQ/D3DLtqxjdHNmefb6EYNhby4d
	Dfx25XwWjDxHdq8f32vrgxzy3A3TEoBDNg81WVR7bQ9lSV1dY/kUn135bNymOMAz0qDOCJsS85zn5
	0sedna7E51xKUfdjk1Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKhl7-0005kR-Rj; Wed, 16 Oct 2019 11:46:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKhky-0005jT-6G
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 11:46:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B591B28;
 Wed, 16 Oct 2019 04:46:14 -0700 (PDT)
Received: from [10.1.31.184] (e121487-lin.cambridge.arm.com [10.1.31.184])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E0043F6C4;
 Wed, 16 Oct 2019 04:46:12 -0700 (PDT)
Subject: Re: [PATCH] arm64: defconfig: add JFFS FS support in defconfig
To: "Ooi, Joyce" <joyce.ooi@intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>
References: <1571218528-12126-1-git-send-email-joyce.ooi@intel.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <8869edbc-e7b4-dfb3-1567-740132820133@arm.com>
Date: Wed, 16 Oct 2019 12:46:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1571218528-12126-1-git-send-email-joyce.ooi@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_044620_277763_ECCECB2C 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anson Huang <Anson.Huang@nxp.com>, Arnd Bergmann <arnd@arndb.de>,
 Ong Hean Loong <hean.loong.ong@intel.com>,
 See Chin Liang <chin.liang.see@intel.com>, linux-kernel@vger.kernel.org,
 Tan Ley Foon <ley.foon.tan@intel.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Maxime Ripard <mripard@kernel.org>, Olof Johansson <olof@lixom.net>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/16/19 10:35 AM, Ooi, Joyce wrote:
> This patch adds JFFS2 FS support and remove QSPI Sector 4K size force in
> the default defconfig
> 
> Signed-off-by: Ooi, Joyce <joyce.ooi@intel.com>
> ---
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index c9adae4..6080c6e 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -860,3 +860,5 @@ CONFIG_DEBUG_KERNEL=y
>  # CONFIG_DEBUG_PREEMPT is not set
>  # CONFIG_FTRACE is not set
>  CONFIG_MEMTEST=y
> +CONFIG_JFFS2_FS=y
> +CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=n
                                   ^^^^
This is incorrect syntax for disabling config option. Correct one is

# CONFIG_MTD_SPI_NOR_USE_4K_SECTORS is not set

However, it looks to me you want to remove it from defconfig rather than
force it to be unset.

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
