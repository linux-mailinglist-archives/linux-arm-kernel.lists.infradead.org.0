Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326FC15251C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 04:07:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wf7zR0AU/GtKapdsyqq8WKpaqyIW+bL1iL0Ckmu0hE=; b=ZxSH2UWVryiXYj
	9z/T+D9smWcq5EjZYi+/A0cPRsEvisXnSYvurmgF/D1HGiTMfY3H8Lf57ljBRV8NHZ3gsqqWyySHV
	cZuewzfZk0DILesnfawEracv5CL54VUc6p1NBc49Xq+fgz7Zeq3cOelCq322iRQkSXbki7uZKcyAN
	2kQ6k/2+bJWo7V3Rw8tG/mj0ozAcSc27ouIKYqh+34a7/NSojU/nSAvVvyn4CWHj6keepVJSo9b/W
	9oGcMO712l8kqSkgVtnl9VzIr3k63WUYpCxiMKCFKqk7NuP4hqr2HFm8415pSwpfQ2h/4sPSoGRw1
	NM/J2W1P36cJcYCsiA2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izB27-0000Bw-CR; Wed, 05 Feb 2020 03:07:19 +0000
Received: from mail-eopbgr60082.outbound.protection.outlook.com ([40.107.6.82]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izB1z-0000BU-Oa
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 03:07:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TTpvX75eMP89GGv8HLuvP7IKCh6x0v+5RpYg+jzxLI+RpAHi20LMz/f6JNAIjihPvs300q3dTpX3f4obJi3WrX7ZSrWcUGR10DNSvVWCGxgo2XJfEb53C8XLtJQ/AJiWO7P0vIHUpgHO0va+B1ByYig6kqBBC9OdVHqH3+1v8D0RLbamUPDSX6XYCAb/6TXouCJSXX2v6UZ9adIPFSnW7wR7+sQKorbaY4Gc3CMtcPjtvI9FOygr1QWhkq7A7vX319B+WFd/jGBUAS4DxjmuWIrsBrSpjV/uEBqFZVYmPJMASxSWpSE4PAbRMVV8OECur0klrCV6DNXCiFDWP9qSjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=11rOZ6ub1Ypt7xsleDLGkDFWVYHUW2rojAmRp2oYkoo=;
 b=l5y5cTpM0uFxvQlZMQNE6q0IjCfkwmIHcWwtJgNzgmQeQwZzJ4xtVn/YZIJtSHqmjl2+DRkHDVe44VYnw31DRBJxa6Rqj1mSN4Bmr1KCCM+OlW9zgMGLmY5NVJo5hEnzBsklbP8psxNv3MeFp+xA60KaEBPS5Uw94Gij3Eb7sK2CW9gc7p7WpYYkVm99CEe8FM/Cnr/TrPEMuJqw38dKL9MI2kDAWntBXSGbWBtM6QGmuZyC4yONaal3BAWws8FZFYSitnMB8wCHxHUMwTyOrb3RoPm1cV9dn59AqcrwbbQOJKJFVFbNb4oC9JYtkU0hor/1+YnCfSi8jcO8gStnBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=11rOZ6ub1Ypt7xsleDLGkDFWVYHUW2rojAmRp2oYkoo=;
 b=kxWtPX/KECd0qQhvm6wDW4C2YEh4snD6Fu9BaDkT4xSgnBiAZH0NrP+XPTwaKIPi78JvkepDaC/tLIxRgTEW9fB0G+TUWhr09jhr2coPWR+fR9QtH9Bt5T8Um1YJu47yK5h1OizxPo4cCMnq7+qQ9+1NanY94W63+5BAzLXBe7A=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4474.eurprd04.prod.outlook.com (52.135.141.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.30; Wed, 5 Feb 2020 03:07:08 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::59e6:140:b2df:a5b0]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::59e6:140:b2df:a5b0%7]) with mapi id 15.20.2686.035; Wed, 5 Feb 2020
 03:07:08 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH 0/7] ARM: imx: imx7ulp: add cpufreq support
