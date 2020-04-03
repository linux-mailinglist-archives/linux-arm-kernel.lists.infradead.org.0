Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8730319D6C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 14:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIJXquhH7qareNbZFyFZ5jW1QpZHl2K350SO19+U6nQ=; b=O4H52m9/cAC6cg
	FW0qj0zOlyOd9S6pDBW80r84F0IAy46gxk5rYIUZiH5DmfdCTtd6OylTVPOk3s2YIF8T4uBqKyx0v
	MP+Tx8HApQyPKmEjl965yXpD7QTI1D4u9OHg4DGkcMUqTShg29Gg6KbMZGmiPggOGfO+uLHP3vWR+
	6hvEB9vhkxAe4J8oIPAlOHjW6mX2TgGMX7EbLg7w1nF03yeqWc+aFYTdlk6tVr1IlLF/DyPgClc2K
	6Rv8fIEel6guAZwnp65ymfjS9ijvouk/MYeYesVJeSmP2Sbhkgx745MtNmucWekIDTmIsIM980bHu
	8ud+fOlHe6TbOxVyPoRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKLVx-0005I0-6Q; Fri, 03 Apr 2020 12:33:37 +0000
Received: from mail-eopbgr40069.outbound.protection.outlook.com ([40.107.4.69]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKLVp-0005HJ-AD
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 12:33:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BrrOHGNPNn+a7u8zA19QNPsprzIQL2q6RKMH0F3mBsf9BPvvc6yFV7zdRwclH54Ju3ItrW+NXTAWOynetw1RlxY/otmfpZrV5M2YGHtEfM2PYG3MyzV+cvkA1Dp33w5EiZh7IFgdDnbRiPf4/XHJ+pccAAR3WBNiw8g30AvU693v+KaBJxbJsRjDoedII8AuNevAcyAzOo0HlHPyc1vrdIQmxCZ2DfFGxZa3MPD3yb5+uv4JGwY+8c12oXzQP7zgvfwF0+n/b/Aotvor+RHMUslaNH7Yz/PVn3ikq8niEt5lFSWiSaDvOn22BG+mF+8EOfIZmVZqS3smFRcqbJi34Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DvEUeQYQMqYCiEXEi+AFQP3tXqAYTx+G4fP9FNLWc20=;
 b=KB+sgETRzq6KWNqACZQPHgAIohDCqRmvKlPUgYAS1FAOBsmqCwOR6Bj+mFfUc6mosbRhIT+nGJfmUYDlXkUqzZ+ZR9qiF3OfBzN0MZbqpj74K3xlIZGnLH684vtuYhicZOdS2M6y3iKkIfX7X6+SHsk+Ca14nj8UoPg2yHv6pGqVio9vIWsCNRs630MuJwIjsTHssYQTCPtbB38nVqBxDyAz4F265VbNWAwIQb1apdKpMSGdvGHd9X1+t3v4XIy6zp+Xe1EgRciRrxdj9tWZhfXuAsm53LPiwXCyyPuMGVkQpU7/QWaxylUYIWZwlQCj27XfxBS3QT965/wvxhuYYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DvEUeQYQMqYCiEXEi+AFQP3tXqAYTx+G4fP9FNLWc20=;
 b=e8TLsaVw2pv3k4fC+hmosqEq2Tp9Ekk4uUX71cX55+aXR7m8+bgkS5qmUuDmcK+DgTNynFnZ5xyrAaFLgQ4rNrd/K5FI5gsDuTFstvJTw6k/4hQsNC9A50u2rqdio0WRzyoJoSQxZfsHkQ50fCgAB+V+9Z4jW/xSiE5UfzeXok8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3689.eurprd04.prod.outlook.com (2603:10a6:8:b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Fri, 3 Apr
 2020 12:33:26 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2878.017; Fri, 3 Apr 2020
 12:33:26 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Amit Kucheria <amit.kucheria@verdurent.com>
Subject: RE: [PATCH V3 1/3] dt-bindings: thermal: imx8mm-thermal: Add support
 for i.MX8MP
Thread-Topic: [PATCH V3 1/3] dt-bindings: thermal: imx8mm-thermal: Add support
 for i.MX8MP
Thread-Index: AQHWAQ+NgsYnRiisu0+CCnx8R8nFSKhnZDGAgAABh8A=
Date: Fri, 3 Apr 2020 12:33:26 +0000
Message-ID: <DB3PR0402MB391601BEE4897CCD674597A4F5C70@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com>
 <CAHLCerPVuZrNiSh45w4TF6jKmZ+aD5aBZCcCK87i4Txdfh_Z2g@mail.gmail.com>
In-Reply-To: <CAHLCerPVuZrNiSh45w4TF6jKmZ+aD5aBZCcCK87i4Txdfh_Z2g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4d248068-0431-44ed-47bc-08d7d7cb34ee
x-ms-traffictypediagnostic: DB3PR0402MB3689:|DB3PR0402MB3689:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB36891A11011059DBF45AE408F5C70@DB3PR0402MB3689.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(366004)(376002)(396003)(66946007)(76116006)(64756008)(66446008)(66476007)(66556008)(33656002)(6916009)(55016002)(6506007)(5660300002)(53546011)(52536014)(9686003)(478600001)(2906002)(4326008)(86362001)(8936002)(186003)(44832011)(26005)(54906003)(8676002)(71200400001)(81156014)(7696005)(7416002)(316002)(81166006)(4744005)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rMp0pICX4uhd4tKc+CJnfIMzZT2ma7Fvy6+rm8XjBqSpUUjlH0wioEh9635nAxR0znEL4o/m6yRg7vTO9urfKnylX1aVNj8GpEz82YqyM7deWlDQyGOoDpGLbU+woFpV/Jf/dGXoVfPNk6SWRZ5XwOQ5dS+TDummJuOJb9DqeGfyu7C9R6ngpZgTFFJJdwhz2IK9JYHOj855coBTMnHbP0z4hQ575xDixu1zuDCfva2hKKr8D+tnc+qlPOtY8Qe7ksgYSCs6Ly9BVRLwYHbXLckMdaGgurjuOphLbTWQb39Nxel9iTTNKWKq4gqGQuI1LymnnokH4qYMiGimJmfjVaLO+nkv5vwN9Wxo+NleUa70NB+1G4UeqMYIU/kid/gVfONPDgMOv+bLlIaMV+is5v8UVJ6DwYWhqk4jBAD40vMnEXyrf0Dum0NAQdwvaKC7I+CvSxsO1SjtDZC8geO97KQwIIced/gMwmeEFl5GMaI=
x-ms-exchange-antispam-messagedata: V9eqJCdAJcLjXsU4dJOfYlURPqyIQq1cyrXZXdW1U5WjgYT0Cp6gJfNOMy85BaapoT2lTyLLDNQEVYz5UbPb5SPv0PvdJUTNzQq8bb3xr5l0VQSN5LUJrgUsmtFruG4O18aQoosQJmxqnrDDX+0l6g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d248068-0431-44ed-47bc-08d7d7cb34ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 12:33:26.1329 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MtAhzfrOXaZuUkm6geAhKq2Dn+BS/xRoo4noODgCz4fGqq2yGSgLLBYzT3oHUaHRevFAhh1GiIobYnKbpFJxKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3689
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_053329_505843_14C4B817 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.69 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Horia Geanta <horia.geanta@nxp.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Amit

> Subject: Re: [PATCH V3 1/3] dt-bindings: thermal: imx8mm-thermal: Add
> support for i.MX8MP
> 
> Hi Anson,
> 
> On Mon, Mar 23, 2020 at 6:05 PM Anson Huang <Anson.Huang@nxp.com>
> wrote:
> >
> > Add thermal binding doc for Freescale's i.MX8MP Thermal Monitoring Unit.
> >
> 
> I realise this got merged already, but please send a patch converting this
> binding to yaml at some point.

Got it, I will find some time to convert i.MX thermal binding doc to yaml format.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
