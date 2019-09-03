Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB7EA5ED9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 03:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEDR2IyN0geYzcNItznfMpxq1L/Zrx/0MrWTZChgpp4=; b=P++q491JqxO77C
	wdnnrz+ZdG0ZbcIeK/kJHUgBaiM8gDXI0vfTIh54n6PBzK4KCctN4KBRpS3iCDOiIMiKBaQwHoQLQ
	zApJTVRRid6t5G9ee91sBMMgdK3zWFc/X0LUC+Svp3UI19wkJ+ulEuHZ61AshIx3BE/ankQgo8pmt
	tl0PqUjAEY/bqGcr756UxgX0TI5HZEQ81J7gzZXDh/Tyj+KwVG+NE+WsSn4WIImTsmN3xG5QFwl/0
	rcIloooskgzlRLRLpr67XeUrTfYxAt87vCzUOFryMo/a3Gs7W+ZNG8mCNJ3gKQI59kBBTxO6kgtTC
	8DhBTu89nwbAwDaQb7zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4xej-00078e-Lo; Tue, 03 Sep 2019 01:30:49 +0000
Received: from mail-ve1eur03on0611.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::611]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4xeU-000781-8R
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 01:30:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cVvlneYlJTWB0kA6Vz1uED0YcbchO3eJjLEIE8a1E3vpf45ZjaRW97zOw04IrWJJ+855P6/ssLhV+WWQ1QTUA6ncsaPqmdtkeXFk6WfjhkVhigzktOQVyA4YsAjOnuVySzhAQrd13QEfue+Vc1ANgEUFqw8yv3P7xtfPj3iRmEsujjuoRkOkHMskXEviMA9YgA5ya4YpDwO6iW4U2lJygEC5V770vKMoXKkCxMJYGQnBdMX/PHuQVjDmirKDoP4f9TSDug0YV/BewukypmOPPHWEJI2JYmcIdZUJI5MyAcbYEfDZ4jy+zp0/eSMh1ENvWw1gznaSduu++Cu6O+pfDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4sLXu1hTekGFHMH77eq+mpfv4IUSEXIjcvHHtWRzrng=;
 b=L6vljOSVJFWJe+DKnlQj1NhLQjFHBS2AnsXQ3gTig2iZih0W+K74SH6ehY5hqpKYZu+P9mdL/Z1rnUnNKVTeubZTlysl78Y1SI9vvUFPaxG2m4HuTzE6dVKRmYK/SgJzZIJeRRito7vKO1fu5eF7XoevbaieNOWw4uhda9ErZFA1Q7oqI8vFmuXI/THk6OpVMb2v5lSaGHVFokXTPT3nH2i+25mXkavSNsd25sRSE/A/gb5aqXQrhWT0k1dp2ZS+j2tHJGOyicyYSjj+TQNHqUUrI3XnEzVbFDDSncs2Dk0xoW60Zuiz10w6X9j2sMIv+W/rdpWgyZPMqWd3UPaOUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4sLXu1hTekGFHMH77eq+mpfv4IUSEXIjcvHHtWRzrng=;
 b=cvYXkMLM4gB1xKYdY9uK3wYbAlZvx8jmnM0JL4c811MN+wM6DT5Zdo8NOa3F30UpSqkveU/nUFTJgxhl82MDgMImd2SOf4HAWhjnZ2VxNRxO7SYJ1Q5GyEAZSbBBWsJJMdVVjgzSaKr4Uo4zqZGVTDl0HbsYKy17ZZA4o+IMpgM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3739.eurprd04.prod.outlook.com (52.134.67.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.21; Tue, 3 Sep 2019 01:30:28 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2199.021; Tue, 3 Sep 2019
 01:30:28 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: RE: [PATCH] arm64: dts: imx8mn-ddr4-evk: Enable GPIO LED
Thread-Topic: [PATCH] arm64: dts: imx8mn-ddr4-evk: Enable GPIO LED
Thread-Index: AQHVYWrrg3PTEyasrEi6IvuVESLdoacY2AgAgABS8lA=
Date: Tue, 3 Sep 2019 01:30:28 +0000
Message-ID: <DB3PR0402MB39163A67EBD2E00310973D97F5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567457138-3002-1-git-send-email-Anson.Huang@nxp.com>
 <20190902203144.GA4787@bug>
In-Reply-To: <20190902203144.GA4787@bug>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0345a1ae-cd9b-41b6-d119-08d7300e4dbd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3739; 
x-ms-traffictypediagnostic: DB3PR0402MB3739:|DB3PR0402MB3739:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3739DCB3C7F5779B7EB3B82DF5B90@DB3PR0402MB3739.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(366004)(136003)(39860400002)(189003)(199004)(446003)(478600001)(11346002)(186003)(4744005)(66946007)(66476007)(66556008)(81156014)(26005)(81166006)(256004)(8676002)(74316002)(6506007)(7416002)(66066001)(99286004)(5660300002)(476003)(76176011)(8936002)(52536014)(44832011)(102836004)(486006)(7696005)(14454004)(2906002)(6116002)(316002)(229853002)(33656002)(53936002)(6916009)(4326008)(9686003)(6436002)(305945005)(7736002)(71190400001)(71200400001)(3846002)(6246003)(54906003)(25786009)(76116006)(55016002)(66446008)(86362001)(64756008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3739;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VY7sL36u/UrkLyrkbgqdHqSBaMFBjdVMye7mSeYy0UKjNf499N3xBft87imFF5d6pLy6yT1kWXCBTRCD11t7VoM1eye2hyF7CYCpLvTtlJEe6qFIKKV0bDTFWsJoIj6SOm4SZbm85z7e/lgD2bFeg3/uabDfrhX2IRkayB8YfLYTZQtEGaTsmDgu8BGJH+IxWS7XsDqr75uF7ARe/nOe9ZqpA6pgtKNE5AQxyKudR4RhXnRmKAKx8lKDS7maAV7tbRxTXvvgaP4bZ09WfBKtbdcoX/oO/IByVp3eEWo4Y8dUs1190DxoHsK8qNbOKUAAK/AmBJlJ+tJfmCjHlkz/reM4MAo7annNAaUq+PA6KfKQQkeTx1o1AgzEBXLLklS2maqrKm9xX49mn7ZhNKAe60Yaewibt036qQNku5Ym4L4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0345a1ae-cd9b-41b6-d119-08d7300e4dbd
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 01:30:28.6996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: frrhyE+QJ/zDPGTw1zL1WgDQyJb4tyToYqvKmfDzm48fx58QuNoAosQUBNBB4NK8T1TrH0leQXXv3fZsDpk05A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3739
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_183034_431538_3B2F430C 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:611 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Pavel

> On Mon 2019-09-02 16:45:38, Anson Huang wrote:
> > i.MX8MN DDR4 EVK board has a GPIO LED to indicate status, add support
> > for it.
> 
> LED maintainers want to be on the cc list...

The get_maintainer.pl does NOT show the LED maintainers...But I have added it
in V2.

> 
> > @@ -15,6 +15,18 @@
> >  		stdout-path = &uart2;
> >  	};
> >
> > +	leds {
> > +		compatible = "gpio-leds";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_gpio_led>;
> > +
> > +		status {
> > +			label = "status";
> > +			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
> > +			default-state = "on";
> > +		};
> 
> And we should really standardize labels for user-controlled status LEDs.
> Mentioning color would be nice, for a start.

OK, I change the label to "yellow:status" in V2, please help review, thanks.

Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
