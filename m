Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFDC14EB44
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 11:47:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6UAzCnwsWp7ZcGR9rH8QOxDd5vujtWE+25cgYmw7/0=; b=SfxpkV/HVabRJc
	y4jZEYIJWKrNvLfpLSpkIDnouOhynMhRzyA1F8CUqdfno6Zn0MpkHvzoegT3ocYMIokCsHexPfNzF
	IPwC29/FyR/9BTb+ccLDXM5xjaKVVDYVlc7RFeZiE2KUgQ32jzddqaDSic2BjO8mhy77sdWbom9LG
	8HzMnLXDN67ubnbjwtHB4QZTGA+PZdrBm6KoPOZ9Gpy3JY2uwQgdj2rY+Dzu+C+UfJHk+zF3i38Uq
	ydZLha5sJLbL/8ePtCNZTFZ7evOmgaCvCVDrys+0BNuUkauIWhfae/i9AvihdBBO9+v5OU16A+dfq
	tFu3in2MLEso7Kb5b5mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixTpm-0004W7-IJ; Fri, 31 Jan 2020 10:47:34 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixTkg-00073g-1t
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 10:42:21 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: cCZxNusCWvHyik7PobtKgvspYQRYjdK9Dew06kxUK86DR3BEdUYUy5p52hWCkAglgMC+1ZX3Ou
 8oLgXwYk3V9agtal9a9SP3maexoDYhQoamIDeB1kk2iB3IP2DMJZuv3VQT/JOCt6iS7viE2e1B
 8Dn42kQ5s1jbd/wLzZ52g5wRoBUjMQiGxryd/Ca8DYLOJmbyKq9RzPieuQeOcxrflYBOUQALhh
 9JG1dewCS1hlMQHC12hdzu3QP9yDR7noV7v/2KZfVVlR/VyYLs+UPvOba9NN9RejUy6AN543AS
 +Yk=
X-IronPort-AV: E=Sophos;i="5.70,385,1574146800"; d="scan'208";a="63779480"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jan 2020 03:42:11 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jan 2020 03:42:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jan 2020 03:42:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=irnAHaR2RbfQoHtT4xLfW1GMnJ879p+yj1L/7Ao8aXkSElfUzBUZkticsw9tQe7Q2AyyXDwQUqZPdG4fByc4Z/HQ354ldMrPn03JA8QTNk1I30NB0IwBJ15mg6fgP36MVa8oJOeIweGTvnc5IhRszEHWBR4ck7BDLpoFBplRvUmFDHl/jmW8orFQ/g8HZikIA+KlZxj1kVwEXFEr7qb0kd3/rQsJYFvtMbfAB9/tFBo+FiJqECeg17l6Q8gWjVF/CSIvd9QGWUQZvYJgw6Uc3Gcp5wdIvcm1fj3qXC68j/HmK7L24w2U2nBw2Rf9zd0oZKl1LGah3vO2KouVCiOlvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KaGXC2X9lxY07hM5v8cUn7WHVgzgDy9au2r77LMllUI=;
 b=Mt/UOvcJ5c/qbgRMIWkGvht64YK/YJ4nL0y+r7DybwtKdOtUDRb+MCo3brOSRPBYMk+PQdK4G30dR4aHovGIhCej2zqU+BWT0gzY+EYonVLYVUkLAST6W8dUxMy4wbPB9K7uvl7wJHd68FvXRL5GxsO3dzlDaAvYaGx+i046PSM+HPqoNPOlYXeONO78OnXVJ22aW7CVmlrSSbKDxpzZaaglrPIhQRWPA/6e2Qcpfdnw5LdsAbkmjfbVIez6fU91hG8zLQUAqpKnQe1nwo4mwz028ADfPvV/TW0y3VqDFtkN4xVvd8vjcGmoq45wIR6mdtn2IOzawF+g37sXzuk9ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KaGXC2X9lxY07hM5v8cUn7WHVgzgDy9au2r77LMllUI=;
 b=kpmyHINl0Ix1du9wgCOlTirc+3Z4gnKRqw2z8SVI1HSlvpbXdLWghth4lo2kEQpHy9mZDJYId60mIFMHeEZI8kQ6nD8Tq4KC+gv/Y4yMcRl03U6uWVlYJcMyKFgFWdoP3EUrypWKXAv/EBad+BA90RdlCIytFyqC3in4qjq1fss=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3995.namprd11.prod.outlook.com (10.255.61.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.29; Fri, 31 Jan 2020 10:42:06 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a%7]) with mapi id 15.20.2686.028; Fri, 31 Jan 2020
 10:42:06 +0000
