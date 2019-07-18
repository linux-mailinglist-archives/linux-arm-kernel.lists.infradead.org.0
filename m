Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F101E6D41A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 20:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=pbuimcAjXEWh3YoxNtnRnQvZrVYH1KuJ/w8BR8JqNVM=; b=QFEP2uEaBGBpbC
	JDyKPf36cFBL0KEtyLQTyBnY8oNbOsM6wnfXIVqjSggF9Ap8MachRkvaF3qBmQ+nIV4qxoX9clgJZ
	HfNbLLcvVMo5zapznZZ2jsfi7a/OYDBxlxOW5eWnWwXXf9A3VO+cmkrf5W30EcYbsHQwDrY7J3hXn
	EHcv2+9cGmpWJ+dYFqi/wt3/92EFx5OxsZEsx4VrGnbW9cqPxjBPi/ewKEXGsryLx7rSzIXP4KmR9
	DnJG/YUZRxstHcwCz2dYubH3uOxQXv3a/EHVADDR2p7UJJYEmaSh9dru1U8XC9/o06agHdBi6Odeg
	TGi3GkWzfjC+Z9a3JizA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoBKn-0001z2-JC; Thu, 18 Jul 2019 18:40:53 +0000
Received: from mail-eopbgr130040.outbound.protection.outlook.com
 ([40.107.13.40] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoBKO-0001pW-BG
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 18:40:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZHDSKi2HhI4N2PbUxUh4vIi8MSHjcoQk4t0Dur/yekcxozx6LRDRMqIamoastFDlfposXzd6py9Tu3x5AV32WdS2Sfc3nwz4NtaCyvvrMDxvijusHDOZSTbVX8VUtlxoPp9l2qjE5WYFMYGIGwnNM1nCycEzvulQVjcv/T6PwkL4JeihlFcpDyh/yqIOHoiaYLO6BCXfvA2u7qujwvy+qpjq6l91B2hOTBMpHmDk+w2M6BpQR9qXArR/YHelX8Tsvw53vKwlPy11gGsJuXI3pwGpSMz9kIloTrkqFp3z1RSJW/b3Aj/HJVMInUFSJMnk+jZGQkT2jgSgBHkN93dBDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U5z/Ifenn0Ea0WscxvVau60IyWfUN3larQpQb5fbRqQ=;
 b=fp/EcKhRWHMg+6u4tUiAkrGQB+rm7AWM8f2F9O8/SZOeQOykAVCLWNeCItP/oJIGLZ3M9rTJe6hCTFjsFqZ5yJCRJuw3l3XOASsoFnPQueDNP25A7DT2NKf7t2DuMz9WowIoPLeiCHJLPJmUu9YLBIH75kiVebyNsuj3DQRp1GD3P2kA11XIzPxeuJPXALF0TKfEgJvtgXNZDZzwmfGCD7X5I2q8ZWtVIzbLs2zQCRgaS7gxHwS/aMH8Ft0wxY0ojM9d7FikjEQgaEDbrtwrrZH/EGnHPu8YVe/SwzjwPLvEyt6XeJn30VgE2k/pSvNS6y7jv5YmwhpujrLEe7p0iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U5z/Ifenn0Ea0WscxvVau60IyWfUN3larQpQb5fbRqQ=;
 b=sX2BlfWGPepYI+LW7AFO+0BRWwaxj+SZTICOIYKmgTL9K+FeydaVnSUCtlrx1twEFSqIKYrqNuH2rCpQgAOVMhgdZO4QazEpKccjCBEgDmqzBuDJkgT/p7sqPnAQkJGfoZK6aOo2RCQ5cZOy0sgvoJnOi4FzKZvLexEVTjyWOhs=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB4158.eurprd04.prod.outlook.com (52.133.15.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Thu, 18 Jul 2019 18:40:22 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::41:43ca:bf4c:7b99]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::41:43ca:bf4c:7b99%3]) with mapi id 15.20.2073.012; Thu, 18 Jul 2019
 18:40:22 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: dsp: fsl: Add DSP core binding support
