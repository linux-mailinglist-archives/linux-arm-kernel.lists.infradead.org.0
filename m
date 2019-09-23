Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A04BACBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 04:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAftto5zkrNZHMqioElgZkVbcrzfcFmZ3gdmOlw7asY=; b=iLLoUbTB7ySUdr
	lU07S3MYshqtyIiN+J+Nx7ygY+YkbXNWaY3mcPT5yDng2Ei0R0idEYwx6LwpguHlO4jBsa7A/7L8P
	0Qc8j5Ew2zhrx2nVttojBcyYwC2d3/b/vsm1YzN9ZwtZ5N9nzzmpjek2OlYFYj0LfW/SMc81LT4Re
	9zy3oJDUAWBpATznIw7lZPopSWyjj70ui9rI0lN02ilzxivebjbzNVFUxfmvLp3dqCbSWjWKZfevH
	ZwpIufTy0X959AvCuA8ZSel0+jbT2hIHBTAFiVR49rkdNcFFkCokLbN9hkEGgPWz0SEmcJbblfCXA
	tHvEAZXbTEGfAgCYgUwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCEJt-0004yn-Nm; Mon, 23 Sep 2019 02:43:22 +0000
Received: from mail-eopbgr80080.outbound.protection.outlook.com ([40.107.8.80]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCEJg-0004yM-Bf
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 02:43:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WWGExeEh32Hh3t8E0MCJ2yOiM5FQoeY1bGkn63JNmdOZ4Uoa5/GuW88NoKvjIIlHZmf0bouZpBW1bPR0DQ2fRdluXEP/dC/H9laasbWEqkh5QD6fNA5US9YoH1hHNSUa0HVIayNybvTkN7j8Tr9n37THaTCvLC6BmjZ5s8IggtBuOQssIFGC/B+yOmT4bLdfVjDsBiHXFlrPt7xpU1c3FPEhi52nxKaadZaI1n96Y/ECPQR7R/q/8lNwFLkDPTStJbcPAN9RcxE2Hq5hWC6bdWJRa8IVFMeLe8+uDkEEtvf1gVS4hL37p5fagOfmlEvJIg3UZ0KZMnk6p8O8EoGPtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kZ3WwySqHZpVC3nCDqJzq9KyMX1d7jOomWbYLq2ukYw=;
 b=kakvkf1wcBmKe4liDdoCy2bA7X4w5kft6t5jBNIrNMwVDQbrDv+yJ9czFwriBlHsLn8yJmta9mByMCh61A6E2+8owHzQIz9Pig15H1vZgPd0fqbp97Mo3bteYCeAhMaWyvVtvU1hL3Hjg1O2NMePEQROCZrGNahY7moxr/25O8kXLzP4WsWAUOJR1RsSMK39s3luGwb0HmjNDBZTjPV6e/daUBaftmeqvNuOiMrdy84IFcQahfddX/d70asVXPBgKJbjXn1531I90fjbI0e+di7TPTLOKPL8X+6FiFdl+dpkXVsJPsBJv1JdC35bLBu3JKHB9ihqSPcKojjlosKiWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kZ3WwySqHZpVC3nCDqJzq9KyMX1d7jOomWbYLq2ukYw=;
 b=Qu4GPOCjRgkNDSl39ZZj/wVddzU0m642lTw5rSHWtHTZ3Lj4tHPbZ3qtOvg75c/EHqsX4RTpx9UdYYvJdd6tq/mnUjomIMCnLQOnUsvF3q7Fl7r+zf6OGaisjaxT6NO9eMdA1EpBfqZfJncYPdA4Th0u4PoPj0aoIx7ccez6PdQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3643.eurprd04.prod.outlook.com (52.134.66.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.23; Mon, 23 Sep 2019 02:43:04 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 02:43:04 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: RE: [PATCH V4 2/5] input: keyboard: imx_sc: Add i.MX system
 controller key support
Thread-Topic: [PATCH V4 2/5] input: keyboard: imx_sc: Add i.MX system
 controller key support
Thread-Index: AQHVbDoTG9IptYOIlUSe8in/1bTkN6cu+20AgAAdosCACNAggIAArZGA
Date: Mon, 23 Sep 2019 02:43:04 +0000
Message-ID: <DB3PR0402MB39164F6EB8141BA5CC4F26FCF5850@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1568602373-14164-1-git-send-email-Anson.Huang@nxp.com>
 <1568602373-14164-2-git-send-email-Anson.Huang@nxp.com>
 <20190916235330.GI237523@dtor-ws>
 <DB3PR0402MB3916859326C76BC9BC1F781CF58F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190922161432.GE1999@bug>
In-Reply-To: <20190922161432.GE1999@bug>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4408efaa-c25f-4aee-1ace-08d73fcfc259
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3643; 
x-ms-traffictypediagnostic: DB3PR0402MB3643:|DB3PR0402MB3643:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3643932DA00AB294F52AC51FF5850@DB3PR0402MB3643.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(39860400002)(136003)(366004)(199004)(189003)(316002)(9686003)(14454004)(6246003)(66946007)(186003)(26005)(6916009)(25786009)(86362001)(478600001)(4326008)(66446008)(64756008)(11346002)(66476007)(66556008)(52536014)(446003)(5660300002)(76116006)(102836004)(7696005)(256004)(76176011)(99286004)(81156014)(486006)(3846002)(66066001)(71190400001)(71200400001)(6506007)(8936002)(8676002)(81166006)(7416002)(2906002)(476003)(305945005)(7736002)(6116002)(74316002)(44832011)(229853002)(6436002)(55016002)(54906003)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3643;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: K6s2ph1cijMBXRPia0JJifM4zEgMRqFIrfi42wGGQJdFAPFxnN5XeB2nwdz/RiHKIkweTI4qylbOg+6XKE4t0SZQqetmrdYtsOrri9JGw+nUYiF5xpeTeZSMDwj8yDD8IWnJOWsAnjiZxoM3s5cEn5uE1O+LtBoxnRCnLOL5gujSIHQuIcYoozE9BTiycVUbKO5aaJO1wnhtrUcUt4ABvoPmho1gCN1bUuIXCTOJdr1h+H3/mtWN4U+x9yLnzcl6mBchC0QF2Sdt/NgUGBhNAw7KOVNFRF9aceriY9/8/emIMW0iAvnYjghLSfTd26iJOsEij+NhypzpNnGFBnyKMtQPanXT5HjVuoUl6tyQdO9g/EpTqAzsPhHIGInE+u75n96SSRcSeHc+9SSAxK0Yux/eOvoAMst/T/ookruszos=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4408efaa-c25f-4aee-1ace-08d73fcfc259
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 02:43:04.6115 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SpKDS5+vS2eabR49MXeoOr0S65YqxLagLrrgrbA0QqoImE6JCoYubS2OTZvbngGy2sBPgtyO5fEc0npp5l92+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3643
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_194308_403700_E674EF59 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Peng Fan <peng.fan@nxp.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Pavel

> Subject: Re: [PATCH V4 2/5] input: keyboard: imx_sc: Add i.MX system
> controller key support
> 
> Hi!
> 
> > > > +	ret = imx_scu_call_rpc(priv->key_ipc_handle, &msg, true);
> > > > +	if (ret) {
> > > > +		dev_err(&input->dev, "read imx sc key failed, ret %d\n", ret);
> > > > +		return;
> > > > +	}
> > > > +
> > > > +	state = (bool)msg.state;
> > > > +
> > > > +	if (!state && !priv->keystate)
> > > > +		state = true;
> > >
> > > This needs an explanation please.
> >
> > This is to handle the quick press of button, e.g., when button is
> > pressed and released very quickly, when the delay work is scheduled,
> > the button state read from SCU FW is actually a release state (0), the press
> state is (1), so the quick press/release will be ignored.
> >
> > However, after double check and test, I think this should be handled
> > by debounce time, if the button is pressed/release very quickly, the
> > event should be ignored, I will remove it and reduce the debounce time to
> 30mS, previous 100mS is too long, using 30mS as debounce time, I did NOT
> see similar issue no matter how quick I press/release the button.
> 
> Are you sure this is expected behaviour?
> 
> AFAIK microswitches can bounce when the button is pressed and released,
> but will not generate glitches when the button was not pressed, so even
> short presses are real and should be propagated...

Latest version of patch handle the quick press as below:

- When the button is pressed, the delayed work will be scheduled;
- In the delayed work, the button state will be read, once the state is different as previous
  state, it will be propagated;
- If the state is a press state, another delayed work will be scheduled for handling release
  event.

So there could be a small window of DEBOUNCE_TIME (30mS) between button press and the delayed
work scheduled for reading the button state, if the button is released in less than 30ms, then the
state read could be a release state which is same as previous state and it will be ignored.

Do you think in this case, we should also propagated the press event? If yes, then what about the
release event? Although from what I tested, no matter how quick I press the button, the driver
can always receive both the press and release event, as the 30mS is very short.

Thanks,
Anson 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
