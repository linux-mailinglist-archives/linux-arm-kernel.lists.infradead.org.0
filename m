Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B92232B2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/csAGQN8UBMuY6c5ioxhAqrc0JNFcwIP1XlJRPsCUaM=; b=kN7DPSyLZ7TRbm
	qLjShZcksCK+UEgaFs3hFkl6DcAKJWKKwe2UueHtrzCzYHhg3IxGQkT7tUz+uvqC/StHgSNhqY+Sj
	YNWLpz+xyNcvmn3ysE+Q4rMeq3gCjUnakZJj/1hQZ7OD8wMTVeNpFOaMoQAATaTBpYo+j16B3HMAl
	7XwF4ECTyTsW6lNZ67MzhGFaGFevMEgInhtrwFECozL2kyJrxMqTwRGu5EVRi5WGm/6oH4qD2+d7b
	cIlWURxEIvCHLEKJXzWXVDUet9G3nerSoTEU9ceFQvNyAjgLJ011SGDhYp76gF2eSGuq71KpHM+VZ
	PeqMO9EUYojWcr6MY6tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXij6-0007qI-0d; Mon, 03 Jun 2019 08:53:56 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiiy-0007po-Qm
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:53:50 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x538kj0E023720; Mon, 3 Jun 2019 10:53:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=LyyPhatReqGLKi/PCcSu5O/YhgiZr9Sz+nDbhbM+rK4=;
 b=VCTVczIJvcH/pWgjk03S45OQQNhb9hXvPXHOgm6XdHIvyE8ELFeE7RyiOAPBd+A4HJLZ
 xuG6bOLmOo6uiJcU4ZSNzG14BM9kdEefc6ujNMzeW1cB7uNJOzu4p+X9MXEl0J2FOqug
 ejMMvkVYynDIN0CZYqZTTMnOVVKvyOsVtSszxjUn5LcFVeUnH3JOm95FhTpWPv+BUUg7
 MzugWFyiBb14ZLExqUu1s2zpk4Yj27kvg/PDlFFKxXuB+oON99GJCGGNg/1INqqN+x6X
 GUjPEadQ+NupgzPwm+Q9Wnvxgfnikff5iPH762cIpTJ+qwduHEt3t2UpuEbL0KJ408nz 6A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sundrsatg-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 03 Jun 2019 10:53:39 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 36DAD41;
 Mon,  3 Jun 2019 08:53:38 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1C09824E0;
 Mon,  3 Jun 2019 08:53:38 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 3 Jun
 2019 10:53:37 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1347.000; Mon, 3 Jun 2019 10:53:37 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: YueHaibing <yuehaibing@huawei.com>, "stern@rowland.harvard.edu"
 <stern@rowland.harvard.edu>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>
Subject: Re: [PATCH -next] usb: host: ohci-st: Remove set but not used
 variable 'ohci'
Thread-Topic: [PATCH -next] usb: host: ohci-st: Remove set but not used
 variable 'ohci'
Thread-Index: AQHVFVrzjV/9bR1gikG80K9mZOB/gaaJh2sA
Date: Mon, 3 Jun 2019 08:53:37 +0000
Message-ID: <0a4ed9eb-6da2-60c7-cf70-192b8ab64286@st.com>
References: <20190528133849.22156-1-yuehaibing@huawei.com>
In-Reply-To: <20190528133849.22156-1-yuehaibing@huawei.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
Content-ID: <0889EC2D451D0848B3C9D310BE562DEB@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-03_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_015349_203847_9CFEF3DA 
X-CRM114-Status: GOOD (  17.29  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 5/28/19 3:38 PM, YueHaibing wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/usb/host/ohci-st.c: In function st_ohci_platform_probe:
> drivers/usb/host/ohci-st.c:135:19: warning: variable ohci set but not used [-Wunused-but-set-variable]
> 
> It's never used, so can be removed.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/usb/host/ohci-st.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/usb/host/ohci-st.c b/drivers/usb/host/ohci-st.c
> index 992807c9850a..638a92bd2cdc 100644
> --- a/drivers/usb/host/ohci-st.c
> +++ b/drivers/usb/host/ohci-st.c
> @@ -132,7 +132,6 @@ static int st_ohci_platform_probe(struct platform_device *dev)
>  	struct resource *res_mem;
>  	struct usb_ohci_pdata *pdata = &ohci_platform_defaults;
>  	struct st_ohci_platform_priv *priv;
> -	struct ohci_hcd *ohci;
>  	int err, irq, clk = 0;
>  
>  	if (usb_disabled())
> @@ -158,7 +157,6 @@ static int st_ohci_platform_probe(struct platform_device *dev)
>  	platform_set_drvdata(dev, hcd);
>  	dev->dev.platform_data = pdata;
>  	priv = hcd_to_ohci_priv(hcd);
> -	ohci = hcd_to_ohci(hcd);
>  
>  	priv->phy = devm_phy_get(&dev->dev, "usb");
>  	if (IS_ERR(priv->phy)) {
> 

Acked-by: Patrice Chotard <patrice.chotard@st.com>

Thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
