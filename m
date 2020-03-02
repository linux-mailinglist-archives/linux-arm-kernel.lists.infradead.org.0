Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753931756E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:22:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=NNI4xOwsYX5tmiC9jgGVzinbKWTf5ZVXAzgtzP0WnqA=; b=TBt5tpvuK27qfr
	bsqyQMYaPGaHuqkrABtZkT9g9QiIOHj3f+1jZ65z4liCS9NLuplw/CCilAjC4QvNexR/SfpOHMLZI
	r4n3Bxt52VFx5eNJz4DEkV5gFp/wLNk0kWb75rino25um984M3wo7RT9P4kE1bx3ST0NgykW40HEq
	8KEH21qpej+EsNTOc9I/Vkn4XLsT3trhs1+RJ7C1sCPM+ldWjJf/jdBSoPY7h4xJbE9rRXgyzHr+x
	OVS+tvk6cB415oYnjNx74fsdlsF5chM+8SCtuCwUt8kj8qxczDyW5Z9QryfqzUSWzsR8TuOT7S7fX
	oIioErEJe0p0ldsp3aAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hHQ-0003LG-Kb; Mon, 02 Mar 2020 09:22:28 +0000
Received: from mail-ve1eur03on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::62a]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hH6-0003ES-Tt
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:22:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lMCoyYXguIMARlkVAdlNbs5Gw7pD/MQRtyuQ7RhzQXevWtQzN52AsTJKbFkzE9PRqEm0TzG8Wd0lhm90ehyl/KiIAtmmvVjqANZMBg737vn55CYktfqLBSfO5oBDt3gdbPS/35YG1Cf7O8gdlgHEr9bIH1MeHePcLfM+y+CxOZ/hHGuLU6XCRtq4mswFQKNnFdSlYIpjMt7BRUqA/GkhROwI95MOS2vDkGNVreXxKxEWu8Yyg4+zSome5nIZFtI6MrKLHEmPinvwIoa/PwaJRde9Qffe20iYvzzRbaUNBFoa3682oEMh16tTFi5+mqlLR3hF8I+ugJhwP/E73chbGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AESask4hxg+NxuR3iw0qgQCIFGwFhuPpQ7urhIoFkJg=;
 b=VjmK2kMBh29twnLy8jLXGjFcKUlaTFk+dLhHb9ZQxdR1wtYsAwki6v9XWOnSxt93W8UqchRiyO3vv17W/ifXBbOLUQZsNZNEdowHF00izIvILYG1j+4sFN2pEnIB01E2ONvwaif3+A2wCyFiqbeMleRKYrgGd8xgnCL2wjA4SpRErW7DscpPN2pLP+yUzuJkY0I2KOD9P1yMkH65mkLRij/Rw/RSgnN8iwHn+56xlnrIAo+OehkQcCI7OXqX8wMLVPFUM6OKJjoA38VeE+kS4rsxE3Gt8w+rxJef0/mSBn5o8nS5krDOq9nOKlSEEP3ms7arz5hZXVKCjIE910xerQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AESask4hxg+NxuR3iw0qgQCIFGwFhuPpQ7urhIoFkJg=;
 b=N00SaeGusuyckZBlh0Z68xS98Ds4bK8mXsN99wOkixNiKyN5G50Ek5DZqqE5wB4w/KIy0nbsB/1LenTYWvu9CC+SJI+ra2O9FHH9SvYARlMv+fV6C+fn9YEM8sp9xqc82PlGY7rVASUuLHArIONY4JRR3xdEFJVXb8lI5Fnpcok=
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB3950.eurprd04.prod.outlook.com (52.134.18.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Mon, 2 Mar 2020 09:22:06 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::751e:7e8d:ed4:ef5f]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::751e:7e8d:ed4:ef5f%7]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 09:22:06 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: =?iso-8859-2?Q?Andr=E9_Draszik?= <git@andred.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 6/6] Input: snvs_pwrkey - only IRQ_HANDLED for our own
 events
Thread-Topic: [PATCH v2 6/6] Input: snvs_pwrkey - only IRQ_HANDLED for our own
 events
