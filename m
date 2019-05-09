Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A06D18764
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 11:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Z6Q0TvwLPqUwzbAyWDkZSLbSoF5Qjv3ig1NOTJXO8Wk=; b=u1pm3ox2XHDUAU
	EVXnBAXhYkk2wdHPE89+/Tq6XBmnHqViQXnQxn2jS8Gqqqe66acjJuIJpDSMLjzJU9PaAwJu8+Zwz
	0wU9ul5Q1qjZKoHerr1lD3OFkFC/RGZx0taSsjcCXbMmH2/Nkg5ZJYFAGuV0Ix5MP24hBv1K+tgvx
	hrFEv2gdiySZ1S/rQ92nCamBJfSqYYJ7wXlBu/GoOI+4j9+DfF0jBw9gh+BMm0glP2vzn5UPq+BNs
	K4PRyH/soFKoUE62brrPqmIuR8onzmFMTkMiI0S3p7QIqhrdZTjJ/Dnb1yn7oneYmyFNHQGi+u5Bu
	Ve97NyOHtkxWn3lnFxvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOeyS-0003Pu-LV; Thu, 09 May 2019 09:04:20 +0000
Received: from mail-eopbgr50081.outbound.protection.outlook.com ([40.107.5.81]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOeyC-0003Ow-84
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 09:04:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HvJEZvcf+/zKQ9BGas0DqEcVVrbh1g65utD51tDgLKk=;
 b=mFvhM2nQ5d4nR1OZ/i33zpQVpUzO2fEHfIzcB9g5J5AKTS4WeUuoVCd6zng2GYE/hIeLbqbGBbisDI1bXJuIlpd/j92I9Qsnl8lVflPkkbpXQXl8wnVQoQumBUbArF28YBkhmUdfY/QH1CLBL7AmOdB8xbdnpmGeWaYYQbkaYJE=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4276.eurprd04.prod.outlook.com (52.134.91.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Thu, 9 May 2019 09:03:57 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1878.019; Thu, 9 May 2019
 09:03:57 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v3 1/4] cpufreq: Add imx-cpufreq-dt driver
Thread-Topic: [PATCH v3 1/4] cpufreq: Add imx-cpufreq-dt driver
Thread-Index: AQHVBNwYbcAcEPdpgkaJW0PvBwINFA==
Date: Thu, 9 May 2019 09:03:57 +0000
Message-ID: <AM0PR04MB64349B11B2A914F705B6D302EE330@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <cover.1557236799.git.leonard.crestez@nxp.com>
 <607242a278a4532d0b4285e0fb56abfd5767fdd1.1557236799.git.leonard.crestez@nxp.com>
 <20190508035402.7pbikzpkzxxesmlw@vireshk-i7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [95.76.3.64]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 71a42e18-3478-429c-edb6-08d6d45d4536
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4276; 
x-ms-traffictypediagnostic: AM0PR04MB4276:
x-microsoft-antispam-prvs: <AM0PR04MB42761E359C3148878C04EA10EE330@AM0PR04MB4276.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(366004)(39860400002)(396003)(199004)(189003)(66556008)(66946007)(64756008)(66446008)(73956011)(66476007)(8936002)(68736007)(486006)(446003)(102836004)(52536014)(44832011)(7696005)(6506007)(26005)(76176011)(476003)(186003)(74316002)(53546011)(4744005)(99286004)(54906003)(33656002)(256004)(25786009)(71190400001)(55016002)(71200400001)(6436002)(6916009)(6246003)(7736002)(2906002)(53936002)(5660300002)(66066001)(3846002)(6116002)(316002)(8676002)(91956017)(86362001)(76116006)(81156014)(81166006)(14454004)(305945005)(478600001)(229853002)(4326008)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4276;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cnCCRj2TTFaxyOUTmxMW9/zuFaHrZlAb41wy8eShKBt4t9QV+/6XLNfrWjUDnMEk/3zBh3ux5ceNSeqeJqxllXcbBMneKVlV4Iu13niCPn8wQlRWevUNpEAh8U2zVMqJFNP4aNrz0nLgbpXaswllvYhcnznVS0IzzFGp0M3kwgj1jvYpf5bOQPjrHCMT8Syi7udl8M2oXaGGGiDWDkR7FRUepWnQ8nJByAuxPfht7F7DSTiuoVZsd3UVyKGZcqrtj2bCpT2Oav+pKMdXhBo+GCzZDVK1L2p78p0gqShOw2HFyDgF1OFBZs2n1H2nwnUZnJ+32B2JJ3aSf0F5SsZP4bZJb9pNsSfMkDL8wQFcTNfsutXyXs74of/vrcZ0f0SIUpYJy2t4ZyJ7EGCdj0GtaRwku6rUSkUwPUPLoL9cEfk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71a42e18-3478-429c-edb6-08d6d45d4536
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 09:03:57.6649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4276
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_020404_546578_471FC225 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.81 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [95.76.3.64 listed in dnsbl.sorbs.net]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/8/2019 6:54 AM, Viresh Kumar wrote:
> On 07-05-19, 13:52, Leonard Crestez wrote:

>> +config ARM_IMX_CPUFREQ_DT
>> +	tristate "Freescale i.MX8M cpufreq support"
>> +	depends on ARCH_MXC && CPUFREQ_DT
>> +	default m if ARCH_MXC && CPUFREQ_DT
> 
> As I said in the previous version, the if block above is redundant and
> not required.

Sorry, I misread and thought you were referring to () rather than what's 
inside.

Is "default m" otherwise OK? It's a reasonable implication of ARCH_MXC

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
