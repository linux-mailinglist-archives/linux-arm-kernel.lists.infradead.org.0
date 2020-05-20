Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C371DAB13
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSfrNF651avtEEd2znJQWkIRjTafULPsivTXZmhd63Y=; b=OiOY06MCRFSxil
	ogcFKZtlAbOEQ31g5NfasjZK1DIKyDg8c6oHpKqqTbw24+OZX+SY0hvxbV1RIr18b3hjbUVZ+5PHB
	uJ9DFvSwjTI/3kOkhlPBZXBBqk09Cq0QIkAQzB9fU2bgbeNKzCwvsEedcX30SrJhQhFZB0w+Eax3L
	D1yP1eaPRmtApDMwTWYYCAmLMbphEc5Omd0cQjUueSYJ4S96AiJ1LaFWWeHGfrAapRga+qvOMN1LO
	2QexlWc+CiSmzaL6mFSuhw1V2mbjh7vSfpHNrAr6eDlQ911HQTgVdpvXrFfDfOmfyD6tMus1FBc6X
	8mL4k77GSJu1whJoB0Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIZ4-0006ih-5A; Wed, 20 May 2020 06:50:54 +0000
Received: from mail-vi1eur05on2083.outbound.protection.outlook.com
 ([40.107.21.83] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIYt-0006iI-D0
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:50:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g3HJeWxEjk/duUlNl5t2sUJRHL0M1lAFpcRKqJDsZbpEUvLbsKX8QG5nrzc5dkRrEhuBEI8bCcOX8y4HiL1J+kcvRdS336S2sIbD6oTqiJardP9NMFNOoVIcsLLpwpvkNTrp8oOpKMVn98IXtHYZPPw8wer/ST0DSJxUsqeS9hDUFOdQ7K+pizkzZO2jK/cvWYshTWo8gDc5MuYmEJscQaOm5sOB0SNIhmXQ2zlWJpOKDHDBbwQ4LeEigVbC1iDL25Mbv4xvr2zEVHFwlbP3z6wrY/9SJBrMcVyR9BrqApdmDSjpl8MrYtCD3bmDKueBSFQzJQoU0XFqjRnIg8Hqxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UvGDWJ7n9jg0znBDrFbYSyKFI+09F835Y51PBXsd1g0=;
 b=iJFrGPZXjSmX//bm0DMskaI2yNz78PbKv/BOfz2i2KJrOOBGdVFBd/J4Cf16tuxKMcbvwuocmD/YLffGQLBX8jxvZzk8c+/2XUhZ/h2BT3YyySDD+ncZN7tvicf46NZzPC7HMr7oECI2tCyMJjfc/SqMMkruqGZJzAMuLwcqQOs8WGGdcHLNY09mGt5HIbxWRxX/2ZBKhSeAyF2P12oHX7265ZxE2Y0y9NsaaaMFZD6R5Fof/HNfZbMlXhgEO4YtQ+oE5tL+tIyJwIkiXZtVE9MzG6QDNeYUtuTPCVQyNzVwQAW2iDnLlrXNM5HzQNZIGhnIYV7c9zDrLpRevKSC7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UvGDWJ7n9jg0znBDrFbYSyKFI+09F835Y51PBXsd1g0=;
 b=Dzi2kKT2BRICzivhPv5ImO3Dy5mKBju4CHm9XyBJ1iLsCXxrL/i4TbnPZ0zoICfxxbo6RLpHMO2Og1I9L8I1iFAQwoOmM+vPunVCVG/zDm/MV/B38J1mYf5KT5XBOHli5p9ixlhqcyFrar9j3JeTwGe27owqdy/TNU0yT6O29ws=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4935.eurprd04.prod.outlook.com (2603:10a6:20b:7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Wed, 20 May
 2020 06:50:40 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 06:50:40 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>
Subject: RE: [PATCH 3/3] arm64: dts: imx8mp: add mu node
Thread-Topic: [PATCH 3/3] arm64: dts: imx8mp: add mu node
Thread-Index: AQHWLkxzMvhtnxfr4kKzRmUZ6iXJ36iwSJ8AgAAAq4CAAAF1AIAAPoMw
Date: Wed, 20 May 2020 06:50:40 +0000
Message-ID: <AM6PR04MB49660EE02F2C41C5320C1F2080B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589940278-3680-1-git-send-email-peng.fan@nxp.com>
 <1589940278-3680-4-git-send-email-peng.fan@nxp.com>
 <CAOMZO5BPPRy_XGHHyZfE3eOrmCwW_VytueY-An8qqke6HU06TQ@mail.gmail.com>
 <DB6PR0402MB27602682E90E4CED55244BCC88B60@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <CAOMZO5DmiQbfJjTLKPiv6uUNaQ8ae-0h7uOpPf2J9ZMwDoE+Eg@mail.gmail.com>
In-Reply-To: <CAOMZO5DmiQbfJjTLKPiv6uUNaQ8ae-0h7uOpPf2J9ZMwDoE+Eg@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a3ebca6a-f723-43cf-bff1-08d7fc8a1c23
x-ms-traffictypediagnostic: AM6PR04MB4935:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4935207248F037E40C3101D080B60@AM6PR04MB4935.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jpy1MABEuETY9YYIfAAvuoniQKmAaB8PytEE+YN4x8jkG8nUxtjrZMh8Rn+xZre55skfhS9+HN1ETTxwSaxGFB/KY539UOQV9/7Yc98PYDeCllQIlOH+Jw9DBIkBDtUVQonqTjgJcgeqvl4UgeIBNqL7t4DzOahcco4MupCp7kErwFRICzOJ9yZ19h6eFyAZkvA/PpsZwxE6ZQNxBk90vVJjb+si39ECvrxiQTeelKoB+HuXbToQDMAt5S3uQsWOjU7rQPP51gbiMb/03A7NszNeYFG7xsf0naPWe6/DXHzcOcVM0LH6x1TBfPsgdl1MdOXdPjPkuuvu56hNqJ0YFxlnyfDyGPMEplnMHb44y8SqMaLz6xIs5HiC0If1/ILlubWZs+q9WMSzb1V6RpYH7Ti/EU8jFx5mVueLG/WqhiYirZJQcLWxWUFUwgRliEaK1KF8OPKy/zbvQZPsrpBozFCH2qTo0cAiB1DSGDRZA9lofkFX8NcfWC0B6Kxm02UF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(346002)(366004)(376002)(136003)(33656002)(110136005)(26005)(8936002)(4326008)(55016002)(9686003)(6636002)(8676002)(86362001)(5660300002)(478600001)(54906003)(316002)(53546011)(6506007)(4744005)(52536014)(44832011)(7416002)(2906002)(76116006)(66946007)(66446008)(64756008)(66556008)(66476007)(7696005)(71200400001)(186003)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 9Jr++8EIXt813hIUNQNwrlceynUyV69uQ6lWCZ9EcYEGAcMFKn5rGNL4WGfJU/aj0liIHVtvmn8GRSiSZOQO2Hp4ao7kSR+O6VqWZks2e8l25nnGvoHiRMw1PqugOxmeqs5mgh/QFNbRrnufwUp/2WvTpRsctVjj8F2l5/tNMASIfz0vdc5DpcIx8UbZFFSl4mouwQCtX/m2PbtboRGgx0Y2MddBd4+Xes6O8CEz1ubVEVho+wBroXLrryr80C/4srCx4pl6pEKAY+sXQdxu3QY5vmzlbhNjfNjmV0+/BMw3uzh5Q1XGtRkjrk2KJO9I+/iLIrFrWvP2ec1pLI7bunLkKhVEJV4NlpsnVwMMKVbGU4hSokLS2oiRLnvWpx00kp2UpcuXFhE9KwWMoxzZWkGuHkOU8UCOuPWchYmolxpviZNal9t2pTQAsRAqhdZQLmM5mm3feVi7XkRjh70SsJGBi/ESYAwEkCPq/k2TMuSQ09nH28dYNo5vfFrVFpda
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3ebca6a-f723-43cf-bff1-08d7fc8a1c23
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 06:50:40.2556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bScXeFZurpaKLgIXCob2R+ik7JZKj4F08Tz4HPNQMimCD7PtCo9gQtmGmfWs7jqfSpeGjecNtdmBr7uXsdC59Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_235043_444597_5EE9B290 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.83 listed in wl.mailspike.net]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Fabio Estevam <festevam@gmail.com>
> Sent: Wednesday, May 20, 2020 11:07 AM
> 
> Hi Peng,
> 
> On Wed, May 20, 2020 at 12:01 AM Peng Fan <peng.fan@nxp.com> wrote:
> 
> > Nothing specific in i.MX8MP for the mu part, so do we really need add
> > "fsl,imx8mp-mu"?
> 
> It is good practice to add a more specific option.
> 
> Let's say in future a bug is found that affects imx8mp MU, then you could fix the
> MU driver and keep the dtb compatibility.

+1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
