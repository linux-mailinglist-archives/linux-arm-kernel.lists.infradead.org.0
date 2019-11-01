Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFB4EC405
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 14:49:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1YNwC35Wltk3ZFaXvB4Y/h4ipprlGUzsSRzKHHnfSII=; b=l9tJm/1Eg3PQ64
	u4lttxL3bRmlo+4U4Bo2RkpVBSzMiTtuVvhI2xNIqEKBOZ9jIFXP2AJMZ9Yo5oBZ6TAskCnrh0+yX
	j2jbT4UTcVKk8ar7EFqw37rO6UvcKNijCS98s6olgZ2uUGTw22uqKek6/qb/D88ikH82h2B/WQ4HO
	LZygzldPpnCS0iN3UG0sXSpDpNBX4sYhjEj72G9IrMIsA5Dnvh0aeozo5kivS7IOGR4wZO7w/oWON
	QcLbeNrMs8aV4/NuQOaAMU4y0nGZhngu0S1cMWVk8FYqCdViboVrecZk0jgJO8Iabbo+9OwuiPuk6
	gp96Wnq3M1TuP/fenFqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXIC-000825-6m; Fri, 01 Nov 2019 13:48:44 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXHr-0007sB-UP; Fri, 01 Nov 2019 13:48:25 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: TM4YLM2emM9dNpPk9Z2MLVhIu7oHIfVDKTPNMZEICmqVZ2Ls2OpmkR/EKABAXxUwTBIQJetNpv
 dFzBUCdq2Jm3ZSplaiyCdKiONV1XE9y7ZdIgG7YFKwscMWSNYFbQqMNV1g6zrLpvGhwoSf9HeO
 qtqJEGAEzzPvETFmgplt2h1nkFa9gM+9uN8ZQ841wmixARPXrR7Cjj13Wl36C4PTYsfAO9HTu4
 tq7MzpQ1iGZZIFz+3zHor5Zytm3Q9Azv1Z5Hcu+Piwj12a2xPMvfL4YcTda0ZfVBGTWRI/AWWd
 C1Y=
X-IronPort-AV: E=Sophos;i="5.68,255,1569308400"; d="scan'208";a="54967953"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Nov 2019 06:48:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 Nov 2019 06:48:18 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 1 Nov 2019 06:48:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YaW61mKrcN72jkr1L0ap8+hLUPgtsoERaPrXBQuBYRvdvYGSvI8obvTT2bYMSoscV2RE6F6jFWQKZt5wD0QnDYJ5NzwX/BCQ1Bg/QcDXX1E6YTCkuZQtijXIc4ifbeTmyVNsK8hI/bMCD4LqT1pEvDFr6AL7sshkV3jodzx8mUAHsMY0OtmWPaCyZxCs7ZsTJJMIJ0zAvPSSXXt+EtHcufCxaz+r7MGben87251HEOV0FEiF2Gz4lUSXr+1r85DTnw2hd17zMpxL8orYKSLpggA6Fh0F9tdOVvMlcwKnMUaypiGc439wrsW361XbBPzyZalLCUNCD1Inyd72RAmAtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ObPBdlFQTZW3zRCkN08jS2cHlBZ5QF+AjZzcTSsl+zQ=;
 b=iuDrNVEarOxdFiLmbjHG2CwotVxCNsn/NSWiVcwaBV9EC+VBUTfq+3+8awVN86UU7gpXLHNEogDrXVHI6nCNT0jPvTK+ds9+/qp7tqIkXXWcVT8zUOYQnWRvbxiBV30nX4N5Q9IfuNgTrnOmcI1R3pX4WgeGFF4Ys8eN+81HyE3ZYB9WIiKpOKt/62lXTd+LZwc6UrUijnnYNgUC3E7y/3WJvzDwVjMN4ZQzNlawh7M+7aXeFMK5aKYXsKM1iq/ayRQbzM7sA5xXnppbpKyTN9O6FGGvazeAMvG229GyHEbzfGHdEZ38fi5SAnj7wqmZWes6SnGV9qRmt7zqA4Cq6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ObPBdlFQTZW3zRCkN08jS2cHlBZ5QF+AjZzcTSsl+zQ=;
 b=Z/RuR9P37Anb8NXX/niYsM9Y8mwIPO0tiWNS+ESutorJLiliqGhuPtG914/ipI/j1udTfSOdy6OhfW8utG9XxKM/HMSejsXA3v8IHVZdzXCwUca3V9yfbbTwnB8epXvPn3n+IuPwrgzAcetAtVoFfm1ekgMDfHs25OnWOhGE6uU=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4221.namprd11.prod.outlook.com (52.135.38.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.23; Fri, 1 Nov 2019 13:48:18 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2408.018; Fri, 1 Nov 2019
 13:48:17 +0000
From: <Tudor.Ambarus@microchip.com>
To: <manivannan.sadhasivam@linaro.org>, <shawnguo@kernel.org>,
 <s.hauer@pengutronix.de>, <robh+dt@kernel.org>
Subject: Re: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Thread-Topic: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Thread-Index: AQHVjwDJaBck4npwFkmE20mgXgcXzqd2V+iA
Date: Fri, 1 Nov 2019 13:48:17 +0000
Message-ID: <87e0b459-8dbf-26cc-611f-1b1b5266aa55@microchip.com>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
 <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0296.eurprd07.prod.outlook.com
 (2603:10a6:800:130::24) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.239.29]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1dad48dc-79f4-40a3-d2a8-08d75ed22634
