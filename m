Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FB941E6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCbj4FPNJctyq4TKka8XmJIxKpLhqNYSlLeAqkPuDAY=; b=EbIRI8nDEemQ/Z
	I6k/zMAQK2HwO2UC75xGCvZsIiQob/D/nS9rLhjTEtUmhJumi3JvHGT1wWHOB9wJ8jldM+lQyQips
	3LMUTudumZ2IVKCnyY6J7HPzt8yrHqI1/o0obBHbL/d9LblOeNE+w0Najbht8HLIeZVAiJfIC307+
	u6+z+kG5M33pzQ4+UaTwoJHfOgccwoxK7Yp3UpJF6XeTgl+U/XjUXUm621su2gUQtAxf3kwYcoW4z
	Fjqbkzp03+NE0yjHbtnV2KILBX/lRDm8H+V1lTxCNg6ndhruqIf2X9OzvVZhjMku/Ijt4JDG3lfaC
	rDAZBNM8hTChET18xw0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hay7y-0007Gk-0I; Wed, 12 Jun 2019 07:57:02 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hay6a-0006LS-NX
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:55:41 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,363,1557212400"; d="scan'208";a="34080989"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Jun 2019 00:55:33 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 12 Jun 2019 00:55:32 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 12 Jun 2019 00:55:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NXSDa9DWzTco6T0nG/cxa6bKscMVuLsU5NrSuJMDljk=;
 b=EmICF+S+fXJasEH86dpp+vQQMlbEAX6ZZeVWcgkKva+UK3Ms1pYlXB99kdqrPGkop+8/M08zwFFxLw6oOUxFFuBgHAGaMRvHucodcoWV989iTSfhObCaO1cjNd07Ynq6MFHbBtfpgG3Dzz2vAy/noViEviLONW8NZG8F2hsA5e8=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1646.namprd11.prod.outlook.com (10.172.54.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Wed, 12 Jun 2019 07:55:30 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::7534:63dc:8504:c2b3]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::7534:63dc:8504:c2b3%6]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 07:55:30 +0000
From: <Nicolas.Ferre@microchip.com>
To: <colin.king@canonical.com>, <b.zolnierkie@samsung.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <linux-fbdev@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH][next] video: fbdev: atmel_lcdfb: remove redundant
 initialization to variable ret
Thread-Topic: [PATCH][next] video: fbdev: atmel_lcdfb: remove redundant
 initialization to variable ret
Thread-Index: AQHVIHhxNzg6Tx2rZEi/BuBHE6ieyaaXp22A
Date: Wed, 12 Jun 2019 07:55:30 +0000
Message-ID: <37ac8530-6601-a1a0-37e0-8c6d5d1702cd@microchip.com>
References: <20190611170913.20913-1-colin.king@canonical.com>
In-Reply-To: <20190611170913.20913-1-colin.king@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0228.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1e::24) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7757d5c-afab-4fdf-557a-08d6ef0b56ee
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1646; 
x-ms-traffictypediagnostic: MWHPR11MB1646:
x-microsoft-antispam-prvs: <MWHPR11MB1646FB9DAAA4376C23EA3DEDE0EC0@MWHPR11MB1646.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:862;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(136003)(366004)(396003)(376002)(189003)(199004)(72206003)(386003)(64756008)(66476007)(476003)(6512007)(68736007)(26005)(53546011)(99286004)(53936002)(2616005)(6506007)(102836004)(86362001)(11346002)(186003)(229853002)(486006)(6246003)(2501003)(446003)(36756003)(2201001)(66446008)(66556008)(31686004)(4326008)(6436002)(8676002)(305945005)(81166006)(316002)(31696002)(8936002)(6486002)(25786009)(81156014)(7736002)(478600001)(76176011)(52116002)(4744005)(54906003)(256004)(66946007)(2906002)(14444005)(110136005)(73956011)(5660300002)(14454004)(66066001)(71190400001)(71200400001)(6116002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1646;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /x8SIDZnpkmA1BFQPgZKYF+oi2q7DRkAz+6Z7cZtpB0JVgainvWKkaGtIfDgjF4mh1bYp4ZWrXbfaHlmemNiwkTLoXSqcHgxc4tRp2JEaE7AFGfeTM4XpWiR21ydD5T0bATz9vl1Vv0C9StkWG13b7fHvB58XaYdbTQysP/eF3L9GwN8FoAUUFWC2ZuJ3fL6AT1LuIR9NO9g07PZwvge34fIhaTfh/nbgbZxvf2elKFNTzVJGHfddy2XYltx/kG/NIY+gF321ZUt7icG/S9ZsGyCWP/C0T2I3IpyfIzj4Dta53U7Z8ePZ2HV9h7umkuk1kzNJQ1cbw8KeGv5dAPb5q6ASQ7ZC9YDLiTcYGPW5CfkIfRRY97Z/Iz/8SfAI4dbrfyBGMssuRW5WvLxqKOVXOzCAPxylPtBmGs1sAYoqkk=
Content-ID: <BAA8371C89283945AE7EC078E4004321@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f7757d5c-afab-4fdf-557a-08d6ef0b56ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 07:55:30.5045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nicolas.ferre@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1646
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_005536_927465_6219BB88 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/06/2019 at 19:09, Colin King wrote:
> External E-Mail
> 
> 
> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently variable ret is being initialized with -ENOENT however that
> value is never read and ret is being re-assigned later on. Hence this
> assignment is redundant and can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Indeed:
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Thanks, best regards,
   Nicolas


> ---
>   drivers/video/fbdev/atmel_lcdfb.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/video/fbdev/atmel_lcdfb.c b/drivers/video/fbdev/atmel_lcdfb.c
> index fb117ccbeab3..930cc3f92e01 100644
> --- a/drivers/video/fbdev/atmel_lcdfb.c
> +++ b/drivers/video/fbdev/atmel_lcdfb.c
> @@ -950,7 +950,7 @@ static int atmel_lcdfb_of_init(struct atmel_lcdfb_info *sinfo)
>   	struct fb_videomode fb_vm;
>   	struct gpio_desc *gpiod;
>   	struct videomode vm;
> -	int ret = -ENOENT;
> +	int ret;
>   	int i;
>   
>   	sinfo->config = (struct atmel_lcdfb_config*)
> 


-- 
Nicolas Ferre
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
