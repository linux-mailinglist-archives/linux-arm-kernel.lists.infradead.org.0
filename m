Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883631E9328
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 20:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYg/jdg5d+Xs2JrtSd9tWY9OHpsLTVB8uJVd2uZoTno=; b=iH5I3fG+h4gVBF
	AGaeue6b+cT/A7nVjAUgI04LSqorjNN74FEA3/ZhBOVReX4afXtPYoD1AiwbxCH0useWlDRqMKbVR
	VBK1OQSfwgpg08QJYqfg9IJi5ap+iIhTBv7Sk02PX+9e3YplIeVLJhXbsadVcHpKSdqQT6Qmpm3tc
	bEY59lTPZ/kxBeCM3UkrBmf9/YdN0ak0X8GIyBzW9W6RqHzcK4bNal8H7nhdi4xN7Bury0UN5V5vd
	nUhpmMVubCFE9bKW+e8t+rgUaM8uH6HOsq9HgNYYl6ATR+u/R4hrbp4vozOytVUpZviHZLLb+Earm
	tCZriLo+NciqWyBXc+aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf6Rf-0005mu-EW; Sat, 30 May 2020 18:42:59 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf6RK-0005h0-SW; Sat, 30 May 2020 18:42:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590864158; x=1622400158;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3X0HkmmwdYlt3B8YQ7a5lZOsqG1PbFwvQ0cBVECn3kg=;
 b=HnD/cXCED0z1xwMAw4fhbymTRCTEXT9YUJBacF9qnUGLvZZKwvQhw0m+
 0lnnH+wBbxHh4sXjitvDcDREh3x2EVg4C304t02j0xE0OL48i+9ACVpZS
 veVTBlSSqzkvZYb+bTKPtywTdO7bftQwn3SGlmxj+aR3xZqvTL6l8T7EY
 U9XBZA+a8Mkkl1wxDvrmd55Xv1YcfH9FB3RsFgrFhNGjNxfa9ntJVzjxY
 5X/N1Xc5v0w7tNk1YU03kwOmicr9Hsac3acRmYzijlPgfT+Ofe6xyTjz7
 8L1cQoNt8CR8rvMgDK2TedOBv3XXzYKaP3b6aSj6qsZTjjKf6HVcuNf0l Q==;
IronPort-SDR: lIu9cni9mwU1E0ORGOylyPMw1OQ4+cy/7ubHowjGyplj5HIPAIC0hBgZmiRXLZLO5f286ICepz
 MvJ2Vay8lOsKvS3KbI3yPEMk3LrmCXlVJjjg262VgqgNOvClKoLRGNyUZgRttUtQbw/4SMVK80
 lYa7YNlCaooW+Rh23zRul4zNXFYVQ5hU6gKSwBnBS87pyKgM+wLcTK4u7viMa0LwoZumLghCgd
 /3CWwH7KPUvRng6c/ehthXZfuaT0ljCT1m/QFiVPfkH4C0Mts2Z6Rf/WVF/Cw1ZTK9H5t9CK1E
 K38=
