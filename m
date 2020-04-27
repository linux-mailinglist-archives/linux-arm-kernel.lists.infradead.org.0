Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030C81BAE14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=vLSt01I8goDH6qi+7Y4g8eWxh7Eco4OtnvDmTgvEto4=; b=IIjv0gRcyFTL4o
	vvzfrocbub7cJbrXC4GAyA/6CQfxNZe8ncNU3exoRNi32GUuWPh9d9CedfGI6gLVotVKcY5QZVMgJ
	XDaMrX6iCd2RLzKVhHFZIKgY9IwEhUz6G3OA1oIhIEoG1SHT5BmY7KTbLzSX48mBrAbKkUZlEpbAY
	JxAa1akwQxlM0NRyW+lwA1SpvVoBOryTE2urZaa6WD00SHlDnYceK8eQsatcZDm5mQEzY0AeLiIiQ
	aRNGtrrO6L+l6EufvOVqusmQ3g/q3fzvD8b77OdcoVT49z9mW6SEvGsnelR/8cQvC+WeaKW+LHkrG
	RT+ZZypfyFbj9M/e5zxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9Wt-0004X5-4g; Mon, 27 Apr 2020 19:34:59 +0000
Received: from mail-vi1eur05on2060.outbound.protection.outlook.com
 ([40.107.21.60] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9Wi-0004Vd-DK
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 19:34:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BU1nEK67KZ5tZQdXxRMotayBYZnq8vknaAi/uuc7IYt0UFYxL3jQnPtWGvRZAb7yVD7DZDjvKq2W834YsBM2IIZfOAdm3SUz4zIGIqkdFr6IJocWgNVBSYQu7Kw/dlKtn6mmvpsj/l3mLt5cw+1sp/CmiTkt4PM3qywuXDsZK8m7L2I2O6LHQPrX1bjZRzGMqiykZFxeEDZXCymYCGi1OltRDfKBnq7O+TSYIH+c1GslniZ6w6iwf7nmoq8AaIIjiE9wCjn9EtNL7QLrWzxZXpHk8NluS+9uSDppg1ZHSNHqzgDx/ibiK75anxFs6RoOhtw9NgnQ9lEklNvy034PPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CsN9jWbg9loNUXAl0n7rm1Zbyfjlc/gT6Qt+xSzi2c4=;
 b=VXIY/49uBNLo1EqA4OmW+7ikcONuIHt/VjF8LcNK8+MEq5UB3dchXlC/ejCmorJKt9+cdEjNjDTVT7VTQwCTUYunffiPIu85CnHmdpiyG4+xupoXh5NBM3+GjKk+VYmN6b4l8sZZyG2mneyFmKrsEaxAASeT2uhCQlwk09laP7h7xjOBF1BJy3AXg9Uj+kx1O1Aex6UVI8ewr9hi4APiesC+BoSDqN8LXlmfs5IuJC+uXIfIYKaUmAbjsyyIyLh9PKvK0O0BWCDC/rmc94AJ1pFjsJjkzbMtqtoypULxxseSNqBytYskKlvB38xNCYrpLklyGXQtkJ+dH96uaccLIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CsN9jWbg9loNUXAl0n7rm1Zbyfjlc/gT6Qt+xSzi2c4=;
 b=LFHogvnJJcy3oc+HDGlRtB21iEyxuGwdC08h/3wp/J5Lqo4vaGD55uRKd8Yrz3oCohVcKPf2QgP6XqlTzkgiWo4OVEDrTgBphoC9bex1p2GCl3heCAEP/xQuLn7wCqVQkkn/2FIAFk8DfsMG2BjSLyVysRdzrdje3EJXvQqf0lI=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (2603:10a6:803:12e::23)
 by VI1PR04MB4238.eurprd04.prod.outlook.com (2603:10a6:803:4e::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Mon, 27 Apr
 2020 19:34:41 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::8de5:8c61:6e4d:9fe9]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::8de5:8c61:6e4d:9fe9%9]) with mapi id 15.20.2937.020; Mon, 27 Apr 2020
 19:34:41 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Thread-Topic: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Thread-Index: AQHV+FjQMBLZK1sUBkmPtGWbyCJKZA==
