Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AD2B62F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMOlXsyogymHYcjdMmiQYwbRFPzlugAkqx3GudZAdLM=; b=dlmmrAUw7nCN7s
	A4b6p76dhOKe5nGLYKoP1NUDaYToDlv93IuTYxEmQyRicir1osBVSQjQKm2KXekmSyOeeHtcfAcDO
	Y+ycDChV3HEVtVoAEnJTbYM5FCoD9d8dMllGULjxQ1SL8c0rEUbSaY7gZuMySIV5VOPi76cZAaoUq
	OnFQQ4GPMlNsEdWscQw/X7h//pGyEdUkkCKtLvB3BYuLZw5HueV1qfrPJRbTcfNmukZHHloeAVR5S
	xTMWjkePnk96tWF5LUfQRqOsk+qkAj/62Hl8BUhs+Vp4vaUkmbqNWnzhjfD6PuYGRNnJivQ8Hw+HQ
	ODKMPny0ZFwf2yeqzv8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAYtN-0002Ly-VI; Wed, 18 Sep 2019 12:17:06 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAYt9-0002LU-4u
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:16:52 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8ICGHlD023163; Wed, 18 Sep 2019 14:16:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=8ZrDgpdMzmVLj7n/V3GIOKe3N2fmdar22nZB+6Ict7A=;
 b=mgB12bKFeCYXRhIpeAtPbS9Zfwm43cBJZp0bNavNip6flNtwPIumKcFTh6OLAOVMAsAx
 COfjJjXm6iBTbFUQDOSFEhrsJWTccbg7j65Rs6jn0RZOEquxh6qKKY5YiIftRd5a0gb7
 el1zYHht8VrLnzV1fwVfrOP/EYjtE3kQi4txyEHgLhhi29+2bT6P07GSoPr+5vjwvH0u
 FXT7au5v8AAI0ejYQKs/os6aqsz28tmPt6byktnAs4azLc24Q67B8lQuF6iiIIp59ACK
 sKHe2uIr+JDjma+shOJC10MjBnLzjQ3WKhLp7LQVMs3EiZu1q6DqyIq7OZP9X+NBmScn zg== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v37kmc2ps-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 18 Sep 2019 14:16:46 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 8DAFA24;
 Wed, 18 Sep 2019 12:16:40 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 154F22C4735;
 Wed, 18 Sep 2019 14:16:40 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 18 Sep
 2019 14:16:40 +0200
Received: from [10.48.1.232] (10.48.1.232) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 18 Sep 2019 14:16:39 +0200
Subject: Re: [PATCH v2 7/7] counter: stm32-timer-cnt: Update count_read and
 count_write callbacks
To: William Breathitt Gray <vilhelm.gray@gmail.com>,
 <jic23@jic23.retrosnub.co.uk>
References: <cover.1568792697.git.vilhelm.gray@gmail.com>
 <327fe01b7ce4feb0fc3d854393691664a6a36b40.1568792697.git.vilhelm.gray@gmail.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <a5891ee5-162e-6a72-261d-e736f5088020@st.com>
Date: Wed, 18 Sep 2019 14:16:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <327fe01b7ce4feb0fc3d854393691664a6a36b40.1568792697.git.vilhelm.gray@gmail.com>
Content-Language: en-US
X-Originating-IP: [10.48.1.232]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-18_07:2019-09-17,2019-09-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_051651_555178_CE362A9D 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 patrick.havelange@essensium.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/18/19 9:52 AM, William Breathitt Gray wrote:
> The count_read and count_write callbacks pass unsigned long now.
> 
> Cc: Fabrice Gasnier <fabrice.gasnier@st.com>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>

Hi William,

I tested your series for STM32 timer and LPtimer drivers. Maybe you can
squash as suggested by Benjamin ?
With that, you can add my acked-by for the two STM32 drivers.

Thanks,
Fabrice

> ---
>  drivers/counter/stm32-timer-cnt.c | 17 +++++------------
>  1 file changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
> index 644ba18a72ad..839083543323 100644
> --- a/drivers/counter/stm32-timer-cnt.c
> +++ b/drivers/counter/stm32-timer-cnt.c
> @@ -48,34 +48,27 @@ static enum counter_count_function stm32_count_functions[] = {
>  };
>  
>  static int stm32_count_read(struct counter_device *counter,
> -			    struct counter_count *count,
> -			    struct counter_count_read_value *val)
> +			    struct counter_count *count, unsigned long *val)
>  {
>  	struct stm32_timer_cnt *const priv = counter->priv;
>  	u32 cnt;
>  
>  	regmap_read(priv->regmap, TIM_CNT, &cnt);
> -	counter_count_read_value_set(val, COUNTER_COUNT_POSITION, &cnt);
> +	*val = cnt;
>  
>  	return 0;
>  }
>  
>  static int stm32_count_write(struct counter_device *counter,
>  			     struct counter_count *count,
> -			     struct counter_count_write_value *val)
> +			     const unsigned long val)
>  {
>  	struct stm32_timer_cnt *const priv = counter->priv;
> -	u32 cnt;
> -	int err;
> -
> -	err = counter_count_write_value_get(&cnt, COUNTER_COUNT_POSITION, val);
> -	if (err)
> -		return err;
>  
> -	if (cnt > priv->ceiling)
> +	if (val > priv->ceiling)
>  		return -EINVAL;
>  
> -	return regmap_write(priv->regmap, TIM_CNT, cnt);
> +	return regmap_write(priv->regmap, TIM_CNT, val);
>  }
>  
>  static int stm32_count_function_get(struct counter_device *counter,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
