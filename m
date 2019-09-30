Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5888C2269
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2OVA5CX5Cpn1bFnJSEkuZR0xoLwIZLd7rM3iT56qEdg=; b=ZU9dI6hxTD3IiO
	a+HU2S/lcpJZbyZPDqtjOaml8HovBcC95y8EZub0fOEmU1MoM3aVME2OLl6V65nYTM38krDGXXprl
	0zjzRp6XoMOwGcM6NxjKuZjtDGZDS74jD6ecg+i9yPtucdeiGp2j94QlRXWvPvkdjoKd+Eir1k4eU
	2bIR3TbHWO5bph8LbMgOBhq/BUdmyBMWXjZEUplo6gC6TcesmWUHQEG0oY1G+3q73kMfCEBSIZKwD
	eKpkjZAJpuaLTm/pPC1JiquWf7xbZWtkSQE5DWwLdkY0rcRxgkoAcId+RCl3bKQ+hGJqyFaYplZFh
	7qfLY+ZdB+50sckGErrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEw39-0005I9-DA; Mon, 30 Sep 2019 13:49:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEw2x-0005HQ-0F
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:49:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 551602086A;
 Mon, 30 Sep 2019 13:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569851342;
 bh=FCh5P+PLkf8Fy6u6DVHDWSyXy5Kb48cMb9OwoT818PQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nw3vrRnoJ/wyKkOghJGAhrfUjB4HUOGPzCULFD4Kr3iQLmw7IAL1yY1IbWzMPK4da
 eWbi6TE0ysvXKKMXYG8TK4x25jKiw/UAo+8HKTHiQZ8fv8/6pjbdMTDnYfvnQhdogc
 3egyNZeMKQN7sD0n38+1a4P88VMa2muNcfOChcBU=
Date: Mon, 30 Sep 2019 14:48:57 +0100
From: Will Deacon <will@kernel.org>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH v2 linux-next 4/4] arm64: configs: defconfig: Change
 CONFIG_REMOTEPROC from m to y
Message-ID: <20190930134856.umdoeq7k6ukmajij@willie-the-truck>
References: <20190920075946.13282-1-j-keerthy@ti.com>
 <20190920075946.13282-5-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920075946.13282-5-j-keerthy@ti.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_064903_065736_5D6C0454 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-omap@vger.kernel.org, arnd@arndb.de, tony@atomide.com,
 catalin.marinas@arm.com, nsekhar@ti.com, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, t-kristo@ti.com, olof@lixom.net, hch@lst.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 01:29:46PM +0530, Keerthy wrote:
> Commit 6334150e9a36 ("remoteproc: don't allow modular build")
> changes CONFIG_REMOTEPROC to a boolean from a tristate config
> option which inhibits all defconfigs marking CONFIG_REMOTEPROC as
> a module in compiling the remoteproc and dependent config options.
> 
> So fix the defconfig to have CONFIG_REMOTEPROC built in.
> 
> Fixes: 6334150e9a36 ("remoteproc: don't allow modular build")
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>  arch/arm64/configs/defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 8e05c39eab08..c9a867ac32d4 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -723,7 +723,7 @@ CONFIG_TEGRA_IOMMU_SMMU=y
>  CONFIG_ARM_SMMU=y
>  CONFIG_ARM_SMMU_V3=y
>  CONFIG_QCOM_IOMMU=y
> -CONFIG_REMOTEPROC=m
> +CONFIG_REMOTEPROC=y
>  CONFIG_QCOM_Q6V5_MSS=m
>  CONFIG_QCOM_Q6V5_PAS=m
>  CONFIG_QCOM_SYSMON=m

Acked-by: Will Deacon <will@kernel.org>

This fixes the following annoying warning from "make defconfig" on arm64:

  arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for REMOTEPROC

I'm assuming the fix will go via arm-soc, but I can take it otherwise
(please just let me know).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