From: <Claudiu.Beznea@microchip.com>
To: <Codrin.Ciubotariu@microchip.com>, <linux-clk@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] clk: at91: sam9x60: Don't use audio PLL
Thread-Topic: [PATCH] clk: at91: sam9x60: Don't use audio PLL
Thread-Index: AQHV2CMUTS9+vTc4bU+e0LC8TLKFlA==
Date: Fri, 31 Jan 2020 10:42:06 +0000
Message-ID: <72d97d68-690b-7f18-0dca-a5aa131e1c29@microchip.com>
References: <20200130174708.12448-1-codrin.ciubotariu@microchip.com>
In-Reply-To: <20200130174708.12448-1-codrin.ciubotariu@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81b3ab8f-1ed0-4d9a-e06c-08d7a63a377f
x-ms-traffictypediagnostic: DM6PR11MB3995:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3995700FDF7AC95EBE975DCE87070@DM6PR11MB3995.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 029976C540
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(366004)(189003)(199004)(966005)(5660300002)(53546011)(66476007)(66556008)(26005)(107886003)(76116006)(66946007)(2616005)(186003)(66446008)(64756008)(6506007)(91956017)(36756003)(498600001)(86362001)(71200400001)(31686004)(4326008)(2906002)(6486002)(54906003)(31696002)(6512007)(8936002)(8676002)(110136005)(81166006)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3995;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m1yaoiMbVYDcnKlO0N5tUZfPPIh9pRf4C3xkpIuYMf4l8MXlsvq6NjVtNngReZvnJdxgkisn/DEDTLmzM8IuGYuw3ZxE+cWpUxvCxHsTT9onWYK4FlAXl5MNEJzfAZOfyNGNh9JyCS+w+Kb1V2oEi/a5wFubDWZX1h98c4Mu5mtLAxyEhds3xX0EnRKBMJ4CbQY0txT4AGot+1LZqKtzcesaFa7bDKNNE3baWJqQM8DDUnW9gATbezkeNy6DYl84Ob9av677cIl5sVVel3waXnrdnSah0TVNFgF0GB3fLU3ElDs3pHF4wPJuXGwh6hEvi31ppQRTkp0SnOo4R+ekKhvUyH8WfjUkezbepdodt/PK+ZlvSQebkex0q4cLDy2aZDPOTw3ub85umGB2kFf19Q5ztvQa6ykE/J3Vs0DA1GwKhNFe9NnBdCAFr9Pf5ZnKXcjnX/iRbnoxAD8NNr5ycpj7xPd/AD+N8RtoOON4eXsxh3DCmuiyGLxBNc2b14a1IqovswseD39b3O6BYYcuKaweY3WBlnyJbGzDy8cZaBnnwjJPh52uevZnihgAojDRy46cH769Go+esSkOoEGth4uryocBf5hw9fMxgBj5HAhVO9rEWpzAKNRLU1B59ajqDoteCMSEb6hIvrgTvnHqVtTB1gFgLtyumo5KmSlJb637Xq45HkiJya+afKoGx+St7Yyjy23uvMVv3Sxc1bajePN/l3qCzgoJaHfDUa1+WDI=
x-ms-exchange-antispam-messagedata: VY8x0AQnzVvLf3HHwbRibd+la7xm9Ch3yFM0oJcgRMFuy4/0nZqzhcEYInVIZ/n0furTKy0SYu4E8FPItODBJ0hUsNJXg5mv5q3GEQk+vhQaMhQ7hGC+SziO7jHA0RfPqAnsowGuniL1C/5bhw6V3w==
Content-ID: <8DCE96E21A9E4943A93D07954D23D9C5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 81b3ab8f-1ed0-4d9a-e06c-08d7a63a377f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2020 10:42:06.4186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /fajoQ4Ad2PPdMqxBtap6egqLWltMRxqVNSCenjfBCwvt+XQo5fJf+8dnB9FV9u4RgK1//sTBu52gAGrQP8sW/3XR7hd7GlBXbXfbSVlBlk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3995
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_024218_126859_B6DFFABE 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: sboyd@kernel.org, Eugen.Hristev@microchip.com,
 alexandre.belloni@bootlin.com, Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Codrin,

On 30.01.2020 19:47, Codrin Ciubotariu wrote:
> On sam9x60, there is not audio PLL and so I2S and classD have to use one
> of the best matching parents for their generated clock.
> 
> Fixes: 01e2113de9a5 ("clk: at91: add sam9x60 pmc driver")
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
>  drivers/clk/at91/sam9x60.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
> index 77398aefeb6d..0aeb44fed9de 100644
> --- a/drivers/clk/at91/sam9x60.c
> +++ b/drivers/clk/at91/sam9x60.c
> @@ -144,11 +144,9 @@ static const struct {
>         { .n = "sdmmc1_gclk", .id = 26, .r = { .min = 0, .max = 105000000 }, },
>         { .n = "flex11_gclk", .id = 32, },
>         { .n = "flex12_gclk", .id = 33, },
> -       { .n = "i2s_gclk",    .id = 34, .r = { .min = 0, .max = 105000000 },
> -               .pll = true, },
> +       { .n = "i2s_gclk",    .id = 34, .r = { .min = 0, .max = 105000000 }, },
>         { .n = "pit64b_gclk", .id = 37, },
> -       { .n = "classd_gclk", .id = 42, .r = { .min = 0, .max = 100000000 },
> -               .pll = true, },
> +       { .n = "classd_gclk", .id = 42, .r = { .min = 0, .max = 100000000 }, },
>         { .n = "tcb1_gclk",   .id = 45, },
>         { .n = "dbgu_gclk",   .id = 47, },
>  };

Please remove also the pll member of:

static const struct {                                                           
        char *n;                                                                
        u8 id;                                                                  
        struct clk_range r;                                                     
        bool pll;                                                               
}                                                      

> --
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