Thread-Index: AQHV6/ZVd03O0pGg0Eazbugm7ITLfQ==
Date: Mon, 2 Mar 2020 09:22:05 +0000
Message-ID: <VI1PR0402MB3485A743C94442533B6840F298E70@VI1PR0402MB3485.eurprd04.prod.outlook.com>
References: <20200225161201.1975-1-git@andred.net>
 <20200225161201.1975-6-git@andred.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dc5c0d42-2b77-40b7-6b2b-08d7be8b2cf7
x-ms-traffictypediagnostic: VI1PR0402MB3950:|VI1PR0402MB3950:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB395047C915FA595FCA64FAD198E70@VI1PR0402MB3950.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(346002)(366004)(376002)(189003)(199004)(55016002)(478600001)(44832011)(7416002)(33656002)(86362001)(71200400001)(52536014)(66946007)(76116006)(91956017)(66556008)(64756008)(9686003)(26005)(186003)(66476007)(66446008)(4326008)(6506007)(7696005)(53546011)(81166006)(81156014)(8676002)(8936002)(2906002)(5660300002)(54906003)(110136005)(4744005)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3950;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QKTz8HWUx6bn1kv6BfkBz/LOrHy8L6r+9vNWnnsNR9gMLn8BWZHeAfyh/iJ8OOXaRdP1oamsWmI3A6iHnfMhpq+JpR1fxzDIhJiE0S/pOxeR50zAJ1gV9PpGGq9jnX6w2n9MbeB2bMzPF8W/7gQs/5HE8ODgPDH+lX4qc157x/FNDe/3VWIgL2ADg3Dbgv8bxcv0/HBlEdfnZ6NmRc9l3WDNKLEl+yzuHTE1BjToBsYoBy7pLq1m/vjMdw+4/zX2g6zifcMN3SWIaxe2z73jhod5XN20kkjYNQavbzxw/bCjN/Bk69qVITrLnpi7udJn5DHYiqsudbLncFlILx2jVdC03B47EfLGV9x776nBDjsUGIruM4qtcqYTj9D4/jE4nsK1iXSlnwakilUxIKvmCn5ZkmsIj97pE3ERpyxExFul2ioLkgfvxfpgJCJE7EAt
x-ms-exchange-antispam-messagedata: Pn7nSN/zmOBki6jqqdTydkSzKCcsxxUm4chNhqX0gxh2wKZaqVS2O3aJvBKJ8J0hc/dFTj/kIhOefZYVLGpH+ndr8N11Q1ySW5FoHU4SJyu3lsmiHznP6GmbJ/MPPFwOnifXHrgDpIM6fxI6QIIvEA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc5c0d42-2b77-40b7-6b2b-08d7be8b2cf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 09:22:05.8549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6krFPgu6xFm7RKczQrMqcVtUWvBMH2Low4qZ4iiAtZnvs7+QGTyTpXtr+k2TZswDj4QJBIBHGtgMI9ZtamiqJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3950
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_012208_994246_7CA8895C 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:62a listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Anson Huang <anson.huang@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 Robin Gong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/25/2020 6:12 PM, Andr=E9 Draszik wrote:
> The snvs_pwrkey shares the SNVS LPSR status register with the snvs_rtc.
> =

> This driver here should only return IRQ_HANDLED if the status register
> indicates that the event we're handling in the irq handler was genuinely
> intended for this driver. Otheriwse the interrupt subsystem will
> assume the interrupt was handled successfully even though it wasn't
> at all.
> =

> Signed-off-by: Andr=E9 Draszik <git@andred.net>
> Cc: "Horia Geant=E3" <horia.geanta@nxp.com>
> Cc: Aymen Sghaier <aymen.sghaier@nxp.com>
> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Cc: Anson Huang <Anson.Huang@nxp.com>
> Cc: Robin Gong <yibin.gong@nxp.com>
> Cc: linux-crypto@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-input@vger.kernel.org
For patches 2-6:
Reviewed-by: Horia Geant=E3 <horia.geanta@nxp.com>

Also imx8mn.dtsi and imx8mp.dtsi will have to be updated.

Thanks,
Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
