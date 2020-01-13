Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA5413898E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 04:00:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtmxx8lmR2nIH3ikq00Br2klZK9gTe2QT3xQgmD3v7w=; b=Xs6Bj//1EVczgg
	dikv5fBUJ6jhcUzk9OmG1TUPdFkcmE9blH7gaU2VmjxB8MOsNSqu4ktsO/cVBGQ1vqCcoQSMrlPxu
	obodYaCGR6Kd50ua2N2QxMKj6bH8ZSq6so1U1jf1GI48g5E8w+e6EiU98SV45OE8QaLyen96D985U
	Im/WvXEu/WajMaCGPTW7AwOX9Q2QYSFVagngWtNdSeGsk7+ZTUYn/5ofg1pKWJkzm6khFxdR0tRfc
	r8JJG/L9/dWKOTqXyDjXQLjFKdOvOfyihuYCwiTUJIfODqP6VngbSCJ85YiMlbFXBGLQA3d+PwLlv
	BGPlVzStGc7sMcNcqM5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqpxc-00058v-1v; Mon, 13 Jan 2020 03:00:12 +0000
Received: from mail-eopbgr60079.outbound.protection.outlook.com ([40.107.6.79]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqpxQ-00055s-Jc
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 03:00:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UQ/fXNeddAEIzeBNh8nCASiiaSZvKmLrvlQ7yXA7+/bYwjmAG13eC3ggIfLXvYXG7dKzPkS9MUiXPsJlMmsjw/MlW3AvQ0nU2XLBDv7/u9f+PjKlf91eHxbqrjxSbsn2L+jCtXbG5tmEfL3ev16v9o9A83NJBoyhc7YiLoZF1Bt1oW6owaQ1846lIHWTVg9eLq+ANwhHfFsrrEtsa2bpH/Bp9jEGyI/v4dKzRe6xTgPUMLgmrhhrWdTwnD4v1MBqUoIEzVcufncXVNm8NbiI/JQPRgdkoGuc6rAtsqxpYUx0cUdj/gFv/sSJkqVd/bnzinb5gwVplM5desJSx8QSpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X1F/lRAlMXXuLd1x9KQyx7Se/qJyLkT6kNmdjQYChkE=;
 b=jEkR+Dg9koLonOB6XU0FFqqBvKv1FrDJZ1IkiwuOhv5FNXyrSWPIF6QoiMWwqk1WqtcakVW7HKhZ+Aj9FjOyogOYjMQOoeRy0Rh4J3GtqxvAknAzHBzBPMZg5IhjRulu5egVVJ2UokbM7FKVC1Se3GAPo4l4+xMlk9ajxCM1FnCA6rRKJr/rae4v7SPA01TZjUCspGmb+azwJhMDbjc/5PYPxTI0fDu64L1BRt2wejfpniXrbOr7/W8O6fbRap5kZ1cLztdLxJ5EjAFHRCD0GOgjYz9+npwVi6pmvs/+APJtT1g20jCJfM/v5djscBCdI7iXVH5GeL5UHOAiG85cTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X1F/lRAlMXXuLd1x9KQyx7Se/qJyLkT6kNmdjQYChkE=;
 b=YD96E6mbInBkU4q2xNQweLqdvjjYSsGY9+UJCkSoUozBDtqC190EoxVcaF3JVvU1J1qrTgjP1eZvVu1qdDt/VIYjJ98FyLlE4hmjip1kzUZ+ilgPWXhrR+u9BnuZjvheHQlUn3SijLFEmuoK1vJfzlIk700yoHkb7apGMNjnk5o=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3833.eurprd04.prod.outlook.com (52.134.67.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.12; Mon, 13 Jan 2020 02:59:51 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 02:59:51 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH V7 1/3] dt-bindings: imx: Add pinctrl binding doc for
 i.MX8MP
Thread-Topic: [PATCH V7 1/3] dt-bindings: imx: Add pinctrl binding doc for
 i.MX8MP
Thread-Index: AQHVx2ymLMSOG+yTuUKcujoHYHbAfKfmlP0AgAFWx+A=
Date: Mon, 13 Jan 2020 02:59:50 +0000
Message-ID: <DB3PR0402MB3916191387B9B7673AE7CA88F5350@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1578629498-26747-1-git-send-email-Anson.Huang@nxp.com>
 <20200112063125.GC27570@T480>
In-Reply-To: <20200112063125.GC27570@T480>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 539c94f1-662b-48c7-83d6-08d797d4a870
x-ms-traffictypediagnostic: DB3PR0402MB3833:|DB3PR0402MB3833:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38334AA20137D3E9C2BDB1C7F5350@DB3PR0402MB3833.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(376002)(39860400002)(346002)(199004)(189003)(55016002)(2906002)(8936002)(81156014)(33656002)(6506007)(8676002)(44832011)(54906003)(7696005)(81166006)(5660300002)(9686003)(6916009)(7416002)(86362001)(4326008)(4744005)(186003)(76116006)(316002)(66946007)(52536014)(66476007)(66556008)(64756008)(66446008)(478600001)(71200400001)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3833;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2hpmPUvBpe8QAldcTbPkZmzYYVOxRE9b3WM5X3WCaTDasXRHbXFjBGQ6i6MGpialIBZFoqIbdrsOdp0uTyxVZMNKi7dOxoCmoA3a+qKwqmI9ozCXmANl6Xj8ze5JdSlBDd4WFtrr5yNqrMIvcv7vMJ0T0OYWYEoaQuZpJvi7J3HqeFFkEyYpXXwutdeaKQ3AbU784ylDl+c/54/jR+f3YhvuQiapZSlfR/PRNoxSt6JaQh0XdqyUBqY9bdSWAsiqyzIApE6CLTRMbWpBMZ1icGjUnfmDR+QSUHTvgTLwwYgA0X4c0QQqMXUA5HUWW7Dv1DBR/LacaG43EThdHgE2ympEsnkc7K09i7P0eezFu4zcxqg3ZDyUL/R434AftD8/aQ33d/nTOSmabnruW8haYjvYZLUXHSJwH7ZNeo63T2sBYtnn1OA3VWBVMjVLkdRU
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 539c94f1-662b-48c7-83d6-08d797d4a870
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 02:59:50.9472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SZi02F/zRLxvfuO/9i4TEegEt60eGIye0zbE0+iOOp4xKLceVQSBxAT8dQxDu7Q006aZp8fi7fSMchNLlW0+iQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3833
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_190000_689839_D680C8A5 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "maxime@cerno.tech" <maxime@cerno.tech>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Subject: Re: [PATCH V7 1/3] dt-bindings: imx: Add pinctrl binding doc for
> i.MX8MP
> 
> On Fri, Jan 10, 2020 at 12:11:36PM +0800, Anson Huang wrote:
> > Add binding doc for i.MX8MP pinctrl driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> > Changes since V6:
> > 	- use "grp$" instead of "-grp$";
> > 	- use space instead of tab for "ref$";
> > 	- add missed "reg" property;
> > 	- remove the "maxItem" for "fsl,pins" to avoid build warning, as the
> item number is changable.
> > ---
> >  .../bindings/pinctrl/fsl,imx8mp-pinctrl.yaml       |  69 ++
> >  arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h     | 931
> +++++++++++++++++++++
> 
> I know the binding doc refers to this imx8mp-pinfunc.h.  But the only
> user of the header is imx8mp dts, so the header should be part of dts
> series, while this binding doc patch will be sent via pinctrl subsystem
> tree.

OK, I will move the header file to DT patch series and send a V8 patch set

Thanks,
Anson.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
