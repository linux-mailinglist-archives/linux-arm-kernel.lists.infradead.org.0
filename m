Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E10A812E3E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 09:26:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3kuk0kEOg/kx+kXQGwuMLJWrjgMeZY8Tg40LIhDd0A=; b=j078TmTU6mVIYQ
	e462/0IE/00tCySlMUm4IGsfPs32jJA9wfSzagrAO7Eg9iPecqweoO4D6u4oIE5R8dbKoNpaKCmot
	OaaP5UzIx1CATuF3l6BvdeOOw0oPXqeHMUV1GfML9vdZ8QsVB8eKij//WxNkhsLSi6c7pQ2/AqoG0
	wQ9wCLDf9sLMgQKswHel3FP4zOFFshL0F4kwaSSO6YB84grMVpx5ypSQ23xUtAKoxIaQvkO6fnYNV
	XKi0QfXRfgU0CmKja/l6j7L/m90EQwiNtwpq2q3Ot/sovsWQG/ryP2oDvPLdfUQvDysgbZrFULRtT
	Yc6Kqr2TEuF325L6Jflw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imvo7-0006dz-WC; Thu, 02 Jan 2020 08:26:16 +0000
Received: from mail-eopbgr60047.outbound.protection.outlook.com ([40.107.6.47]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imvnw-0006dB-2e
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 08:26:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QoKHwfI+f16Nt9MQpZXNrGLuOOqaACsrTPM815nMyspVK6zrnISocE2dkwlOsZeYyA4D7vY+JCJ40p0C3/XCrB0vaUkZGOV+8akcBY1Q+VVyN0RBc67f265V1ATsDW+ymJW323niC6NhFVHHm0ho/NNNdwwcLhdaM7+BjXBwp/pFWujbKTQxx9mAly/ySgjLLGHbFra+o4AqiehgypfWpRM9dcXLIADYjKaekn5Z1jqJ4D3D1AtvVQVx4i2iiMNK0rr/zX8+rM2TqG906eGenh4lXyffz9+j1EPXqnX3xkLQep+0MUg0iI0VYJmDGuDhEY0zvJNecihWfkAtgab2Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SSJMzro42Dt4jZBptFxx+TKhBDY6zCDd3SMZJ2U29BI=;
 b=IlpiZvGh11kHMh9q0Dj5f53sipMENWIt7uWRVwOH5sMeQdmEhv1IsVw3zyJuxortltHmoUV0H/OFFsg463zLSYyVqyoQP1JusiYcO9onTAJW5hiX83XAAZWg6OLVRz13OGYsD0cR8r5PL0rN2x53JvzaBEyqPMgQGlsF/osATHYPLUuK0ILSAcgnVd9eY9ZrtlnjJL/JRidezPNj+Q8bdYCMHzecabKGa2RJiEgUoCNaCTzx9Ue/vv/rKDpXA3WWATvPFdsWMRttblMVV96tuBynWTvutRuX7ADtzohtmZ7K1ckfLNJbOjJwZq/O5E9gxpWmcAVnVLDUVwUfLfav2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SSJMzro42Dt4jZBptFxx+TKhBDY6zCDd3SMZJ2U29BI=;
 b=qpnJOBgqze44/YXE707JQOmGSANgKFCIEXi2kIT43pySip7sdjvr4IutFk0SEzfGwm8kDuGtqkVyYfriMigL6Atpi7IZtYSs+1gj7Xa8dB3RfFAADo7YGi0QQEmz+pXw+ZJ/IvS/MQFsrxKfJoVJvHo3cfwBevCG8RbcIb8danI=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6418.eurprd04.prod.outlook.com (20.179.252.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Thu, 2 Jan 2020 08:26:00 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::b9bd:470c:5f9c:1bfd]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::b9bd:470c:5f9c:1bfd%7]) with mapi id 15.20.2602.010; Thu, 2 Jan 2020
 08:26:00 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH RESEND V5 00/11] clk: imx8: add new clock binding for
 better pm support
Thread-Topic: [PATCH RESEND V5 00/11] clk: imx8: add new clock binding for
 better pm support
