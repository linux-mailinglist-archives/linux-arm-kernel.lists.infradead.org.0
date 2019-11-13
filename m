Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5D2FB263
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 15:18:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUe3einOxaOmQGBnT3ZVH3rt1PFxmSVZnZKDYvrvanI=; b=Cy5R+VCQrDE3bK
	1KipRr9bnFnDq9WkkExdhWpNzmuhwJp8cMjV0qORi+2u0CWi7uzPH+5NLRj1pC1dVyhdCj4OoaRNA
	0zhw562Pz2g6XJx+xiBqIret12CpMm4DoyXG+dPSbh/L6Fg5AOBWaECWOgmq5MhzkpbbRhK+3aisp
	xH6Jmfb9O6Ead45E5cx9nTTv91yTlVwPYRZowGEQXqSUjb0p+thtPtgemzBrvHs4HHBt2RdDpe25s
	G7nnTdiPdsTeKEkNudl4o+Ro00Gv9plNKOK1ig/aFwgi/G+YMB9A7ZT/4WCR0wFxQU3ntJlFE+YQy
	IpICL9gvyU8NZWSk6NdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUtTy-0000Q5-7I; Wed, 13 Nov 2019 14:18:54 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUtTr-0000On-6I
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 14:18:48 +0000
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
IronPort-SDR: MnQdp/DAw1u45jOwmtQvvwATuT4dgvdkSzfYFsQRKN0bZukuSmg8e5zlWyHPfH9sbu6ep04mfk
 89PZW1DaTizvXbQp8r8sOWYbsbR8wAyZETeniUZxUybY8g3uVpcYyiUx3zU47ccd5/OJTSvlMA
 9BB4YRMt7DOWFAIUJeJpAES54fvL5WUXLbiIOWEvKrwdMt6F9EnrZwudRb+fOhKer1qGCsv9WS
 4MVyCm+0JnMRLl6pNVsP/1CzI9aq6rVsheiXrxOAEXpZSJxoYJyXS/fV6r+8gADyqffk7DQiV0
 p+s=
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="56485877"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Nov 2019 07:18:39 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 Nov 2019 07:18:38 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 13 Nov 2019 07:18:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FlFLJ5YzCy06Fy3Tyu6tHGWeoTLFVizASDl86CY+lGq9eqx0kkHCkyyuc6VeHmYqMA9O54rsc4ERXyBMAVrW4X60xfyHlpwYLz0yxJV+IX0l57jUZg5ZKhR9Vbs+D2jFkGnBexD9GUdImL2Th/dA/6gLKYWFz9BT/bRSJjgw7H6BUb5goYUVSVqSLypDsAucvXAz2nd95QnOsUxesZM28XZpERixzqJKTW2f96if3fYn2r2ubPXRN27F/5qu/s0XM5vNXNsJ4O/8hnElU1AhFkVzUd2j6V/63RELH3RIlvs3V0H82LztgVOoU4t9FftZzVDHDMz+j3ao0CVGKS7SZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iqWleQ1D4BU+AoZiAXKQK2xpoSli5BvDi9mvNKmj+eA=;
 b=kJ21mIFIYJ/F46kKkjTNA+c9XuIaz/9muwe+/UJb11jIPBir9qD2H0YJokkakBJ2STBHjVL/XY6iRt0basGBKt/gCmYUcLApwi2rDUtisqa2bkkWhUkxzXsLqLPpNqVwzIpYGVuyD1PSM8LoaH12lTLCiox76xHZAqj83qkKOnFggqRETkprYd/dj18E1+KsMwyRCQyb68pFTB9kUSPwsSGuswLPSZ99jOoU6LUI6eZWytnkECKU/BGY3nQtgLU0zZndjB0oDFb0Dqb/+uuALHTqEuJ4aJabd8gIvn6cQ+yD9xSGtLh85+McfD+503jti4XfEN1I3qNcFwqEavVyog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iqWleQ1D4BU+AoZiAXKQK2xpoSli5BvDi9mvNKmj+eA=;
 b=s7ssGI+IJkV8/vG0PQqeI3fBHl6n1nMf6o5tRM54UG3IkzWw/YWiWYtFA/WVzkXOnthyUNuu8kceQZZodz9TnQ8M0jkssnHWI+O0x6e3MQko912hjKGlM2BG1SCpdMzKUbUKR2s58xjLCePj3SKvc4uBQ5cXiyNOrfjnXgp70xY=
