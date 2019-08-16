Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 309B48F8DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 04:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yRA6MsfCd+QftodfkmiqevrtUGV9oCqQ+bRBztv8Kyc=; b=lHztF9Xy1MLnIjYN80o3Dx8Xh
	6QuIkY83FV2XCIrRNl7WJ1OxJ/CqNzOT/ZTYMx/hDdN9pib46Bx9KKO2pXphjuknY7bUf6cci29ra
	7eZiw8fnsGSndhrtn0nTvaskZNtMeuHX7sDeLCBSmNEFCD7x53tGfoxLxVvtUGnhKWSmGqTDykqRY
	zWLTQMF90q7eo/i4iumxuXyciMVsQ6uwkdKb6NcwSLFQFuiNcUMY6hUjxm7iKbvpmryBf7O6kSuYr
	gUuaib06gvW7/+7wAb0dbXNWHAZtcNUD85IAnrc43xHPBUJK0n7murYYg3KLwIe3qSBOI0Hf6pwuK
	HWESKeDOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyS13-0002v7-Gv; Fri, 16 Aug 2019 02:30:57 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyS0q-0002ug-AG
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 02:30:45 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 17DA16B8C6DD48BE7047
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 10:30:37 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Fri, 16 Aug 2019
 10:30:27 +0800
Subject: Re: [PATCH] arm64: defconfig: Enable CONFIG_ACPI_APEI_PCIEAER
To: Zhou Wang <wangzhou1@hisilicon.com>, <xuwei5@huawei.com>
References: <1564363944-208181-1-git-send-email-wangzhou1@hisilicon.com>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5D561543.3040505@hisilicon.com>
Date: Fri, 16 Aug 2019 10:30:27 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1564363944-208181-1-git-send-email-wangzhou1@hisilicon.com>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_193044_534459_2A4E34B6 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linuxarm@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zhou,

On 2019/7/29 9:32, Zhou Wang wrote:
> HiSilicon D06 board needs this config to support PCIe AER error report.
>
> Signed-off-by: Zhou Wang <wangzhou1@hisilicon.com>

Thanks!
Patch applied and the commit message changed as follows:

     Enable the ACPI_APEI_PCIEAER configuration to support PCIe AER 
error report
     for the Hisilicon D06 board and the dependencies PCIEAER and 
ACPI_APEI have
     been enabled in the default config.

Best Regards,
Wei

> ---
>   arch/arm64/configs/defconfig | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 74f0a19..8167d6f 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -119,6 +119,7 @@ CONFIG_IMX_SCU_PD=y
>   CONFIG_ACPI=y
>   CONFIG_ACPI_APEI=y
>   CONFIG_ACPI_APEI_GHES=y
> +CONFIG_ACPI_APEI_PCIEAER=y
>   CONFIG_ACPI_APEI_MEMORY_FAILURE=y
>   CONFIG_ACPI_APEI_EINJ=y
>   CONFIG_VIRTUALIZATION=y



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
