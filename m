Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89410CD9FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 02:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NGYFrK59vGo6sNL+uvK9l/TH36BGdNoVsc4M+5HoRo=; b=pN8ORNxLMeH0qo
	K1PmRK37BeFgkNkG93M5kKMNeVtCsN9A5UnDo73ck4P6KBMdTiefw2tH2fwhJp7c9lZ50QdP8S2id
	3NTjkrPL5yT5WJVKgr0AwQ74N5gGMfHqkl1ptzSQ+2OK3mRn4MHkaBu8+lePCcS5o7LT27XBzWbUZ
	U2SoMV3XLCjT8uoIL2XBwU+OXDlnlFLIzaa1i8SLdEoW2bruamiXL/ofAm6JvgZQiE5aFIfgEyhd3
	qsJT4z+x9TNfkV6WK3QXV5N9VxU8Z+V/RG/nmW+MIPIaaS49gbtmfeOY+oKCaUtw67CKeLoAThYA6
	g9uMOrf2TG1CnvfW44iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHHA3-000386-Uh; Mon, 07 Oct 2019 00:46:03 +0000
Received: from mail-eopbgr20077.outbound.protection.outlook.com ([40.107.2.77]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHH9w-00036o-FM
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 00:45:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z2ApjYd/c5z0TxyBOocS2eRCJP56ZLGOHHksdmvHGh+11Xm2F2CuTIqokmtKXe0X5OJpe6XDG9egqxvjkpYOITqBnaQzrCZL8hP/vPJKZw6PI7Ufj8zzTsv6C/vdIUVvGJfC5ETAseYmQOiwXko7gzTe2IrvIuVsL8M5nhtsva/YCk9FTFqRiBrC5LVdYdT/4ADM9AY/GxqnsUnvVHX7IYkGMz1a01tWFAsj9H5v+iOAnHACMZnoVA7/ZWWAR36Iut+zq03m/057RRyzqoXFRGPD36jHwkLQ/8iYYX/J03UkcRi/3qxq8JcTRhhzPd1pHwe9NswdjJtA3M5TVn53/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vhhHQH6uVALXlP+dDGAM+lgnZ6issBrGnrxW7CsOvAM=;
 b=ZVhXNh6B88JMOlEQd4Pa+qp3EYqLHEMYctf/yrNRtu6ZplOQW4X00OFtJqaO5bhsePb+sU1AU5IwZi8p8Hu3Xyn6d2RY7wBrY3Rgz4vZpq1Z8Y48YuB4PRq4tF5R1IANGR85+gmJpNaGsBcmQXkOU6fUC0kieKLS2POfVmqhuREpQbG/zUorA+HlPNhHQ+UPDebmwXTtOE7ZkCNcB/a22c2S21SeZN/Dr1U11r2yZZGINm/fM8RXjC1ekFDQIsWyxGZr8/P9z84bxKGHMrECc16+4mGnkyVwi/zpJb0Zuu4nyzvRJ2T2bBc/G8ekJRA1mkKNem3ZeKrekcMY/4vIVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vhhHQH6uVALXlP+dDGAM+lgnZ6issBrGnrxW7CsOvAM=;
 b=k3Jq/RGSjtmLogpSmHsYNuDMklIlWGsXXZ5xP1QvJw6PEF4Yt0Wa2cptT0l+mcwx4nf9RioRn5PAFKMzB35jny2z09URa1F9+hyMy0aB2Ypy3Rn2tQYIJYaL3RcJK7AI37tdzvnkbN/DHmNhUXDWwLOPncNGWOj1wxgyYsJoENk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3931.eurprd04.prod.outlook.com (52.134.65.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 7 Oct 2019 00:45:51 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2305.023; Mon, 7 Oct 2019
 00:45:50 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] ARM: dts: imx7s: Correct GPT's ipg clock source
Thread-Topic: [PATCH] ARM: dts: imx7s: Correct GPT's ipg clock source
Thread-Index: AQHVbGj9OePM1LgLKkuaNPfAjuopxKdNaGOAgAENZYA=
Date: Mon, 7 Oct 2019 00:45:50 +0000
Message-ID: <DB3PR0402MB3916B8450581E6D3F9F8D566F59B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1568622549-15819-1-git-send-email-Anson.Huang@nxp.com>
 <20191006083233.GB7150@dragon>
In-Reply-To: <20191006083233.GB7150@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92a33d0f-ec11-499e-01c3-08d74abfb3a5
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3931:|DB3PR0402MB3931:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB39318FB968382E4C8C4B5802F59B0@DB3PR0402MB3931.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(366004)(39860400002)(376002)(189003)(199004)(3846002)(54906003)(99286004)(229853002)(5660300002)(76176011)(2906002)(7696005)(14454004)(52536014)(6916009)(102836004)(4744005)(86362001)(6116002)(6436002)(25786009)(71190400001)(44832011)(55016002)(9686003)(71200400001)(11346002)(33656002)(486006)(446003)(26005)(186003)(7736002)(6506007)(476003)(66946007)(66476007)(8676002)(81166006)(81156014)(478600001)(4326008)(66066001)(66446008)(64756008)(66556008)(8936002)(76116006)(74316002)(256004)(6246003)(316002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3931;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ObNtBWuE6qnZTTP7UXMHKQWBSEDm5Lx2Jh4zmdQgire5vaVEYb1hiaT5fHfiXlnNiKdpGcVhmGPeFCpl/1Psy0mNLr4nqRznkgnPqLXICTqTcSUnVGRfR/U/9XoTk9KQVheiyObXXtuf3Qklhmtaejvaau22hmtNSb8T1mRCUVldg6Wcb8Y5KnjjBZIyqTGZsobpf0lTGvF0NBDcm0s5P7k6rJTN/rUJlz1uWiymoRx9CG+g16G45609wUuMXA7f0MRuzQAfs4tapIT+4occE3cBvSb///kDVBGm4oM8cgjeF4V5yPwPLWvMJlHomLnn1VAqLLO5FwA5vjHb9FzIf1eBDED67dfddPvYtk+lkSjF9CTkoGOpH+Rx0laPf1dvAn9No7Ct0uQWPOC0VnVJ/ohEk5GlBGWSRUYO1qxwzlQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92a33d0f-ec11-499e-01c3-08d74abfb3a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 00:45:50.8669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rtsIV4961zoFrYhELmo1rpFsExkIhjCmwc0DJYmWdSv9eyxvxNjiBdbcnPe5RHjjOFMN8v1UNQ4GbaGMBOUq9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_174556_574552_C6E30F29 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.77 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.77 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi, Shawn

> On Mon, Sep 16, 2019 at 04:29:09PM +0800, Anson Huang wrote:
> > i.MX7S/D's GPT ipg clock should be from GPT clock root and controlled
> > by CCM's GPT CCGR, using correct clock source for GPT ipg clock
> > instead of IMX7D_CLK_DUMMY.
> 
> So both 'ipg' and 'per' clock are coming from GPT root clock?

Yes.

> 
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> It looks like a fix, so do we need a Fixes tag here?

Sure, will add a fixes tag in V2.

Thanks,
Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
