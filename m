Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E621355C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWJqlGVU2curlYs9rSMmLPjef2BP0rVuV1m4eTzBH3s=; b=UYIcp5+HWGX+Bf
	0Erd8+mYnop3bYn8epzrGr8PRDyBzNNhYARqeguL/81CGSp4rzi9cTv05FOy9OzKcrv2q5Ll0/Fje
	29oTJw+/Se946gA/h04qGmjWOarxASwAf0a4mYtOwpLbkadbvgXxmH+hetip0w4l/YHzFUMY30PoN
	YbORd8hndR2GpqvCfhfNbNM6nOCgFdBD4VspTAq22IOEv8EyWomiAcaUqzab4pyQIJeBoptmeTdRy
	zSPo5M/Qq+i4w0g7qVuDRRBxYtSzc8NZMmCX3bACBjuROBhah0NYdb7s8gALaDqP+cKcMSydUO38p
	NW0Urgs6AREEeozOHEXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipU7Z-0001Mp-3c; Thu, 09 Jan 2020 09:28:53 +0000
Received: from mail-am6eur05on2043.outbound.protection.outlook.com
 ([40.107.22.43] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipU7R-0001ME-OW
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:28:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XZDv87qtQtpFi6G+7PgwyaKrHeganXg+SMZ4OT+lFh1IRCFOicB4y8vjW4n4BKyLlcro7JIxPNDoDK/9IlbeQZcGzE6JW/Z58tL6SkJRm2mkC8ub+bp3335QLJpMH5ACEPW/dCmFdkeGxL8j3hQmIzsiMy5gwUPWfLyxOSJfzhkwj3mWVi+mP/yZXinPk3uXUnBL//CEx3dmK3VwGT+jp0yoER4t3L+szQtl0GjgA5FnGjXplZKKi4NhtJ5Ln1NUv1/2nUmnvvLT0f3rTn/ISxh3vny0YSx+v9x3fn4B2GwPn5pmHn84AXmr6qaIr5df7GxuFfRc4zTcxnlpc5T6Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/nB/HfAO3wEXRfHhM/7aUCtcVjiQqSrdig+6cNj0JAM=;
 b=jScsGqFlE8l1UYc29uAL/TdCgb935wSFwjcDk8q5nt5Td9uV8xVhb+POkY+qdxRhn5a5qXHoa+srukM7OdeAdlwdXUEkj8eVIzILn34xYzBion7SKmot9vRqbNj5cnM11/lW5XKdFULE5RgZh27WhHnZsBHH8V66/AUdDOhTLJG16t7NpQ9TECUMl84tnPDPQcowtxknCw/gb426p5LX/j/jdOyLOs4kdL9ci8viX/fAl55kHDzBgjnF29vJpi+n3WtEWlMcZjUKkj6QfG75CrEZ0gQdvPdbnhoS5ChoN+tL3KX4UBw5ZpjLNMwqhwx2Bs3P7wIgMEHNuDpY8enrWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/nB/HfAO3wEXRfHhM/7aUCtcVjiQqSrdig+6cNj0JAM=;
 b=EJZX9s7dR9z9yXC7vdCq1naVdLKcM1yBm0D6QyClvZ/kvYO5L/SKhLRSvMbcAD8CbHKxalqZNZzYPvWQH5M22tP0ljfXHQ2QPHBJq/s4CVgUeQYpdbcrl3+h6kfggfb7XxenWaIsxHfhsQYwJsn+2P/asifIo8WGgmnPr+gIEOM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3867.eurprd04.prod.outlook.com (52.134.65.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Thu, 9 Jan 2020 09:28:35 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f%7]) with mapi id 15.20.2602.018; Thu, 9 Jan 2020
 09:28:35 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect power
 supply assignment
Thread-Topic: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect power
 supply assignment
Thread-Index: AQHVvrKzedU6q1PoEkWGPbnH76QqjKfiCd2AgAAE9sCAAAzggIAAA3owgAABkZA=
Date: Thu, 9 Jan 2020 09:28:35 +0000
Message-ID: <DB3PR0402MB39167704253BE1FD4E106766F5390@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1577670071-1322-1-git-send-email-Anson.Huang@nxp.com>
 <20200109080600.GH4456@T480>
 <DB3PR0402MB39168406714A06869C33D037F5390@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200109090950.GJ4456@T480>
 <DB3PR0402MB3916EBF00EECB42C1F4E2D40F5390@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916EBF00EECB42C1F4E2D40F5390@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 110f144a-0949-445d-f04a-08d794e64d1d