X-IronPort-AV: E=Sophos;i="5.73,452,1583218800"; d="scan'208";a="78368972"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 May 2020 11:42:30 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 30 May 2020 11:42:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 30 May 2020 11:42:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BwlZ9lSnhf4OuTV0y+VmBMR+yAqlrZ1ULQwi/ZqHJdQ00cbnvVEP+TLr2+gN9bxYobJf+wN5X9HPghrxRC00Vt+DD5cWqLSj8no2ZM5jgQGt1tsbj3r9lowFX/tqerlpyA74ZINt6s8zf+nxGR9kvBPRaFeWXEcF1AKy+2XdpACW0S79ItG/VJl8Khds6dr6HI3cRH1fEGTa81zrY2KkzCq8J5KlqUMF0DA9nAW9fbrSHkdYpwHOEzbWd3lhOYx0ZsKSCRMzSmhwLfquBBzs455sU5Nn1h0a5gPoDnOx9BykgemQdeEnmsvrHfhZ5JMITir0A/BYjfWHdoV5+o1FpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8sTQKSvperSBJ1cOluezahYZ9bKqYVueX8+oKlr8zGg=;
 b=lOkjK7Bzb8J0HFZiXcUu5Q1zjmgjnptbSV1v7W5VorGfPvPbZ9wU6PEVk1hsxGT9zhByhX+0angCkuUJ1ktftlyFmQUezQ9hGXP2mtZnsQzEnAzuJsEHPPdtTwg2R//VSHDWNWNxvu5AFBYN4RFMbfW+ePVeUR8LuAlduHTj2fVdFzk4KgWvmnYKRBLAwacUVhSFWdIZ4ok+qontTW9vdsoLtPFZ2HDbR019d8I8bzLG5YQPHfs4XoRe/oEfJCiCPBMRBBj3zfu6CIl2I+DkN4e5tpGBBzIWh6y65Di9E9JnEROLUB4hor+2YgbSgZyrnbPSLU9/5vrJ1H0+R+U0sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8sTQKSvperSBJ1cOluezahYZ9bKqYVueX8+oKlr8zGg=;
 b=Glmjl7cCMLqK9QTP3xWNx+wg0L6NIEZIJIw4AdDZjEuxOG6UBjOBGfp/OGDhm9lXBc6lHDclfoxcftQhv2wfdCygxD4Vo1WDx7DlxRkJwcKjDQJ11fhFyBq64eTjIJuyZBqDkXHb5K7EH/T7PG0Pk9pWOW/IqzuAK4py3XvBJMI=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4241.namprd11.prod.outlook.com (2603:10b6:a03:1ca::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Sat, 30 May
 2020 18:42:26 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3045.018; Sat, 30 May 2020
 18:42:25 +0000
From: <Tudor.Ambarus@microchip.com>
To: <p.yadav@ti.com>
Subject: Re: [PATCH v9 13/19] mtd: spi-nor: sfdp: do not make invalid quad
 enable fatal
Thread-Topic: [PATCH v9 13/19] mtd: spi-nor: sfdp: do not make invalid quad
 enable fatal
Thread-Index: AQHWMnVIZMEYjFqkx0Olg5PzC+IdA6jA/zMA
Date: Sat, 30 May 2020 18:42:25 +0000
Message-ID: <2267830.vuSd8QnXzO@192.168.0.120>
References: <20200525091544.17270-1-p.yadav@ti.com>
 <20200525091544.17270-14-p.yadav@ti.com>
In-Reply-To: <20200525091544.17270-14-p.yadav@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ti.com; dkim=none (message not signed)
 header.d=none;ti.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ced1d5d5-284d-4cda-5fda-08d804c932c1
x-ms-traffictypediagnostic: BY5PR11MB4241:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4241E672821EC385C242CFB9F08C0@BY5PR11MB4241.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 041963B986
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gZwxSVRrO35JyKderyiQQdXs4lq7ih00xDcQrgznTOk5LwTAQxqWpPpqc43eeIxO1NlpwnL9TiImSgPhhMcH1xtdA+nq6wvszc5Vn/JLtlZETRC5yx43PfoTJ3uCIjleFA9n5IMnekFz+xin7nQcmBErFftO/2fwOtSFZFEazy4FuB39Y8cZK0OFDRH7vWj0uTilkjnDGSD+h8D21vzGoP/z6NEaFZovWhgyiNFZAVQ+chsOcWL6DUYZaTkb/daM0ih9eC01P+S04gsrRdC6y1atrJBjIQmgv3BzDQ7JxA6waxdCS+XWLIZ0u4ezDtlTzcYTC1o2CLAOAiKFdpfXmY4hUslFooM0ubNjyPeMCGuhckyQiFCT5hdW4jFklQNL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(376002)(366004)(396003)(39850400004)(76116006)(6916009)(91956017)(8936002)(478600001)(66476007)(66946007)(64756008)(66556008)(66446008)(7416002)(54906003)(26005)(71200400001)(2906002)(83380400001)(186003)(8676002)(6486002)(316002)(5660300002)(6512007)(9686003)(86362001)(14286002)(53546011)(4326008)(6506007)(39026012);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: wbLTqMlkieEw4dS9HrNYsU6xXWfX6FfumzTQ+gdi+SGxKvHMXcAE6mklM7HO6cbbnQUvUzaRCK5jtY7C0yXVGxMmKwnNCJ/jQ79+U6LHFgZpWagcqBoJRJGDJuVitcEOi51bc0dg2upvYE/8f+IQfjhjRdxfdtwE/i8ckm6GPuFUJDnYhRmUw5Mq8BQ8qMDtnZy82DwgB3jMVd//Q/w3IQGKHKdI/xxTME6ZtDWmDI9YpWskIWi+kDhg7d0eek+BzPGzzwx+ugJmIkZDNCxvW7LHhex9X1Zy+ZzhGiEKVIZmpnCCLtEIFGekVXrzDtFNUWJgGKjolprhMwGcZSN9Zd19hDWBnPuzxFeDf0BgNXUgyF478sTn3+m1av5Yxuk/P+bugM9gn00Ix2Uh3l3UHq+AgSH3ZsRMAbRfSqJI7F8VbZcBlxRekjQc1pMID11PI7EeVvbGBAE7L7jvEdL9aNoMG2BsBv5IsFdGhf5vpFo=
Content-ID: <9626737D8CDCAE47BA3681563B01A1D7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ced1d5d5-284d-4cda-5fda-08d804c932c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2020 18:42:25.8057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wKE+ZMPzkmlQjpVc+sfcl3IIL9Kd9OomJq0OW9NEjk23cNvTDWMr/nSRbLp9gebBwZyslr9TJFdaXf+qKSh9NRzM096Vbl0B4r4ICow8O1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4241
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_114239_199989_1D4B98BD 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, masonccyang@mxic.com.tw, vigneshr@ti.com,
 richard@nod.at, nsekhar@ti.com, boris.brezillon@collabora.com,
 michal.simek@xilinx.com, Ludovic.Desroches@microchip.com, broonie@kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday, May 25, 2020 12:15:38 PM EEST Pratyush Yadav wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> 
> The Micron MT35XU512ABA flash does not support the quad enable bit. But
> instead of programming the Quad Enable Require field to 000b ("Device
> does not have a QE bit"), it is programmed to 111b ("Reserved").
> 
> While this is technically incorrect, it is not reason enough to abort
> BFPT parsing. Instead, continue BFPT parsing assuming there is no quad
> enable bit present.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  drivers/mtd/spi-nor/sfdp.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/sfdp.c b/drivers/mtd/spi-nor/sfdp.c
> index 052cabb52df9..9fd3d8d9a127 100644
> --- a/drivers/mtd/spi-nor/sfdp.c
> +++ b/drivers/mtd/spi-nor/sfdp.c
> @@ -576,10 +576,6 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
> 
>         /* Quad Enable Requirements. */
>         switch (bfpt.dwords[BFPT_DWORD(15)] & BFPT_DWORD15_QER_MASK) {
> -       case BFPT_DWORD15_QER_NONE:
> -               params->quad_enable = NULL;
> -               break;
> -
>         case BFPT_DWORD15_QER_SR2_BIT1_BUGGY:
>                 /*
>                  * Writing only one byte to the Status Register has the
> @@ -616,8 +612,10 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
>                 params->quad_enable = spi_nor_sr2_bit1_quad_enable;
>                 break;
> 
> +       case BFPT_DWORD15_QER_NONE:
>         default:
> -               return -EINVAL;
> +               params->quad_enable = NULL;
> +               break;

I would just add a dev_dbg message and break the switch.
	dev_dbg(nor->dev, "BFPT QER reserved value used.\n");
	break;

You will then have to set params->quad_enable = NULL; in a post_bfpt hook.

Cheers,
ta





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
