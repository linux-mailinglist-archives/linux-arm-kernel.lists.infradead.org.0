Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C41C957C62
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fXd3Ka6WkduBNuRBdFqSbVxTAfvHsteSXLrgBY/TzE=; b=SUs3FLOmXewpZY
	2Z6O8mT5/L7ANbEMLjbzTJy751uaPJFbPwSu80Tf4Wq+HJLUWK16hMWqVE79hv7s7o2xbdPszHo6n
	V/fyx7/8jMGxFyD2LdSEU4/WUoET6Pg3dx0JqgkJWE6/AGfiFhW/0E3spiiN+nPtnjEtjeSrZp4AL
	4an49b7tX4c0+KU3743J5YkSYMO/sxQvjWVbh0XjZleO2mzsJh4LvzRBwQmVu0bDI+r4FaJGN+3+h
	oy05RpmDmTfBFceQAKoiI81RjC6pKpqSWyFFHJ9G7+VE1ma71xsCsDcPS+zmwpQ4ihLto0CBFld61
	mgZfsu8NYRvqEtGP9k2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOAv-0001D3-3W; Thu, 27 Jun 2019 06:46:29 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8C-0006KM-4s
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TKCaCzqk8iPMb0NaVEzmbNvV2P8j5hv99P06lISxRF8=; b=fSPhHdKpom9Xeacl0dbIwkPoZV
 UX/nLDLEmF9vKBytLrtEXI9iPvhmRfM8opMrnaDANeZtgofBRqpnQgv7bDly6ZoeL4mg8gSRBuwQq
 5KCMJ8Xvp/Dg1meBPrbHQ7ycSELgM8kKeEew3hkEGJTJ0j7eaTC2E6i9DlL6+I+b8ObEnk07qSzbd
 OnwzVzslgZ905hQR2q95N8SXcBE+dci9Atmfh5TyZGmW2e4cwTh8Sr+5FNx2j9ppKvNw8tAxtZNOS
 gaJAJyagr0VcTmsCtJZF7A8dpmBqyhWta3YoF5LqFQXmFCTdoC5jWy2uGuQRXV7gNY/xeG8U1Ixr5
 vZAYI2YA==;
Received: from mail-eopbgr20057.outbound.protection.outlook.com ([40.107.2.57]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKzz-0006JX-Gp
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 03:23:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=rs7/FJp+TBuxazlr2h3qhZx7IoOMzZ7ttlGG96WX6eqPp7slkNfq/wwoGY19NjoYCac4Ew0ukUpD6MqoeUjjenHTdpzbRMQKX8WxgzztEXS1Z9eKDAXgk4vu3AZq8oeFk+DAj3P/ybqTXiZIDOY7vCVw5V5xCTxH/SM+hjLct3c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TKCaCzqk8iPMb0NaVEzmbNvV2P8j5hv99P06lISxRF8=;
 b=XbQsPUSXkkH5szlN3BvmP/53n3liDhea2jvtdciOj4p3GmSCJCS/yaGMcGzh8XeLPyAGDKCneB0tsIAqFj/sDwSC+XkPqCqXNirmaAsIgiwVPeyO6exAv8nt5KxyWF5GkWylNCSUrrtBygaxAaxMJ6h7c/4uJEXE3tL34QelRPk=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TKCaCzqk8iPMb0NaVEzmbNvV2P8j5hv99P06lISxRF8=;
 b=KaVYPVGqIOD0AIQY7lzLagITF5HslABdTXRrAO9s9zNkHBfI7obm5Qg+2hCwHVj68R/p7JED5QKBw929V/KfNOYtwYRvKX6kTfLWxVIKLUxK52fOZ4zGr88DjLYgJC0Dr27V1plBsZFeLJg2Nh/KTvgRCDRz2XxQ4P0Sdt8ucdY=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB6237.eurprd04.prod.outlook.com (20.179.24.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.17; Thu, 27 Jun 2019 03:22:26 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::c1bf:7842:6630:b87a]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::c1bf:7842:6630:b87a%7]) with mapi id 15.20.2008.014; Thu, 27 Jun 2019
 03:22:26 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Krzysztof Michonski <michonskikrzysztof@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: RE: [PATCH] imx: usb: get pinctrl if it's not yet initialized
