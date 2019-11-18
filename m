Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F541001ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:57:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dY1Dj6wZwGEjnayb1cw6suLayQygqhSDFJtKvhEhLjY=; b=MpKFNrqnKeIZMJ
	3w0isK0wb6Ddm16uj5Uy/TQh/N0kQ/1+TKlVeMSNcWhpoWOYe5mC3kK/+BHRcLBaTUtuERUi1zM9L
	ZYCtyop+d2IJxhF6Ss7UnF6x1UtCNSa2sFLlzaH6kQ0cBOEFeunH6+J5LWcNTitKJwmQcMAe6BwkV
	4qlnmZI2cMjtOOEAMGkUnZO0uukOUu/l0j8foEEJmAzPi6L9nn1cNd8Xpt9i4hyGBrDg0F9fhFFYe
	cwqPWatvFUfubJ4i7D0zTtvp53r/A8VXiyHM0wygavqTy1hWLfQnFazZOKC3clzLwO7m7tRNB3QQK
	fXHWGCQvo1owYjd+20Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdm6-0005a9-FU; Mon, 18 Nov 2019 09:56:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdlv-0005ZX-Ae
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:56:40 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAI9m2Fb010561; Mon, 18 Nov 2019 10:56:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ZUmCqdr8Fk+z7NrNQWKVsIW5V3oeSkRl58Z8nizBirg=;
 b=L7IeN4rNlJGdeQVKaqXbxE2hJkTIFHuSl5jcXGhG2zeNHjRqsanRYAskV3SiqI8aYPJB
 7/uWnwCGAKmqqk/GiOAHPEoLs3Vq+rBfvhh30hqcPAYPTWMoydRmnU3rX8lFjSTcs/V/
 lXFDC8Ags6RrN+Fg66JANC6/Fy84Yr7wX+YGRs6zat/8LyTWb6ZfmK9B/DMXMkI04A2q
 4zCCe6rp4rjLuAh5mVE1H/GN2mEpuKcZzi1EPAHCdrcSevlDpGQWRO52UzzVJ4jUJzMN
 /qnouBysgD12SYrvzPVDUrEeegxaRknpEYB/2s3qzIs6KhF6sqjp/vB/MZLGF1z8SDxn gw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wa9uhrgyv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 Nov 2019 10:56:34 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8E1D010002A;
 Mon, 18 Nov 2019 10:56:34 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8139F2BC7D9;
 Mon, 18 Nov 2019 10:56:34 +0100 (CET)
Received: from [10.48.1.171] (10.75.127.47) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 18 Nov
 2019 10:56:33 +0100
Subject: Re: [PATCH] i2c: i2c-stm32f7: fix 10-bits check in slave free id
 search loop
To: Alain Volmat <alain.volmat@st.com>, <wsa@the-dreams.de>
References: <1573546784-28182-1-git-send-email-alain.volmat@st.com>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <ca718929-a6c6-587c-0a7a-0cfb5a2cfe0d@st.com>
Date: Mon, 18 Nov 2019 10:56:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1573546784-28182-1-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-18_01:2019-11-15,2019-11-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_015639_669377_CEEB3AD3 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

Look good to me

Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Regards

On 11/12/19 9:19 AM, Alain Volmat wrote:
> Fix a typo in the free slave id search loop. Instead of I2C_CLIENT_PEC,
> it should have been I2C_CLIENT_TEN. The slave id 1 can only handle 7-bit
> addresses and thus is not eligible in case of 10-bit addresses.
> As a matter of fact none of the slave id support I2C_CLIENT_PEC, overall
> check is performed at the beginning of the stm32f7_i2c_reg_slave function.
> 
> Fixes: 60d609f30de2 ("i2c: i2c-stm32f7: Add slave support")
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  drivers/i2c/busses/i2c-stm32f7.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> index b9a082f64d58..b2634afe066d 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -1268,7 +1268,7 @@ static int stm32f7_i2c_get_free_slave_id(struct stm32f7_i2c_dev *i2c_dev,
>  	 * slave[1] supports 7-bit slave address only
>  	 */
>  	for (i = STM32F7_I2C_MAX_SLAVE - 1; i >= 0; i--) {
> -		if (i == 1 && (slave->flags & I2C_CLIENT_PEC))
> +		if (i == 1 && (slave->flags & I2C_CLIENT_TEN))
>  			continue;
>  		if (!i2c_dev->slave[i]) {
>  			*id = i;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
