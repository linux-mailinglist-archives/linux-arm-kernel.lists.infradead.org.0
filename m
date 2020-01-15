Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E9813B70B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 02:37:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wsKb95KkL9uQieMWQu9urA0wSQn9kY3SASUZ5qZdj8=; b=OblH1VLEuLlmBH
	tsOwgP9dnh0vVvjtEquImO6yYLiXdvR6VQLftyrL9JIKx0ADGcl1NR9wGob3NH4egkgsaCTJ/fj+c
	S5T/LU1YlStdpVHE3F8uSsz07et9aS8VWAEnziawBPWipaVv1+sYL+OMt7oGsh/BbNWU+UByaZw5l
	bXvN/ViIWqN9ZHt3txk0wmez3vC4gBX1KgSeL6o3ezZShHSSxJiw1hBKjzgxDazv4rJyACjg45Tmu
	6IJnbHXEQQaiXKQ5Im+rXDWWug9uAGx5TAugy0IT/EyXTEyFFyGP2FsLszoOWqDwW88tzH15I725Q
	tVf4nejKCreDmJe+YYpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irXcZ-0001bS-3M; Wed, 15 Jan 2020 01:37:23 +0000
Received: from mail-am6eur05on2065.outbound.protection.outlook.com
 ([40.107.22.65] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irXcQ-0001b4-BZ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 01:37:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AHOZg60NGhOJOPwhvYy0VX9j3UQPDwokkexXZZaXvJWzddOswaPKcnIGmSOlPP+h0lxShzpjwHo2yFhzlslqoQp7ok+GWbbeWkvJ0maS0HwdHKSlVvadrnR2rEAJOWR7NNfLVaJBRXlq/8INTgViHGcWbBhCJLTulC2Za5uy0dToLOrfzSSCB6QlFqvrJN1VOtJDZJQ2w5mHD3NwLmn3X6Y1lzRcCv8ipjxwnqgRdbRH61/9PqSPfxr+7eveG7ort1N6AzC/4XBqi89f2fSK+0qispperkrtU+IFnlYq8A15Vja3B36iYj9prfncz6o5QtVpTyqjJ1qqJ7vpyVz5+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n0RDVdt2GzDWXA2g9R4fbEbkiljqwrAwk47vn2ojkaQ=;
 b=javhOPV9sJb9fSBhkMOhzIbHafvzhZHK06soHM4e5zIeYEZYn89GYMaSXhlxFaRs8YkDnMgOfCrd8RLkbOhnxQxD2aKRgsCNbvy9WpEHO4P2i1IoBfopwg+C7I2SIip1B/jAwybN1h0xk7/hwfZwEdJnfeKMCHqyON3wUmWG8zHtk/UcvJWTRMikRU+IIuC+lBH+ZNkm1aqZ3qNLrYXZ5DgEV6i8Op7hgrtCIBgjk7JRdDSJpK1yhSK5rDstjxnWdJ4W0BEpXyD5yoQqTy6qjYT+jitXol59fSyCFfGzY3seV3gwksPi5il6//wGLVDGTVDDeShyfsmnqfPwjyKiGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n0RDVdt2GzDWXA2g9R4fbEbkiljqwrAwk47vn2ojkaQ=;
 b=ngHv0k88ufTK7abo9pilKUJPqU9WNSPUiJ9ss9a06AFjVpyBhY0u8AlWZT4kWncmMI3KsX8bZlhCSxUwSxkhXkJi/wj6KNN4Zq1OQ8Mg82RIIQPsNdZ+Ke0Cq/VGWGdkWkZm01OV+HauAsTe5+znHLY4MYD+t7ssPOV7jRYAlL8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3884.eurprd04.prod.outlook.com (52.134.71.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Wed, 15 Jan 2020 01:37:11 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2644.015; Wed, 15 Jan 2020
 01:37:11 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V2 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to
 json-schema
Thread-Topic: [PATCH V2 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to
 json-schema
Thread-Index: AQHVx2u+Jm02FmzcjEemG6LxK5AAHqfq4oOAgAAWwEA=
Date: Wed, 15 Jan 2020 01:37:11 +0000
Message-ID: <DB3PR0402MB391625FBD72C16E3C84ADCA7F5370@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1578629120-25793-1-git-send-email-Anson.Huang@nxp.com>
 <20200115001357.GA16961@bogus>
In-Reply-To: <20200115001357.GA16961@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e155d372-c940-4aad-8738-08d7995b7140
x-ms-traffictypediagnostic: DB3PR0402MB3884:|DB3PR0402MB3884:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3884E210FB5C9AFA570C4B7FF5370@DB3PR0402MB3884.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(366004)(39860400002)(396003)(189003)(199004)(76116006)(9686003)(86362001)(55016002)(4326008)(66946007)(66476007)(66556008)(64756008)(66446008)(2906002)(6916009)(478600001)(44832011)(71200400001)(8676002)(81156014)(8936002)(81166006)(316002)(7416002)(54906003)(7696005)(186003)(6506007)(5660300002)(33656002)(26005)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3884;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZwXp1uVi+4BcMAsSjutAFdf4DWF1xv334EpgbDoNw3Z6gPgw59L6ecdAm+L1ESDlYEarEngfaWlDOeOA4RLdDLxrCrr9iIxnoaBD+rQ5DoYngIMFecCrEiggs1rSwa7GMlUjtxKwkhzNs9Z4zjmgcGsDJZMpFsiw/b4dydvwk1KohYbgTSIPoBe9ARCnscdKtjqHGTCS8HNhdL6fzpdzmCGdVZ8dsFs7r2F384QJqzY1ic3rrS5nPWHSDHbg6jPXGUsicWLfaF549nM60l8WZs4IB4ktySli62t00u/ARFCcEZQPhuyN/Hxw7e+BV3wdhqcE5E0WKpZziFno3L2IwNj+hfQaWBNobor7iIhmIf+2bH1KISrEGgkoCi9WKGmuulQTa8wTof+uqAnBWn/h3S3dRPrdcXhT8XzqH9L2fXCyXzzJ2lXSV9+UNqMVdh15
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e155d372-c940-4aad-8738-08d7995b7140
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 01:37:11.6433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LEfWKwBfF9UIZJrmCYrGNji1yO+Oa8T4DvzBNqMZbtqwbdWuuJ0WGrClXJOEqaW7IK/pwgFozND9ZdVgGYAxmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_173714_392832_F7245AD9 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Rob

> Subject: Re: [PATCH V2 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to json-
> schema
> 
> On Fri, Jan 10, 2020 at 12:05:18PM +0800, Anson Huang wrote:
> > Convert the i.MX8MQ pinctrl binding to DT schema format using
> > json-schema
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- use "grp$" instead of "-grp$";
> > 	- use space instead of tab for "ref$";
> > 	- add missed "reg" property;
> > 	- remove the "maxItem" for "fsl,pins" to avoid build warning, as the
> item number is changable.
> > ---
> >  .../bindings/pinctrl/fsl,imx8mq-pinctrl.txt        | 36 -----------
> >  .../bindings/pinctrl/fsl,imx8mq-pinctrl.yaml       | 69
> ++++++++++++++++++++++
> >  2 files changed, 69 insertions(+), 36 deletions(-)  delete mode
> > 100644
> > Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml
> 
> Actually, it looks like you can combine all 3 into a single schema. The only diff
> is the compatible string.

The header files name, reference manual name and the examples are also different,
so, personally, I prefer to have them separately if no strong objection.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
