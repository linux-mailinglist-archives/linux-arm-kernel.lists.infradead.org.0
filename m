Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66B0E43FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 09:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GU95gB59CRojjBUsdJwiaKOwPejWHt5aJh0c8Bo0TQ=; b=VKnGwQTNgCUOrf
	ApEJqKwBsOlhCe4SJSah+s9rJh6lkWCqNjKaQYbkvLYjLc3iRxHzTezgwKc/Jk6QyXr/M8dhknh7F
	6/gNtLDi/QGfP9+UoZ8vGR/C45c1G/LMUIaZ4HXiTGHHkUJ6nHTykQJp9M6LOZDFEluCeuCZK08KS
	2XEoNv4v4ElNpYHdatTP66sXo2+r15nm75iG78AWEQoGinrTQoQspUMGdBIm3JLoHKrAQyu2T32A/
	Kbs+mg8T92yhyOxiPZLmkfoATFVaTf94QSL7/hFC7bGd4rPDgDKhUYcrW0v9zlZE9jHInRlwWF2fB
	Oo/bgef3Q6sZkPqeomlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNteQ-0003ot-Rz; Fri, 25 Oct 2019 07:04:46 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNteF-0003nu-0T
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 07:04:36 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: qN3SeQQkSzT6HfAgxAsl6u/VWFW6w1M6JFRg2vRX9wvs5gkuKgfP7bcOplpz0CLHkPMJvFqDpr
 qTMaVg/jwkJcQLzfG0b4BQFuBLEXK2mStMyD9JT/qUSnnZ0Nz+8XYNQIjmVh7Vi9aF1PEcZzUh
 DdTkhI53h33tqGB63OJ716TzZvTbGyt5Hhp5Y30vJz4wPRB6UBGNxI5MsV4IcFyXxhgrjwrPcs
 J+VUjsomZVr39oxejHpxsTdlH1B9QCHZxZyttit8EGOkF39tBev8LkM7aRLyMCzfLfQBBSrVnx
 AbQ=
X-IronPort-AV: E=Sophos;i="5.68,227,1569308400"; d="scan'208";a="52889219"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Oct 2019 00:04:11 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 25 Oct 2019 00:04:10 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 25 Oct 2019 00:04:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VGYXTqHKg+/gV1eRNEeu6D/3KUxkcl88oD5N9L+i3bNQTl0ojr8ahDY0j0r3/QVskC9hoZIEWtWmAoCurO5XnCzC8mA1qM/HYTnbfSapViEf+MHSDcu+4EgEL8JknEOgtU73u21kc0tuo91h19TekdKkZCj5ze70GFSpInE7oR0CGfIo/EDWQxZgVKDOH7y8nP4t7vTSd0uVAGJRgDZL/KdUtqJV8xt1ti5MHBstISgmJdsOiufrgYbnpSVgaguOriAam7NDuZby4vDPWbujQq1Rk2Z28Xfk5DRqAIJlJB3TSzdMpN9ui7y27cAsDmOj1zFDirJZPiLtZmy9LC1nQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e6gQ63XNMKCd63hhGgtfR+F1UzoZUXF71kFg7hapAL8=;
 b=dTJtgvyqliId5By+KbfzA16ZZCqxYfbUu/O8E8k+NLRaZfU/RrPfqNIKASct3DHjg1i8gVMkR+67hJnCaIWlFF8+/Q4RLye8SxCNZCG5BatOmf2v8QRqzPeTeB9J3uhA3kHQNiGCjAqdHJXkRRk2PEfMkyLV5Ro9mZsuCW0k5oe3mxhP7lJlEThaBPykwjvtVdg3vnjP2Ugci1DNzlwIcZokF1emiP7R9w6lgz4hygvhWwByYGFkEtLiOhEUkUA1N4x3tvtOCEYLPmCFXIX1/wONEJUi9zAsUc+cqaMseq7/5fwMsx7jnx7VLLWvrWHgZCNOGhqmnRA9tvIFSzk4sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e6gQ63XNMKCd63hhGgtfR+F1UzoZUXF71kFg7hapAL8=;
 b=Ax1ItBz5UKFFHe3EhZ83tCcqrKs15zCKycPNOKNSmehoxtuGwOriidQ6+rZ/7mOwYA5ePsR55hTR6336Z2xBbKm4vPmVANqDwQO22CPiB2OB21Ag6V4FVMif3JdO2HCSlS5f0hiN+/z1rnzkJ+kXQDf8eyoQWG67D/zRSgQsVZU=
