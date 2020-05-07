Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DC91C867B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/pSn3fQnFQ957cFOwZTO0gdUhB/kCurxgqsGPcC7Mo=; b=KOpPCTKD8HRLhu
	AqjMa33WEHkL62qKNSzbigJHQORqmQ5q2cKAOzzzkVBQgXengCwC/wImW+ND3xiApE+BctKpLL4sX
	IeOHnHeOCSYtxD8F10CYJx8+VGoz8xFO91LyQRe2IKNMN+w8asGRKOxqjIYZF6AlgV/fpKfylSPV9
	a2hnfdCNzjHIifwqbi8Ftdo3Hzh4vRpkV3BPTujqyF1ZHYpS5wWghVjf/cbbjkKv9dkc4d1lSSfQD
	Uczl4H5xmdPuIN03bwmb3Q5j81LgZhSGeepLmGp+lRfSYhlvk8sTPB1qFnBPAcB0/UpWUb5QYr8Lp
	Pr2XZvF9e5kf8Zd4wgkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdZx-00041R-Fk; Thu, 07 May 2020 10:16:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdZp-00040W-1q; Thu, 07 May 2020 10:16:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 036B2D6E;
 Thu,  7 May 2020 03:16:22 -0700 (PDT)
Received: from [192.168.2.22] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DFF403F71F;
 Thu,  7 May 2020 03:16:20 -0700 (PDT)
Subject: Re: [PATCH RFC 4/8] arm64: dts: actions: disable sps node from S700
To: Amit Singh Tomar <amittomer25@gmail.com>, afaerber@suse.de,
 manivannan.sadhasivam@linaro.org, robh+dt@kernel.org
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
 <1588761371-9078-5-git-send-email-amittomer25@gmail.com>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Organization: ARM Ltd.
Message-ID: <8cf98b73-8c8e-b9d7-989b-f1e869c990d5@arm.com>
Date: Thu, 7 May 2020 11:15:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588761371-9078-5-git-send-email-amittomer25@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_031625_134032_E992BA55 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/05/2020 11:36, Amit Singh Tomar wrote:
> After commit 7cdf8446ed1d ("arm64: dts: actions: Add pinctrl node for
> Actions Semi S700") following error has been observed while booting
> Linux on Cubieboard7-lite(based on S700 SoC).
> 
> [    0.257415] pinctrl-s700 e01b0000.pinctrl: can't request region for
> resource [mem 0xe01b0000-0xe01b0fff]
> [    0.266902] pinctrl-s700: probe of e01b0000.pinctrl failed with error -16
> 
> This is due to the fact that memory range for "sps" power domain controller
> clashes with pinctrl.
> 
> This commit fixes it by disabling "sps" node, it is safe as "sps" is not
> being used at the moment.
> 
> Fixes: 7cdf8446ed1d ("arm64: dts: actions: Add pinctrl node for Actions
> Semi S700")

But this is more of a hack than a proper solution, right? Especially
since you actually need the SPS later on (patch 8/8).
It's probably good enough to prove that the DMA and MMC parts are
working, but should not be merged.

Cheers,
Andre.

> 
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
> ---
>  arch/arm64/boot/dts/actions/s700.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
> index 2006ad5424fa..0397c5dd3dec 100644
> --- a/arch/arm64/boot/dts/actions/s700.dtsi
> +++ b/arch/arm64/boot/dts/actions/s700.dtsi
> @@ -220,6 +220,7 @@
>  			compatible = "actions,s700-sps";
>  			reg = <0x0 0xe01b0100 0x0 0x100>;
>  			#power-domain-cells = <1>;
> +			status = "disabled";
>  		};
>  
>  		timer: timer@e024c000 {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
