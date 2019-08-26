Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8ADF9CAF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqBqCxR5FjNTO2x/No/uocsCdnyEohqSFXsFcm6MlCw=; b=T04Jq1+JCh0Os+
	gdvUk8y1pD69mEWI50b3ovP7/aNc04shBXAPS1cm1oM7paMbJCwkBI6UmOaJu7AjUyv/L7Taw5hp3
	9GF2UfnCHsAVpw0I2z6JcCXdgDPbLrtExqzVhuXFt4ZKdP7qzIS7tZqvnk8JLUudZLAInEyw/rayM
	w0yNB/mLDLiOG+WclV+YBCGtDevNsH+mQ3KD9jvR2vhlL+3dWMx68sxFDeRvDTzuYmdR5ieB8GffT
	+G37ilx6QXcpwB3z7tYbLrEmN8Vyv3w6Hu+5r3CCEeP0d0do2oTbWwCGMwDhzOS3kg9uCs4sTpb6O
	6R80Y11ndEMoRcJGl+gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29j9-0002Tl-9g; Mon, 26 Aug 2019 07:47:47 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29it-0002LJ-M4
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:47:33 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7Q7ka48002048; Mon, 26 Aug 2019 09:47:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=pjPt/wZUKKdcA3IPhuUT413dZh6eiRrEoP/4kZe4Ikc=;
 b=g1kMLSUFmT/qnZL1clioCba2m8dozgufu6XfYbFLqCchwyeFHTKdC9jXtLax3QM56D7U
 dRxMqz8pf2O+ImchRaYe9+o+53Sqpsm3TPz/L9QwKmSgZyolLVQ0v3dnYmCAJkr5dPTO
 40eICx4FSEAJYk2ybYOiB7Xi0jY2YWDxgtM35zrx54sRldMRW/wyvKjShvE+TLFCB9Ec
 iJJDtwSLRQ1H4NJT/hE/zpwx+lsPxcDgAbI0YbshAfx0HJ7LBBxFgXx2yrySoR0MMODT
 uxUBHu31TqVTXSRVCWGxID0KAHq0VbikvgwzkrQDOwK/bmT8zIWp7SVj2CNnfIfHE1cn aQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uju0vjbbx-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 26 Aug 2019 09:47:27 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BB5E434;
 Mon, 26 Aug 2019 07:47:26 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id AF20E2BDA80;
 Mon, 26 Aug 2019 09:47:26 +0200 (CEST)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 26 Aug
 2019 09:47:26 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Mon, 26 Aug 2019 09:47:26 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, "balbi@kernel.org"
 <balbi@kernel.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-usb@vger.kernel.org"
 <linux-usb@vger.kernel.org>
Subject: Re: [PATCH 2/2] usb: dwc3: st: Add of_dev_put() in probe function
Thread-Topic: [PATCH 2/2] usb: dwc3: st: Add of_dev_put() in probe function
Thread-Index: AQHVVl8y3EVLt/XZlECFHm3GgO+g6KcM9riA
Date: Mon, 26 Aug 2019 07:47:26 +0000
Message-ID: <472a33d8-3ae1-fec6-b05c-8cd01fb911e6@st.com>
References: <20190819072436.31402-1-nishkadg.linux@gmail.com>
 <20190819072436.31402-2-nishkadg.linux@gmail.com>
In-Reply-To: <20190819072436.31402-2-nishkadg.linux@gmail.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <22ABE70ED879DD429DA52A6B97BA8409@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_004732_021675_9D77724B 
X-CRM114-Status: GOOD (  19.21  )
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


On 8/19/19 9:24 AM, Nishka Dasgupta wrote:
> In function st_dwc3_probe, variable child_pdev takes the value returned
> by of_find_device_by_node, which gets a device pointer but does not put
> it. If child_pdev is not put before the probe function returns, it may
> cause a reference leak. Hence put child_pdev after its last usage.
> Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/usb/dwc3/dwc3-st.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/usb/dwc3/dwc3-st.c b/drivers/usb/dwc3/dwc3-st.c
> index 6f52c749cd58..c682420f25ca 100644
> --- a/drivers/usb/dwc3/dwc3-st.c
> +++ b/drivers/usb/dwc3/dwc3-st.c
> @@ -274,6 +274,7 @@ static int st_dwc3_probe(struct platform_device *pdev)
>  
>  	dwc3_data->dr_mode = usb_get_dr_mode(&child_pdev->dev);
>  	of_node_put(child);
> +	of_dev_put(child_pdev);
>  
>  	/*
>  	 * Configure the USB port as device or host according to the static

Reviewed-by: Patrice Chotard <patrice.chotard@st.com>

Thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
