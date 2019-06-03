Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E597732B3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnJcaD+WUgYq3f4YbxiHDz8k5Rgoms9oyvATGMibt4Y=; b=VFXdM9RlGH8N67
	OV8Y0iQymLwf3W+qML3iFQXnzEJAI7cFNlDrjSTVjboJPeEWRwBjaxcJnd1JaTc9iTZ7GIjVhEN/G
	GRUu2sb0AQz1aAfpLII1vupXQ/8QYDmH9m9ALuB/Uh1HFxE9OqbAeGDCupQ/y/36+qskcPsl2vWSK
	jqENug9fG/RZcJ132OXu7s0p2m2DBPla/WHkHqCcQBDEx58rvVR1kyNzQnz5pL8BxdyKvtf/yoXRv
	ATfXxy+avlfyl4cNon9lNqAooZzf9pJQ3HPolN3D2LEPxFCH0g/HLpTcoja7O9u1kvjuw4ijmxGpQ
	nKrb/2Y7AOWjNvFYTK/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXio7-0001jW-Qt; Mon, 03 Jun 2019 08:59:07 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXio0-0001ii-4P
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:59:01 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x538uY80031648; Mon, 3 Jun 2019 10:58:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=vhx7EIV6xeOk88gkHCWKERKEgt0npZQLR8heaw2xtlI=;
 b=iBU5FywKEi3ZkJQl6/SQMMRxLzzSRD/Eh7hyB26luQ4OXcKfxat0CRmyHsgGxNFeHFyR
 pPFuoebFRxQncEC1f4CkjkvA0k3KIbZgEoboD3qYiHorHGB6Ap7x0RcZGHhIa8SxoO3s
 M6dtdXjJdRr8/OushmrOIRehhAg1He4MtnXmdwk/pthOcqYOmrdLnwSnl29GnynCmNpW
 5BqPAh0ZY3zGXvt+qR7kU4qxAFh+3LhJhUJDZswAVXGaCXlOBuJa8HHKBgKE4bKoCuU3
 wyOjkBEQGr4W6zc4flWsYevXZKvWuTlId5XwuImAoWjaObg3gxWq6hsm6cawDYGjRxRH tw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sundrsbtr-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 03 Jun 2019 10:58:54 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0DFDC3F;
 Mon,  3 Jun 2019 08:58:53 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D063F1645;
 Mon,  3 Jun 2019 08:58:52 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 3 Jun
 2019 10:58:52 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1347.000; Mon, 3 Jun 2019 10:58:52 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: YueHaibing <yuehaibing@huawei.com>, "stern@rowland.harvard.edu"
 <stern@rowland.harvard.edu>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>
Subject: Re: [PATCH -next] usb: host: ehci-st: Remove set but not used
 variable 'ehci'
Thread-Topic: [PATCH -next] usb: host: ehci-st: Remove set but not used
 variable 'ehci'
Thread-Index: AQHVFVu5oOZw623mTkKrd0PNUsnGP6aJiNsA
Date: Mon, 3 Jun 2019 08:58:52 +0000
Message-ID: <0c5c8b72-0242-bd9e-24d2-fb48bd5dbfe3@st.com>
References: <20190528134529.17612-1-yuehaibing@huawei.com>
In-Reply-To: <20190528134529.17612-1-yuehaibing@huawei.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <B8E577DA51A7EA43A8B47DF0E9F0A2D8@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-03_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_015900_456469_F5F454F5 
X-CRM114-Status: GOOD (  17.78  )
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

On 5/28/19 3:45 PM, YueHaibing wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/usb/host/ehci-st.c: In function st_ehci_platform_probe:
> drivers/usb/host/ehci-st.c:155:19: warning: variable ehci set but not used [-Wunused-but-set-variable]
> 
> It is never used, so can be removed.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/usb/host/ehci-st.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/usb/host/ehci-st.c b/drivers/usb/host/ehci-st.c
> index dc42981047c9..ccb4e611001d 100644
> --- a/drivers/usb/host/ehci-st.c
> +++ b/drivers/usb/host/ehci-st.c
> @@ -152,7 +152,6 @@ static int st_ehci_platform_probe(struct platform_device *dev)
>  	struct resource *res_mem;
>  	struct usb_ehci_pdata *pdata = &ehci_platform_defaults;
>  	struct st_ehci_platform_priv *priv;
> -	struct ehci_hcd *ehci;
>  	int err, irq, clk = 0;
>  
>  	if (usb_disabled())
> @@ -177,7 +176,6 @@ static int st_ehci_platform_probe(struct platform_device *dev)
>  	platform_set_drvdata(dev, hcd);
>  	dev->dev.platform_data = pdata;
>  	priv = hcd_to_ehci_priv(hcd);
> -	ehci = hcd_to_ehci(hcd);
>  
>  	priv->phy = devm_phy_get(&dev->dev, "usb");
>  	if (IS_ERR(priv->phy)) {
> 


Acked-by: Patrice Chotard <patrice.chotard@st.com>

Thanks

Patrice
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
