Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 716638EAAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hN9waWQk/JurlDcG93VAyWQHwhA40xJVvqNa1X+06+Q=; b=LXdh9DHXEF95aI
	VbKCmv267Hj9GMBB78Md64yDfY7ry+BZLwiWGjk0vKjeD/D6tiGLrbtYnpQHtVNH8VCmw3QGiqZMO
	7POscby3MKyW8ND5ltvRVdkYt7uQwMlAGdP/A+iEdONGVYnP2E7qC9QnWN8ruvST8Cf+hXrmCe272
	nsB0Xf8FWww7+npGx0hP6HTRaOzPp90IquzrdcaGGAyOu0z9bh5rmgHwnDIb009JgaIEb0D2lfEtE
	nMtIoVnJ7/W61SZtFuT4ATt3z1AKL9+mbWLMEop+tKiQRQXZo6ZXzzgnVCNNw9AboePFzwwybEvrP
	lKSYG1Ol5GdNrZ2NMGVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyEGs-0006nK-1M; Thu, 15 Aug 2019 11:50:22 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyEGd-0006UR-47
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:50:08 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 04:50:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="184601005"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122])
 ([10.237.72.122])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Aug 2019 04:50:00 -0700
Subject: Re: [PATCH v1 4/4] mmc: sdhci-of-esdhc: add erratum A011334 support
 in ls1028a 1.0 SoC
To: Yinbo Zhu <yinbo.zhu@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Li Yang <leoyang.li@nxp.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Amit Jain <amit.jain_1@nxp.com>, Yangbo Lu <yangbo.lu@nxp.com>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, Rajesh Bhagat
 <rajesh.bhagat@nxp.com>, Ashish Kumar <Ashish.Kumar@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org
References: <20190814072649.8237-1-yinbo.zhu@nxp.com>
 <20190814072649.8237-4-yinbo.zhu@nxp.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <eeaf2862-8f05-e813-917b-a8358e6d90ab@intel.com>
Date: Thu, 15 Aug 2019 14:48:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814072649.8237-4-yinbo.zhu@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_045007_231747_AD87F9CA 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: Alison Wang <alison.wang@nxp.com>,
 Alex Marginean <alexandru.marginean@nxp.com>, xiaobo.xie@nxp.com,
 Catalin Horghidan <catalin.horghidan@nxp.com>,
 Rajat Srivastava <rajat.srivastava@nxp.com>, jiafei.pan@nxp.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/08/19 10:26 AM, Yinbo Zhu wrote:
> This patch is to add erratum A011334 support in ls1028a 1.0 SoC
> 
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-of-esdhc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mmc/host/sdhci-of-esdhc.c b/drivers/mmc/host/sdhci-of-esdhc.c
> index b16f7d440f78..eb2b290447fc 100644
> --- a/drivers/mmc/host/sdhci-of-esdhc.c
> +++ b/drivers/mmc/host/sdhci-of-esdhc.c
> @@ -1006,6 +1006,7 @@ static struct soc_device_attribute soc_incorrect_hostver[] = {
>  static struct soc_device_attribute soc_fixup_sdhc_clkdivs[] = {
>  	{ .family = "QorIQ LX2160A", .revision = "1.0", },
>  	{ .family = "QorIQ LX2160A", .revision = "2.0", },
> +	{ .family = "QorIQ LS1028A", .revision = "1.0", },
>  	{ },
>  };
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
