Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485F911219A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 03:52:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MP0yD4w0PVa4U9rPggDiJh/zjtkDor3COmgbrXY6WWQ=; b=mqbeSTzbzdrPY7
	d8JXUqEu3pjVMbKCHArKhsy9vYzGceErVq3m0s2OF/V8JsGZekddyl96daPx7YdTR/OpQINl4FuzB
	bhY+qvm6Y1d6LlWEgqSuGHuU4nDT5h6Q75oP3e3vqthtIe9a7suF2fXfmJDGH3sUNAGkccq5hmIju
	iWXtGdFQ0/5YRpP+C1xG8m0L6aDFJpGFk7KZ7nPuC6xSQSYbHTwzkJr1hBh5wjxAMPCqBpAH9JiJT
	p1AXx7J0hEX7ndZJbFFZVXpYbW5QJZK4NjecfTf65S9o5xwuhkXoEH8/70ezgUepgChGyeFjJkRCP
	AvIoSejL73n/kFGOKqIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icKmA-000858-8Z; Wed, 04 Dec 2019 02:52:26 +0000
Received: from mail-am5eur02on0608.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::608]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icKlz-00083Y-WA
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 02:52:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nuYWeFMTXxYL9xdXgm7pwoKOUZgI0I6eLrs/0+qGE84/QinbnTxfxecWpb1P/vmUppBqwwJxw8Pzw45U+B6Nq0Hz0Ktbk+yHC3SMQ/aeo8k5JucD3AOkWtRnxCU1QzlHhkkZfkwE9MVT9nXDEc1h6J/KQikIC32jF0IWhxwyYB1Y+saDcmquPwaKcZXKo7zDcFneSYN3qwGc/cYVxUQrgz7dttyRqLHyRbtt9vs4eFiVhYAyKBWguK937gcJyTFIpuoEeBGbJUViqeqgtAh8MPq9TPW3uMLSlHtNyH7SIkEKz735k/0NUuA3bkw+ZDLtHoE0HL0Ez3duMBfmoAfifw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FimZrBJugofFf5K5rxmRFpLjqQZ9nFzMAljErApUkFs=;
 b=Hnw52gqZQ9RRyzvBsyT5wPBZHqkKXK8PaJ0F+MIG3yRfPG+eH44azx/7HRqZmiT8/YLb6W3Q0ehOTnDCOWVV5GreCEINQgRu7zCdojdT6NSKuy/WXKRp0TO//i8YNH6fvTRei+h5J37EpVlxkSjNlU8E2ueS0ulca48i3ufDCmgvUZ0pPDvVgDVvotxbgb5yPbK5x59jcjZMjn2rghq/rjgvTJiDATRAOcjdeFRsk/5iBBv1QMg1Zk9FzmM0kGQpO2HxHTm4ao0wXA1llQzvudcUy2A794SrZ7ObvI2XYXB/tuob548vAqEAAoWq4Wimk833YjS4adxsCQpWusr4Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FimZrBJugofFf5K5rxmRFpLjqQZ9nFzMAljErApUkFs=;
 b=MxQM141xE5pPUEAjKKxq4is1lZCCKrjkl4o82vKItEUdsO2EOIbxPr19fGgFA4VabWUKn9bZWp5psVEK5/fQukle/0PBgwXt+0ehJVC7NYWHJaIOlCfXWITbyR3zAlSi8PHqf0ne/+trBIGi0d/Z2Z7n2Mnm7szbTjXO69gQBm8=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3847.eurprd04.prod.outlook.com (52.133.29.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Wed, 4 Dec 2019 02:52:11 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::1dd5:831a:28cc:d5f3]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::1dd5:831a:28cc:d5f3%6]) with mapi id 15.20.2516.003; Wed, 4 Dec 2019
 02:52:11 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 3/3] ARM: dts: imx6sll: Add Rev A board support
Thread-Topic: [PATCH 3/3] ARM: dts: imx6sll: Add Rev A board support
Thread-Index: AQHVlIduoosfFYvtfEafWXvtkEL5lqepbwGAgAAA5iA=
Date: Wed, 4 Dec 2019 02:52:11 +0000
Message-ID: <AM6PR0402MB39111817A837FD03558B0E79F55D0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <1573033650-11848-1-git-send-email-Anson.Huang@nxp.com>
 <1573033650-11848-3-git-send-email-Anson.Huang@nxp.com>
 <20191204023920.GO9767@dragon>
