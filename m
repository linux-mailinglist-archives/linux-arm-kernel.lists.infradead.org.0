Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4579D131143
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 12:16:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mf7xIpLChNvHpdUpVn6S9It9b33BjB45mhOUC8yzadw=; b=sfpk05u2N19yIJ
	AL5ijXsH/9RDi7kkxWuX0aTfDPQ1UmXUQX+yEJ2eBjnGNrp41cq9+3y68AF64F6gKBt72OS0BxMeu
	ff1XomJvu/f3Mm3M+EGRNJwQteIo0ZDiaIJNY2VAHkVZvvSiqiEY18eVCXgEuEU546j9i5sehCWgz
	IPbqrG50uZpZf6aO2leIjwf8f1u70DJLsqKoUrEI3DspsE56aHf+9yJq4FoQL+9Nqfflw7QdxT95L
	4QQDWU1lOyVNm5dFzMW9RM9KF8KRdf9vx+dzsZbLGzFUKIB9wIkqASvlZshGj7bVF3t4o5L4peBU/
	bNf20OrLn1PDuSTro1kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioQMu-0007ZL-HW; Mon, 06 Jan 2020 11:16:20 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioQMo-0007Y6-QT
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 11:16:16 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Cristian.Birsan@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Cristian.Birsan@microchip.com";
 x-sender="Cristian.Birsan@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Cristian.Birsan@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Cristian.Birsan@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: jua32p+UUQDAuBFmskyNkRODjNZLZXzxCg0erjENjxDTuZtQ0Zm1yqJ8GTFX/sjVj/qjJws9jy
 KsdXGLyip0OTQdCG/6p+rxDO74DVUmN+q87EqoK8OeO/3YgoK8FgwzT1fviFUf47Ct/0Rk6w/1
 7GtDJrOyTQ+kKFzQvDpPfOifbvyKjHkjYdrzYyfkYEz779xViv8xrlvlw340y4XIqiFzyg9MVJ
 QAfufXOXC1mrDS64mH0kLd2bENwZHSlYKo7IJzzwj5/hEgaBFL2JfhapCJmyQzMOUBvtuHIN5o
 qo8=
X-IronPort-AV: E=Sophos;i="5.69,402,1571727600"; d="scan'208";a="60932814"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jan 2020 04:16:09 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 6 Jan 2020 04:16:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 6 Jan 2020 04:16:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VWEtgTeCMGxjDyF/rZiys99oiHAS1fNv3Kdpaa7e13dAqNXexLe/AjJ+5ua24f/Cozoqat1GWF0hLYXBVIzYz9iSk545HuyHFArMJ17JnImB5Pevw6sN3kp1I2jj71KWiArQ6HXsHkaz3j8Ksl0uigsW0jCiwHLld2BnDICK/MVdp3c2eAr3ij+M0+sgIQ6iz3/C7lXmlZPZYM8rnVai/QR2uLev1fJEVga3KpH6UdNxJgO/wNpkjpKRsDtvnqwTOg+NaTg/FFkdCoRvHQVm3/VcvhZNTkW6YGhA8IF6rKTnpplMqwgTgCUGGEQZsrB2M8yIoC0jlfyNrgLT/I9XIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3S5GGOi4rn37e+/hXKF3hAzXthDtUMZVhskDtpiMhDI=;
 b=hsCKNj283b6+X8UYMCE9TELqgy7sUBjqkVPbAo8mXa5AZBdJisRANaVAhAmhAQFFU+9xBLcaY5tAy52rQL2+qxPwiZoS4Ucm+AZrAe1ZmCZKv4RwtIB36A2ziFvr6r7vCzRzjIzVAlCyMBVVgO3oQRz3dOfBmdIvQ7jnWUtWnL4i+zTmRPWdijYr+IUylY72Ixbvtr0yqeMi9v1Pg+yl4q/o4ats4UkjosNWI0TZeNpQY8+PLNoOWblhjb3l2vHDsaRfsQ1BFc09saM5TNjG6AdQvTBsZ2ZWibZAOrV70YjosmBjxDTFY+u4FaS6FTD16a6JMBaNuH2OmovnMmY3qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3S5GGOi4rn37e+/hXKF3hAzXthDtUMZVhskDtpiMhDI=;
 b=WN35yULmJMbVbUsXBctftKh4Hlf5mTA/86/V3u5RDCll7GcX06pBmjrTjTqauLrWth5225PHAy/7FT2i1L2EV5Vd2GKGyJ0iJdiI1mdQQekTOh8bpDRzA/BlYzHbBaesbHZSobLTZm/ESLSAq0o55udn7mp/vdfy8SxU7TU5W/M=
