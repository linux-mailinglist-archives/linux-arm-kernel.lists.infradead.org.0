Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2256196601
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 13:07:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Huw9vEalpii6CUfUfdwJ/fJgPFvx0zkgHFGqSItaHAU=; b=DSGw5nsGQ8uTCX
	Z1mKLVd3FkbRrrObvNBI7LnG3M3qOsHPiWjqyNf1J55OhViuZUVXCRczCTUYvPIgYHezdInUGA26O
	LEYDxfKX/NNysyLgBf3/Aw+YMa3VdiBMIbMxzQg2YrPk/BdrGCjkGYE6egu0wrBJcLowTFvZ3V3T9
	SMCnSHDosCJP5OWfUudERcBpsoYR3jjVMpm/8qSxrLqTibtQ0yp/NeROjKrAU7lycGbofjztU36ji
	J+SiiqEwQI1udKPR9Kv8MnvZFgKwhH9RKpcWwtoks7o7/rVLobL6u78Rh6Tgvn83XfQXEn6Jlzi7V
	i4yf267VLtuoDZ4Gr/tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIAFO-0003AL-LA; Sat, 28 Mar 2020 12:07:30 +0000
Received: from mail-eopbgr60050.outbound.protection.outlook.com ([40.107.6.50]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIAFD-00039n-Do
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 12:07:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hezhyDnLO38uHZV3MdhooTdwRAGJmI5vgQfYIh1JLFYfBumcpCii59J/KZtSPzXZignmXtJmhatjFtDOs1yQNveHKIIaSX2qNGdfSjn9r8NQ2+3KR8wFaHZhaOp5L/OEwMhDCcTCpLPYwRDQztVmPdeTv69IKskTD5AJ0R0i6M1sEWC51Pg2+abUUvwjyDTRvHU29HdMQ0EGl8ISH2iyCELNdmNo39WnrrWJfcC8lWg5Rb+jr2st6K6JZlpSIRefGea/gCdi6nLeLU9oevB0Xr4nvtGOFZORqCbcnyiZ7b7/hhRN23ZqBE+LGr97kt1UkiJWZhJqqBv/HbIK0IKQ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BoY8QAaOpmt3mDdPHl2rTvWl0qAUsZFv0J/msLhRr3A=;
 b=Zasc2GUuhZFstEX1rJrAUk8CiGVMvd2r0iH/br+immwlJxW4Bu/q1z6OezWWO68vGenOgwyMi1Wi3mGUpq6+qBFQh/h5RPhPR8K1oOOF+h20fsntoOZw2OoUz5SzSe2xlVnUIDSTBJd7SEtfZIeqKIjSzpK6+dJEi3FG7U2N3kzOgh1Kj/CFFkMbD0Zt3sRz5dBa4lBnw8C7JsX1+GxnQ4mb641GaKlsZEV1s6JE4dscE8mCnFFUgPndHTV1faoYI1glocfHcMyXt5ecQgd0flFyYuQ4/Pp/6zxDXJgNLoodrjvrofbqnYab7hRZ0Uh4iu9l3G84+V2N3fw5LUkwOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BoY8QAaOpmt3mDdPHl2rTvWl0qAUsZFv0J/msLhRr3A=;
 b=O/IzdN/kHQZ11GtFU59/Wq6bSg20mmqsKAyV1GFZ68bpHMX6LN+zy+MqIrnEpA20CLxSCpJZoBdraDjH5PxHBgrHl5pC39bw/UF/3kvnRlZyKJKPRwhZ1ClcUt+Uc3OM4DePU1zu2cdNIN4iLXHoWbwEXahIkpWhTZtPdcjO1go=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3884.eurprd04.prod.outlook.com (52.134.71.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Sat, 28 Mar 2020 12:07:15 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2835.025; Sat, 28 Mar 2020
 12:07:15 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Adam Ford <aford173@gmail.com>, arm-soc
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: i.MX8MN Errors on 5.6-RC7
Thread-Topic: i.MX8MN Errors on 5.6-RC7
Thread-Index: AQHWBKuViOa/vuBTwkqHT9gRBvnGdKhd5Ing
Date: Sat, 28 Mar 2020 12:07:15 +0000
Message-ID: <DB3PR0402MB39160D3F0D03B968B7CBE25AF5CD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <CAHCN7xJSKH-gXA5ncFS3h6_2R28rn70O3HfT=ActS1XVgCFSeg@mail.gmail.com>
In-Reply-To: <CAHCN7xJSKH-gXA5ncFS3h6_2R28rn70O3HfT=ActS1XVgCFSeg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e78e4010-d7bb-4138-715d-08d7d3108e1d
x-ms-traffictypediagnostic: DB3PR0402MB3884:|DB3PR0402MB3884:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3884BDA6638183E4D779C1B8F5CD0@DB3PR0402MB3884.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03569407CC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(39860400002)(366004)(396003)(55016002)(44832011)(5660300002)(33656002)(54906003)(316002)(186003)(26005)(7416002)(110136005)(64756008)(66446008)(86362001)(81166006)(66556008)(9686003)(8676002)(76116006)(2906002)(81156014)(52536014)(6506007)(8936002)(66946007)(4326008)(66476007)(478600001)(7696005)(71200400001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YvrRvq2UzBcbXsHUVsuJucIn+I/Cq22m2o2303aS0NmGBNkktt+omi/Xl6uSa9bYeHdQwPv0CVLgP5FSgTITDwbecSuHcgvfvo/tDuAzV82khrWsPTw5tk2sLT1LqNPp9IktXFGgc4VMMM4lZeEmVd04IPAJ/x7/+exL12/BVHx6CjWgvmIy1RQduj6mTvEc1jjKtQtYwpBsXC/fJLD0rCn0d9U+vDr32Awp3anOIkjJkwegRn5Nsp6wbnLX/WRj6I2qG80CmUSFJI69HfYn3K2YYXxDJ05gJhjzqsZG2Di2RN/HVKiug8NOIje//oaJibSk9mQElEJ++xGsRo3AwYaiuWw/ee+UbyYzKGo33tF7Dbw2f9xZa4smc8pXpLw/4j9LJO4c+xV8YVHd/n1ekQmy0W1DsFpShEfvB79W8tn6mNQ8kr7D7N25burYpaBh
x-ms-exchange-antispam-messagedata: 6oa+mqmV4zWy4pMUk59U580Ssj//YMaVilnJzBMbHK8B2T+ALBuBPsznjsW1+Yq09AeMXdXHkFSyQWw1Jn1LP1WqVMm1BdNF8+5o/b0i9eX/CNiGWvzDWuy3NB986U3LRWUyiyXMqfhbH5v08C36Ew==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e78e4010-d7bb-4138-715d-08d7d3108e1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2020 12:07:15.1157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JDKSVam23zX7JnsJD8wMR9wtfA4Frlf+3NgWEbEU2yLRUyyU3CnjAWBw6RhFW+xU5ceNgDQJdHIhyPNSHGVHtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_050719_650408_E33DDDFC 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Adam Ford-BE <aford@beaconembedded.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Adam

> Subject: i.MX8MN Errors on 5.6-RC7
> 
> I am getting a few errors on the i.MX8MN:
> 
> [    0.000368] Failed to get clock for /timer@306a0000
> [    0.000380] Failed to initialize '/timer@306a0000': -22
> [    7.203447] caam 30900000.caam: Failed to get clk 'ipg': -2
> [    7.334741] caam 30900000.caam: Failed to request all necessary clocks
> [    7.438651] caam: probe of 30900000.caam failed with error -2
> [    7.854193] imx-cpufreq-dt: probe of imx-cpufreq-dt failed with error -2
> 
> I was curious to know if anyone else is seeing similar errors.  I already
> submitted a proposed fix for a DMA timeout (not shown here) which
> matched work already done on i.MX8MQ and i.MX8MM.
> 
> I am not seeing huge differences between 8MM and 8MN in the nodes which
> address the timer, caam or imx-cpufreq-dt.
> 
> If anyone has any suggestions, I'd love to try them.

Which board did you try? I just run it on i.MX8MN-EVK board, no such failure:

root@imx8mnevk:~# uname -a
Linux imx8mnevk 5.6.0-rc7 #621 SMP PREEMPT Sat Mar 28 19:56:30 CST 2020 aarch64 aarch64 aarch64 GNU/Linux
root@imx8mnevk:~# dmesg | grep fail
[    0.719353] imx-sdma 302b0000.dma-controller: Direct firmware load for imx/sdma/sdma-imx7d.bin failed with error -2
[    0.941304] calling  net_failover_init+0x0/0x8 @ 1
[    0.941310] initcall net_failover_init+0x0/0x8 returned 0 after 0 usecs
[    1.135885] calling  failover_init+0x0/0x24 @ 1
[    1.135897] initcall failover_init+0x0/0x24 returned 0 after 6 usecs
root@imx8mnevk:~#

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