Received: from BY5PR11MB3895.namprd11.prod.outlook.com (10.255.162.149) by
 BY5PR11MB3928.namprd11.prod.outlook.com (10.255.161.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.23; Fri, 25 Oct 2019 07:04:01 +0000
Received: from BY5PR11MB3895.namprd11.prod.outlook.com
 ([fe80::7421:5f52:f95a:2ae7]) by BY5PR11MB3895.namprd11.prod.outlook.com
 ([fe80::7421:5f52:f95a:2ae7%7]) with mapi id 15.20.2387.023; Fri, 25 Oct 2019
 07:04:01 +0000
From: <Ludovic.Desroches@microchip.com>
To: <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 2/4] i2c: at91: implement i2c bus recovery
Thread-Topic: [PATCH 2/4] i2c: at91: implement i2c bus recovery
Thread-Index: AQHVeTBIEJxi3gNtJki/Kn8MG0A7z6dSX+cAgAAB44CAARrdgIAWXkGAgAE3vwA=
Date: Fri, 25 Oct 2019 07:04:00 +0000
Message-ID: <20191025070500.pjibguvfhq3ue2m3@M43218.corp.atmel.com>
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
 <20191002144658.7718-3-kamel.bouhara@bootlin.com>
 <20191009135500.ufkxcemccwfcfys7@M43218.corp.atmel.com>
 <20191009140145.GE4254@piout.net>
 <20191010065408.y7i7aywdztgixv47@M43218.corp.atmel.com>
 <ead1bd39-5834-b970-06b7-fdc9c50bb780@bootlin.com>