Received: from BYAPR11MB2647.namprd11.prod.outlook.com (52.135.223.12) by
 BYAPR11MB3816.namprd11.prod.outlook.com (20.178.237.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Mon, 6 Jan 2020 11:16:05 +0000
Received: from BYAPR11MB2647.namprd11.prod.outlook.com
 ([fe80::8515:68aa:f5c5:3e09]) by BYAPR11MB2647.namprd11.prod.outlook.com
 ([fe80::8515:68aa:f5c5:3e09%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 11:16:05 +0000
From: <Cristian.Birsan@microchip.com>
To: <Julia.Lawall@inria.fr>
Subject: Re: [PATCH 04/16] usb: gadget: udc: atmel: constify copied structure
Thread-Topic: [PATCH 04/16] usb: gadget: udc: atmel: constify copied structure
Thread-Index: AQHVwHxYb+XuVB9wJkuss4WrXtuD0afdhBWA
Date: Mon, 6 Jan 2020 11:16:05 +0000
Message-ID: <d81c389b-f377-8ff0-7206-70c9b9a01f4a@microchip.com>
References: <1577864614-5543-1-git-send-email-Julia.Lawall@inria.fr>
 <1577864614-5543-5-git-send-email-Julia.Lawall@inria.fr>
In-Reply-To: <1577864614-5543-5-git-send-email-Julia.Lawall@inria.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2468ebab-0052-4f22-dd24-08d79299d281
x-ms-traffictypediagnostic: BYAPR11MB3816:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3816266D275DDED2C48AF617EF3C0@BYAPR11MB3816.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1060;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(366004)(39860400002)(396003)(199004)(189003)(6916009)(36756003)(64756008)(71200400001)(8936002)(91956017)(66476007)(8676002)(478600001)(66556008)(81156014)(26005)(66946007)(76116006)(66446008)(186003)(81166006)(31686004)(4326008)(6486002)(5660300002)(6512007)(53546011)(6506007)(31696002)(316002)(86362001)(54906003)(4744005)(2906002)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3816;
 H:BYAPR11MB2647.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lgQha65yrQJLOyJYcI8vmbFkZ0uB8wH2GVk7qNfA9rd1Y5V7ttrYZ2V9vSGx5OlT0rMT4G2ybRYUVmGGgpKDtfMZgkSEiBXa7heEr7BWrlb3olh2Dp34QrzwSBjgb3s4P/mwOrjZv2sgpKVYhIka2AFfG/yJ4LGws3k+Gwz64BP4Kk+G6En348UXGcmbHh2DCkGo/7rcEL0cDZXUGbf6X69GPuQdz+gPrncoabtcVdxWiyrmqSYxmmHkXIPu54OmHOYELzPwnU+uS+bgOAgrLJKxJPU2BZxDxeZvGEOeoR9cXn/Kkmrhs3n6I+bx5E2IBtBeweLUBNFtgCCNZjqSfMj3yig1gdQswxrvQkmFzgxhoYqupvI9Q7MOHf8jxp61TRG5lsA1Ig2sVQm79m1u2ukVzgmVopxfqQxUljgs+t122nmWJEpTUw6FD2EFEOVK
Content-ID: <C8DCC7C9D6128C4DAF7752243D95E7A8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2468ebab-0052-4f22-dd24-08d79299d281
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 11:16:05.3363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ABlGSI9Tqp7VuCCRJ4lkvieorQofe2imMMp4D5zYysgXPxlOmt//UNGsgL8CY/XHxNrH7iA/wIO8W5r6Xuc/M4m+byGj95IxIlsBJmfYyC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3816
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_031614_863070_44D5A669 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: balbi@kernel.org, alexandre.belloni@bootlin.com, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/1/20 9:43 AM, Julia Lawall wrote:

> The usba_gadget_template structure is only copied into another
> structure, so make it const.
> 
> The opportunity for this change was found using Coccinelle.
> 
> Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

Acked-by: Cristian Birsan <cristian.birsan@microchip.com>

> 
> ---
>   drivers/usb/gadget/udc/atmel_usba_udc.c |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
> index 8a42768e3213..6e0432141c40 100644
> --- a/drivers/usb/gadget/udc/atmel_usba_udc.c
> +++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
> @@ -1122,7 +1122,7 @@ static struct usb_endpoint_descriptor usba_ep0_desc = {
>          .bInterval = 1,
>   };
> 
> -static struct usb_gadget usba_gadget_template = {
> +static const struct usb_gadget usba_gadget_template = {
>          .ops            = &usba_udc_ops,
>          .max_speed      = USB_SPEED_HIGH,
>          .name           = "atmel_usba_udc",
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