Thread-Topic: [PATCH 3/3] dt-bindings: dsp: fsl: Add DSP core binding support
Thread-Index: AQHVPXtpRs0t+Ow5FkKbZohqPX3Brg==
Date: Thu, 18 Jul 2019 18:40:22 +0000
Message-ID: <VI1PR04MB5055597B7C3AC114FEB7E3E5EEC80@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <20190718151346.3523-1-daniel.baluta@nxp.com>
 <20190718151346.3523-4-daniel.baluta@nxp.com>
 <CAL_JsqJ6o9mTjLYjnfcYgfSFKb95W8FseZBBb8RLosB__GNBcw@mail.gmail.com>
 <CAEnQRZBubFz90Xf8irDwc=erTXmByXX4rkzZy9r8ymfAuQEsZA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a93f303a-88bf-462c-f378-08d70baf6454
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4158; 
x-ms-traffictypediagnostic: VI1PR04MB4158:
x-microsoft-antispam-prvs: <VI1PR04MB41581B33C94FACC32065AB6EEEC80@VI1PR04MB4158.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(346002)(366004)(396003)(199004)(189003)(478600001)(14454004)(71190400001)(14444005)(81166006)(81156014)(256004)(66446008)(3846002)(71200400001)(64756008)(76116006)(66556008)(66476007)(26005)(6116002)(6246003)(25786009)(68736007)(99286004)(8936002)(6916009)(66946007)(91956017)(6436002)(86362001)(486006)(229853002)(44832011)(74316002)(7736002)(53936002)(305945005)(4326008)(7696005)(54906003)(66066001)(76176011)(316002)(4744005)(55016002)(52536014)(9686003)(8676002)(53546011)(6506007)(102836004)(2906002)(33656002)(5660300002)(446003)(476003)(186003)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4158;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sybdxMueYkvWskag7UkbwuyBQqtStjSaFiTq9xxScQ99Mjxmv9W+Rh66cxGsO2ixcck4j/T27k6dyKGSrCpYJkjsEi+LTj9/zF/66MzS4Cmx1giWLpBQei35DAPlHego5DN5vC54a73/F2Bp4CYtpjoaj2poICYv8sbrL3qOi9qLQJoD9U9vKa857xoLwwRyFrKw+zqsMFK82yW8d1dToDPDxVB5coyExPGGGRnnoz9De4r3gWOtyO0p6jncffXlgLxelcCjhUUhiocGR8aZTBXl3Ko1pp/xXCNZKUzmq8BudUbOPPAvSVYNlLh2gtq9siBAzEM+9qDCP3dxdD1idWmwgtYfll2e8rWzny1ytWY64Fe9Lxou7N9y8G63naX8B01QiKVsiGNd8OF36KdQ6Dvgvpt7ucC+gYENYa5HAyU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a93f303a-88bf-462c-f378-08d70baf6454
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 18:40:22.5256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_114028_507515_9CBB20F3 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Frank Li <frank.li@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 "sound-open-firmware@alsa-project.org" <sound-open-firmware@alsa-project.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18.07.2019 21:24, Daniel Baluta wrote:
> On Thu, Jul 18, 2019 at 7:41 PM Rob Herring <robh+dt@kernel.org> wrote:
>>
>> On Thu, Jul 18, 2019 at 9:13 AM Daniel Baluta <daniel.baluta@nxp.com> wrote:
>>>
>>> This describes the DSP device tree node.
>>>
>>> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>

>>> +  power-domains:
>>> +    description:
>>> +      List of phandle and PM domain specifier as documented in
>>> +      Documentation/devicetree/bindings/power/power_domain.txt
>>
>> How many? 4?
> 
> Yes, 4 for i.MX8QXP. Also, the same number is for i.MX8QM. Anyhow, I didn't
> added added a limit here because I really don't know how many will be
> in upcoming i.MX platforms.

Which 4? It might help to use power-domain-names explicitly just like 
it's done for clocks and mboxes.

This is very common for phandle lists.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