In-Reply-To: <20191204023920.GO9767@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b18ad85e-c2a2-4175-e1a5-08d77864f5ef
x-ms-traffictypediagnostic: AM6PR0402MB3847:|AM6PR0402MB3847:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0402MB384719F2CB6260410AF5B594F55D0@AM6PR0402MB3847.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(346002)(376002)(39860400002)(189003)(199004)(52536014)(64756008)(66556008)(256004)(99286004)(71190400001)(66476007)(7736002)(86362001)(66446008)(6506007)(7696005)(446003)(66946007)(316002)(186003)(8936002)(81166006)(81156014)(102836004)(11346002)(26005)(76176011)(76116006)(8676002)(71200400001)(44832011)(478600001)(74316002)(6916009)(4326008)(9686003)(55016002)(305945005)(54906003)(6436002)(25786009)(6116002)(2906002)(229853002)(6246003)(14454004)(33656002)(3846002)(5660300002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3847;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pu7L3Ac8g099qmV4fZ5Ml3MCjY92TWi6AOnVgDPyyqxFOxb3dvgDtOZUVhVaPHvttz4EK8Tuq7VHF1O6MKCpdsz8xe77wGQgC31LvDx8dCmICnqWpXW37NcmShHhnj+uNER9nSkEUc7XT5QpA8772QYZdsXlmc42yIw1qBjdHHAZWMfDwnJFUdRWtnAyaX1nrXvVec+upxE5WTYw8rf1j4RGrDRmNMaqbGt/bYgq7cbCeSqMIgRNyCgPWveALWZp0uZgleYSEJbzW+JstvFNd+HMyYKMYYnhecp/r0lKffIKyGh9C2mTkI5OhqipLLsrMw089Jz5PpoWvpDLrOKLGOrf6s+BVTMa6Toxj9ar8t9BGhyMtPyHYHi0PC2svimc4QrN9IqwG90rx34zAF+SRCAnR6SZLGGEUfmfBv0s9IBaVK3XXeSASOze6vgONPgT3X8OvnGDC4zZ+wyS5n0iJ02CVmG06zArD/tomfi1nwVkMnD1greFl+S6Ct7bmod4
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b18ad85e-c2a2-4175-e1a5-08d77864f5ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 02:52:11.3926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jGTT0nzUu4yvSHOvq+PeIkry9DepUVAfIzEr+VKwzR0lOfPZzuGMTh0NlZV4TVLIsESM6JrFTBUBdm3vD5YlQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_185216_235981_23329950 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe07:0:0:0:608 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.9 FORGED_SPF_HELO        No description available.
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



> Subject: Re: [PATCH 3/3] ARM: dts: imx6sll: Add Rev A board support
> 
> On Wed, Nov 06, 2019 at 05:47:30PM +0800, Anson Huang wrote:
> > i.MX6SLL EVK Rev A board is same with latest i.MX6SLL EVK board except
> > eMMC can ONLY run at HS200 mode, add support for this board.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  arch/arm/boot/dts/Makefile             |  1 +
> >  arch/arm/boot/dts/imx6sll-evk-reva.dts | 12 ++++++++++++
> >  2 files changed, 13 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/imx6sll-evk-reva.dts
> >
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index 71f08e7..3845bbf 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -557,6 +557,7 @@ dtb-$(CONFIG_SOC_IMX6SL) += \
> >  	imx6sl-warp.dtb
> >  dtb-$(CONFIG_SOC_IMX6SLL) += \
> >  	imx6sll-evk.dtb \
> > +	imx6sll-evk-reva.dtb \
> >  	imx6sll-kobo-clarahd.dtb
> >  dtb-$(CONFIG_SOC_IMX6SX) += \
> >  	imx6sx-nitrogen6sx.dtb \
> > diff --git a/arch/arm/boot/dts/imx6sll-evk-reva.dts
> > b/arch/arm/boot/dts/imx6sll-evk-reva.dts
> > new file mode 100644
> > index 0000000..7ca2563
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/imx6sll-evk-reva.dts
> > @@ -0,0 +1,12 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright 2016 Freescale Semiconductor, Inc.
> > + * Copyright 2017-2019 NXP.
> > + *
> > + */
> > +
> > +#include "imx6sll-evk.dts"
> > +
> > +&usdhc2 {
> > +	compatible = "fsl,imx6sll-usdhc", "fsl,imx6sx-usdhc";
> 
> It looks odd to me that we need to deal with a board level difference with a
> SoC level compatible.  The USDHC compatible should be solely determined by
> the IP programming model, not the board level capability.

So how to handle such scenario? Current usdhc driver uses SoC compatible to distinguish
different functions of uSDHC IP, if some boards can NOT support dedicated function due to
board design regardless of the IP inside, the easy way is just to downgrade the SoC compatible,
or need uSDHC driver to provide some DT properties for such case? 

Thanks,
Anson 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
