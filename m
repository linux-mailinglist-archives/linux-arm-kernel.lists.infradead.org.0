Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3AF1BE187
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:47:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFGMYk6IMkE6VORwWZwyrhtDUQT5tDNvD394yJWvND4=; b=IgrTG2LJDFL3rp
	ONyou1AoH+sFv7rWhIvDesJwuNVBDXn7W1PRT72SU5hebYzdb6lCCFWxUN6s2sw3XqTdHt1c4RPl9
	TisVzfFJwUMHc8P1ZcscrwTVfyUNKZk0tHJulAhRwAXrik3iCg6mZ8Z+Fbh+/5mfFOxIbNHXQm8s2
	thWNj3rcfFtx4aapA47WjJqZpql7SeIjMzEuFCM9JfWnq5Fmaqed+NIoOaChuIqFvza+sUUf1ifBo
	UizfyspLMHg2MWPATDXn4siLh8BY7nkTJ6+CLE/8X+byh9Mn9n+psqVvJc4PtdfuEelfwE9lrU5za
	t6JaIkXWhVXxLKls6R3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnzv-0001uM-1X; Wed, 29 Apr 2020 14:47:39 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnzi-0001sF-Lx
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:47:28 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03TEkRih027849; Wed, 29 Apr 2020 16:47:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=JrIPiTkgDLXSrRQnzVSRty80wJa9TRbjQJelaiwRij0=;
 b=JwUMktf48FF2PsljXEuCR2xkw9mjJjeopDNAzqIeJL97nifniD7adyIsogQB3N1ND0no
 +oynYWeBUAMTnwhqPPRJHeb7OyBwQAhypgu/YsEUYa8w5742NlVpUIwNNL2jhc903xSZ
 cxwUJraOoL5JZ79h+079PzHbMpgKRqOzfoTzouKt6qKEjXLLAh+AEzZ9KGTCUKoMsKYt
 vkTj/cvwlUug+xyunlSIeBd1aRd6F1izLa1EuGFixG1iYGLhr0G+FmRLb9F7NrDO/3WT
 rr7Pg28i1yclIfr3Eu/EIDsnGCAeCtlaRXe5O9tMY5jTJIPdxGPsjLQp6iIxL0Fg56w3 Vg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30mhcc6yhx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 16:47:22 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 07D5910002A;
 Wed, 29 Apr 2020 16:47:22 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EAFEE2AAF65;
 Wed, 29 Apr 2020 16:47:21 +0200 (CEST)
Received: from lmecxl0889.tpe.st.com (10.75.127.47) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 Apr
 2020 16:47:20 +0200
Subject: Re: [PATCH v2 12/12] remoteproc: stm32: Set synchronisation state
 machine if needed
To: Mathieu Poirier <mathieu.poirier@linaro.org>, <bjorn.andersson@linaro.org>,
 <ohad@wizery.com>, <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-13-mathieu.poirier@linaro.org>
From: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Message-ID: <defc59b2-4d64-a108-2e5e-ecc579f70a8b@st.com>
Date: Wed, 29 Apr 2020 16:47:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200424202505.29562-13-mathieu.poirier@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-29_07:2020-04-29,
 2020-04-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_074727_024330_9DB6943A 
X-CRM114-Status: GOOD (  19.03  )
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



On 4/24/20 10:25 PM, Mathieu Poirier wrote:
> Set the flags and operations to use if the M4 has been started
> by another entity than the remoteproc core.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  drivers/remoteproc/stm32_rproc.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index dcae6103e3df..02dad3f51c7a 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -598,13 +598,20 @@ static struct rproc_ops st_rproc_ops = {
>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>  };
>  
> -static __maybe_unused struct rproc_ops st_rproc_sync_ops = {
> +static struct rproc_ops st_rproc_sync_ops = {
>  	.start		= stm32_rproc_sync_start,
>  	.stop		= stm32_rproc_stop,
> +	.kick		= stm32_rproc_kick,

Seems independent of the path.

>  	.parse_fw       = stm32_rproc_sync_parse_fw,
>  	.find_loaded_rsc_table = stm32_rproc_sync_elf_find_loaded_rsc_table,
>  };
>  
> +static struct rproc_sync_flags st_sync_flags = {
> +	.on_init = true, /* sync with MCU when the kernel boots */
> +	.after_stop = false, /* don't resync with MCU if stopped from sysfs */
> +	.after_crash = false, /* don't resync with MCU after a crash */
> +};
> +
could be const

>  static const struct of_device_id stm32_rproc_match[] = {
>  	{ .compatible = "st,stm32mp1-m4" },
>  	{},
> @@ -803,6 +810,7 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	struct stm32_rproc *ddata;
>  	struct device_node *np = dev->of_node;
>  	struct rproc *rproc;
> +	struct rproc_sync_flags sync_flags = {0};
>  	unsigned int state;
>  	bool auto_boot = false;
>  	int ret;
> @@ -837,11 +845,17 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	}
>  
>  	if (state == M4_STATE_CRUN) {
> +		auto_boot = true;
> +		sync_flags = st_sync_flags;

seems an useless copy 

Regards,
Arnaud

>  		ret = stm32_rproc_get_loaded_rsc_table(pdev, ddata);
>  		if (ret)
>  			goto free_rproc;
>  	}
>  
> +	ret = rproc_set_state_machine(rproc, &st_rproc_sync_ops, sync_flags);
> +	if (ret)
> +		goto free_rproc;
> +
>  	rproc->auto_boot = auto_boot;
>  	rproc->has_iommu = false;
>  	ddata->workqueue = create_workqueue(dev_name(dev));
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