Date: Mon, 27 Apr 2020 19:34:41 +0000
Message-ID: <VI1PR04MB694162B89953B58266395091EEAF0@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-8-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB69418E9348D5765B4AE01D18EED00@VI1PR04MB6941.eurprd04.prod.outlook.com>
 <DB6PR0402MB2760726D128E4BA868F03D9488AF0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [95.76.3.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1ad6f389-9b18-4beb-3a3f-08d7eae2082b
x-ms-traffictypediagnostic: VI1PR04MB4238:|VI1PR04MB4238:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4238EC55FF1DB6A9C18E7D1EEEAF0@VI1PR04MB4238.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0386B406AA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6941.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(366004)(376002)(39860400002)(396003)(66446008)(478600001)(91956017)(66556008)(9686003)(7696005)(7416002)(66476007)(5660300002)(55016002)(44832011)(71200400001)(54906003)(66946007)(76116006)(110136005)(64756008)(86362001)(6636002)(4326008)(8936002)(2906002)(81156014)(33656002)(6506007)(8676002)(186003)(26005)(52536014)(53546011)(316002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MRYl+TyJCFLYEz6gHzgIhZCWTZbAbv1ngsrwzpntyq9QgZkl7vQK+2lBksr/0xn+qOkJOC9Wj5pi5kjn+3MrrGZj3rtOvPun4brCSS/UmlZEf4u3Ba+eV4WiL/gt5o/iaOqZoBigTlhJcI6/E4AYGokzkhefb2MQ9jBpACBxYlgZURMgHY6j2KSliJEhvdfOqW+N4vB6enpSbIBnmNq+9TJMIiFlnrrwCUc0DIa8jzLd68NWqZrMIw8ywd3JWgc5H+JTMIluJnW4XzHBMUM3zg1eLqBJUkTgms8r/jVpQNxviLskzX7irHiwoxC39vV9Xvz7ggyp/IxB92KGDRE7hyVGt4D077TsSd7rMJUNYSsziMXZev9rO2O/Bp81St4DW+GGE2JQ+Ybc2VfNbC/mo5RV4pGbkWroMu1P35MGIOAO0oOFLK23YQ0PIcO4J9S7
x-ms-exchange-antispam-messagedata: cEjHh3TRX4Bc/dCqXvNOgTsocunGZld5e3RkNe4BmdE3BT3YFqORRBFr/lBjyNP1OaJbKk6fACMmwqbyR3wOfnWVk5WkUKvtqucmRswZKGct7YGcSeVkp2VmgPWIKH+BpmFxi1OuO9q7wmWHsoLLMWC3qNRuBm7OdTHbw7WCcixRzZlJNgd0rJDnnwzohh2FCOjOINAt1wKYPj8pl8n+Wy85SPdQVRpiwGuKZRD+h9F5ZbOZgwQ+X2qOK7iaMr0cazrkcurT3e81BevtDrkDlIuNdbfM0EVfdbzThdYVDdxfFXdu7mS3ipe17HJaHspAWB89TzkSxOsS7hbcC5U33hc1WKj9Nm2nroDJB8lXQWXBJRrIDrmljRgq4KlBDKNDhUg2KJKxXhyxOZiUlssPq8RNlHyq9nKoFKOeQYMxuVpACB9eJg5y0oGgo2/hwyC2Ji3+ki8+k9YpkpbduJbkrrxBabHQ1SScEaB1GlQDx5yGg5xzD2whWyHDooZUH5dLyum5j2Jcr1Wb5Vz25kV3U1z0UqMFEvdl79rffrTv5IKMpsme1ueNpblnJi9zttu+4ewTFbk4DmvRJpwqr2TZ87lZszOyakw0SsVtfzr2ZOGUdmwlwhF0wnb7SWsZyU1jILYrE4EC7oQ++u5DuMR5k1tQ9BgaVryE+rz5f/MfpIgR09CTjY2IbXeR8QOnz/W9rU/zoT32BnK25NmWkI2LKdFxwD4RAG8VEPBCsPXYTuuRmelNzzqGGxVuIxo1JQGaoEkWc+rNKYOKgEHnwrZ6/9NiDfULvyNv2SQGix9BvjE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ad6f389-9b18-4beb-3a3f-08d7eae2082b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2020 19:34:41.4862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l9TX6lmYzP/+JWZwwslIA0IsPjEtnK3LWUVLyrbSHdEbmIWEO4wHMHrgYdy+nOGD6nabxRpenvc8lxJkNMPBGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4238
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_123448_582606_D085B6C5 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.60 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [95.76.3.222 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.60 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>, "heiko@sntech.de" <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "aford173@gmail.com" <aford173@gmail.com>, Jun Li <jun.li@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-27 12:15 PM, Peng Fan wrote:
>> Subject: Re: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite
>> clk
>>
>> On 2020-03-12 12:27 PM, Peng Fan wrote:
>>> From: Peng Fan <peng.fan@nxp.com>
>>>
>>> The CORE/BUS root slice has following design, simplied graph:
>>> The difference is core not have pre_div block.
>>> A composite core/bus clk has 8 inputs for mux to select, saying clk[0-7].
>>>
>>>               SEL_A  GA
>>>               +--+  +-+
>>>               |  +->+ +------+
>>> CLK[0-7]--->+  |  +-+      |
>>>          |    |  |      +----v---+    +----+
>>>          |    +--+      |pre_diva+---->    |  +---------+
>>>          |              +--------+    |mux +--+post_div |
>>>          |    +--+      |pre_divb+--->+    |  +---------+
>>>          |    |  |      +----^---+    +----+
>>>          +--->+  |  +-+      |
>>>               |  +->+ +------+
>>>               +--+  +-+
>>>               SEL_B  GB
>>>
>>> There will be system hang, when doing the following steps:
>>> 1. switch mux from clk0 to clk1
>>> 2. gate off clk0
>>> 3. swtich from clk1 to clk2, or gate off clk1
>>>
>>> Step 3 triggers system hang.
>>>
>>> If we skip step2, keep clk0 on, step 3 will not trigger system hang.
>>> However we have CLK_OPS_PARENT_ENABLE flag, which will unprepare
>>> disable the clk0 which will not be used.
>>
>> As far as I understand when switching from clk1 to clk2 this is done by
>> temporarily switching the rightmost SELECT mux to whatever was in the
>> spare SEL, which is essentially arbitrary from linux POV.
> 
> No. The fixes in this patches has been confirmed by IC design owner
> 
>>
>> This is quite unexpected but in theory it might be desirable to use a third
>> parent as a fallback.
> 
> No. this will make things complicated. To CCM SEL_A and SEL_B,
> it is controlled by a hardware counter. Saying you write n times to
> the target interface.
> 
> The mux will use n % 2 to choose SEL_A or SEL_B. write twice
> to make sure SEL_A and SEL_B has the same value.

What if SEL_A and SEL_B have different values on boot? The first time 
linux does set_parent it will switch to the other SEL_X which might be off.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
