Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D31CE6A2E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 09:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5xkucwYIySCuNquWcnVwL56JbAwS2LpUxux4bLUAow=; b=qssNc14MI6/ERf
	feoU7jOvQi7QJZLwtALJi3SWj3k9AxyXrURB5zxCFVs5lY8zxmgWrErMGZwup9Y0EuPxt4KxU+nb8
	tWj6if70iqQhAJFJf9YuAdj3SITtPKofsC2yqdmU6A6cNTGoNxKOt3RS+s3hXwppswbwT12JOGGFJ
	3g66ZVvV+w7IEwBLVYiLTdXXrt9QsP2WNIBSHChZgiQy/aMv8Lsd5mJ3GJIIq10YyL3nOTmMWlO1C
	3YF11xu+JsiGa+5I9uBa/p9xcIMH9dD1c+qDS1SbxxLP9eOnx56s9ZJdDY5dsYqrmXqXJvQYNefsX
	yhatQyXTtEa9Sq4pR18A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHsl-0000fu-2W; Tue, 16 Jul 2019 07:28:15 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHsP-0000f2-8t
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 07:27:55 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6G7QPuW028268; Tue, 16 Jul 2019 09:27:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=WDGeZy80XcTbElWt1TkbYFCN5y3sqMErTilEyo9Xl/k=;
 b=o0HZ+RFV7Ud+us+mhsTB/lKkAz4otdMk2Q5ZaaEEJKlCdf3HOXpKz2Bs1aKggaGZPwOa
 w0C/nzu63b552VNEquSIlkiT+2YCaJWder9kHkMPJf5AI364xKVbdMcO6kTpb1ZNRLg3
 RDvKmyg3qmQkqdbsC4mIBGhAsmHIVzW8rG5d/9aiGJIP+xLJ4DBDayepBso15cvaPmG6
 Jk/TIDYCrR0+wjxhD9D8qKj1KdZhGVA6zG2LCHjd6HKppq3D7Jczu7FYjzHH2vGFoKTl
 d8gmhUiePWRPqPJF4ersJQ8znoM30WRV0PuadCTfH4s6Na0pdzNok257q8qBpzUvqGTD Ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tq4e8u9j3-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 16 Jul 2019 09:27:45 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B26893A;
 Tue, 16 Jul 2019 07:27:44 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 48F1F165E;
 Tue, 16 Jul 2019 07:27:44 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 16 Jul
 2019 09:27:44 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Tue, 16 Jul 2019 09:27:44 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, "mchehab@kernel.org"
 <mchehab@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>
Subject: Re: [PATCH] media: platform: sti: c8sectpfe: core: Add of_node_put()
 at goto
Thread-Topic: [PATCH] media: platform: sti: c8sectpfe: core: Add of_node_put()
 at goto
Thread-Index: AQHVO5i+VkE7w5CaLkelHQmii7JzPKbMtzGA
Date: Tue, 16 Jul 2019 07:27:43 +0000
Message-ID: <34df6b29-cbbe-ab1e-6a67-e483d3d75868@st.com>
References: <20190716053831.2613-1-nishkadg.linux@gmail.com>
In-Reply-To: <20190716053831.2613-1-nishkadg.linux@gmail.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <5D42247B2AC76C4BB20AA1796EE60E64@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-16_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_002753_767629_6AB08257 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nishka

On 7/16/19 7:38 AM, Nishka Dasgupta wrote:
> Each iteration of for_each_child_of_node puts the previous node, but in
> the case of a goto from the middle of the loop, there is no put, thus
> causing a memory leak. Hence add a new label that puts the last used
> node, and edit the goto statements in the middle of the loop to first go
> to the new label.
> Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  .../platform/sti/c8sectpfe/c8sectpfe-core.c    | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c b/drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c
> index 3c05b3dc49ec..85ab20492c2d 100644
> --- a/drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c
> +++ b/drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c
> @@ -771,7 +771,7 @@ static int c8sectpfe_probe(struct platform_device *pdev)
>  
>  		if (!fei->channel_data[index]) {
>  			ret = -ENOMEM;
> -			goto err_clk_disable;
> +			goto err_node_put;
>  		}
>  
>  		tsin = fei->channel_data[index];
> @@ -781,7 +781,7 @@ static int c8sectpfe_probe(struct platform_device *pdev)
>  		ret = of_property_read_u32(child, "tsin-num", &tsin->tsin_id);
>  		if (ret) {
>  			dev_err(&pdev->dev, "No tsin_num found\n");
> -			goto err_clk_disable;
> +			goto err_node_put;
>  		}
>  
>  		/* sanity check value */
> @@ -790,7 +790,7 @@ static int c8sectpfe_probe(struct platform_device *pdev)
>  				"tsin-num %d specified greater than number\n\tof input block hw in SoC! (%d)",
>  				tsin->tsin_id, fei->hw_stats.num_ib);
>  			ret = -EINVAL;
> -			goto err_clk_disable;
> +			goto err_node_put;
>  		}
>  
>  		tsin->invert_ts_clk = of_property_read_bool(child,
> @@ -806,14 +806,14 @@ static int c8sectpfe_probe(struct platform_device *pdev)
>  					&tsin->dvb_card);
>  		if (ret) {
>  			dev_err(&pdev->dev, "No dvb-card found\n");
> -			goto err_clk_disable;
> +			goto err_node_put;
>  		}
>  
>  		i2c_bus = of_parse_phandle(child, "i2c-bus", 0);
>  		if (!i2c_bus) {
>  			dev_err(&pdev->dev, "No i2c-bus found\n");
>  			ret = -ENODEV;
> -			goto err_clk_disable;
> +			goto err_node_put;
>  		}
>  		tsin->i2c_adapter =
>  			of_find_i2c_adapter_by_node(i2c_bus);
> @@ -821,7 +821,7 @@ static int c8sectpfe_probe(struct platform_device *pdev)
>  			dev_err(&pdev->dev, "No i2c adapter found\n");
>  			of_node_put(i2c_bus);
>  			ret = -ENODEV;
> -			goto err_clk_disable;
> +			goto err_node_put;
>  		}
>  		of_node_put(i2c_bus);
>  
> @@ -832,7 +832,7 @@ static int c8sectpfe_probe(struct platform_device *pdev)
>  			dev_err(dev,
>  				"reset gpio for tsin%d not valid (gpio=%d)\n",
>  				tsin->tsin_id, tsin->rst_gpio);
> -			goto err_clk_disable;
> +			goto err_node_put;
>  		}
>  
>  		ret = devm_gpio_request_one(dev, tsin->rst_gpio,
> @@ -840,7 +840,7 @@ static int c8sectpfe_probe(struct platform_device *pdev)
>  		if (ret && ret != -EBUSY) {
>  			dev_err(dev, "Can't request tsin%d reset gpio\n"
>  				, fei->channel_data[index]->tsin_id);
> -			goto err_clk_disable;
> +			goto err_node_put;
>  		}
>  
>  		if (!ret) {
> @@ -883,6 +883,8 @@ static int c8sectpfe_probe(struct platform_device *pdev)
>  
>  	return 0;
>  
> +err_node_put:
> +	of_node_put(child);
>  err_clk_disable:
>  	clk_disable_unprepare(fei->c8sectpfeclk);
>  	return ret;

Acked-by: Patrice Chotard <patrice.chotard@st.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
