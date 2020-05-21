Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5B21DCB6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 12:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHXZU1FNqTAyjDUZcK3QkiUEwVMOhPG6bIyEazZsnpM=; b=K0wEX81PhgKPM4
	3r56fDchuxbTvwx6cxUIDpQf93FhGG0IlIwzARRYlZhQ/LWVfBQZReR32UwUfR9zg9fk6SuyeoVWE
	w9+soNNyYCLlOB0BG6v9jlwq7sI7AX23jpuo/WUHYiTEwTP1tYfWTVLC2DJ3zMDwGoqeGkS6NeBlc
	S4mNxgXijUHVxZHtjooFrXHgXoT7XdE0ojKOS+ps4FO1ipEtgTfQ/0ezFlJhYJw22QWmRYmwYNRqJ
	4R2GrEoDiyyesIwe/DoZndwjTlw7sZHuTbbwt9PHbrCdsMnEYRHyArjY4+kYz2RYxgAkO8rglapAL
	5eZ/Y6EFkN+pge8vpxPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbioB-0000B0-Si; Thu, 21 May 2020 10:52:15 +0000
Received: from mail-am6eur05on2043.outbound.protection.outlook.com
 ([40.107.22.43] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbins-0008Uj-Vx
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 10:51:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ly5rylFm5T3FEQ2H9NZAwO0MpCmvzNDIHL4AodwRzBP6fH0CSxCtQTh93PScRlzykyXWxJ+VN1kog8V5nX4OsNrLdTUPHVueyffS5APkCkrXwlYmXVPs5/TmJ4lkpW0Wh/XCQiSRNVuyZ8RbUfzDAC/WTT+62l1Cv1e3FGH3Y5jjmwLBIGLLqQCF/eg49fBQY6f2o+unrUMmhExL6dMrGDPZXcodlGkxp6dbg3ePUwyVMu5oBLQX06nFDvUVY6IJlpFe6Cvk55ium+e5jehgwEK5P3Q8KzqQkWAcPvroDUqKiYXZdPubCdpufDVO1oNaoSk4a5ltMPvTG4SOPlWZLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QuRf7bBgjnMEpGLEzVToFRbNj5OSXi8NVqxAFr7BrAA=;
 b=QeIRV41KpNADG4Gm+nyg/8ISKJkQGjgJzFOoWyHTKdNYAWVqcalu+4OY5ihbyPRQ7QcT54XAFpmKAi88pOK3OciGVmDvRiK+p6sFg0wSZ+ch7O5oN5G/dC50OsAWgQ+qHClOgOkb0DcioX2SG8rSQKLzRv0siRanBd0mF3TH0aksHFf2igkiwSRjfysCF1I8VIYxAZXmyRzcwFClmxLkjDSq/gA2JYSATl+rlg0sSV4x8oWT6uITRbOmZiQ9sDksFXe+6Xp4HKthiV8NSrWYuX3oByqJk6wL5mztrF1lFcFoV4SGl7EGnRryXkjEnGFFey8evny681KWgZzwLyuXZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QuRf7bBgjnMEpGLEzVToFRbNj5OSXi8NVqxAFr7BrAA=;
 b=j9upsL9ZcIg60GY5zPWIFU/e6UCB3PDrulRzJOyrMZ5+s4YFKoim7J3X6pOjQycP8RtdiyqXS8yPeakL1LDOhnJH0L8kHQbFv82uVQoayaT0RPmToA+ARdyCV6nNeLHs2nLtMmIjlzjR350Ge2lYwsm+y7A+Z1PmGXKWvr+vyKM=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4454.eurprd04.prod.outlook.com (2603:10a6:20b:16::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 10:51:54 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 10:51:54 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Robin Gong <yibin.gong@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Anson Huang <anson.huang@nxp.com>, Peng Fan
 <peng.fan@nxp.com>
Subject: RE: [PATCH v2 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2
 voltage range
Thread-Topic: [PATCH v2 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2
 voltage range
Thread-Index: AQHWLzeILROxon7P5UGNR8Ds0umXe6iyXSDQ
Date: Thu, 21 May 2020 10:51:54 +0000
Message-ID: <AM6PR04MB49662AC5F1859E61796A960A80B70@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1590070674-23027-1-git-send-email-yibin.gong@nxp.com>
 <1590070674-23027-2-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1590070674-23027-2-git-send-email-yibin.gong@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6a340ce2-9c83-46a2-e78f-08d7fd74f9a3
x-ms-traffictypediagnostic: AM6PR04MB4454:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4454E188B1ACE711C470A62C80B70@AM6PR04MB4454.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 041032FF37
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qeOb+qXLMNe8rL7SeK7lNz3wA005MBsonxUJbzA8bGcH1YQ74Oh8HmRPGRBDmR6eyZ5l49CVCL5z4HjIiMeDUT3OvGCM5jfB+YNYqNYF3ZM5UdDicC5KXFRAnDgUeI3D7Bqk2OXKisBN6wNv1XBJAubGzwd+P0lzKUnReGK/yKLVMvfoD8u+zFzEb5tx8dmTLL/89vFyVbUN8vBcgp+dgh867eQib+CSfYNf0i3jP5X/hPjIuquscB4r72RHYTNUlRMGvV71ZCa0JTBofyoXjTmBae4g0jBgFmZBleYCC/y4TtGWXYwh8OJ3MZ4/SOYYEDWCPdatI+6Cy54bYKAe5ukFk6rWpvMzm0l/eRiwM3+8lPhHlmjgYAvFUNeV+LM4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(366004)(39860400002)(396003)(136003)(4326008)(9686003)(7696005)(52536014)(8676002)(186003)(8936002)(6506007)(55016002)(110136005)(44832011)(26005)(2906002)(86362001)(316002)(76116006)(66476007)(66946007)(64756008)(66446008)(66556008)(54906003)(71200400001)(5660300002)(478600001)(6636002)(33656002)(4744005)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: SqvdRuvH+bhUABTcJKK9FXjtWYW/RQdGITV7J6+8O8YXO+zn8VzQXP6U+ripfUR1bGwFyF1D36MMum/x25qu84+Xf9G3m4ikUAvIWo31AvrJbk0IckJOB3dNKbY36RHt42lrULmncVNfFdN/Vh2up4Oo5i/ttoCkBEutKHlnSk0Csa06vaJEOv+HoeaIzdgzeC9RT6iDzBPuP2VVwPfdPgkUQV1kbdHl52o1e9CUEZB5lAAIsNedyM3QeogHvzvGMlWw5kXcJvLmcU6p/CPf3SZW0Qyjt17g2fGmaFgk0xIzm4O9VeCkjCVoch3LO/afGZgZ9iNx9RWYhxjDrFBp9zMs6+rQi6VAZthSCv35qNcE8XgjVvOJ+xMiveUtJ2God5DUZPrpOxeluqkHjyYLQqKbMk3gC+sOefMmNcyshlVVXdHT5rZuP5N7iBkzhM/hj2zmJbrmYKh85+vtuCzM7qvDk3xuEFrv4yfAb6aRKmXopXGnXtV7gE4I1mlwPnvq
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a340ce2-9c83-46a2-e78f-08d7fd74f9a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2020 10:51:54.1297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NHgrYYHUdF9yJKScm/r7yzOBFL2IV9Cs/Yjucp/aIx517lsG80tU0nV+Zocol3xbdZzSh8e6mi/qbt2w5X6/SQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4454
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_035157_067387_0E662DAE 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.43 listed in wl.mailspike.net]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Robin Gong <yibin.gong@nxp.com>
> Sent: Thursday, May 21, 2020 10:18 PM
> 
> Correct ldo1 voltage range from wrong high group(3.0v~3.3v) to low group
> (1.6v~1.9v) because the ldo1 should be 1.8v. Actually, two voltage groups have
> been supported at bd718x7-regulator driver, hence, just corrrect the voltage
> range to 1.6v~3.3v. For ldo2@0.8v, correct voltage range too.
> Otherwise, ldo1 would be kept @3.0v and ldo2@0.9v which violate i.mx8mn
> datasheet as the below warning log in kernel:
> 
> [    0.995524] LDO1: Bringing 1800000uV into 3000000-3000000uV
> [    0.999196] LDO2: Bringing 800000uV into 900000-900000uV
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
