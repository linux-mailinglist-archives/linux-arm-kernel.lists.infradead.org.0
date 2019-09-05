Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D8DAA416
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3HrrSxCRTcEOAiOEmjwjSwyW251WlEA0HI3qVgXdZGY=; b=OqAaTd2Qm1qLZe+Bice0jPltW
	MDDNW06CfAswkvqK8iDuiAdtw4zYQRDEtdwIV+jMEhGA5WEzEV07Iq8XiNUM5OYsOB6J+AAyHhWT4
	9Ej6wXTI7Xinz3rTE6Wl10a0O/Qsav0aXL6WInsySq84M3T37idH7PG1kWTXwonzFEcImCsulHc9v
	WFZPuNUJx54qwV0vWm8hL7j+aM09MK2MtP5TuK9vnlQ0pXJrjavS6ivoKiYPaz+bOGo7BiRYNXznv
	xXDs8wQE5EGZyE8iiRTOqnMPcGN6/5aGolDHcLsdC1wvLeqSZ34GXiEArQktUJqxsBkF5NHb4HXA+
	8VFnkFp3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rbZ-0003cB-Rq; Thu, 05 Sep 2019 13:15:17 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rbO-0002Oh-95
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 13:15:07 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 06:15:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="177298824"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 05 Sep 2019 06:15:00 -0700
Received: from ravisha1-mobl1.amr.corp.intel.com (unknown [10.255.36.89])
 by linux.intel.com (Postfix) with ESMTP id 9C73B580105;
 Thu,  5 Sep 2019 06:14:58 -0700 (PDT)
Subject: Re: [alsa-devel] [PATCH -next] ASoC: SOF: imx8: Fix COMPILE_TEST error
To: YueHaibing <yuehaibing@huawei.com>, lgirdwood@gmail.com,
 broonie@kernel.org, perex@perex.cz, tiwai@suse.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, daniel.baluta@nxp.com
References: <20190905064400.24800-1-yuehaibing@huawei.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <d5a4b443-7530-75de-731f-b13cde66aea7@linux.intel.com>
Date: Thu, 5 Sep 2019 08:14:57 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905064400.24800-1-yuehaibing@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_061506_393841_83D4A18C 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/5/19 1:44 AM, YueHaibing wrote:
> When do compile test, if SND_SOC_SOF_OF is not set, we get:
> 
> sound/soc/sof/imx/imx8.o: In function `imx8_dsp_handle_request':
> imx8.c:(.text+0xb0): undefined reference to `snd_sof_ipc_msgs_rx'
> sound/soc/sof/imx/imx8.o: In function `imx8_ipc_msg_data':
> imx8.c:(.text+0xf4): undefined reference to `sof_mailbox_read'
> sound/soc/sof/imx/imx8.o: In function `imx8_dsp_handle_reply':
> imx8.c:(.text+0x160): undefined reference to `sof_mailbox_read'
> 
> Make SND_SOC_SOF_IMX_TOPLEVEL always depends on SND_SOC_SOF_OF
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 202acc565a1f ("ASoC: SOF: imx: Add i.MX8 HW support")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>

> ---
>   sound/soc/sof/imx/Kconfig | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
> index fd73d84..5acae75 100644
> --- a/sound/soc/sof/imx/Kconfig
> +++ b/sound/soc/sof/imx/Kconfig
> @@ -2,7 +2,8 @@
>   
>   config SND_SOC_SOF_IMX_TOPLEVEL
>   	bool "SOF support for NXP i.MX audio DSPs"
> -	depends on ARM64 && SND_SOC_SOF_OF || COMPILE_TEST
> +	depends on ARM64|| COMPILE_TEST
> +	depends on SND_SOC_SOF_OF
>   	help
>             This adds support for Sound Open Firmware for NXP i.MX platforms.
>             Say Y if you have such a device.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
