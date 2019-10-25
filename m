Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECD3E4E9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 16:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=783OzSV2q0fogQaGoP6qWQOvx8ekREqC1a1/wDsbKlg=; b=lYUAPJhgJDNLNa
	clsyyGy7fihWbIg5wl8ZwZPoY520PxhgTo36vJg0TTjELWtFtP/BE32/DhLZZWydtAqQp5Qw3r3XK
	XBGkoTO6f3ISmkPZnTBP3pOvp3Dmco5EV+7vol4SSIY3PkYVkdk9e/HaCbsdRwhZMUBAPX/FpHQXB
	DZ6Agh26l7ouBINuEygPQXf56n0S3XY53bb4iHXloqyXV1YvbsunI1S7YO8r+aVx4bGWinDvgQCx9
	gIuw4Z9wdy/DvjxB7WQ0dPW7DZONl9i6/bng8Tv62GDgRpMJ7a9UoGk4F+l7XLbMOfnpCaOpruEEb
	jhbvSM7D/sJv9kzwWn0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO0JO-0002H6-RH; Fri, 25 Oct 2019 14:11:30 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO0JE-0002GC-9J
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 14:11:21 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9PE5wO4019861; Fri, 25 Oct 2019 16:11:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=j3crM7cBC/H2jOyoLqRWhR7cZrRuUQNXRsMuv0OdZuQ=;
 b=KY5ut593Qal9uBKcKy/ZEQWmOXE+fNIcYMyCbxWKE062MHN9ayQ6YrkCLT7IioLaK4AP
 NKzJXL9ZpohHBt0oCDLn0zbcn7fmotN7ZOBdkBV+BIcoyM9/iiCVXN3jG8b1zTMNgp/O
 pcS16hpQbYSZMDUbUWINzGzB8EAaMUAO41H00ReqpnjfbJtBkzf6EDF+PCz2VypaP4l0
 lCPR4BMJK4ozmT1bBA45HLWX3MC1Q6j+Gg7X4TYANGwyZn83ZvUs6vTVS2cZUHedMJhV
 ZRUT9R6B4vf8/vKnokRcCntfD8nWv5sewLh7I5j2sT96BlJsaLsE59h2ZY2aqhvokl5w Ng== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vt9s5856g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Oct 2019 16:11:13 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5DA62100034;
 Fri, 25 Oct 2019 16:11:13 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4E8E52AB34D;
 Fri, 25 Oct 2019 16:11:13 +0200 (CEST)
Received: from [10.129.5.11] (10.75.127.46) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 25 Oct
 2019 16:11:12 +0200
Subject: Re: [PATCH] i2c: i2c-stm32f7: fix & reorder remove & probe error
 handling
To: Alain Volmat <alain.volmat@st.com>, <wsa@the-dreams.de>
References: <1572012264-31996-1-git-send-email-alain.volmat@st.com>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <37fc56c5-a700-a05b-2669-25295172dbdc@st.com>
Date: Fri, 25 Oct 2019 16:11:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1572012264-31996-1-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-25_08:2019-10-25,2019-10-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_071120_620486_96B69583 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

Look good for me

Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Thanks

On 10/25/19 4:04 PM, Alain Volmat wrote:
> Add missing dma channels free calls in case of error during probe
> and reorder the remove function so that dma channels are freed after
> the i2c adapter is deleted.
> Overall, reorder the remove function so that probe error handling order
> and remove function order are same.
> 
> Fixes: 7ecc8cfde553 ("i2c: i2c-stm32f7: Add DMA support")
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  drivers/i2c/busses/i2c-stm32f7.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> index d36cf08461f7..f8ef203dabfc 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -1980,6 +1980,11 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>  	pm_runtime_set_suspended(i2c_dev->dev);
>  	pm_runtime_dont_use_autosuspend(i2c_dev->dev);
>  
> +	if (i2c_dev->dma) {
> +		stm32_i2c_dma_free(i2c_dev->dma);
> +		i2c_dev->dma = NULL;
> +	}
> +
>  clk_free:
>  	clk_disable_unprepare(i2c_dev->clk);
>  
> @@ -1990,21 +1995,21 @@ static int stm32f7_i2c_remove(struct platform_device *pdev)
>  {
>  	struct stm32f7_i2c_dev *i2c_dev = platform_get_drvdata(pdev);
>  
> -	if (i2c_dev->dma) {
> -		stm32_i2c_dma_free(i2c_dev->dma);
> -		i2c_dev->dma = NULL;
> -	}
> -
>  	i2c_del_adapter(&i2c_dev->adap);
>  	pm_runtime_get_sync(i2c_dev->dev);
>  
> -	clk_disable_unprepare(i2c_dev->clk);
> -
>  	pm_runtime_put_noidle(i2c_dev->dev);
>  	pm_runtime_disable(i2c_dev->dev);
>  	pm_runtime_set_suspended(i2c_dev->dev);
>  	pm_runtime_dont_use_autosuspend(i2c_dev->dev);
>  
> +	if (i2c_dev->dma) {
> +		stm32_i2c_dma_free(i2c_dev->dma);
> +		i2c_dev->dma = NULL;
> +	}
> +
> +	clk_disable_unprepare(i2c_dev->clk);
> +
>  	return 0;
>  }
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
