Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA994280F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cD3EEiwH7SdbXXcvdpuWOdKEdZYHYgkG5EbjcahZOHE=; b=nvtIaw7zacT/Vr
	ikKtbmjCsqIPgBMDF6rR5eITke5/LEZ/NqY76IoTt/dxDwBkMWbsr+0VrHDEJJuRpg9KVKWHUGihx
	rU+5BMgkuL3Q63mJBZFWUIYl5jygVbrBgYmJRw7GfDhSp/XMR2XCfjGBZVC57By7FsyaGti5/6Zsg
	3Sr4Jhn4hBwD+vWXgltg+/RiTR8IbXqUQ9fOO4CPWjF4GnWMQFhOempg/F0fWCJXw1MjpeLEJPF9q
	Dp/w//yXSVO91sChWShHc2q+FJe4N6mvcJLX5Rp+K3NVybnLcfL9KY1nv53agktoSdFnNdq2FQlUs
	azR4CBmwHaS1NFLwkVcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3hu-0007IJ-Q4; Wed, 12 Jun 2019 13:54:30 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3hU-00075l-Lj
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:54:08 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,366,1557212400"; d="scan'208";a="37039095"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Jun 2019 06:54:02 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 12 Jun 2019 06:54:02 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 12 Jun 2019 06:54:02 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HnNLn3CW9ykh9R4zF5eVc1KF76yYbo4kZxsDaoYrigA=;
 b=bokmo68782eR0Lq6aufuL9AYoNflrVnVnDhEJSl9yoODny1WY8VjiJU5LUG/EMT84xoQgK7ciBkNluCp6PRY0KusbFs183MJWXRZuPGSF68CWMXHUgpq+NLwV3i/e7YrcRKMpTGLcn5s8yT0sVG16wRXod0GsXkzAlhODIFCiXw=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1488.namprd11.prod.outlook.com (10.172.54.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 12 Jun 2019 13:54:00 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::7534:63dc:8504:c2b3]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::7534:63dc:8504:c2b3%6]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 13:54:00 +0000
From: <Nicolas.Ferre@microchip.com>
To: <Codrin.Ciubotariu@microchip.com>, <sboyd@kernel.org>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: Re: [PATCH] clk: at91: generated: Truncate divisor to
 GENERATED_MAX_DIV + 1
Thread-Topic: [PATCH] clk: at91: generated: Truncate divisor to
 GENERATED_MAX_DIV + 1
Thread-Index: AQHVISZJ7NNF73bMSUil2V7eUlzrig==
Date: Wed, 12 Jun 2019 13:54:00 +0000
Message-ID: <7306f2c5-e035-31d1-194e-6b4afb6a61c1@microchip.com>
References: <20190610151712.16572-1-codrin.ciubotariu@microchip.com>
In-Reply-To: <20190610151712.16572-1-codrin.ciubotariu@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0131.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::23) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c93b44fc-1f9c-4a81-9ad0-08d6ef3d6bef
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1488; 
x-ms-traffictypediagnostic: MWHPR11MB1488:
x-microsoft-antispam-prvs: <MWHPR11MB1488F6D232BFFE5F1E125E50E0EC0@MWHPR11MB1488.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(396003)(39860400002)(366004)(199004)(189003)(25786009)(99286004)(86362001)(53936002)(4326008)(66946007)(73956011)(66556008)(66476007)(66446008)(64756008)(52116002)(2201001)(31696002)(8676002)(305945005)(2906002)(6246003)(81156014)(81166006)(76176011)(66066001)(7736002)(486006)(8936002)(229853002)(5660300002)(476003)(53546011)(446003)(6116002)(2616005)(186003)(11346002)(71200400001)(6512007)(3846002)(102836004)(6506007)(386003)(71190400001)(6436002)(478600001)(68736007)(31686004)(54906003)(72206003)(110136005)(316002)(26005)(6486002)(2501003)(6636002)(36756003)(256004)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1488;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LK+XVXvpfl9ZUGoRsmWu2Yeo87RmJ2sAogy2KxoczxmP8mGJYl+z3VBnf5OqV84kpnutToTzH/ifECP1bQ7WkCiOqbnfBIc+t2BXPND9RgJ6LCc15Qe4JIEfkPc1odpPY4fODnBudk5AeXjfATIdWOIi+n8Acpkfcl9opZ+SwOv5wvQ34qme8EJpmUD2nzyWGAjr+g2nUXsjyrlW1ri2oUzdUaFWzvY0aI+xkvxt9kC3KfUtdLacJ4UAxQrVe1iAhj7wODBKPWedRPH+0vQUv6zW8/S+gB4Bz0+RY+MFJggmMOJMqqmSLFTw/DIxnGzuP4lfY7X9Insgpn2xLshqwocEei8K8nVsZSt0R1TqRejs8guhX3/99ugJSle6vWot5LknLqjjyJXmgRSgPI26tvM0JnZFgCpwEIy0WkI0UD4=
Content-ID: <FEBC4BE6DE7E3F4396522FBC19CC6B7D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c93b44fc-1f9c-4a81-9ad0-08d6ef3d6bef
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 13:54:00.6045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nicolas.ferre@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1488
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_065404_823348_3C04FDAC 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/06/2019 at 17:20, Codrin Ciubotariu - M19940 wrote:
> From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> 
> In clk_generated_determine_rate(), if the divisor is greater than
> GENERATED_MAX_DIV + 1, then the wrong best_rate will be returned.
> If clk_generated_set_rate() will be called later with this wrong
> rate, it will return -EINVAL, so the generated clock won't change
> its value. Do no let the divisor be greater than GENERATED_MAX_DIV + 1.
> 
> Fixes: 8c7aa6328947 ("clk: at91: clk-generated: remove useless divisor loop")
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

Yes:
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Thanks for having fixed this Codrin. Best regards,
   Nicolas

> ---
>   drivers/clk/at91/clk-generated.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
> index 5f18847965c1..290cffe35deb 100644
> --- a/drivers/clk/at91/clk-generated.c
> +++ b/drivers/clk/at91/clk-generated.c
> @@ -146,6 +146,8 @@ static int clk_generated_determine_rate(struct clk_hw *hw,
>   			continue;
>   
>   		div = DIV_ROUND_CLOSEST(parent_rate, req->rate);
> +		if (div > GENERATED_MAX_DIV + 1)
> +			div = GENERATED_MAX_DIV + 1;
>   
>   		clk_generated_best_diff(req, parent, parent_rate, div,
>   					&best_diff, &best_rate);
> 


-- 
Nicolas Ferre
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