x-ms-traffictypediagnostic: DB3PR0402MB3867:|DB3PR0402MB3867:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38673F8BA285B19A77CF4D55F5390@DB3PR0402MB3867.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(366004)(396003)(376002)(346002)(199004)(189003)(54906003)(71200400001)(66946007)(8936002)(316002)(76116006)(2906002)(5660300002)(81166006)(6916009)(81156014)(8676002)(478600001)(2940100002)(33656002)(186003)(4326008)(66446008)(64756008)(66556008)(66476007)(44832011)(7696005)(7416002)(55016002)(26005)(52536014)(9686003)(86362001)(6506007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3867;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 801B/THufiIxCoMGKOG/O9zuVQytLQv9yvFRgW3cMxngHqpTgPh2dzq+y93BZF51fgVWlPca/aElOD35Q8dzQefKPPqDLRNpn9EipkJgp9Xn1Si0yvY+ObXnKHiRbLH2ZJ49NYtwjRLHhoQZ52WxHDBVGKpm+GalKyDe7ii83InnefE9ImXuUwFva2KQ/0dD3OAnbxtvE3npx5vDbYhPzJDLJwSO8Ytfy8Fi7otGt5+fL/UTichctjDYNEbnw7uvdiiJ+V0EnLncsN0qOGYgyzuoFUSLlnyDziTHibXXQTblwg3FPqFLB2+qV9GrsUTViqSpToU7vrvzUmVTQTCSSTYMx1v4iL/Bg6xxHy5AdAib4tcSc0f4X4jzMfu41Nk7UlEHflA/Mv9dD3kF9eO95oMPjvi+5uFj43uUKXObl5xmEo/bPSlOLkL5v/Ggj6N/ZHuK0YskEYenwmdtry5eVINf14cAZJSr0g8KLRhXSlSAJGNFlCRxBkV8MuGQ4YdL
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 110f144a-0949-445d-f04a-08d794e64d1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 09:28:35.1862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZJgbv0cfBirV/dFH4lB8tvTttF8P+jxYbGF5dCuVquS02gXZf19e5r9Nt3DWzw4umhIFJtLUO9HQpwudye8VKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_012845_799522_CF4C1D50 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.43 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "andreas@kemnade.info" <andreas@kemnade.info>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: RE: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect
> power supply assignment
> 
> Hi, Shawn
> 
> > Subject: Re: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect
> > power supply assignment
> >
> > On Thu, Jan 09, 2020 at 08:25:03AM +0000, Anson Huang wrote:
> > > Hi, Shawn
> > >
> > > > Subject: Re: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove
> > > > incorrect power supply assignment
> > > >
> > > > On Mon, Dec 30, 2019 at 09:41:07AM +0800, Anson Huang wrote:
> > > > > The vdd3p0's input should be from external USB VBUS directly,
> > > > > NOT
> > > >
> > > > Shouldn't USB VBUS usually be 5V?  It doesn't seem to match 3.0V
> > > > which is suggested by vdd3p0 name.
> > > >
> > > > > PMIC's sw2, so remove the power supply assignment for vdd3p0.
> > > > >
> > > > > Fixes: 93385546ba36 ("ARM: dts: imx6qdl-sabresd: Assign
> > > > > corresponding power supply for LDOs")
> > > >
> > > > Is it only a description correcting or is it fixing a real problem?
> > > > I'm trying to understand it is a 5.5-rc material or can be applied for 5.6.
> > > >
> > >
> > > It is fixing a real problem about USB LDO voltage, that is why we
> > > noticed
> > this issue.
> >
> > Okay, please describe the problem a little bit in the commit log.
> > Also squash the series into one patch, which is easier to be merged into -rc
> as a fix.
> 
> OK, will send a new patch with squashing them together, but will NOT have
> the fix tag, is it OK? As the fix tag are different for each patch.

Never mind, I think I can put all 5 Fixes tag together in new patch.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
