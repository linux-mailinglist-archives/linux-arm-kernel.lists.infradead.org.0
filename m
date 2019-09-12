Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7E6B0F0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 14:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ZTRu4fF6cQR7ukG3sirDe97U/sDBl8DGPjSP52yDQzo=; b=DFVnqGFcDMq0OY
	Q9sZinCJG3zGlm0LPD/lQ9BzVDPYeVN8Aux44HVmGR+GwJMb+Z1MiJwaw3iOXiMUevHULhHHuar3L
	5ZFW2Cxrmo0QZ/XK9niTZMfWF6EXjgBSZ3hh04um/lKCrmlYE4EWKqdKziCTbJJ683iIiQqdNfWNv
	MxEzSnSGjlD25iaEwjF0k0Ki14hKlJNnoIswkLAWcB/IyiL3aLnrqy1Ulloqo/2ou3zrSMimkPZsY
	sImGIhWcIK2MsbjVPD0AN2AyPh5zCwAZdt4Ql6Yw+51WAXxPu0QFJN5+rrMoeshZChG60TPXBduF7
	PbyJd3unWAsIykSrGVhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8OUg-0006cN-RE; Thu, 12 Sep 2019 12:46:39 +0000
Received: from mail-eopbgr150047.outbound.protection.outlook.com
 ([40.107.15.47] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8OUM-0006bU-Mt
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 12:46:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jn5glkBeDbuyvbmtX2vQIhN8ey8mFlDNC/aVUZfRSGL7KoBYHmGG9aWudFXeTLERmYPCHiWL78P6Salb7T/6lpfMPWWHy8Ajs1SGGS7gBL1Ynx8RzrLFb1eEudNXrr846N2JwTKSG4RW7ZCCYge9chMDkENfF4uaDpVvFIQFlj7J00acVgJO9OAx7EMIlNyP74WDUTO0mSpzrmgFPxWF23VbRFL/1vjHyTrTWeVi0/0YfirxrjbpQl85a5jLiDw65wrA0tfV7wXElt7HVOCeTYbpoVlSw/QvRFtNoRawYL/tUXOTW3XZ0o46Va2kdNzTP5zafFrA23Wo2+aOzFz6+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vJWze+9tCqrC28wk4avEOYXhbUn8wLLw2Y++F/oknrg=;
 b=YhPQVB1burmJ77cao6cgT8mhQEeS6xiB3G9SUgBKQ0s/e1HLoXvRA6PvB+hdTdllCoy+RENxXhbxv6ZxtJOSKboqmYgnigkkBj4GAapgp8hNv32YGKnijaVQdxG3Nah9ks0purdhqHx2ABNSSivODgBijVE2uXFtOChyN5cC4x8WecjpdywpKJIetX49I4Rm3A1WGAuyZWrId61kJ1gFlwwD+0QjdS8EAV8mBLl4t3iu1oQosGxx1hYXAdbiJBTfG4JSvNX5k1QmSiCS1Xj0c2qFWmwW2YgRv25XKHKB98EyWQ2JaPEIZbnYXtFtUa87ruEgbN1NQZWk5X2yGNmg6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vJWze+9tCqrC28wk4avEOYXhbUn8wLLw2Y++F/oknrg=;
 b=s8kTrRkxQJSBmNWUri2TZZ5xL87vP4F+zRG1PXd3+g6YcZA3TvkD4tHDdWJXmzSP8I2BktHnB0OKgFcvKqob4e4+l6mVhVfjwROqqxcYzl/9CXOL25GRevdvob8aYq9Vdrlq8hc7OTuSypvL7VL7p7qa+mIZcfCt7E7kJvxDWY8=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5998.eurprd04.prod.outlook.com (20.178.123.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.15; Thu, 12 Sep 2019 12:46:15 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2263.016; Thu, 12 Sep 2019
 12:46:15 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: Re: [PATCH 2/2] ARM: dts: imx7d: Add opp-suspend property
Thread-Topic: [PATCH 2/2] ARM: dts: imx7d: Add opp-suspend property
Thread-Index: AQHVaRXUkInrsknOFUCFtb/GlZ/txA==
Date: Thu, 12 Sep 2019 12:46:15 +0000
Message-ID: <VI1PR04MB7023B9F5AE6CF965BA76F5C8EEB00@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1568256992-31707-1-git-send-email-Anson.Huang@nxp.com>
 <1568256992-31707-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 657424dd-f635-4240-2b9d-08d7377f3331
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5998; 
x-ms-traffictypediagnostic: VI1PR04MB5998:|VI1PR04MB5998:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5998E75B1BF0B413295C955AEEB00@VI1PR04MB5998.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:473;
x-forefront-prvs: 01583E185C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(366004)(136003)(39860400002)(189003)(199004)(81166006)(478600001)(6506007)(33656002)(8936002)(558084003)(53546011)(102836004)(186003)(5660300002)(486006)(25786009)(55016002)(476003)(9686003)(26005)(44832011)(6246003)(76176011)(305945005)(7736002)(74316002)(52536014)(64756008)(66446008)(14444005)(76116006)(256004)(2501003)(66946007)(6116002)(54906003)(316002)(110136005)(3846002)(71190400001)(86362001)(91956017)(66556008)(66476007)(7696005)(229853002)(99286004)(71200400001)(14454004)(15650500001)(8676002)(66066001)(53936002)(81156014)(4326008)(446003)(2906002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5998;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /Y/zpzrMddS4ZxkWFAIixitL55MPIiKMiMwaeh0yTljBSj9beXHrih2R8IhhRxvzixOOKawgzjHafbv1DoLOlNpKDW9Dx/ESF45BoFTIHHzDZ+Bq5uuvZSG8GjC2CMa4pR3O0t3pWwajK5WTgTGi7vCJSWsJcI8C9wBgNpOBXYzb8vAFMPdVK1TTaRswohHRBUyOpmn9GbZ9lYTpyP0iiNMwimkPTyId49WJcrQrObvUm6UrmlKQe4J7yaye57Bfk+QWlaUy6Ab/iJ1EEVEHeRA7rsoEIfNOXKc9SUg2Tp0pEdigKx/eCwiLopOJY1G3x1hwwmGwn8pVLSdiiR8h5Uca1aA1dq9jk2x3rARVHV8KNZx+fPa8iMyk/WUt/5ALOLzEZtOqOPeisJY/skrNS6kZWJkjfhL7Q2Uc5r7hqNc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 657424dd-f635-4240-2b9d-08d7377f3331
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2019 12:46:15.4168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkqK57hDNBpepVhm3uwyo2FamIrWP/JHzzDflcJ2F9uSQwpHPIWfmM9pzokVYeVeJdkvXy98WntzbZrNxFDv8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_054620_023222_D90E213B 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.47 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
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

On 2019-09-12 5:57 AM, Anson Huang wrote:
> Add "opp-suspend" property for i.MX7D to make sure system
> suspend with max available opp.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