x-ms-traffictypediagnostic: MN2PR11MB4221:
x-microsoft-antispam-prvs: <MN2PR11MB42216FF965E9DA2511A11DE4F0620@MN2PR11MB4221.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(376002)(366004)(39860400002)(396003)(199004)(189003)(316002)(186003)(99286004)(6506007)(446003)(386003)(71190400001)(2616005)(53546011)(476003)(11346002)(71200400001)(26005)(31686004)(52116002)(486006)(76176011)(256004)(14444005)(25786009)(229853002)(6436002)(7416002)(6246003)(6512007)(3846002)(66446008)(66556008)(102836004)(64756008)(6116002)(81166006)(110136005)(36756003)(2501003)(8676002)(305945005)(31696002)(14454004)(8936002)(81156014)(66476007)(54906003)(6486002)(5660300002)(66946007)(2906002)(66066001)(7736002)(86362001)(4326008)(2201001)(478600001)(138113003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4221;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7qX7HNG+m5o82OodOnBBHLsOjdqA2uS7DswUl0mWswEPUJ29RFqpI/GGUimCqJ1UhoEx2GwcFYdRP8IeiXCFDbbPG8CVxXc0zHtuIDNCZcqzbfUU2ENzTSPGcJiD/sBmv+MeM6yPN1P65QMMkmGdm+38/Itxbvb/Qv9MqWNCPjaY0y+rjIp69FsdgLliOU2DvNeoGJkmLo+rCqWhkZSfHo+4dY24L3HxjPGWn+ioP3E3vmhjzkAA7DpBpXAzQAx42IfGqXExOZ1MyngwBqL43xPVu0nNwlJ28dNzVGCMQf/SdEWZKnQ24Gdx8y21P2yrv9QqekUdvcM8IvP/dxY02ZiBvg5IgczWZep2T1iHwOTXkXbg4Df4l15RTM04Uj2CyZXlmraVWxeMPSddRHJmFsSHxVGcbXRkGypqff5FfwkLkj5z+FZ2JFA5Pqp329GC
x-ms-exchange-transport-forked: True
Content-ID: <919B4C0A8FBB2E44A9EB9DE0E8E6A633@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dad48dc-79f4-40a3-d2a8-08d75ed22634
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 13:48:17.5222 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZNlTsyH3YD2CJqXa7C2MJTK0hcCUI3eFHx8X0SOZXIQlQCxSxNS5lpNHGJ0ovvdgdxsuXd3Zt1cdfvTKlkDzRGRjXcfzs2A9cxWvv4hcsPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4221
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_064824_069689_24AC431C 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, richard@nod.at, marek.vasut@gmail.com,
 vigneshr@ti.com, dwmw2@infradead.org, linux-kernel@vger.kernel.org,
 darshak.patel@einfochips.com, linux-mtd@lists.infradead.org, linux-imx@nxp.com,
 kernel@pengutronix.de, miquel.raynal@bootlin.com, computersforpeace@gmail.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/30/2019 11:01 AM, Manivannan Sadhasivam wrote:
> External E-Mail
> 
> 
> Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
> supports dual/quad I/O mode with 512 blocks of memory organized in
> 64KB sectors. In addition to this, there is also small 4KB sectors
> available for flexibility. The device has been validated using Thor96
> board.
> 
> Cc: Marek Vasut <marek.vasut@gmail.com>
> Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
> Cc: David Woodhouse <dwmw2@infradead.org>
> Cc: Brian Norris <computersforpeace@gmail.com>
> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> Cc: Richard Weinberger <richard@nod.at>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Cc: linux-mtd@lists.infradead.org
> Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
> [Mani: cleaned up for upstream]

Can we keep Darshak's authorship? We usually change the author if we feel that
we made a significant change to what was originally published.

If it's just about cosmetics, cleaning or rebase, you can specify what you did
after the author's S-o-b tag and then add your S-o-b, as you did above.

The patch looks good.

Cheers,
ta

> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 1d8621d43160..2c25b371d9f0 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2482,6 +2482,8 @@ static const struct flash_info spi_nor_ids[] = {
>  	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
>  			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> +	{ "w25q256jw", INFO(0xef6019, 0, 64 * 1024, 512,
> +			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
>  			SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
>  
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