Received: from SN6PR11MB2830.namprd11.prod.outlook.com (52.135.93.21) by
 SN6PR11MB3486.namprd11.prod.outlook.com (52.135.112.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Wed, 13 Nov 2019 14:18:37 +0000
Received: from SN6PR11MB2830.namprd11.prod.outlook.com
 ([fe80::6460:e571:9440:bd83]) by SN6PR11MB2830.namprd11.prod.outlook.com
 ([fe80::6460:e571:9440:bd83%6]) with mapi id 15.20.2451.024; Wed, 13 Nov 2019
 14:18:37 +0000
From: <Nicolas.Ferre@microchip.com>
To: <peter.ujfalusi@ti.com>, <broonie@kernel.org>,
 <radu_nicolae.pirea@upb.ro>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>, 
 <linus.walleij@linaro.org>, <agross@kernel.org>,
 <bjorn.andersson@linaro.org>, <andi@etezian.org>, <ldewangan@nvidia.com>,
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
Subject: Re: [PATCH 2/9] spi: atmel: Use dma_request_chan() directly for
 channel request
Thread-Topic: [PATCH 2/9] spi: atmel: Use dma_request_chan() directly for
 channel request
Thread-Index: AQHVmi09L5MBKmNT6kyxMhevGP2mlw==
Date: Wed, 13 Nov 2019 14:18:37 +0000
Message-ID: <90cd6e97-2eda-934a-3175-b7d93d86115a@microchip.com>
References: <20191113094256.1108-1-peter.ujfalusi@ti.com>
 <20191113094256.1108-3-peter.ujfalusi@ti.com>
In-Reply-To: <20191113094256.1108-3-peter.ujfalusi@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MR2P264CA0038.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500::26)
 To SN6PR11MB2830.namprd11.prod.outlook.com
 (2603:10b6:805:5b::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a01:cb1c:a97:7600:a0f2:f1f3:de5d:e88]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04cc951e-b654-45a4-f236-08d768445f8e
x-ms-traffictypediagnostic: SN6PR11MB3486:
x-microsoft-antispam-prvs: <SN6PR11MB348605871B0458A53DE6158FE0760@SN6PR11MB3486.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:346;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(366004)(346002)(396003)(376002)(199004)(189003)(256004)(386003)(6506007)(229853002)(53546011)(6436002)(476003)(2616005)(86362001)(2201001)(8936002)(7736002)(446003)(11346002)(76176011)(71190400001)(8676002)(81156014)(81166006)(6486002)(71200400001)(66476007)(31696002)(486006)(305945005)(102836004)(66556008)(7416002)(64756008)(31686004)(66446008)(186003)(99286004)(66946007)(54906003)(52116002)(110136005)(316002)(46003)(14444005)(4326008)(2501003)(5660300002)(4744005)(6246003)(14454004)(25786009)(36756003)(478600001)(2906002)(6116002)(6512007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR11MB3486;
 H:SN6PR11MB2830.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0FeR3eX7asHWTTAW5SFV3F8EowyNyZr/WmHrk/975BUbGOfee+oKYlmNie7vhVaMzhP19kea6lqx+Fo+LXWRx2OXNNxANtA+Wq3qbdmNH0Q9dQtIIKUo4iRzat9JJ9zdSc3tP7LzRvhWhY6FlYy89uJ9w9D2pSU5xz7sgJvj5T1fOKHD6mvj9VXUmoRIZd0C44GsYzItH1H3VhyubHumRfhoYmAOMlyZ/9eRG3ugbZMftNWHmAJdlmScsUWWjxpPAKyglfHXWCqXiPN6YZanhjaOAwGEcfKbOSAs9eCLI0JC9a5cemXp1vGtQuR6VBD3jtIlx6cHKYizspN22woqoHCvn9yJy6veJw86tC5mp2J4JTgRsVz7t/F77FBgHm++7BTuZ1Wl9FrOclfaymVY7ExF6FEZjqJ4IGOC+ffjbeyLFjGI7st0eFfOH/M8LaPF
x-ms-exchange-transport-forked: True
Content-ID: <56B4D518BD1BC143B10FEFA116F9DA10@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 04cc951e-b654-45a4-f236-08d768445f8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 14:18:37.0730 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qvLBGKzbpgM1ZPUltowRoDj1hUPqqOyQWbvIOzXYuEZ+u0W+1pX8Mc4Em0OidT4h6erSepEC3zJlOZoGhd8H4521vmj7hZPMoDsDIIOEbBo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_061847_269558_8D146EC2 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, linux-spi@vger.kernel.org,
 vkoul@kernel.org, kgene@kernel.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/11/2019 at 10:42, Peter Ujfalusi wrote:
> 
> dma_request_slave_channel_reason() is:
> #define dma_request_slave_channel_reason(dev, name) \
> 	dma_request_chan(dev, name)
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

I'm not sure we need one patch per driver. If series taken:
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

> ---
>   drivers/spi/spi-atmel.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/spi/spi-atmel.c b/drivers/spi/spi-atmel.c
> index 9e84a93083bc..56f0ca361deb 100644
> --- a/drivers/spi/spi-atmel.c
> +++ b/drivers/spi/spi-atmel.c
> @@ -511,7 +511,7 @@ static int atmel_spi_configure_dma(struct spi_master *master,
>   	dma_cap_zero(mask);
>   	dma_cap_set(DMA_SLAVE, mask);
>   
> -	master->dma_tx = dma_request_slave_channel_reason(dev, "tx");
> +	master->dma_tx = dma_request_chan(dev, "tx");
>   	if (IS_ERR(master->dma_tx)) {
>   		err = PTR_ERR(master->dma_tx);
>   		if (err == -EPROBE_DEFER) {
> 


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
