Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E07721BDEC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 15:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlthWXlg37RX5EOf0Mx6tdRhbvoKN7Wx0hUcaGK2SZ0=; b=dGrSJ5fD0KkjvB
	DiG76rd/EpmsR1EXrsbJZSZ/V0J3OsFBjeef8uvLEV4MfCOgAyIrn5HBit4Ae97Xd8hDO8wNCzmhw
	hzPOPPKmM6iAJEOQkFBmZrs3rfggxPDVN8/fnENgLqglcH40ovgGYKt3aRJcHOO52rrGvJDu9IY9r
	36LuR3lVkQiEg17kf//JityzVQ6/31NofOvVAFSo2TbWsGOCj0myJJgk6SpRDmlgDCzwQe41L+Ehs
	lvQKDamQb/OzHZONdeNe+f8Kj4qKVYySy8kpKKcR8DZ7xkL22UByC/KTIzkXn3Akccw4LgF7n0Fg9
	G6tVJHWYjtpZxZd5hXyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmxH-00045C-NB; Wed, 29 Apr 2020 13:40:51 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmv0-00077l-9l
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 13:38:32 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03TDWLDs030996; Wed, 29 Apr 2020 15:38:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=1c+9ulLdfVEh/Q0upa3QLpGbsPOwrW8hiYWHA/MwWE4=;
 b=iJSd+3uG+4/NHLyHFb2RXlYu3GhLhCZHEg/KdVHdD/FqwZAPhG1Dsl+eUZrT5mpqqzCx
 TIjrIpmqeUSNdPckLB0hc09qRC6XTxj7K3t9XfFW6RWaifvUvGPG/XGljC1UPdB0ZmJi
 6at3nAUeyruV0/WpnGzPywOuTMA4c2BvtZPKnx+pZNBptJMiWuCxQc68IB5YMBYC7UFu
 QN6C+uan5fNPn4evmaiGrq2jtKc3+3/PqXw4iwW/u/bMByp8aN+kYxHegLxC4E62H/CS
 nMRm6pB7mh6AY/X4h8Qo5WPJEpc8HITkNOrNFk/Sqi9owbjdfjrjIwQxCBTne5BbEC8l gA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30n4j62sya-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 15:38:27 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 08472100034;
 Wed, 29 Apr 2020 15:38:27 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EB7C221F699;
 Wed, 29 Apr 2020 15:38:26 +0200 (CEST)
Received: from lmecxl0889.tpe.st.com (10.75.127.47) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 Apr
 2020 15:38:26 +0200
Subject: Re: [PATCH v2 06/12] remoteproc: stm32: Get coprocessor state
To: Mathieu Poirier <mathieu.poirier@linaro.org>, <bjorn.andersson@linaro.org>,
 <ohad@wizery.com>, <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-7-mathieu.poirier@linaro.org>
From: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Message-ID: <faa9b0e1-2e2f-609f-c436-2a58223f5f72@st.com>
Date: Wed, 29 Apr 2020 15:38:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200424202505.29562-7-mathieu.poirier@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-29_05:2020-04-29,
 2020-04-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_063830_650360_0CF798AE 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, linux-remoteproc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/24/20 10:24 PM, Mathieu Poirier wrote:
> Introduce the required mechanic to get the state of the M4 when the
> remoteproc core is initialising.
> 
> Mainly based on the work published by Arnaud Pouliquen [1].
> 
> [1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
> ---
>  drivers/remoteproc/stm32_rproc.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index a285f338bed8..89fbd2ffac93 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -38,6 +38,15 @@
>  #define STM32_MBX_VQ1_ID	1
>  #define STM32_MBX_SHUTDOWN	"shutdown"
>  
> +#define RSC_TBL_SIZE		(1024)
> +
> +#define M4_STATE_OFF		0
> +#define M4_STATE_INI		1
> +#define M4_STATE_CRUN		2
> +#define M4_STATE_CSTOP		3
> +#define M4_STATE_STANDBY	4
> +#define M4_STATE_CRASH		5
> +
>  struct stm32_syscon {
>  	struct regmap *map;
>  	u32 reg;
> @@ -635,12 +644,23 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev,
>  	return 0;
>  }
>  
> +static int stm32_rproc_get_m4_status(struct stm32_rproc *ddata,
> +				     unsigned int *state)
> +{
> +	/* See stm32_rproc_parse_dt() */
> +	if (!ddata->m4_state.map)
> +		return -EINVAL;
> +
> +	return regmap_read(ddata->m4_state.map, ddata->m4_state.reg, state);
> +}
i would manage here the default state depending on the error types
if (!ddata->m4_state.map {
	/* 
	 * We couldn't get the coprocessor's state, assume
	 * it is not running.
	 */
	state = M4_STATE_OFF;

	return 0;
}

return regmap_read(ddata->m4_state.map, ddata->m4_state.reg, state);



> +
>  static int stm32_rproc_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct stm32_rproc *ddata;
>  	struct device_node *np = dev->of_node;
>  	struct rproc *rproc;
> +	unsigned int state;
>  	bool auto_boot = false;
>  	int ret;
>  
> @@ -664,6 +684,15 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto free_rproc;
>  
> +	ret = stm32_rproc_get_m4_status(ddata, &state);
> +	if (ret) {
> +		/*
> +		 * We couldn't get the coprocessor's state, assume
> +		 * it is not running.
> +		 */
> +		state = M4_STATE_OFF;

So here just handle the error;

Regards
Arnaud
> +	}
> +
>  	rproc->auto_boot = auto_boot;
>  	rproc->has_iommu = false;
>  	ddata->workqueue = create_workqueue(dev_name(dev));
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
