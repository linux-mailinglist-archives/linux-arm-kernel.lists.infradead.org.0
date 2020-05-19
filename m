Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A23821D8F0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 07:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcC8mX6KjDjclT/1UqfgwZiMUaDHN5y5ZETMQhgy2hI=; b=qNZUaW73cvsXVx
	2CHPGmLG06R8MSUlcTVC7pICGBDvqdk4PYoQVEZkXgSbLr8omddsIm4njIZ40FBMFx2GQ0JfVpzui
	6LABBmKNGnOBrW1G3XSMm3PrgoVKJmcT12w3fAaf57cH8TMtoaly+Nx//X1o6TUGyWJQT3v3aDMuu
	NPESuxeAocK7NdBs+H3QvlKQNeL7ltcD6zDJbcPaKrRtU3fERM7pZC/eWZbcb/5w43vHoMFjIPT1w
	ZY9/N8hHAPHKoZ0TJu53vhLBvHzrwT8v64R0RZ5aOvsBl9KntW5cnvV4JjW2uoyPgyV6Fw5RQB/eH
	ZXfUvUGj0+9OZhd4s5Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jauV9-0002rs-ER; Tue, 19 May 2020 05:09:15 +0000
Received: from mail-db8eur05on2055.outbound.protection.outlook.com
 ([40.107.20.55] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jauUy-0002o6-Px
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 05:09:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LBSzeJPMERKc1JqARQEViZarPnzsUP1pIlnfa2TQ+ou308DCLaqVG5lIRxg6wFaDmYTKrujHzH5dZm9CMqUqHGpQdrbg99Reli/QFQbSRDQmMVmSliFQscM9hoTQNag+xo8AeHBOF2zS7bwAc8DkHxYzHiNwh0sfHALxnjUa5kRcz4/2qx87oi3TgEBjfGdIzDzgu9v6fJmus5rNxZGj/xn+z3F6d/QJqbgIik4AIAzrOvlj0KnSNvnhbX2Sc2aREVu3ZY7+6WKdCAwn3Vunu2NdaH7/JZA2HiNSFuwb2qMEBS63zkQQi4kC++ohFadBv0P685Jcf3PWZUSYCuVifw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=91Uc/DfEXaDArSf0XmpGuOK3J/viFCqd3xsfGU8vRpk=;
 b=Ne2O0C/Zk2ApX6fKD/M1Decbgdl+TZJfUk4XjvG2Fzkq4cxusx/vYznOc97As5g/+T4pFEAxRYRY5myqRa0XWsGHdE/oOmUEwaxUj33BxZZn+swFzSM+wxgdL8NlC5siOq8aV6YM3++xyX45CE4DYGucITaVE4OAnfmfREYqyc7nworqPaoVT2sdbMf7PniVYw/aRduWNBM7JcIM6riqiadY58rphIaZ8hC0bwHNVx+W65kI6TJEDyYKqfahjCXYYfeIgglEJ8SGARpQxU/swyVnYkdhrhz9er6IK+4Px47u/i8jdSmsdD8sGe736WvRi7NDVRQalZANWJytHIBOVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=91Uc/DfEXaDArSf0XmpGuOK3J/viFCqd3xsfGU8vRpk=;
 b=B2+R53pDmTgyMDhLdBqm3+aHG67x7EXraSjQOhaybf8nmuMziYj3gnMUGIzYsvuf43tjDh91zbP8I1Qz5y6FxkBtRUBqp692wv2fF1uYssb71cylIUqbJPChQx+JvRWPEPjXcmDZPWQsMjl38xNWvyMx4adGBN0/3XKevY2ODEc=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5031.eurprd04.prod.outlook.com (2603:10a6:20b:f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.31; Tue, 19 May
 2020 05:08:58 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 05:08:58 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Jacky Bai <ping.bai@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH V2 1/3] dt-bindings: timer: Convert i.MX GPT to json-schema
Thread-Topic: [PATCH V2 1/3] dt-bindings: timer: Convert i.MX GPT to
 json-schema
Thread-Index: AQHWLZLAPsM6FoMGIkCRdX41U1i3AKiu29xA
Date: Tue, 19 May 2020 05:08:57 +0000
Message-ID: <AM6PR04MB4966AC2D4664B8A9FE7A205380B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589860547-3207-1-git-send-email-Anson.Huang@nxp.com>
 <1589860547-3207-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589860547-3207-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dd0ce018-c9e3-4922-e61a-08d7fbb2bc70
x-ms-traffictypediagnostic: AM6PR04MB5031:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5031EC23D21BB30D93F77D8180B90@AM6PR04MB5031.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:254;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kyBwzQzeQSstUWFbfkl0Almd7bhURHmkfV1cICnhJsva15ja0jOxkwoXPf18t4zO2SgOQNTWsB5J69CyC/R8ontRfrPv+6VFYEDqBXv76bq7LhSCQDTyUva1D4LK0FehDkslNCoa4nIztnRaqyItzdWVE6r5pENYZVOB5YwK3fA8zIaqLYw5ERI+7iLeVXH81fOtEmuVXkem5k5ejMEcJiNWWXyIhvFZdL0vABIAAGVCsAtoi72L0bHs4W8oJK5cLjouanlEaLAwUUkCuGRcpHlzHvthgahYDNV3uFekrWrNftw4Rd6tpvqq6SpcTF171Ljdz0Iy4N1vlVs8UXpCFOSvMPE3RLAAE+0ORFT6zXD88rI5ODi+o0MeIr3cDkGNpKcqIc0ArzY88bKnvCLz+Fp2jKuhekFpNMX3kKvZ1hS9/TZIa4SNbHkIxzdNdsdYf3R+fFzlB8WpkFd6j1R7uMkYRSOOe0HclO5fOuGXjGo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(346002)(396003)(376002)(39860400002)(26005)(316002)(66446008)(64756008)(66556008)(66476007)(66946007)(52536014)(33656002)(8936002)(8676002)(110136005)(2906002)(71200400001)(478600001)(86362001)(7416002)(9686003)(5660300002)(7696005)(4326008)(186003)(55016002)(558084003)(44832011)(6506007)(76116006)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 2IOc59xYbe6FmKTorrXB4MVuD/+TU9sSD9Jf9AKMaTVfgUqkxVZONnHwWAIyXeW5vgL7SCagIO9eR7NZHFBOrwiJA4E5Fe4BIhB4CPRnuWv6HRpGleoUjFY2YV8elpNItl0ihQOdZqn2KdhFtL22VNGwzkwA+q+2bf8tCBKs87VRyQmGU0Jr07Rxk3BweatcWh7qi6yh/QxocU1Z689P2bbSshdJ0MhHP1/IRRSwulOhFr5ogT2T2IY+gbqyw/fcGSXVTt050a4Gcy73mgXoxUDXcO1HCHvirQSJgzWQNmv3crZbhM03OpNKirznCoeUV8s9UONHXe9onxTxUPGazG85FIxVnltyXnAGGIuOctQJ6qbGYfCgMRCK9MkVmeFrXCq73AHUCscewYSWdQEmtaNq2NP4DRsmlrM+J/Cm2vATsuWE/zQ9HXg7l2r/C2PzTRjlPQfDaYBwPSzBfYF+RQcaobEb1cMc4+BdQ0KaUmSw3weI2xD38CXDYdZuysey
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd0ce018-c9e3-4922-e61a-08d7fbb2bc70
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 05:08:57.7722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PqEl9lA1NXkU10o0JJeozsZh6Ns2KGANqq/kYzKfjTIUoxxRem4SroqGTFxuTIt0isUVmRdw3x3kdy8e/tYUdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_220904_890718_914FA230 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.55 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.55 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Tuesday, May 19, 2020 11:56 AM
> 
> Convert the i.MX GPT binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