In-Reply-To: <ead1bd39-5834-b970-06b7-fdc9c50bb780@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0129.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::21) To BY5PR11MB3895.namprd11.prod.outlook.com
 (2603:10b6:a03:18e::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f75acaf-1c1d-478e-3c57-08d75919830d
x-ms-traffictypediagnostic: BY5PR11MB3928:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB39284BE76B4B408BC4F80492EF650@BY5PR11MB3928.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(366004)(39860400002)(396003)(346002)(199004)(189003)(446003)(71190400001)(486006)(256004)(14444005)(5660300002)(25786009)(71200400001)(478600001)(2906002)(86362001)(476003)(3846002)(6116002)(11346002)(81166006)(81156014)(66446008)(316002)(186003)(14454004)(966005)(4326008)(8676002)(6436002)(52116002)(6486002)(229853002)(76176011)(6506007)(386003)(53546011)(66476007)(6916009)(64756008)(66556008)(26005)(6306002)(99286004)(102836004)(7736002)(305945005)(9686003)(66066001)(6512007)(66946007)(6246003)(1076003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB3928;
 H:BY5PR11MB3895.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EAU5rYkrk6swCeNcpKUXeKoscU5ZGkm/yJkZ14i665ovpSNEgA0VFWzMh8eYaT5Do9wW8+5bppe7mdXByZw9+1JoNGbg/L82aqDl7Ut2GBd/A2i3QVJe6QKath4huzRS6y4fIcoK2bNNNv0fUF3eN9wqTEhla2ZxLg/4Orf8H45nqDGfEArW521Y+KY+iI2zUNWWrX+xPGIZIjxIPhI3k1JRSoghQjiUNGpNdvtmB+qznMgNfaL+eYEAoiUiMj6qRNmbcKcNg9I2GsUAKg5bFd5QN7ZzkHsFAMG08+U6pQeNoz3zhflPo9B6dcHPw4Y7gtrRs8/32KwDL4wrjbupXxkfdWQmvkXLgbwky6pAV7huiBmGNl22xjTvlSr+hX69xej55vFOPyfLFFvlojA3vjzNg/y3iMzm3i5WCSeRoWqOEoPtTrNfFXE/U71PW7UMu2BRgEzybvGdCnozYaSpaUIKBDC8d8MtkW14furY/zk=
Content-ID: <A81B873081D6CF4FA51E65E95ED274B2@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f75acaf-1c1d-478e-3c57-08d75919830d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 07:04:00.9158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kblw8RiIKAykfZilUfGSh7xlHwgNOolTgdxvAPnUKovZYnXQnBNe3VBad3+cWiC5b7iSG2mQqVZf8Ph4Jq1R3A/Yw91Z90CpgiQ6R7R+aNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_000435_062959_233C71FA 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 02:29:13PM +0200, Kamel Bouhara wrote:
> 
> On 10/10/2019 08:54, Ludovic Desroches wrote:
> > On Wed, Oct 09, 2019 at 04:01:47PM +0200, Alexandre Belloni wrote:
> > > 
> > > On 09/10/2019 15:55:00+0200, Ludovic Desroches wrote:
> > > > On Wed, Oct 02, 2019 at 04:46:56PM +0200, Kamel Bouhara wrote:
> > > > > External E-Mail
> > > > > 
> > > > > 
> > > > > Implement i2c bus recovery when slaves devices might hold SDA low.
> > > > > In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
> > > > > until the slave release SDA.
> > > > > 
> > > > 
> > > > Hi Kamel,
> > > > 
> Hi Ludovic,
> 
> > > > Thanks for adding this new feature. As I see patches only for sama5d3 and
> > > > sama5d4, I assume it has not been tested with a sama5d2, isn't it?
> > > > 
> > > 
> > > I there a point having it on sama5d2 as the controller already supports
> > > this feature?
> > > 
> > 
> > Right, I was focused on pinctrl and forget we have this feature
> > supported by the IP.
> > 
> > > > I doubt it works with a sama5d2 because of the pinctrl. I also wonder if it can
> > > > work if we add .strict = true to pinmux_ops which is something plan for the
> > > > future...
> > > > 
> > > 
> > > I don't see why it wouldn't work with strict as this is switching muxing
> > > properly instead of using the pins for two functions at the same time.
> > > 
> > 
> > Not sure devm_gpiod_get won't fail with strict.
> > 
> Actually the strict flag is checked in the pinmux core to allow the pin
> request.
> 
> What is the purpose to enable it ? It seems to break a lot things, eg. on
> sama5d3 :

Hi Kamel,

First, to be clear, I am not against this patch, I'll ack the new
version. My goal is only to be aware if the use of strict can have side
effects.

I am more used to the pio4 but I assume it's the same with the older
one. As you notice enabling it should break many things. It involves DT
changes for pins used as gpio. They have to be removed from the
pinmuxing or to find a way to allow a gpio request on a pin muxed as a
gpio.

I would like to enable it, because, at the moment, if you request a gpio,
for example using the sysfs, you can change the muxing of the pin and
breaks a device using it. If strict is enabled, this change will be
rejected and it's probably safer.

> 
> # dmesg |grep pin
> pinctrl-at91 ahb:apb:pinctrl@fffff200: pin pioA18 already requested by
> f801c000.i2c; cannot claim for fffff200.gpio:18
> pinctrl-at91 ahb:apb:pinctrl@fffff200: pin-18 (fffff200.gpio:18) status -22
> pinctrl-at91 ahb:apb:pinctrl@fffff200: pin pioA19 already requested by
> f801c000.i2c; cannot claim for fffff200.gpio:19
> pinctrl-at91 ahb:apb:pinctrl@fffff200: pin-19 (fffff200.gpio:19) status -22

Thanks for testing it, it confirms what I had in mind.

Regards

Ludovic

> pinctrl-at91 ahb:apb:pinctrl@fffff200: pin pioE9 already requested by
> 500000.gadget; cannot claim for fffffa00.gpio:137
> pinctrl-at91 ahb:apb:pinctrl@fffff200: pin-137 (fffffa00.gpio:137) status
> -22
> pinctrl-at91 ahb:apb:pinctrl@fffff200: pin pioE0 already requested by
> f0000000.mmc; cannot claim for fffffa00.gpio:128
> pinctrl-at91 ahb:apb:pinctrl@fffff200: pin-128 (fffffa00.gpio:128) status
> -22
> pinctrl-at91 ahb:apb:pinctrl@fffff200: pin pioE1 already requested by
> f8000000.mmc; cannot claim for fffffa00.gpio:129
> pinctrl-at91 ahb:apb:pinctrl@fffff200: pin-129 (fffffa00.gpio:129) status
> -22
> pinctrl-at91 ahb:apb:pinctrl@fffff200: pin pioE29 already requested by
> gpio_keys; cannot claim for fffffa00.gpio:157
> pinctrl-at91 ahb:apb:pinctrl@fffff200: pin-157 (fffffa00.gpio:157) status
> -22
> 
> > Ludovic
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > 
> 
> -- 
> Kamel Bouhara, Bootlin
> Embedded Linux and kernel engineering
> https://bootlin.com
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