Thread-Topic: [PATCH 0/7] ARM: imx: imx7ulp: add cpufreq support
Thread-Index: AQHV22DB4Jio1GYHq0SGCvfmhvaRDKgLDAqAgADebCA=
Date: Wed, 5 Feb 2020 03:07:08 +0000
Message-ID: <DB7PR04MB44904E50D1B0AC71D999D1C288020@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
 <CAOMZO5Avbrzf8jNQ301mNN3YXXPjEGYWkooae_uw=wLykMgt+A@mail.gmail.com>
In-Reply-To: <CAOMZO5Avbrzf8jNQ301mNN3YXXPjEGYWkooae_uw=wLykMgt+A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f2f55fa6-6fe4-4e46-2da0-08d7a9e87cd2
x-ms-traffictypediagnostic: DB7PR04MB4474:|DB7PR04MB4474:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4474C7918F90B3ADE631B07188020@DB7PR04MB4474.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0304E36CA3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(39860400002)(136003)(346002)(396003)(189003)(199004)(26005)(44832011)(55016002)(5660300002)(81156014)(86362001)(478600001)(76116006)(316002)(66446008)(64756008)(66476007)(66946007)(66556008)(186003)(54906003)(4744005)(4326008)(8676002)(6506007)(52536014)(53546011)(33656002)(81166006)(71200400001)(7696005)(2906002)(8936002)(9686003)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4474;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ftqWxKkoMiR9U2WhCZo3NFRkdDNX9pmBfeKBqYx3TxxRClXJjIlJwTzkN1lZCTCMwZnjvuCTZVLmJ8jj7p6jMAOB3dD6uqyXEhj0GNfXyXltSA+b8GKHrDl/MqMnKgBMKFZSytuACAjOjGsR32W15tSc2WnMkEE7QRo7s+gZOxs/dFAP+qNeOOsu8MA9zvlmrUR9TfTgO1OCZDZSRG3c8Lna7YSnoUDum8Kch1NLoibsfNx61QvpDP/f6EA6UZt2EFC38xnWYEhGLdBGrQ3dAxTszYva98ekaV6IKSZPMxuV6eaOGIB5pzYJXIg5N3Lra4QRgNzsgyIQ0D8vdd/pK9FfnBkRDLXQlCPw5+wBiBpr6P5Ugv2VEGcD/st+FRjrfnyo4ZXxapOQMZo2pRpd9Hw2WfaYiybaMiCNaEldjPm3mE0vKWgPcQ4u911p4gRX
x-ms-exchange-antispam-messagedata: vxKE5273B2zgZPjiQPbu2D7CAzjN0ttqspnWod4mvWyXjUuzm/NqgfLAyT41uF5mJ7Vjn9OtMIDwTLgBfGaVka4XHKUzaNut/zGpRm9FeTrSACXAYJMErUkKKRskuh97TqozhBlMULixpEencJC5cg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2f55fa6-6fe4-4e46-2da0-08d7a9e87cd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2020 03:07:08.7330 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v+v2lkvwflzhTjO40sRAUj54LY/Iqcw1E0tn+JLj1KGuJlF+NttxRLbifw4Uv3qTkabaygS0JXv+AcGcdmswyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4474
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_190711_801934_8F6E1D31 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 0/7] ARM: imx: imx7ulp: add cpufreq support
> 
> Hi Peng,
> 
> On Tue, Feb 4, 2020 at 10:41 AM <peng.fan@nxp.com> wrote:
> 
> > I not include the voltage configuration, because imx-rpmsg and pf1550
> > rpmsg driver still not upstreamed.
> 
> Any plans for upstreaming imx-rpmsg? I assume this will go into the
> remoteproc framework.

I need check with Richard first, if no plan, I'll take it.

> 
> Without this driver, the i.MX7ULP support in mainline is very limited in
> functionality.

To test only clk change, rpmsg driver is not a must. I have tested that,
mhz could correctly show 500MHz and 720Mhz with the diff applied
in cover letter.

I'll try to push forward with rpmsg and regulator part, but both not
go through shawn's tree. This patchset without the dts part, cpufreq
also not take effect, so it is safe to be in if got reviewed. After
the rpmsg/regulator part got in, we could add the dts patch to
switch on cpufreq for i.MX7ULP.

Thanks,
Peng.

> 
> Thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
