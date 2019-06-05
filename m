Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737273574D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KH4keytS2e5Mv1NcICUD3PD3/a5+EJwzcwN4h7NHOIA=; b=X/cYTifPkjtR6H
	s3R2kkRMYJIgV77nyenK5cJT/IyApbqybjrB0ER2oswyhDGggbgqHUFPZWhvHxFHpOu6SRkDJbnsk
	9dxUYGtxfST3/onwIko1Wfiyr/L/t46YJyWS96yv2OMVXyIF1W3wFgsEkzD/2dgSz29BUyVuULAKT
	5qUtb5TxCvx8GPJghB8ANmLAL+Idjsmn2LquKy+o5iC7jUSTLx64J4OiYvt99rImUSc0XKMNuW+Jc
	U4fKjLFAKvP1X/0CH/D9oXlTZ/B0mocczaqj8e3eV7K4v6es1bIb9tN79DVJOAhT6VcxVqlQWeQek
	vDpbGZOVJEdkW/aB6W4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPug-0007y9-Sh; Wed, 05 Jun 2019 07:00:46 +0000
Received: from mail-eopbgr20044.outbound.protection.outlook.com ([40.107.2.44]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPuZ-0007xD-4j
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:00:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HccSg1pjcRa0jcE1T/DJWoI8g/5bbQ14TUp6NTIiDrI=;
 b=o2anj2eb/cJD5rrk5FfRNzwe1Jo3iqge/vl69qkiYaLn/6QscB31EIkuBNUpbe3uHnzVDFyV+oWHm0GNmKBiBS/bNP8U7JOTSFvWjPG1UUgyrmpEyhZB5woMcqtMgMp9A8tpDS7q2vi2OOrAmNFjLVtNzpIdo0mByumU9BqagDk=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4321.eurprd04.prod.outlook.com (52.134.126.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Wed, 5 Jun 2019 07:00:34 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4%3]) with mapi id 15.20.1943.023; Wed, 5 Jun 2019
 07:00:33 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Pramod Kumar <pramod.kumar_1@nxp.com>
Subject: RE: [PATCH v3 1/3] dt-bindings: arm: nxp: Add device tree binding for
 ls1046a-frwy board
Thread-Topic: [PATCH v3 1/3] dt-bindings: arm: nxp: Add device tree binding
 for ls1046a-frwy board
Thread-Index: AQHVFIg0QNRaL3LFI0OeuwRCFx28W6aMqHwAgAAF/gA=
Date: Wed, 5 Jun 2019 07:00:33 +0000
Message-ID: <AM0PR04MB42115435AD01AD6481C9D0B980160@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190527123404.30858-1-pramod.kumar_1@nxp.com>
 <20190527123404.30858-2-pramod.kumar_1@nxp.com>
 <20190605063449.GG29853@dragon>
In-Reply-To: <20190605063449.GG29853@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b980fd1-edd5-4c32-f807-08d6e983815b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4321; 
x-ms-traffictypediagnostic: AM0PR04MB4321:
x-microsoft-antispam-prvs: <AM0PR04MB4321EE0F54A312D44C0ADD4480160@AM0PR04MB4321.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(366004)(346002)(39860400002)(189003)(199004)(86362001)(6636002)(26005)(74316002)(5660300002)(6506007)(53546011)(71200400001)(102836004)(71190400001)(73956011)(66946007)(76116006)(66556008)(66476007)(64756008)(66446008)(53936002)(305945005)(7736002)(6436002)(99286004)(486006)(9686003)(52536014)(476003)(478600001)(7696005)(446003)(256004)(44832011)(76176011)(11346002)(55016002)(186003)(68736007)(14454004)(4326008)(3846002)(6116002)(110136005)(54906003)(66066001)(229853002)(6246003)(8676002)(81166006)(81156014)(8936002)(25786009)(33656002)(316002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4321;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: S+B07aN9+xI+il/Rey/bivbsRBkyjdigNbMv2KWfwv/IQ9q2MwU73DuhQc+VLXqqJYdnHjbP8XJTExR8CSQQ43lCJ5GwGwV/1LG5qKEK3oGyjxdCVRk4BciDaPexxg20y6aFz3JS67SZNdlqNrJB5LnyK27tU0SRMhWiSDGl/q8nPpgUsEcE/2i926VOiwc4z+DcVt0gSia4bWQxuBSZ9e7Wt7LTZ6eC2//jjqS0aciBaGBPr0TTU5oyF4luaogBU/y4WXDfeodRZEgk5j7ELcOvsAJTU70FSXpHXz49P0IElugFOit/i1cIJzJQDYgkccnI9rig+2Ev9gRn7Zwlug5EOTaJgRdg4n5RITQHWB0hIws4wD6SE0Oi3atyTE75q8qvIaSCkDyBbW03glqgl9OpoAHYWtqAJJJtCSWFYJg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b980fd1-edd5-4c32-f807-08d6e983815b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 07:00:33.8110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4321
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_000039_184550_09256FDB 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "Michal.Vokac@ysoft.com" <Michal.Vokac@ysoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pramod,

> From: Shawn Guo [mailto:shawnguo@kernel.org]
> Sent: Wednesday, June 5, 2019 2:35 PM
> Subject: Re: [PATCH v3 1/3] dt-bindings: arm: nxp: Add device tree binding for
> ls1046a-frwy board
> 
> On Mon, May 27, 2019 at 12:32:09PM +0000, Pramod Kumar wrote:
> > Add "fsl,ls1046a-frwy" bindings for ls1046afrwy board based on ls1046a SoC
> >
> > Signed-off-by: Vabhav Sharma <vabhav.sharma@nxp.com>
> > Signed-off-by: Pramod Kumar <pramod.kumar_1@nxp.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> 
> I cannot apply patch from message using 'Content-Transfer-Encoding: base64'.
> 

Which server are you using? Is it in the whitelist for using the specific SMTP?
I remember DN server does not have this issue. Maybe using the wrong one?

Regards
Dong Aisheng

> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml
> b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index 407138ebc0d0..09ff1999ce96 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -241,6 +241,7 @@ properties:
> >            - enum:
> >                - fsl,ls1046a-qds
> >                - fsl,ls1046a-rdb
> > +              - fsl,ls1046a-frwy
> 
> It might be better to keep the list alphabetically sorted.
> 
> Shawn
> 
> >            - const: fsl,ls1046a
> >
> >        - description: LS1088A based Boards
> > --
> > 2.17.1
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
