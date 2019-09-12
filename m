Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D333EB0F06
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 14:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=F9w0CByqxsSho7RGss5cR8p7HtPXOmJ2KqeoncsIyZI=; b=ln6cCvmR5qoTFD
	h/YUkRKAKIVDZclA32mAND+s755vRtwCOzGj7CmVTIO1wXCFZGJvQ1JfLVUz4b4tZefqK9NQSYox7
	7V39Lghk7gVYZAGRjKHi/iCGzVbRtDvk1fQHJkn55n0fk2FEyL5aTI1rcGS/SFOKbblL7iOEIvH6H
	UFD5h/K4X43vnUcHNF2hcWo7wkJxaVA1j07z1a3J6mY8gDaA7hP60WS0cTkH1zW4AqE/YxkZvYg4u
	fSTKAudoUoSTK7ISDP6uUZJNhsk8lraf3NO8I5J4XQ4qqYvofStNVHkBTGvE0VGc7MYhlxTm9MWLp
	2K7Xjo6LOE+OUEXEgc2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8OTZ-00061J-6A; Thu, 12 Sep 2019 12:45:29 +0000
Received: from mail-eopbgr20041.outbound.protection.outlook.com ([40.107.2.41]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8OT9-000581-Rc
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 12:45:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LuWd3C6tyXQ9LkHDjp1Q0wTi1HTcQBZlgIiuc/dtNENiXzE1YWdRGnQxlrnrrMP3L0msIiCJHJg1i+gJqxRQ3bWHZO5GZhcw6QzrsWIPOK2mJUUE6sX6Otl8i88UAD2/+b67TwBuPu43y7whqSwk3ioVK+ra6q7u/QJ+aGv043jPKNTxgxrzoYw4r31XBEmDpYGg2kXfGqhf3RAbeIBpAZTjbLmLCPM1t/01eugSvYUwKoFF256Q6+2ymZCnzO/7K/I9u2MePiQ1yzj513nZZDAf//zuVzYBjBWogETK5HhKwXG0YkxL2DrhahNkbnyp3ESR+xQSSUAcWcNHqJ0fmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wGahAQxc2HkHtNbbTjxT9uc/iUTyMjrYFAOCcQhnSN0=;
 b=a2QgXC1q7ylEdun+w5A27QFfiegpMgmyr1cYijoeQcq/rJulds36jmSnKLxYCEB6HCjnmOZJAbJwIM/pmW4Ds/0nfZddEaafnF/XDs6fzn1jIcJadZMbkta9imPUaepopnXIKCkbP0VY58Ds/dgNSfimBJ40IIU9fOkVrCbBnAShyWasbuY3/fB2NXBuPSM/+3+0dvin/dPXODUph7LTzLQwWic9cb0p3nY8WIp5dylUqXHOAtmCqBkoHorisZNnhkzw4qZk89cWfvLs4ggSN4ngSbWthUYP276EDXKmILqJpxw6Gam7HdjwxOPpz7Cqed843Qh6mnT+xq3KWVAS2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wGahAQxc2HkHtNbbTjxT9uc/iUTyMjrYFAOCcQhnSN0=;
 b=TdxRzeV2HdKRAT//NDMkCn9w54svLd2WFnhVtu2L9E8BBB407qjvLvuv106yftUkf8M4nNKr50PZwtKLE09P6kzwlbMWtEEeucYSiwkju9vy/S0p2ucykWuvcifGsRQFoS096K1M0auUdZ7XUotuB8rVIYlhtUfz+RVxDgceXFM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5998.eurprd04.prod.outlook.com (20.178.123.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.15; Thu, 12 Sep 2019 12:45:00 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2263.016; Thu, 12 Sep 2019
 12:45:00 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: Re: [PATCH 1/2] ARM: dts: imx7d: Correct speed grading fuse settings
Thread-Topic: [PATCH 1/2] ARM: dts: imx7d: Correct speed grading fuse settings
Thread-Index: AQHVaRXU/9RJ5I1OdEC5dKjrHftFtg==
Date: Thu, 12 Sep 2019 12:45:00 +0000
Message-ID: <VI1PR04MB7023E48B04999733859F7158EEB00@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1568256992-31707-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7cd2d14c-ff1d-4f38-8a78-08d7377f069a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5998; 
x-ms-traffictypediagnostic: VI1PR04MB5998:|VI1PR04MB5998:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5998E07225B3E9B88C6B1959EEB00@VI1PR04MB5998.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:318;
x-forefront-prvs: 01583E185C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(366004)(136003)(39860400002)(189003)(199004)(81166006)(478600001)(6506007)(33656002)(8936002)(53546011)(102836004)(186003)(5660300002)(486006)(25786009)(55016002)(476003)(9686003)(26005)(44832011)(6246003)(76176011)(305945005)(7736002)(74316002)(4744005)(52536014)(64756008)(66446008)(76116006)(256004)(2501003)(66946007)(6116002)(54906003)(316002)(110136005)(3846002)(71190400001)(86362001)(91956017)(66556008)(66476007)(7696005)(229853002)(99286004)(71200400001)(14454004)(8676002)(66066001)(53936002)(81156014)(4326008)(446003)(2906002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5998;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pTDJx+o5Ll5kj6bI4y7/v5TbPj8bWMX2j37CPk42vOZMx6wf5TQXiujl8pe+S1gl4KJYhPHtKIrV62COhjEZqtfReDC2rv27Bkg6CGNgyUmdX6alI8BGD14kEctGO+YLvWQTLdgaFxY3wJ2xXlzoRUBjpvSamY3Qhn9uXCDwJiahhFuR/JGsWGdS6j4pHQh43XqCLx+lgrSOFgekOdY70mOpRVwbxWbIH2hSoi6bFj1YoZU/WNFAuoZ7atvxe1R0GSqWLj/oVtwmDejcEpJfYgptUoHUgTVVJeKo0sgrfzfFCDU8CxMbLFv9QY025r4uzSgWgQAvFqlUOwVT2G26gvrDPcwOOpe7RbaHKlp8CbX+oqY+Rsh3ArSx3Skl1u6y0YoU1WABilJQgklHOde86hPVC+DKDmIumA7zrploxXQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cd2d14c-ff1d-4f38-8a78-08d7377f069a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2019 12:45:00.5969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wD+9p1umL5y1Dd88FO0V7mlrHwDBLKQ54cYsThwsF8adFU7doAUxBhn69g3kyR6TZuw20FDvYjnjWrSdhMpmfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_054504_004839_5349B837 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 2019-09-12 5:57 AM, Anson Huang wrote:
> The 800MHz opp speed grading fuse mask should be 0xd instead
> of 0xf according to fuse map definition:
> 
> SPEED_GRADING[1:0]	MHz
> 	00		800
> 	01		500
> 	10		1000
> 	11		1200
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

Are you going to add the 500mhz OPP as well?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