Thread-Index: AQHVnUJfJlMJ/jCUUkSe2HX97baBSqe0uPgAgCKYlZA=
Date: Thu, 2 Jan 2020 08:25:59 +0000
Message-ID: <AM0PR04MB42111A436D719D321ADB479380200@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1573993519-14308-1-git-send-email-aisheng.dong@nxp.com>
 <20191211080525.GS15858@dragon>
In-Reply-To: <20191211080525.GS15858@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b0b0d60b-4ebc-42a0-ce7e-08d78f5d65df
x-ms-traffictypediagnostic: AM0PR04MB6418:|AM0PR04MB6418:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6418A257862DDD96BA341B7F80200@AM0PR04MB6418.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0270ED2845
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(366004)(39860400002)(199004)(189003)(54534003)(66556008)(66476007)(33656002)(478600001)(76116006)(44832011)(86362001)(4326008)(7696005)(71200400001)(66446008)(6506007)(66946007)(64756008)(110136005)(81156014)(26005)(8936002)(52536014)(186003)(316002)(55016002)(9686003)(81166006)(8676002)(54906003)(2906002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6418;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9VIiaHJVgqdYEbHoNIZniTno8xCawKJj9jShKpjazoDWaYze1VO/C8ON2Aa8GgoAo8Z8ovtzdspRZ/Yt0G0PD0uXL4Yijy3x71igI/1N0de0RGkP9A5FlQ0mlamk+7mSKNBDQ9+bhbxDz10DmqxyymP/m7EdkCVfh3iixaBb+QgZNeOWxhRAmtICx3BslqJq8FqHGmMLv26hxtFyt1wq1fNO6g1cdJpPfdn/qKUGehoHlg1GKPpWeq356VuFrw0MeQFqgi+jXVINRJ+66Egbh3mzEOX5GiYPcZTIzvezrzkZtkmT4akR+wxpR+42hAdbiGl98wfKIM8E33Dnr+cD8DycfWcS2T78q3UGJYZatRo2Lcy3zxpyHIlE+FxOMElLO8SGERYKeQL15y+p1WxL4k7qbwErQZfuD8PVvV0pFtIieEUW0Hl98Pz7MwhsO20J+wxPu9WgkZIv0mnI15MT/Wf13Puix1WmR7wU3VxUrRb9TmPFFmVfb/Y8QDGTZ4+/
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0b0d60b-4ebc-42a0-ce7e-08d78f5d65df
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2020 08:25:59.9161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a7P/lZ/pJojatBEd0YseI8Tz0xK9QxtRmZlCvzXGuSl4sWO45q4DzkFKLVT9SHVzaeZ9qPgADKdGhAJC6kqY3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6418
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_002604_280477_F3786618 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.47 listed in list.dnswl.org]
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
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

Could you take a look at this?

Regards
Aisheng

> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Wednesday, December 11, 2019 4:05 PM
> 
> On Sun, Nov 17, 2019 at 08:25:08PM +0800, Dong Aisheng wrote:
> > This is a follow up of this patch series.
> > [V2,0/2] clk: imx: scu: add parsing clocks from device tree support
> >
> > This patch series is a preparation for the MX8 Architecture improvement.
> > As for IMX SCU based platforms like MX8QM and MX8QXP, they are
> > comprised of a couple of SS(Subsystems) while most of them within the
> > same SS can be shared. e.g. Clocks, Devices and etc.
> >
> > However, current clock binding is using SW IDs for device tree to use
> > which can cause troubles in writing the common <soc>-ss-xx.dtsi file
> > for different SoCs.
> >
> > This patch series aims to introduce a new binding which is more close
> > to hardware and platform independent and can makes us write a more
> > general drivers for different SCU based SoCs.
> >
> > Another important thing is that on MX8, each Clock resource is
> > associated with a power domain. So we have to attach that clock device
> > to the power domain in order to make it work properly. Further more,
> > the clock state will be lost when its power domain is completely off
> > during suspend/resume, so we also introduce the clock state save&restore
> mechanism.
> >
> > ChangeLog:
> > v4->v5:
> >  * Address all comments from Stephen
> 
> Hi Stephen,
> 
> Are you fine with this version?
> 
> Shawn
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
