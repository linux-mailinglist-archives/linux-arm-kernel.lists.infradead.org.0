Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A736C1DAAC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cVI9DjHhXcFz0z9E/IbS4ohDn/JN6S/MMwnj0T3tLck=; b=TIZT2nn+zqZt4c
	CebwQU+qr4SiPTJvfPSLboeK0hzxf8vrYrs+P+KvluiBfLOW6sEfREMCPlnP2DlZu0JvmORYwNbRn
	H07fKELmjk+jlto3jIjeg8Wp0/CYRBCSdnkGfQDdkEaWmOibJ56y4U8kAhDUfs8SRgrgMcHWYHbFi
	d5S0LF8KejK+zPZJZjbEORVzqs07AYyyPDVy019iamIgwkecL0s1e0xF3z63glQIfGgetuAwJLfP3
	TpUhDOlC5UBnaBnnBqMTheItROtvgPT5mQ9abL/7CXeSwB7KxQs+vN3z+p6UTBsNe/8VHB85CIM2c
	HpvRo/U0yoTJqGoxNswQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIQ6-0007Ko-JT; Wed, 20 May 2020 06:41:38 +0000
Received: from mail-vi1eur05on2056.outbound.protection.outlook.com
 ([40.107.21.56] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIPn-0007Bi-Hu
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:41:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KK0Fx6MJTxdUMk51B+QQi9bTwSxikBDVyUrntsskU4u8k3F1M08kPW43x+z8ghmasDeJPZat9RhF1UIEd+XeoYz1KlhVwmQQyhYhst0Wm/ykUq7tRGmDD4iTJk1mHC9QV9x/Pmu5FQeMi9TkLuES4xT6nN4jswJhrl/WLd/+JMuefFKgSA3LuyWrlGXwSMUbo1o2cSvXGZyO7acUQgpa6uDj1qC30jIzmXqeidbCqpznkvDSbQyH7+JpFibjlU5p/bo1wEH5Fay85Q4vc1hJCRUS1+u71WXYtkZVoro1/2FL/1HXqT4qwK+wV7EDVNQZY6BdYG/TlY3MjEqBrwgy4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JTMHKX7ai+SeVlCoUMLA4HsyVUYE3FQ3HqF8Tlf35ro=;
 b=Q6ad3ngrsO49u0K80CWTp2ZqE5IxuEKndLMv7PPlJy6f4wgIwPI+jh/9I8wZHA/5kJaXcVxjn+9PAqrsNxwd9SwBOU6wqpZ099zju6OHf8bLh69ilvLDheQGNteRCuLefICEKS7mmtRxcXaltx3fI63ZNvHhd3Emrhg+teSdK5oVB9CTIBmnTo3hYjwcfIOej+4Q8v/mgkjAMAe1fK6hDySDcFERCYER0rZXsco0ys7NIRgpIIMSbSX3C8B+2dhE9kl7zMQ3MzFV0ePpAmU7klBtMXiZxp14klJkudTEVf3pyIZbXsN1iydsigSnQO/Nil8amBYyt295XKnD0I9Gug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JTMHKX7ai+SeVlCoUMLA4HsyVUYE3FQ3HqF8Tlf35ro=;
 b=sJORLtI8+77Pv6N0k/jNwVBMVPdLkJLpcURWBZvdT1BVxqwZMLJI77Rz7t8tPuSvV076y8QoNdXOFDZBs5uz9dM5bu6GRrJlkuD2HeiqIViRavnHpSZTwYkPLpGispHBReMSGD7iXY8WEJTDdTkpOqd0F93HZnzszvW9ZxBZVfw=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4120.eurprd04.prod.outlook.com (2603:10a6:209:4b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Wed, 20 May
 2020 06:41:15 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 06:41:14 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 Fabio Estevam <fabio.estevam@nxp.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>
Subject: RE: [PATCH 0/4] arm64: dts: imx8m: dtb aliases update
Thread-Topic: [PATCH 0/4] arm64: dts: imx8m: dtb aliases update
Thread-Index: AQHWLkwkW+oc0zbvzkitTZ4UpbqnCKiwhm7g
Date: Wed, 20 May 2020 06:41:14 +0000
Message-ID: <AM6PR04MB4966C199450F7EC8665E0C9980B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589940166-736-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1589940166-736-1-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 016f118e-489b-4a72-df38-08d7fc88cb13
x-ms-traffictypediagnostic: AM6PR04MB4120:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB41201D0ACE49AF675B83EF2F80B60@AM6PR04MB4120.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EQ6fYvTC8oyLjtnaM+KeR+zygv0YN5AK44m9u1fPkQi7+f+twRbyf3xyYpMonjik8Y6TpbGNGAziSTM45BwGC8N3+RahkN4eujBzvPO2EGQEn4HebMspIGuivVDpps7s/kH+LffIfCc3qVZt+YVKjIikaG5wh+zk5xKsRhBTpnqBfd7B2pSIOQH0jRuLGce3328Xl4W8cZWZTPJeP4grgGiJAE1Ev8E6rtFsoBjKq6rPT+OYlswzHfvqME3UmmlpvVL93qWB3Oee8eeBU/+ccXmNg1HG043uAYgF/oulz0f+4a4u9xidQmzEcDF2nImitqhW85oXUYhX9W6K8gJmksj2kscrECCvDdaWydhWfteed+b97lnpWlCY+TVRPYwN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(396003)(136003)(376002)(39860400002)(33656002)(8936002)(6506007)(15650500001)(186003)(26005)(110136005)(8676002)(316002)(54906003)(86362001)(4326008)(7696005)(66476007)(66556008)(4744005)(66946007)(66446008)(71200400001)(64756008)(52536014)(2906002)(44832011)(478600001)(76116006)(5660300002)(55016002)(9686003)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: LfIk+R8H98ou9JPNsXgsSQ93mDMM393t+auEWAGLbDPSBxWCL94PoGqx/Ca9pn7AYxcd0HTqPAZNoOFk09A9lm+vqNUe3FB9E6EmU3GIQE+07QF8E/H7I+RHr7cgm5jIlImsLVRjUO8EuR46+OzfBZqLqGn7M3utNHLGXGgb9Vq8hUQ6zVJ1UXS9zQEUlvuKYtJhCdI61rLjcISRYPGI+yhMaeidUjgtm4i5y4qTOoQrbUYjp7jn0diSp6LVPqyBmq5lby06zUkSJKFIu4pAPJPczEVkVDOPc713O6Tf71WYKlA5G/tDuOQi3A2OSQ0W0cNdm4LKKwitnozHRKOJeHEBXMgAgxa6rYwthlHAm8Av5eb106+ee5hXvjsQEksWi40x/LjTU+6594NhA1h22zBkIAjiWHhShjZqyEWGbIsmsSZ1EeepLR9i/d0hWZScOyhAMWb0IsEu1gjSVaZLBFFGKinPyQ2/3agLxg03iyc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 016f118e-489b-4a72-df38-08d7fc88cb13
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 06:41:14.7754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xmqhMLpMlxqDPUQxTDeLT2QnaFfPAS7N4Z1UTCWbMzUIoIg9T6kfglDo2Tf2qL22dRDbkjM8y+49BEIFRq+C5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_234119_606661_87C57986 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.56 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.56 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Wednesday, May 20, 2020 10:03 AM
> 
> Minor patchset to update device tree aliases
> 
> Peng Fan (4):
>   arm64: dts: imx8mq: Add mmc aliases
>   arm64: dts: imx8mq: Add ethernet alias
>   arm64: dts: imx8mm: sort the aliases
>   arm64: dts: imx8mp: add i2c aliases

For this patchset,

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
