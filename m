Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C15901CDCBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcLaEjyV7355NB37Z2zmoriU37ZJWJTYCxiGxJnVwuw=; b=dS8KKgvTzYnqSA
	Cu6G4r8hrj3lP6L2CfwjITs/30MectmoYo0Two7uIbQdxpn7YkaMpyi4kQtm8nU+rURU/eIKHWgnu
	3lVqT/TIe35gVbRlVQBP0RoaoJe6zyDR9h12ef/ahBtP7oQpAldhKo3G8X8NYDojkIfWLndXMDHrp
	WszowQ3xMYpweyB54sQu5oorPenYQiQNFFQ4WTom5nBA/bEA/RDPpBT5AzBItwtZexKnmodh23Hlp
	SvptfQwh1+S6+HI0F/7EdY0ccBmz5Zd9LeoztO2L7Ms3ijFkudBsgyNxTRfkh/6LCrW/5JkoYdBkj
	thf0brqeERbSYRPmJNMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9AV-00066o-Hx; Mon, 11 May 2020 14:12:31 +0000
Received: from mail-bn8nam12on2050.outbound.protection.outlook.com
 ([40.107.237.50] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9AO-000664-9p
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:12:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nzWjH2qMxouDt7+yUNiNdAmNgi57gmm0Dc3VL4h4maFP4W9Bc5dEOa/l7vX74HyIGjhOmFVEgQP9+EM0XMFxomPb9hZo/aU8AcZn5PnGcJX97UzJYArG1vQWvnYG3L9eJLDzPz+VPrTibBGr6Nl6Q2eBxWRzLyKLODGpMPBy0Uaj0W0GIIbgMdin46uoKbZHcSPqC/a2p0cBgVeBnT61pNFIhIkyqhKMdWK4hsOOjlXUZFaDi6zGLtu/R3/CFSzssvPYdnmoOe2Jiq0IRGxVV69ZJ8TgKTInCn1RvBzTlavYjPHNgCRrYeV34wa/0xZUeL1Td3NqITE5s3itloGH8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9aHJaBav8SVerFGBaiFCVvU6lmrRdvs76kV2PP7qr0o=;
 b=XbNaZykZZ8ejPGHdQXJq0YnOf4RMOuYzxNoBB3DnqY34crhT7yrhZl+5ik0gmYejE7uVT0u+uRTqUxzMdo/THLmizR195fEvhx8pniNUCLt6I8IiloS49b3SlCDV826imbmEGdr5wFnoRNeOId92YdgfhS1SzDHN+STtSIICxChaCnRuJAmUBoyXBhKZmURG1DLwT965nwqBJxwi5btHoKEqn5IN6v58o3FOJKeN7OMvW91C+KqRq7w8Nk+xRL22EIInCSyYg+NBpTbq5gbDhIiDTdHt2lZhwudqtM+dOJBG3MuEnDNKfbifnleB8GpRr52nlNSGtf8ALb0xxSMIew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9aHJaBav8SVerFGBaiFCVvU6lmrRdvs76kV2PP7qr0o=;
 b=rtnvihcrcFpTckkKSfR5pd0rBWwuC2PYKVWUgslkQxtwrptPHZHP3eiogK2bJ75U7n15WVR5YRQwZJMCVqy+6xu6vnN+L9OScJJ4DDh8bUgG0jLylnwkMUDC2woQcTyAafkg8F2uEbKzeSqqnEnVz21aWkbNRZj+AWyZ5suzgCo=
Received: from DM6PR02MB4140.namprd02.prod.outlook.com (2603:10b6:5:97::21) by
 DM6PR02MB4059.namprd02.prod.outlook.com (2603:10b6:5:96::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.34; Mon, 11 May 2020 14:12:21 +0000
Received: from DM6PR02MB4140.namprd02.prod.outlook.com
 ([fe80::3de9:d192:ff78:5302]) by DM6PR02MB4140.namprd02.prod.outlook.com
 ([fe80::3de9:d192:ff78:5302%5]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 14:12:21 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Harshal Chaudhari <harshalchau04@gmail.com>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>
Subject: RE: [PATCH] misc: xilinx-sdfec: convert to module_platform_driver()
Thread-Topic: [PATCH] misc: xilinx-sdfec: convert to module_platform_driver()
Thread-Index: AQHWJuoken/qqN3q0UyLQIrh4T2n7Kii7bNQ
Date: Mon, 11 May 2020 14:12:21 +0000
Message-ID: <DM6PR02MB41406B5BD7A4379F73ECEB12CBA10@DM6PR02MB4140.namprd02.prod.outlook.com>
References: <20200510164308.31358-1-harshalchau04@gmail.com>
In-Reply-To: <20200510164308.31358-1-harshalchau04@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=xilinx.com;
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5e62cc84-f681-469f-9a6e-08d7f5b5524b
x-ms-traffictypediagnostic: DM6PR02MB4059:|DM6PR02MB4059:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB4059B61A501F7C0E2CE477BDCBA10@DM6PR02MB4059.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 04004D94E2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z0eU+vFffxo1aKQvxiz8o2j2Wcek9CB6yoSHgCkqqHOYbQSI/hocSIcSMB5LRGUif3A5q7t0g0iwOd8YG+/ueD5Lmb8dLenmGV9S0Hf2Y0ygUelvIiJufmXHRgBE2dpXA8YHyRiYESrQLtu9kM2sJ7inIi3pXciM8QXAU9etmBNJmapp2DTND0uOd6QWJ5+qkFQtjBV7Jrn9I8Rp8xyOJtzybLeNiwFStLI+bIwCi6H9/miIVlOA8H2dU5mBql1sW1p/mDxAyltdE2wMYoLPVVQ9sfxbOLWYJ2uqjynkaF7UBeIawRDHlsuVWaYDyyNQNoPoEIp5O+0PuEr2x2M9ZkNhR+JNRr7e+yg//XvBPI3BWIg4QSsnKabdh0C4UG+M6oT3F9IsWhRNT2RhkKb/4gzQIxYRhSHhUVM3GO5kZZQHeDF3QsizsUWdMbULdX10R9Rwub+KkrcZllWbhrL2U3fGNEvRCBmQB8z+lSJCqwMBgmDbH1bN3XAAhH2uKHberLsJE3VNqZwk47RBHNHsnw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR02MB4140.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(346002)(366004)(396003)(136003)(33430700001)(54906003)(53546011)(110136005)(66446008)(66946007)(316002)(66556008)(55016002)(9686003)(4326008)(6506007)(71200400001)(478600001)(66476007)(64756008)(8676002)(26005)(7696005)(33656002)(5660300002)(76116006)(186003)(33440700001)(8936002)(52536014)(2906002)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 48T4btpSAerlz1vPlylJtZrzVmY20xDv5AUHhFsqpn2o+/RrOozNdEsQQ7Pm2SQXy5rzgr4eSUwUEQuj10JGmOhuqxEzodf7e1FTw30j4NS4p7wfP2fLdfWLWeD2eDMsAOTLm9+JTyv4x0LN9p7PwHM2FXBOfIlpSfWbxnfJ3EOuM/iySz9BRpXRrVg5xIyJjxmOjJ7ahVKJPCxk89vxtMJTriWGyZ4lTqAbMr1xeNbLvfiVoGLua9u9U21zX+H5bzeU0kZxMg0QJUBm/xy9hMtD09RMEDFPKYH1Xp+BOSsSm3Q1ADuroOT1c9K2VD+R96RXk8XSq3kMGXLUksbJ2D4M2SG/ILuRxStpuRMkTrr5aqZ4xsZ1ScB4f3RH23yzy+Ca+kW06DXqPcHeif+q2eFl0d8P7DeTxai7DekZ+/6nyMPNS3yn000SZTpC2Q8Uk+NcxVdWi7FrgnQe4CsshKCvMeHeDCVt41Z5BwhwAcnEoMV4vVenZf8QiRWtqO6Z
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e62cc84-f681-469f-9a6e-08d7f5b5524b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2020 14:12:21.3627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w0Tqkd5la4CU9SXwpGwclkIHeK6rrmSSr8as/u0T/FyZAnu6CBi0JiBaUEqv1K6G9mCy9sa7F/40DJGGhY6aHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_071224_342500_CD25D48D 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.50 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michal Simek <michals@xilinx.com>, Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Harshal Chaudhari <harshalchau04@gmail.com>
> Sent: Sunday 10 May 2020 17:43
> To: gregkh@linuxfoundation.org
> Cc: Derek Kiernan <dkiernan@xilinx.com>; Dragan Cvetic <draganc@xilinx.com>; arnd@arndb.de; Michal Simek
> <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; harshalchau04@gmail.com
> Subject: [PATCH] misc: xilinx-sdfec: convert to module_platform_driver()
> 
> The driver init and exit function don't do anything besides registering
> and unregistering the platform driver, so the module_platform_driver()
> macro could just be used instead of having separate functions.
> 
> Signed-off-by: Harshal Chaudhari <harshalchau04@gmail.com>
> ---
>  drivers/misc/xilinx_sdfec.c | 20 +-------------------
>  1 file changed, 1 insertion(+), 19 deletions(-)
> 
> diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> index 71bbaa56bdb5..db16a42c66f4 100644
> --- a/drivers/misc/xilinx_sdfec.c
> +++ b/drivers/misc/xilinx_sdfec.c
> @@ -1484,25 +1484,7 @@ static struct platform_driver xsdfec_driver = {
>  	.remove =  xsdfec_remove,
>  };
> 
> -static int __init xsdfec_init(void)
> -{
> -	int err;
> -
> -	err = platform_driver_register(&xsdfec_driver);
> -	if (err < 0) {
> -		pr_err("%s Unabled to register SDFEC driver", __func__);
> -		return err;
> -	}
> -	return 0;
> -}
> -
> -static void __exit xsdfec_exit(void)
> -{
> -	platform_driver_unregister(&xsdfec_driver);
> -}
> -
> -module_init(xsdfec_init);
> -module_exit(xsdfec_exit);
> +module_platform_driver(xsdfec_driver);
> 
>  MODULE_AUTHOR("Xilinx, Inc");
>  MODULE_DESCRIPTION("Xilinx SD-FEC16 Driver");
> --
> 2.17.1

Acked-by: Dragan Cvetic <dragan.cvetic@xilinx.com>

Thanks
Dragan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
