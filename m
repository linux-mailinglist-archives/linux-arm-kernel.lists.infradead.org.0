Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADDB2ACE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 04:07:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1XNVNFhxa1WjPd14hbOHk6UP8V0MRsW9fIjVLahNeo=; b=rPGkjgN3Y6KiMu
	OUNL+Ry5ssDbK7rMuqIgw/m4Bt96Zq5Ir0krdD7JeZr9sNfeo9QW47ENH8E0tzeiXmdgSys3fwW67
	Yw6RK/kk2DVJUGT8QF27i6jLGPvdPAiCYJK9GXPI5IL56WxUB7RZZsJOUPyn5u89SF8KvCxcL++6w
	zAjXiBSZ44Q62OgGPWob56ZAdNNtCyMbzFnh6V++jCOUIgj1zC3E9H4dwjHs/2yTja6BuB5fT2dyz
	q1yXpMcxTUSVe/Jzkio11ZHeDIHApgEr1b3h8/HjpKZojcpaYqNtF3EZ+i6oUoEm/YmUmF9ATPHBb
	eEm/O8GISP0Pu4urUPWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV52Q-0007ye-DY; Mon, 27 May 2019 02:06:58 +0000
Received: from mail-eopbgr60059.outbound.protection.outlook.com ([40.107.6.59]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV52I-0007xZ-Ke
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 02:06:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=126Nm8RIhXX6zkUSjEAWjmImR6xdGMacWsz4U54OXHU=;
 b=g5KixgI3HmliMM2bZ+/b5+nhBH45xxnTVY5xLu75snhVDMl9ODLt8w/7JKB9DZaR9wuakA2Z/n97pGzrEwpq6GxxWFcr7bxAYlkD/O7Y8QnoBI1DbgoTgtojjjHHpu+vm8qZtI6w6+6hB4diDMowQY8lKq0R6nrilY0e9S80F70=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0SPR01MB013.eurprd04.prod.outlook.com (52.133.41.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Mon, 27 May 2019 02:06:44 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 02:06:44 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: RE: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVESt7O8zUR8j7k0mzGFqyu7YBg6Z+PE2AgAAAU9A=
Date: Mon, 27 May 2019 02:06:44 +0000
Message-ID: <AM0PR04MB4481E92EFFD69301432C9D23881D0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190523060437.11059-1-peng.fan@nxp.com>
 <CABb+yY0r-njq2OGVP9xAh=-wgib5zk8XbS-vdY1jtz2R=rT4Nw@mail.gmail.com>
In-Reply-To: <CABb+yY0r-njq2OGVP9xAh=-wgib5zk8XbS-vdY1jtz2R=rT4Nw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5530f8c4-4d7c-47bc-c9b7-08d6e247f781
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0SPR01MB013; 
x-ms-traffictypediagnostic: AM0SPR01MB013:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0SPR01MB013B2035595233A9120BD70881D0@AM0SPR01MB013.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(346002)(39860400002)(366004)(199004)(189003)(54906003)(76176011)(7696005)(15650500001)(66066001)(5660300002)(53546011)(102836004)(6506007)(186003)(11346002)(4326008)(256004)(81166006)(1411001)(26005)(7416002)(44832011)(6246003)(71200400001)(71190400001)(8936002)(446003)(99286004)(486006)(53936002)(8676002)(476003)(25786009)(81156014)(55016002)(9686003)(6306002)(6436002)(14454004)(76116006)(73956011)(86362001)(52536014)(229853002)(7736002)(6916009)(68736007)(316002)(305945005)(74316002)(6116002)(3846002)(2906002)(966005)(33656002)(45080400002)(478600001)(64756008)(66476007)(66946007)(66446008)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0SPR01MB013;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rpR/wsKoZQ/ZTUQSCAIrhsg9SRRgPGjXuFRA/HR306opNFAAtVdHB8VPNmAOp9G1CVA+Q4OUJVzFCi8cZVElOZbk6JOFwR2nrA828vCO1Uuq9EIFL1AJiQqATc5XCppgeoktRBNPpGKV83zNFxlhgMK7yi27JnTAGAy9B0yTy0lsqp0UEqpnHw4VAGzC+ZZXw/3gwjPfpU4E+RtGY6yGpRIVMXw4jSb6p7BvjUND0iNZuN9G11k/H0Ie+aFzI+wSLgKuj1B1xwVquJCCX0/VdrDb+WBPxif7ON0ztlewsGMHLarL1zzBU/wJVYDAYn3ay+uLLJtcXsCqoJsFGj9oRSXJDWlqhQ6JPxk2/pPoF+zTbpnamvvT1ALVTQe+8pBE4ZH756HAfsBpaXsZgqWXre9DBqP03wWyylh3nwj6zBs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5530f8c4-4d7c-47bc-c9b7-08d6e247f781
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 02:06:44.1667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0SPR01MB013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_190650_679681_793CF264 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jassi,

> Subject: Re: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
> 
> On Thu, May 23, 2019 at 12:50 AM Peng Fan <peng.fan@nxp.com> wrote:
> >
> > This is a modified version from Andre Przywara's patch series
> >
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.ke
> rnel.org%2Fpatchwork%2Fcover%2F812997%2F&amp;data=02%7C01%7Cpe
> ng.fan%40nxp.com%7C40bb1632f99248f24e1308d6e2467c8b%7C686ea1d3b
> c2b4c6fa92cd99c5c301635%7C0%7C1%7C636945189705620796&amp;sdat
> a=v6mLyDKLO8NaBMlX6XlOCtOs2C41TuOG9yFDY%2F7q8nU%3D&amp;reser
> ved=0.
> >
> Can you please specify exact modifications on top of Andre's last submission?
> As in "Changes since v1: ...."

Since Andre's last v2 version was sent in 2017, I thought no need to add that.
The changes are mostly.
Introduce arm,num-chans
Introduce arm_smccc_mbox_cmd
txdone_poll and txdone_irq are both set to false
arm,func-ids are kept, but as an optional property.
Rewords SCPI to SCMI, because I am trying SCMI over SMC, not SCPI.

I'll add the changes information after I collect more comments in this patchset.

Thanks,
Peng.
> 
> Thanks.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
