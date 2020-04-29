Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D4B1BE1B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXjd3TcUz6yt7sfI3LW7NzBb+Lm3LEeNMkj5fVYElCY=; b=YboxRGB0qb1Gd2
	SgG35elTxGMy+872r+Mh0gfrwGZiWbo5HxQ7Nk8lHAXlgYFSzyakHQwf1wXP4I+AYoGktxjruc3/1
	f4rQhqEPcDL45+l9CUb+P/5d1O6UMsKuBTIKMkhyUvDxtHMi/pkf6m+9E1Jq2mjUHhCZ/9SGUgaZf
	/a1QJeA1AGlFlJ4cjGBA6m0VRQiJKVu0VwfVqV37KPiq4djNjS4JkWnGvIgxMpv71lDfomzmyJk/f
	7ocg8w4fwnta6nJx7ouPlBF/kX+R/B65Wkm8BB/3UWDY6QaeVaB9H5GP2A5y6Tj9keNTO9QOe4v8H
	R1E/m2KEtm31BPdR1lUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTo4j-0006OJ-Fv; Wed, 29 Apr 2020 14:52:37 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTo4V-0006NF-DD
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:52:25 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03TEqKrF025571; Wed, 29 Apr 2020 16:52:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=k4HHTwS+8Ljbwqtos9h637MEEsprgCn+OA+4OMP7vFM=;
 b=MOaili/s/VJ0fiUvGwJyitOHHjHTrw54nh0Chwl9+QzytQIlBGkcQzCavUDbaLCgtUqn
 552MnWhqHPq9pZdFCBdi3KR5en+UQi8FaFqHh+q6f3mVuK/jhfHMhyg+wncyvR4XIZmd
 UlLJBdrW11H0bRqWyoLj9xUBGtPNeB0B69AgpyI/4VF6Ku9YfLIClRwpQsQdXttjtPDO
 di18l2lPdHUe+Qaq83dAJjNIOyAsYDp9keWtKqVXPf9k5TnsOhXRjX0Y87kUHsGle7lt
 LecV34D//WmmYfrJ+9FEdKajqgQlxd+oe/Oef6+XDTllvg2LzkOXWjxKewKfHzBGFiwZ Dg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30n4j6352n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 16:52:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6CAE710002A;
 Wed, 29 Apr 2020 16:52:19 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5AA232AAF70;
 Wed, 29 Apr 2020 16:52:19 +0200 (CEST)
Received: from lmecxl0889.tpe.st.com (10.75.127.47) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 Apr
 2020 16:52:18 +0200
Subject: Re: [PATCH v2 09/12] remoteproc: stm32: Update M4 state in
 stm32_rproc_stop()
To: Mathieu Poirier <mathieu.poirier@linaro.org>, <bjorn.andersson@linaro.org>,
 <ohad@wizery.com>, <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-10-mathieu.poirier@linaro.org>
From: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Message-ID: <f4394e9d-2915-2e15-38e4-80b23baf678e@st.com>
Date: Wed, 29 Apr 2020 16:52:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200424202505.29562-10-mathieu.poirier@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-29_07:2020-04-29,
 2020-04-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_075223_743026_32D35497 
X-CRM114-Status: GOOD (  18.98  )
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
> Update the M4 co-processor state in function stm32_rproc_stop() so
> that it can be used in synchronisation scenarios.
> 
> Mainly based on the work published by Arnaud Pouliquen [1].
> 
> [1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Reviewed-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>

Thanks,
Arnaud

> ---
>  drivers/remoteproc/stm32_rproc.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 404f17a97095..86d23c35d805 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -493,6 +493,18 @@ static int stm32_rproc_stop(struct rproc *rproc)
>  		}
>  	}
>  
> +	/* update coprocessor state to OFF if available */
> +	if (ddata->m4_state.map) {
> +		err = regmap_update_bits(ddata->m4_state.map,
> +					 ddata->m4_state.reg,
> +					 ddata->m4_state.mask,
> +					 M4_STATE_OFF);
> +		if (err) {
> +			dev_err(&rproc->dev, "failed to set copro state\n");
> +			return err;
> +		}
> +	}
> +
>  	return 0;
>  }
>  
> @@ -531,6 +543,7 @@ static struct rproc_ops st_rproc_ops = {
>  
>  static __maybe_unused struct rproc_ops st_rproc_sync_ops = {
>  	.start		= stm32_rproc_sync_start,
> +	.stop		= stm32_rproc_stop,
>  };
>  
>  static const struct of_device_id stm32_rproc_match[] = {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
