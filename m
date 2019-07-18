Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C836CDBE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 13:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qo2+Kji/2mJ/b3RSJliC6GP4qONLO1VS9svBj80or4E=; b=TwTNxI1KHdRMaf
	42PDlq33vJ2xrMxp6LmSiKJ+IbEnZtNEno9yyL39KnOWor/kU6JxovqjPlXjMI25huQoJqjywSOs/
	ZN0rh1m8ko+SaEBkK72fMmGxfZO8s3TLs2o36v2RhVvHf7tBwmRqb7CWU+M0eYlpF4hxBdfbtSuxy
	7iQ87oygiLi2ZZYZAbP/B2Fhiv6QgIVNXyxyJ71B5QvvnWSWoSPFeL58SdKez0E1JAYQXtowbd3Hc
	oxCLAdkAkktV5BmqNzYygZqqV/r5VMSey1oPTyT1foWjcZYuTsqS9xs39A0Rd7jw9ZHuyxyh3INAp
	G3T7fr0oKAxORcahSNyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho51v-0004II-66; Thu, 18 Jul 2019 11:56:59 +0000
Received: from mail-eopbgr150071.outbound.protection.outlook.com
 ([40.107.15.71] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho51f-0004Hd-SU
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 11:56:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WE4ALOVDuJFUyuyBkIte6ArAS7shr0jOmmhN7T9D9dzMFppO5VzRHHrkcq/Nu6AnC3g2tLwg8u3mQUlq2+5R2T1TsHjKC2EEcwFD2bhGoy6bZDpL256qybV7vXc5p0FJ/A50dJemsFfkmQq4OZjolbEnGoqTLQHxAXG+fqYlFOLLqz8h0WYX02SsieyS26VLhyd074YxtPhbkgKcQbam9MN/vofweQCYFfRvwCM4Dy0KMOmUdMfNjYSk7ALklELSJcP+/UkbtFRtMMsahJX1D93etsDGwTmuqywDyq58lY+Ai9bgUIiLCd6Z6a5r/hKarQINPb7JSdW2f0yMGvtdtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S7ExNfHtlk5a3KabM+mFANZDnoIpKyvrUB8LZsAFLDs=;
 b=PcqDYCnWyM0Y9Fmcaam38Nc8soIBjoQYoaVCxNnMNk9fsno1/bwmIXY/fSaX5BXvUd3Gq4de2OPvUtiFMxoazM42cqTGJIb0IOleUL0UgY5Tbe52vRiRwOWpszIs1pDfqsFyyBjqSEUqzlyPPgX3DGCsL6TAEZ4bp8VuBVFbUtsCWfdKvcR87PTQFvMp01k/7IYVBswzivnQOZBbGCEirsxIxx1PZqBGuw7U0usLlJHAzSN5N7UT4bN4aYTmFOGqbwfwH4vJG740YjeXwFyf4BYM0r/KoaBGrX4bWoyhe39paGlo61/tk4jUNBBHGPd3Jt0v4fHsEzCr6a0cU1XVWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S7ExNfHtlk5a3KabM+mFANZDnoIpKyvrUB8LZsAFLDs=;
 b=q1d06y03ICjTSB/m4s020Os35zO+jBOnl2ywyGklBS7znUVVOdl1GpTB9PH8ugaqwRekXfho+Sth5PIakMBwEcnl8V9EmE9Yf8gg7JBLmfX3oaV4jwfaO4JJMumhpItac1m2AnbL9CX25IyxC+VnwvJE3/Q2EXfui+JZtDGFwhM=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6244.eurprd04.prod.outlook.com (20.179.35.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Thu, 18 Jul 2019 11:56:40 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Thu, 18 Jul 2019
 11:56:39 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Daniel Baluta <daniel.baluta@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH v2 2/3] firmware: imx: scu-pd: Add mu13 b side PD range
Thread-Topic: [PATCH v2 2/3] firmware: imx: scu-pd: Add mu13 b side PD range
Thread-Index: AQHVPVMc0qtnnMI0Y0WS697thzHtTKbQRO/A
Date: Thu, 18 Jul 2019 11:56:39 +0000
Message-ID: <AM0PR04MB4211F835E34473C57C1B7C8480C80@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190718102519.31855-1-daniel.baluta@nxp.com>
 <20190718102519.31855-3-daniel.baluta@nxp.com>
In-Reply-To: <20190718102519.31855-3-daniel.baluta@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2fe11c33-7fa3-4496-eab0-08d70b76fe71
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6244; 
x-ms-traffictypediagnostic: AM0PR04MB6244:
x-microsoft-antispam-prvs: <AM0PR04MB62449E92AED3AB406320ABDA80C80@AM0PR04MB6244.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(346002)(39860400002)(396003)(189003)(199004)(9686003)(26005)(2501003)(53936002)(66476007)(2906002)(71200400001)(76176011)(6246003)(11346002)(4326008)(102836004)(7696005)(64756008)(66446008)(76116006)(66556008)(229853002)(6506007)(14454004)(446003)(5660300002)(71190400001)(305945005)(8676002)(66946007)(55016002)(256004)(186003)(86362001)(74316002)(7736002)(6436002)(8936002)(81156014)(66066001)(44832011)(6116002)(110136005)(99286004)(486006)(54906003)(81166006)(68736007)(476003)(52536014)(3846002)(33656002)(4744005)(25786009)(478600001)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6244;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RlFNY8c7vuhfUWbDrqlZu9oVcHc+l1rymvglJiqiS9Dng/gCRCAdN0xXVRi3XkPth3LFllUyPd6X5X8LsFMl0Ie3jhUkUlJPL2VSmpHF7efuDuEVNC2kofWTciTU0DlZMjtN1q1cpXqNDB9dB7UnM2hbXOcWPEak3D44fNzodo/CbMBl0CLIVSlO33mNlf1xtXTZ/2OYIzg1ZkGUnBRLnCoJXC+pmVaPXl8GxqfYiL1/3B5G8cDrT+ZIp4aBLH0OTsHBPxVcO2d6yK9bvdMzmFhRlb9TjCfVE0LdbPNAqZpSZyDgQoJst0xLwFY6Dt3jKaCSkZMgsgA9nsfeoFgCmtF2ip2nquv70UdvAuC5WlKw45OkF/vdTowkcZ149DMpeDFzEtE8r8Onf1DQLeWI8cK0ozbiQUwjNbLtioJa4b0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fe11c33-7fa3-4496-eab0-08d70b76fe71
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 11:56:39.8599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6244
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_045644_003959_CC349782 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.71 listed in list.dnswl.org]
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
Cc: "=kernel@pengutronix.de" <=kernel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Daniel Baluta <daniel.baluta@nxp.com>
> Sent: Thursday, July 18, 2019 6:25 PM
> 
> LSIO subsystem contains 14 MU instances.
> 
> 5 MUs to communicate between AP <-> SCU
>   - side-A PD range managed by AP
>   - side-B PD range managed by SCU
> 
> 9 MUs to communicate between all cores (AP/M4/DSP).
>   - side-A PD range managed by core-A (AP/M4/DSP)
>   - side-B PD range managed by core-B (AP/M4/DSP).
> 
> Communication between AP <-> DSP is done through the assigned MU number
> 13.
> 
> So, we power up side-A by the AP and we decide to power up side-B also from
> AP. This is because powering it up from DSP would be painful.
> 
> Powering up side B from DSP would require the DSP to communicate with SCU
> and to keep things simple we don't want that now.
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
