Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CBF4FB41
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 13:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtHRUpPznG16QYxMmdtWfbW7T+ORndll8HOqR6K3HRY=; b=GIxXX+kSG4iriE
	73eRaNMYg1SA0g0tAxB0eeZj5NmLW7c6JwljCc985I0m6QOMqucb4irsU8069nHUfaqjnN0JuQaqp
	Qz2UTPt/arDpzaXs32CZbi/s5OvEOnXGeWXRNepO9Jbac7j/dE/8QQyCZbBTHq32TzmLEfldW6s3r
	QdwQed1bBEcU8f0HwjfyxYcuikHDT647mPA96KqzfqSNC8UFiPxI8nebQR0lqplO48J1iWbYJklNE
	ABIy8VssDqX0O9DKqBkEZeuUGjYIeQ0gfqA8d+eJ232YAJ4jNutseqUECjFbGcSaCQ9bD8Mp647HG
	yPwQdLZUp+ah2epKsR7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf0cG-0006cl-Mj; Sun, 23 Jun 2019 11:25:00 +0000
Received: from mail-eopbgr00052.outbound.protection.outlook.com ([40.107.0.52]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf0c4-0006cH-Va
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 11:24:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ow1USR7TjW6eJ1VG46Zb9BRFxlEAgYfJgq52msIcGQ=;
 b=ajYz/Y7bGK7IpL5iINCr0DARA7DXlQb+V7LltxiRLxK5QAMoGl/IF90lgtTpvugkalNy/6TRL9TtdI7Au7wo145uZj7bWK5MVIytKs5OJb4IUbRFs/MS7291HvVc4f04c8nttDHQ2GSSdEZHEeGk0wWZ1GIPeqaojHR3GagoK+M=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3899.eurprd04.prod.outlook.com (52.134.71.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Sun, 23 Jun 2019 11:24:44 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Sun, 23 Jun 2019
 11:24:44 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Martin Kepplinger <martink@posteo.de>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel Vesa
 <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 3/3] arm64: dts: imx8mq: Add system counter node
Thread-Topic: [PATCH 3/3] arm64: dts: imx8mq: Add system counter node
Thread-Index: AQHVKAsXvjXZswp9YUaGUA/T/OvzKqanug2AgAFhPfA=
Date: Sun, 23 Jun 2019 11:24:44 +0000
Message-ID: <DB3PR0402MB39167752236F0DD5316F4AACF5E10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190621082838.12630-1-Anson.Huang@nxp.com>
 <20190621082838.12630-3-Anson.Huang@nxp.com>
 <6c632476-9ecd-d6cc-b543-a28576c06a0c@posteo.de>
In-Reply-To: <6c632476-9ecd-d6cc-b543-a28576c06a0c@posteo.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 06466600-3e95-46b2-1d78-08d6f7cd6474
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3899; 
x-ms-traffictypediagnostic: DB3PR0402MB3899:
x-microsoft-antispam-prvs: <DB3PR0402MB3899F73BC6AAA531382C66EBF5E10@DB3PR0402MB3899.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00770C4423
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(366004)(136003)(13464003)(199004)(189003)(6506007)(53546011)(66476007)(2501003)(3846002)(68736007)(52536014)(446003)(11346002)(6116002)(6436002)(76176011)(256004)(476003)(2906002)(5660300002)(99286004)(110136005)(25786009)(7696005)(186003)(66066001)(71200400001)(55016002)(6246003)(71190400001)(229853002)(66946007)(305945005)(102836004)(33656002)(53936002)(8936002)(26005)(9686003)(73956011)(44832011)(316002)(8676002)(66556008)(7736002)(7416002)(14454004)(76116006)(4326008)(486006)(74316002)(478600001)(86362001)(81156014)(2201001)(81166006)(66446008)(64756008)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3899;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BS502TWMRMbdxHY32RYnUGEbh1gm6A4lPITY1CqjLZJt2dDiki/aqIr7vaI2ThVCS63k/PubdWcczhOtqYFoIQEpAsC+bWypoiN9iUQTPQ/BhOIaooZbcfhu1GooPSXJXwAQb+ocKlgKqH+vuLrh43W7RrVdUsyyA+ypj4nv8qPTRCsLA0PymhIaLRVhy+oGl+KaDYOO+s3Y51HHmFQL19bolevLy1D7exNjgLM8RvoYcKsr0Z9CgKS4MeyvxLZKMQVJLzi1XI09du3HUfV4BUtK+A/hbG+bbQlDdnNACZ/8//ekHMo9d4+ulQvWiC0Yw7k9DRLTntWr5hI8MCNT9P45NMjLTKcDdIL6v1lSCRFzTO006PKNk1DLZc5aSoDu0qDOmcQtPsgLsVMUp79trDmbR0sVaEf86xWDlGwE7sc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06466600-3e95-46b2-1d78-08d6f7cd6474
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2019 11:24:44.4252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_042449_021509_5702BF7B 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Martin

> -----Original Message-----
> From: Martin Kepplinger <martink@posteo.de>
> Sent: Saturday, June 22, 2019 10:16 PM
> To: Anson Huang <anson.huang@nxp.com>; daniel.lezcano@linaro.org;
> tglx@linutronix.de; robh+dt@kernel.org; mark.rutland@arm.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; l.stach@pengutronix.de; Abel Vesa
> <abel.vesa@nxp.com>; ccaione@baylibre.com; angus@akkea.ca;
> andrew.smirnov@gmail.com; agx@sigxcpu.org; linux-
> kernel@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH 3/3] arm64: dts: imx8mq: Add system counter node
> 
> On 21.06.19 10:28, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Add i.MX8MQ system counter node to enable timer-imx-sysctr broadcast
> > timer driver.
> 
> with these changes and TIMER_IMX_SYS_CTR selected, I don't see cpuidle
> working yet (which is what I want to achieve on imx8mq). Might there be a
> system counter clock definition or anything else missing?

i.MX8MQ is different about system counter enablement, with this patch series,
no need to have system counter clock definition, this patch is just to enable the
system counter as broadcast timer, it is necessary for further support of cpu-idle,
to enable cpu-idle, another DT patch is needed to add idle node, but as far as  I
know, Abel is working on the workaround of the i.MX8MQ cpu-idle, I don't know
if it is picked up or NOT, so I believe the cpu-idle will be enabled later for i.MX8MQ
by Abel.

Thanks,
Anson.

> 
> thanks,
>                              martin
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
