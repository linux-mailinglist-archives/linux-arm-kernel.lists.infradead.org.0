Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836A69CAEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lquIpND3ENouL1zVxrKFMGjq4Y37jRT+TcSwZKeo79U=; b=VGghGfoTrjKLpI
	RCXG0lWz8fsDUXpdJFL6zpptz7KLvw+Fnotzv7ucpNgZB9kjU1CENRukpbzyArJU2gYCB9hksgQGN
	fif2KVgB3dCPpy0pXzrStWDzUv1NwFJbycMGwPfPX+FsBuWQw2SPyNljQ5U6w3mdnoVOVVLMP4sPb
	5/D6VTnj5eZ2b/W4a0xxMZXBiYQwUYEhgnrLz0ro7X40ZkCftQpkLB+3HdI0n4Ctfd1OoSaoyZHFl
	Akq0vdm9yhRxmpUpIleGlUYjozOYdoybkiI05THsrO1SNH7VRxb5tnO2pLU+v/hn3fmigBKqvLRRi
	ZfhW/oMRmxpigx/rLikA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29iN-0001RI-26; Mon, 26 Aug 2019 07:46:59 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29i4-0001Ql-DO
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:46:42 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7Q7kWoi002013; Mon, 26 Aug 2019 09:46:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=6sShueCxhVAm0IHwOmzn20YFNKvT2fsxwkDbU72np3U=;
 b=BVO7YMUzoTFrWknfkLeGeLyAV1DX2WXI0b7bEDy3jxnOuhA1C6+UMk2L7JKZLueJG7Wi
 5qhS0MCrCkMS5hJLyk2Xt+LvKot28NvDWm8nlv0LhUdIGn034EnZmZiJkTDxA4lpOKjP
 +a3eVzIqFDzkHFi9Wac3IIMSe4NNzASz1Yty9s/uy1lC+JtiAHaO2mLpkiICkm3vY2tz
 A37F59HMkU9Or/iHkiQVTmxu5VEb95xjq60r4635NsglQM2DTkf7kpy8uqZ+2GVi8ta5
 sEd1ihGTqx+Y5Iim1jMAk57KWfGU0DaM2L2gBMqdqJihgUbvMIHb1EW/+/f8JFf+p/C3 aw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uju0vjb71-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 26 Aug 2019 09:46:32 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 871D334;
 Mon, 26 Aug 2019 07:46:29 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id ED5522BC751;
 Mon, 26 Aug 2019 09:46:28 +0200 (CEST)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 26 Aug
 2019 09:46:28 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Mon, 26 Aug 2019 09:46:28 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, "balbi@kernel.org"
 <balbi@kernel.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-usb@vger.kernel.org"
 <linux-usb@vger.kernel.org>
Subject: Re: [PATCH 1/2] usb: dwc3: st: Add of_node_put() before return in
 probe function
Thread-Topic: [PATCH 1/2] usb: dwc3: st: Add of_node_put() before return in
 probe function
Thread-Index: AQHVVl8ynhbpV4BP5EGbALZJZzELgqcM9ncA
Date: Mon, 26 Aug 2019 07:46:28 +0000
Message-ID: <7e0bcd72-0de0-bc04-03e0-f850d6457e7e@st.com>
References: <20190819072436.31402-1-nishkadg.linux@gmail.com>
In-Reply-To: <20190819072436.31402-1-nishkadg.linux@gmail.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
Content-ID: <81B2C70FC6D0824388F811E47B7F0599@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_004640_824060_7A401D63 
X-CRM114-Status: GOOD (  23.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nishka

On 8/19/19 9:24 AM, Nishka Dasgupta wrote:
> The local variable child in the function st_dwc3_probe takes the return
> value of of_get_child_by_name, which gets a node and does not put it. If
> the function returns without releasing child, this could cause a memory
> error. Hence put child as soon as there is no more use for it. Also
> create a new label, err_node_put, just before label undo_softreset; so
> that err_node_put puts child. In between initialisation of child and its
> first put, modify all statements that go to undo_softreset to now go to
> err_node_put instead, from where they can fall through to
> undo_softreset.
> Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/usb/dwc3/dwc3-st.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/usb/dwc3/dwc3-st.c b/drivers/usb/dwc3/dwc3-st.c
> index 16081383c401..6f52c749cd58 100644
> --- a/drivers/usb/dwc3/dwc3-st.c
> +++ b/drivers/usb/dwc3/dwc3-st.c
> @@ -255,24 +255,25 @@ static int st_dwc3_probe(struct platform_device *pdev)
>  	if (!child) {
>  		dev_err(&pdev->dev, "failed to find dwc3 core node\n");
>  		ret = -ENODEV;
> -		goto undo_softreset;
> +		goto err_node_put;
>  	}
>  
>  	/* Allocate and initialize the core */
>  	ret = of_platform_populate(node, NULL, NULL, dev);
>  	if (ret) {
>  		dev_err(dev, "failed to add dwc3 core\n");
> -		goto undo_softreset;
> +		goto err_node_put;
>  	}
>  
>  	child_pdev = of_find_device_by_node(child);
>  	if (!child_pdev) {
>  		dev_err(dev, "failed to find dwc3 core device\n");
>  		ret = -ENODEV;
> -		goto undo_softreset;
> +		goto err_node_put;
>  	}
>  
>  	dwc3_data->dr_mode = usb_get_dr_mode(&child_pdev->dev);
> +	of_node_put(child);
>  
>  	/*
>  	 * Configure the USB port as device or host according to the static
> @@ -292,6 +293,8 @@ static int st_dwc3_probe(struct platform_device *pdev)
>  	platform_set_drvdata(pdev, dwc3_data);
>  	return 0;
>  
> +err_node_put:
> +	of_node_put(child);
>  undo_softreset:
>  	reset_control_assert(dwc3_data->rstc_rst);
>  undo_powerdown:


Reviewed-by: Patrice Chotard <patrice.chotard@st.com>

Thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