Thread-Topic: [PATCH] imx: usb: get pinctrl if it's not yet initialized
Thread-Index: AQHVK/i90+WXqSm7OU2u5W2oAqYjPaau1pkA
Date: Thu, 27 Jun 2019 03:22:26 +0000
Message-ID: <VI1PR04MB53274E7E20C099F0F84B18198BFD0@VI1PR04MB5327.eurprd04.prod.outlook.com>
References: <20190626082512.7637-1-michonskikrzysztof@gmail.com>
In-Reply-To: <20190626082512.7637-1-michonskikrzysztof@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca7090bc-5d98-4848-9050-08d6faaeadba
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6237; 
x-ms-traffictypediagnostic: VI1PR04MB6237:
x-microsoft-antispam-prvs: <VI1PR04MB6237CBCB19EB5D9637F52FCD8BFD0@VI1PR04MB6237.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(366004)(136003)(376002)(39860400002)(199004)(189003)(66446008)(55016002)(71200400001)(81166006)(73956011)(81156014)(14454004)(52536014)(5660300002)(66066001)(6436002)(4744005)(71190400001)(8936002)(478600001)(9686003)(14444005)(256004)(66556008)(64756008)(66476007)(26005)(74316002)(53936002)(6246003)(8676002)(305945005)(7736002)(25786009)(99286004)(54906003)(76176011)(7696005)(476003)(44832011)(6116002)(76116006)(2906002)(186003)(486006)(66946007)(4326008)(11346002)(86362001)(446003)(229853002)(110136005)(3846002)(102836004)(68736007)(2501003)(33656002)(6506007)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6237;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aUEjglVWCvjl4F1uf4GhK9ceJV8s7MLu9CmnlJYWrw8mss22L8gQxVIBoX9uTH5IgxBWjoUKenw+8HpQvhld4n9R2XNWSGIfi6EqqzNOxGbFeDCjEX27sYlXW41hGJBsVf5Fz0GG5kgDOCncyAJfwplkmvcs59TpBqsTOgaH3ItT5fTdXkjJq+6YiADIePWZqb7ux42goYYY1gNulp5DBOk02YwuTin0ColPU0Uh3a9DAAynz0WsAMKnTKOOgk51VRzo4KUgFNaJUqi23XMJIIsKlf1X9OuWrHxFfZ+Cy+ShXoTwkJ4GyveZKl1mbnN+OhenjYw0L2hvIGpM+pmJkOAxYVWiSjxtjX/F9vqmFf/s2vIb9vZ/lQACIrnwAW/dn15nc8F+Qipc5tCLwS5lLDRipiIvvBylEKVr4TmEbfY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca7090bc-5d98-4848-9050-08d6faaeadba
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 03:22:26.4812 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peter.chen@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6237
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "afenkart@gmail.com" <afenkart@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> In case usb phy mode is other than USBPHY_INTERFACE_MODE_HSIC the pinctrl
> for device is not acquired. It is however used later regardless of the mode, hence
> leads to requesting access to uninitialized data.
> 
> Signed-off-by: Krzysztof Michonski <michonskikrzysztof@gmail.com>
> ---
>  drivers/usb/chipidea/ci_hdrc_imx.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/usb/chipidea/ci_hdrc_imx.c b/drivers/usb/chipidea/ci_hdrc_imx.c
> index a4b482c3dc65..2f02b35c40b6 100644
> --- a/drivers/usb/chipidea/ci_hdrc_imx.c
> +++ b/drivers/usb/chipidea/ci_hdrc_imx.c
> @@ -428,6 +428,9 @@ static int ci_hdrc_imx_probe(struct platform_device *pdev)
>  		pm_runtime_enable(dev);
>  	}
> 
> +	if (!data->pinctrl)
> +		data->pinctrl = devm_pinctrl_get(dev);
> +
>  	if (!IS_ERR(data->pinctrl)) {
>  		struct pinctrl_state *state;
> 

Sorry, what kernel version you are using? The recent kernel is different with the patch you posted.

Peter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
