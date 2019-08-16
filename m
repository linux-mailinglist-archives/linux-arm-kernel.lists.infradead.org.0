Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D038FFBC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 12:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPz0l8nz34X4OcL7I2QvpMA8Rde2P4JhCrDl3i3wyNY=; b=G2p3BlT0PFnMVT
	0ub7EJd8D7sUwCl/ujh5l9YB3q1NIXjbxpqfOvaGSvYA1cXEt4sDSCw6+HHWU/T4ZQFXsn7zw/s0S
	96NJ1D7HVsXUvnq4L3kJLcZHv6zgkyEOGsX/v384vp2PNcewqxPvOdCxvX5P8Q4YYTcMmqwOXZ2zM
	9MNEl/PaH0dGKnt0flt0XZX7PdQAdGEyCRUHS6kKbv+3Jd0ikzuQi8/odbqUBpxQEo4FT0HdNaffl
	7iM5o+/CRuZ7FRI+vtMfuNrU50codx44nnDYJlN+f86Lk0BJ54bZucXM3zYFrzITYjZy2EAz9oTFJ
	kj6El5Q9GDXEEsVPMWVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyZAO-0005zS-48; Fri, 16 Aug 2019 10:09:04 +0000
Received: from mail-eopbgr30060.outbound.protection.outlook.com ([40.107.3.60]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyZAA-0005yD-BX
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 10:08:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G1Ow1zzUunnCOctsNUE1ZNSh/8i1sM+sa06FWr3UaiZ3B2/Lykayf/iklkZVy2XDweZBN12z8cic/4ojF92eYganC2/gp4IN+aEHifa3YUTUC8d6ThGsTwuzOVeqjl2YE66jBV3pYZuoKiq1lwqIKKJ/NnnGIr1Y5YohYCgvKfn6iJAiZTRkwRMqjHjQl+Y1kWbqOPytYsWNAjNhABSjZSfcT1WpCTYQdKfABdLdhlOHPNC6L5WZRmOUuU31MycvvcjUboPQ63wKvheqiGW2sb0nGzujix52/Z1iFd6mTEbKFL9muUUmQ9WZOJu5QPTToEEEKNQbEwutzJb8s0oeTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MwwETmB8aLqb0AEB2ENlSiDWD/sITnifXYYDH7q9LFM=;
 b=HGtBgBQdp/fhDOQ4ijP2JNqUFfFCp0xDZV9cKzip/LYhG44BAcH1Tx7gC6/rlYMYr6DYHYouyP9y+naFtcan/MyJWvswwN4L2qG0AG/hkM1cGahFrC9GjFHWudWI8FBtXaHXIkeVcIAHcFViQQj0c8ikJOxBVv1oRtZyfar9NJD17mLgXSZ00tdbIZwalZHp9TvsZj56c0TOY4uJRgphP7ijj/fgkYA16tV6tLsBjsAZHEG/4JRQrLCOxUvvt6r2bfJ6ijYAyOKfuU6Ij1DtAHAqif+7yFGFqT+uIusYPkM03weQUJ23i9AUtjMDFW9tnt6lUcigoxEaEOINP1NzEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MwwETmB8aLqb0AEB2ENlSiDWD/sITnifXYYDH7q9LFM=;
 b=Y8Qjc9QVC6QQU/z2XaeJUdKECmygVMZUrzrBrlj+wPEgyNXvWO0HPz/XMcj8AUxZ5VGq3wL93mnBW1vBrzWL1zDHjS05m0a+MlsenDe/LPaB6k1asgfuzfyB3v3Hebn+U4yksacLUBhTHOYWNJnPVGkyCYqj+xxnmG9AuvwBwOw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3708.eurprd04.prod.outlook.com (52.134.70.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Fri, 16 Aug 2019 10:08:44 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2178.016; Fri, 16 Aug 2019
 10:08:44 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "tglx@linutronix.de"
 <tglx@linutronix.de>, Leonard Crestez <leonard.crestez@nxp.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Jun Li
 <jun.li@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel
 Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>, "angus@akkea.ca"
 <angus@akkea.ca>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V6 4/4] arm64: dts: imx8mm: Enable cpu-idle driver
Thread-Topic: [PATCH V6 4/4] arm64: dts: imx8mm: Enable cpu-idle driver
Thread-Index: AQHVU82SFvIqTYVX002fkrtVdPy2g6b9ix+AgAABRwA=
Date: Fri, 16 Aug 2019 10:08:44 +0000
Message-ID: <DB3PR0402MB3916E469219C7CC68D55C90AF5AF0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1565915925-21009-1-git-send-email-Anson.Huang@nxp.com>
 <1565915925-21009-4-git-send-email-Anson.Huang@nxp.com>
 <e62d26b9-8c9b-644f-d2b3-485586e07e35@linaro.org>
In-Reply-To: <e62d26b9-8c9b-644f-d2b3-485586e07e35@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ece5082-5b29-42b5-dba7-08d72231b906
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3708; 
x-ms-traffictypediagnostic: DB3PR0402MB3708:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3708F6C733A4B8E140C1238CF5AF0@DB3PR0402MB3708.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0131D22242
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(39860400002)(376002)(396003)(199004)(189003)(446003)(53936002)(4326008)(6246003)(74316002)(3846002)(99286004)(26005)(9686003)(66066001)(7696005)(25786009)(2201001)(102836004)(53546011)(55016002)(76176011)(4744005)(6506007)(110136005)(478600001)(71200400001)(71190400001)(14454004)(2906002)(66476007)(52536014)(64756008)(486006)(8936002)(186003)(316002)(6436002)(256004)(33656002)(66556008)(66446008)(8676002)(66946007)(76116006)(6116002)(5660300002)(2501003)(7416002)(44832011)(11346002)(476003)(86362001)(305945005)(7736002)(81156014)(81166006)(229853002)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3708;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6ce8yJ+uWyRi3I2LPljSTL9r+TH79tJrnMAmuFzQQafrJ3Kj7w8Ts8IcolNQNcclQkxq7OxJtmbJIuCNuIDC1ZRP3jnIdgf+30NaRz0JBcFXGYBz76kPRGq067kikthdQATof8FKX7s9sje086jF7GtOkXhPL64YpFxcL5l7ndAW188mVU9PMzcmO9joIBfePF5JiZ34tyJ2TAQLbtIcvCMFIT4SnWlCNt7uoKw93AD3eaRE7KWrbMSXwUTHXYX4zgX8JdOJJQtnEPUWI5JYzBOQ/ZSg297plO056pqny1exah9wXr2VPKYtri7s3CJ8VFw/zZ11WVpXLqVLGur0Htq/B7W6cbGtyXGZJiEbBorKkSJSA0POra17vIuWP88MS4+s/WdOCJMPt9SFkspDKnI0erKQC7LMnDCB5dSPiu0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ece5082-5b29-42b5-dba7-08d72231b906
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2019 10:08:44.7421 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AJxymtZefIEW+o+BHutOn2kY/uTrDuxdz5gwpiCnFpr9irLA/CGHQ0MqMxX/l1/6qa58xXalSM+l+OPSDGmctA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3708
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_030850_470758_AB12584C 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel/Shawn

> On 16/08/2019 02:38, Anson Huang wrote:
> > Enable i.MX8MM cpu-idle using generic ARM cpu-idle driver, 2 states
> > are supported, details as below:
> >
> > root@imx8mmevk:~# cat
> /sys/devices/system/cpu/cpu0/cpuidle/state0/name
> > WFI
> > root@imx8mmevk:~# cat
> > /sys/devices/system/cpu/cpu0/cpuidle/state0/usage
> > 3973
> > root@imx8mmevk:~# cat
> /sys/devices/system/cpu/cpu0/cpuidle/state1/name
> > cpu-pd-wait
> > root@imx8mmevk:~# cat
> > /sys/devices/system/cpu/cpu0/cpuidle/state1/usage
> > 6647
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Hi Anson,
> 
> I've applied the patches 1-3 but this one does not apply.

Thanks.

> 
> You can either respin it against tip/timers/core and take it through Shawn's
> tree. If the later, you can add my Acked-by.

Hi, Shawn
	Can you take this patch and add below Acked-by? It should can be applied to your tree directly.

	Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

Thanks,
Anson


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
