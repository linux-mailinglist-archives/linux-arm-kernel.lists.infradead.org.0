Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D0317446E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 03:09:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/1zsYwpMS+JJJiOldVIf6AcesxtGtCuBQp4WI6Fo2w=; b=FoGRkdMFqzVGe/
	LqsjEwCmj5GrPbacLvikGh9Q0GefhXCZLIk37stH+H/VaGWIZBdBaahf14YHqA9NoGltopJB+nBeO
	2ygKWMNiBG+DCflM1guNeovvb5C1zyfFm/H534hfMEmMt1kiwWmCal8XF2LSKyzXga6KQNbaqBCAb
	GXnhhgvNw4IfYgzmHVC7AXUNLc9fMh2S6UB7miUwijf4ibJkbgm1fT+Dm48BCXubmlrbmqJGLBI9g
	WZ99/YG5TgMEThp7LMo4sjF69QRmG02geMVJ80BS9+bBibyz4zZpgAz8WHYXMyfoPErAThvqpITN6
	fEchv+PVJ2KI6EiuBZ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7rZe-00089J-PO; Sat, 29 Feb 2020 02:09:50 +0000
Received: from mail-eopbgr60066.outbound.protection.outlook.com ([40.107.6.66]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7rZU-00088A-Pv
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 02:09:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EswcX9gIO9MOKfpEmE8tr8SIGBkxpWDuJGKdgyiamrXop6sXYe/hJDbcSZSnwk9bQx9H9LmLaJBxi7HP6AoTtwxO19q/Qx8TW5SfPSwydSATF7fwFQU8cFK98dVAfK59NtkgtfjDpt1bzN6+/JSPYm5AOq9HqcVudCVPaXXJvveKP7+x8DSq5nklXPQltn8fpXBJdF01yMWUXD+jdT8UJozlZsuwDkHToyofqi54FqS1HNK2+Q9ZDXs3GynhJYF+F4RoFguDN5IM9lxQabdlvzTWhAyj458ZaOKRqx7MZnJuAeqve2C0FXKaw5Zta+D7z2xmV+N7Djb+RPgKDkIwTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gmz9+PMxtRKXct1rvNWi6AKGBmHyMz/31PONKaYmq0g=;
 b=S5qiPK2r9Pjr5vzgCswqPyItOIoonHVflusoxYsdnVcBAH9ngL3XeDYsos9DRxX6trSYS2/Si6dCLiX5VFVsM5fIO3kZNMamrw990BVg0KfyTjpNJOXiJFfXhIWdKPvEHL8kx7QVaSvNLqdbGxAdpGVC6pAOSeze3XxLrobICX3xGE2/o6YUXcdWFwLgxTf+y9t+m7Pm37zmjkbFxnyDHjBfAkWCQ2aqZ5zmFTGon0snyyr8DTaFyLceLP7CgfL9tR9/A14F3OrUunIa2UAj7348hkI5rvSzM0NAZhFCyIRAcaG4s6ogKmEs+vYyYXNQ02YnqZQHVQS4GptPCMgxHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gmz9+PMxtRKXct1rvNWi6AKGBmHyMz/31PONKaYmq0g=;
 b=YpGFDdLTJq5N44dRmuKZRYn3db9edzFZvZeSd19rvBNi+05DNTCBCUpjU9ir5psNu9Tqb9MyXeAyc4Fbpt9QZbxDkPAIX2PWI0s4NOLsiiMDUYd+e715JMZfldl3ORA+8VOeIcPYckghegIs8sjbcLq+xozJlT10ecATPjGaXt4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5924.eurprd04.prod.outlook.com (20.178.117.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Sat, 29 Feb 2020 02:09:36 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.012; Sat, 29 Feb 2020
 02:09:36 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH 1/3] dt-bindings: mailbox: imx-mu: add fsl,scu property
Thread-Topic: [PATCH 1/3] dt-bindings: mailbox: imx-mu: add fsl,scu property
Thread-Index: AQHV6wzeG6eIrs0DOUmKutB9M5XB8agwvRuAgAC3CvA=
Date: Sat, 29 Feb 2020 02:09:36 +0000
Message-ID: <AM0PR04MB44812BE85DF3099B1479273088E90@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582546474-21721-1-git-send-email-peng.fan@nxp.com>
 <1582546474-21721-2-git-send-email-peng.fan@nxp.com>
 <20200228151317.GA404@bogus>
In-Reply-To: <20200228151317.GA404@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c0a606d9-f289-4048-703f-08d7bcbc6d28
x-ms-traffictypediagnostic: AM0PR04MB5924:|AM0PR04MB5924:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5924EF4454FE5D311822127788E90@AM0PR04MB5924.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03283976A6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(199004)(189003)(55016002)(66946007)(33656002)(15650500001)(4326008)(5660300002)(478600001)(66476007)(66446008)(44832011)(66556008)(54906003)(9686003)(6916009)(76116006)(966005)(64756008)(7696005)(71200400001)(52536014)(7416002)(316002)(81166006)(186003)(2906002)(6506007)(86362001)(26005)(81156014)(8936002)(8676002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5924;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ElvrPTvGX5+D5L54BusgR4N4NaJxxAAGfC1I1RaLdJBhEiznipw53ZCq6htlFnIIVD7hbkhujLJfXOs2P6dhSqPqfVLxgg4qUJqy3ORPBG2xKnmS31I7MsJ0ZX3ibbYAxlBj7i3l/tN1xpFuzQ/3QkXkUoaQevFb1DNcEoOYPnvb4ptCkPyz12obB9rsv9RD0PdsAYrzFEnL4wDp2ybfDU2C72wN3UPTRNMHugwvefBOPghoUT/T7Sb9mThC2ykM9odKRt26KVPTK+U7ZhmOffztaPrx/uzx7LbsKQPE8kJZFgtYlI4v8Yr03xXEnnMUz+Ofp3RmFxR+84rjftt04IdvrknCLb3NBEVEikeSsdIvqHYVPVuMgQhcxut+FiDs0Hc5TdIg8VXcqbzhjkVPJeU71AWnFYS0sCB48/SN3KvBn6MaLaGkTTZf6ujP3aNn5qZu2Tr14kOsGgIA/0vUWH7G2dyGwWF5KqqCux+jgea951NmThbtyAaViPJEHiiqPQoXSmNQVwsvpAuvYUMECKBJ0etm2uIuTCq8mQC1UQ7Oi4Y5nQ83APjUo/INlOCn
x-ms-exchange-antispam-messagedata: WSFrCz0AF7VEQt4+TXs2sJm5y3/JkE4UwnpJXrW2d6h3rVmhUAks1oVoBL6yTj9gns6oLob6S/TZlNCScPCP6h1fV/vVThYavM0zN442lWoFtQ44W5vI+kiN8wDazUu002YE5khjCpCYnxL1+diqEg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0a606d9-f289-4048-703f-08d7bcbc6d28
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Feb 2020 02:09:36.6645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ICEp8j6x3RvzcialEB53+l2hyM2BCbzXdCMJqBXXWsZssIO1IpbdfVV3WRzCwkaKE20cJB8bZqc72SB+O0sMpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5924
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_180940_843856_CABB0FAF 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Richard Zhu <hongxing.zhu@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> Subject: Re: [PATCH 1/3] dt-bindings: mailbox: imx-mu: add fsl,scu property
> 
> On Mon, Feb 24, 2020 at 08:14:32PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Add fsl,scu property, this needs to be enabled for SCU channel type.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> > index 9c43357c5924..5b502bcf7122 100644
> > --- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> > +++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> > @@ -45,6 +45,7 @@ Optional properties:
> >  -------------------
> >  - clocks :	phandle to the input clock.
> >  - fsl,mu-side-b : Should be set for side B MU.
> > +- fsl,scu: Support i.MX8/8X SCU channel type
> 
> What's the type for this?
> 
> Perhaps update the example.

This patch is deprecated, please help review
https://lore.kernel.org/patchwork/patch/1200460/

Thanks,
Peng.

> 
> >
> >  Examples:
> >  --------
> > --
> > 2.16.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
