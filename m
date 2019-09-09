Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 895C9ADB06
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 16:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuP9yx+fnpZEWwD0qQSVPpbiQM2o323vjh2Tr/HH5EY=; b=R7rh50BFHCtEyW
	yOaKGCLgHGAg1KJ1Y+/G7QTQKQC3UVmgWTYMH5px/NmlJOGX5YO84OyPR4tpmB+OzNqFfie3/HnAx
	CrXfdQoZJHANEZXX2c/6F6WB+OWbuIvZG8D+DP3UIt0FExNYbxIgvf3b8+tdxU7IbajIX/ml+3Smc
	mH5YgkbyfDEo9GP+0kdoY/5ZSmKg/gUCP0jfiJ2odlK8MLeCM0pAgKNp+EpPaaztrEUypJWvYxyvo
	LHLWWmjIJgiwPS4ZbaRLX/Q4vcU2noCTdGR2e1K3a1qMTWzwiOwXF+ikC61IJSRSiFcCZ6qP0PISF
	T81q1+YS02nrpamRerng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7KVy-0003Ox-Uz; Mon, 09 Sep 2019 14:19:35 +0000
Received: from mail-eopbgr80075.outbound.protection.outlook.com ([40.107.8.75]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7KVo-0003O0-35
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 14:19:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SlQcNrffZ1ee5/f/dikoqAwsI7FM3wdOBuIRofUmQjHzcfDR7ta5YPnWqueBcsddrkEJ+fiY36r6rXZbskHCVrJFhTjw8K6XBN9uZwUH+vsCuMot8sHLQhYZ6/RriPFpEVAEqBTe7aVXR7Ds/lNOv7kLALWNnYWzNenhfw//XJGkJDCw7JoS9z+du8z6DI5NCRNmxcm609FcQ1cNPf1ZG3t4z6B69o+MvnMLJbGHQzf6Yxw0RX+/bdzreqzIjrbKDf7BwTWtnYPl/Q5iEqoN7Xk7i22qWHHmwHwIlUpb6thAZ9OxWvgrSPWjFyxWg+8Bwm7KvrdDRea0U3OA/ESZbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EZCfqoilOU2Ix4sTkB2GC5Zm2E54oQLcN/LGn5jm57M=;
 b=lo9o0DL6dP/1TDv5BzlOo3a78imcljDNU0z84cXgk27x6PSzc91g0pjdY34QC4UETHVra7Jjbo+de9jA4LyaODszuQ1KZC6w6oIpl4s0nlZ/HcqGR99Yg0ZDCOuwOdza6hqSLebBwctZQAOv07OGcsfS67lbJKs+IJGl1U5rQYdUv2/mLKl1yu/QpZ8SZsSdVAW2G86ivMC6oioJyHYoPG3drcZKs1S4HvPi+5vqU/rOZxELgjx4sosIndS4MvIJpmTabqidapUjyCsuGHCHK2BsqCk/6VLyLo848eqmd90CZ1ZtDM1I/9hn57CfwRLuKkqSklH6QX6nguYLF3GVZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EZCfqoilOU2Ix4sTkB2GC5Zm2E54oQLcN/LGn5jm57M=;
 b=hloubgVG2WQELRN/tyCSUWexqlL69Cz3EqcUEVQZJBAlk4sAsd/S72UbSSe7UTgIG89PANMo6+MCocGL7uYzUzlNPBhxXO+aIpJ3mPqyF9ZFeF87iwiGvstsZyrWXd6OlJtlJO+5vrWFD23Zga2oFw8Q6vkw1TxhzWFoM2cIdO8=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4514.eurprd04.prod.outlook.com (52.135.147.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Mon, 9 Sep 2019 14:19:21 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::44b4:2932:8e73:d707]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::44b4:2932:8e73:d707%7]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 14:19:21 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH V5 00/11] clk: imx8: add new clock binding for better pm
 support
Thread-Topic: [PATCH V5 00/11] clk: imx8: add new clock binding for better pm
 support
Thread-Index: AQHVZxh4CwAuQ1bbOkqOOgTWL5D2TacjZBog
Date: Mon, 9 Sep 2019 14:19:20 +0000
Message-ID: <AM0PR04MB421173A9599B92EABC88823780B70@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36b2e3bc-7727-4ef5-9855-08d73530b544
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4514; 
x-ms-traffictypediagnostic: AM0PR04MB4514:|AM0PR04MB4514:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB45142C74C17AAB62A8C3134C80B70@AM0PR04MB4514.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01559F388D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(376002)(346002)(396003)(199004)(189003)(81166006)(81156014)(71200400001)(11346002)(446003)(256004)(2906002)(476003)(52536014)(66066001)(6506007)(14444005)(5024004)(229853002)(6246003)(44832011)(66946007)(66476007)(3846002)(76116006)(66556008)(66446008)(64756008)(6436002)(2501003)(7736002)(54906003)(33656002)(8676002)(186003)(14454004)(7696005)(102836004)(110136005)(71190400001)(486006)(86362001)(25786009)(316002)(55016002)(305945005)(9686003)(478600001)(53936002)(8936002)(76176011)(4326008)(74316002)(26005)(5660300002)(6116002)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4514;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aQjE4VJBOvkKsPFSFWE1IVlcLmPmz3TnRa3PbzoUIi6x+8iAXW+Pjx99KNJwYIOrN4jtQlhPuJDY61cm5ibfEZ7Bdxwby312J24Z62qvYZPJLo9qcdCZ8eTrCHa49nuV2iYkY1SL2CbI3ZA8Tm8ASvRqgWqCV4rDfK0vX/34zWICrh//suV+WJGVnbfLSxmsW61hjEHX8HHCklic9QAIFZoASMsfdpOkhgiyun1VKkOm+2UHvz5e3NrY4IicqoeBf22C4O8+pfaVl/nR/vN3xB0VWtxg80WUk36gDw5KiqHZq5A9aYpjUzlnC0YU86cQXuvx0RjzMC1CfPShlp+SqDS1kXPdPVjRC3iaRbXfCMwWY/7Tu6Fw4gQ738qRNwTQGNe8XFbeZ1aDXmeHR/2gL1gDCpCnyc04yEPPyyUDtR4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36b2e3bc-7727-4ef5-9855-08d73530b544
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2019 14:19:21.0349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RU4mpgWoGtMnYhtVZAYxwdXBkd7jXdg0MhjSeyNkE1Vo24/dvsD1UKPYOxxSR8sPcXKFks5XLVCSAdFFH0mQoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4514
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_071924_140168_3A4D9E17 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 Oliver Graute <oliver.graute@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> This patch series is a preparation for the MX8 Architecture improvement.
> As for IMX SCU based platforms like MX8QM and MX8QXP, they are comprised
> of a couple of SS(Subsystems) while most of them within the same SS can be
> shared. e.g. Clocks, Devices and etc.
> 
> However, current clock binding is using SW IDs for device tree to use which can
> cause troubles in writing the common <soc>-ss-xx.dtsi file for different SoCs.
> 
> This patch series aims to introduce a new binding which is more close to
> hardware and platform independent and can makes us write a more general
> drivers for different SCU based SoCs.
> 
> Another important thing is that on MX8, each Clock resource is associated with
> a power domain. So we have to attach that clock device to the power domain
> in order to make it work properly. Further more, the clock state will be lost
> when its power domain is completely off during suspend/resume, so we also
> introduce the clock state save&restore mechanism.
> 

For this patch series, missed to add Oliver's former tag:
Tested-by: Oliver Graute <oliver.graute@kococonnector.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
