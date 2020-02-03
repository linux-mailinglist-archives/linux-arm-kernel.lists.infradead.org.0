Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0641501F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 08:20:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1nHWZP1RrlPtLu5FX7HET+Ox4rxEs8O4y2HCc3KwGg=; b=UhCN51pwfHbT2z
	CkVXWf5cmLp5PzdIDedDGtPhdLPRBo4awcus6B9WQkzZQsyO28x35sistZokfp4XJuuBiXymR9AwZ
	osj/Soxg0B7MspheDsUMpUqQK78VfE4xYyqxHXLWO2B9ID/p9oAqvBy/GSBBLR36Q8+K78L6F6aJx
	RwiMmWt0thvJRI82mxHObewDM18TgZNWOMOXyD3kjmPqJWRrUkmd3uVE+gJqkn7+zi7Q+IWCCYI9z
	RQorkmEc2WB4reG/TXpja8Qy32ygTJN2ZBdyIXJXk3/JunVx8shXdtkxZle8BI9H/kqnbtltBN/j+
	4oyOC+N8VILf3fYNnhjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyW29-0002DF-HG; Mon, 03 Feb 2020 07:20:37 +0000
Received: from mail-mw2nam12on2059.outbound.protection.outlook.com
 ([40.107.244.59] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyW23-0002Ct-Hy
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 07:20:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gYiGZU/rYh0RWAcDu+24lYw3bwsOS2B4rl2ubtJKn9zfDKBkVhcyDrrBeU1Y30O/KqF9QhhVzT0AStsp5TfAZcKalcrYIx26OitlHOx5solw1ey24BiPQEn6v8KTVw4u/l4Mm2bRd+sgEBwMWNL9Zy4u5Xzg9svTFj6zLmkZ3+4uvCjju2b+Ed6U7MGISAvA3l7yZjsyWeQewkIuM89OWxK/KPL71XQe8TT6rLTHDnJBCHnnyS6NAocY1L7fksD/xFYxYRR6KHy0WAi6nL0NWHsKK7MrNPY5H/leszWAb1Aq0RAk9G8Qhr4xqIf736VR+9Y5pdhlQgq0f8Gx51DPyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1WU3hs3ThGFKb5mr3PKmEOXHv0t+rgrytWFEYk6SQI8=;
 b=H/o/M8pzX1U6DXVti5H1q1PrkPzo7QHBAETp78Rj26yQrQVktqTVo8szDvC3AOvSvRp5GJUiXbeSRK2FYnRMS8JJkh9Q9+xyTHMxATbV/8XB+qU66L1MMvKCfiEC1y7sxWg/SXBJVvPn5RyUG+iRvgoKiEYkRZuZNUb2Izadh4KY+C+jkMZcP/YEyBTcG/ApzMujAcp+1hJaCLxYbVAsaGwaTb6sRGwh/OnlgQ3TLXiZEis8Sg/CJ0Cb13zZgYOJsWq1c/cMD69SRH6cLVGr8d3lQaBS5FmBLsZXCOINk0y7eSoYBfQWgqI6zY6N5efauXMSVl8WAvg9bl2uUO73ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1WU3hs3ThGFKb5mr3PKmEOXHv0t+rgrytWFEYk6SQI8=;
 b=OID7a02v6G9CA+aaWuLSe8LJhujM4sTmumC00BRrTAHcz49LyqToRSc5WxPDbdqNMuEKgu7i0+o9i6uonDQ7CHM+IPU4/cxDHh1nJZ1uaWiL6uUf3MoZCGeBTxOj7jD8kwnghlrCu6e9y1neWFhfRJhFBJ/+6/ORMsKB69fX1OE=
Received: from DM6PR02MB4426.namprd02.prod.outlook.com (20.176.106.156) by
 DM6PR02MB6187.namprd02.prod.outlook.com (10.141.164.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Mon, 3 Feb 2020 07:20:22 +0000
Received: from DM6PR02MB4426.namprd02.prod.outlook.com
 ([fe80::c084:a7d0:ee5d:4673]) by DM6PR02MB4426.namprd02.prod.outlook.com
 ([fe80::c084:a7d0:ee5d:4673%6]) with mapi id 15.20.2686.031; Mon, 3 Feb 2020
 07:20:22 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Manish Narani <MNARANI@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>, "ulf.hansson@linaro.org"
 <ulf.hansson@linaro.org>, Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja
 <RAJANV@xilinx.com>, Nava kishore Manne <navam@xilinx.com>, Tejas Patel
 <TEJASP@xilinx.com>
Subject: RE: [PATCH 0/4] Enhancements and Bug Fixes in ZynqMP SDHCI
Thread-Topic: [PATCH 0/4] Enhancements and Bug Fixes in ZynqMP SDHCI
Thread-Index: AQHV0ES+oJkeVmCLSEim2Z6Yhdi7uagJJAiw
Date: Mon, 3 Feb 2020 07:20:21 +0000
Message-ID: <DM6PR02MB4426801844A0D91FEB4E6977C1000@DM6PR02MB4426.namprd02.prod.outlook.com>
References: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
In-Reply-To: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9a987890-4583-413d-029d-08d7a8798809
x-ms-traffictypediagnostic: DM6PR02MB6187:|DM6PR02MB6187:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB61876C6927257EE1E7614B50C1000@DM6PR02MB6187.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0302D4F392
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(136003)(346002)(39850400004)(189003)(199004)(26005)(55016002)(316002)(186003)(8676002)(2906002)(71200400001)(6506007)(53546011)(86362001)(81156014)(81166006)(8936002)(478600001)(6636002)(66946007)(76116006)(52536014)(66476007)(64756008)(66556008)(66446008)(33656002)(5660300002)(54906003)(4326008)(7696005)(110136005)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB6187;
 H:DM6PR02MB4426.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aQAY9ugUZaSnNKaZpSkemotzfRjaWXGQSZDfCy3axoKqumR3Iz7CJJOosfvspKJ/HugrxoYl1Mz9AKbTfLbffeVByCHWytuOdOIfbxrp8eRXFru26FU1ShRDUuo2aumw2z6qTy/5Sev2QJ9S7A0tLRxLvnNfqgZKZVyMlNY4GWKimJGlOeXvrHI8nPF0bIe8HVgBu0FXerfIYo1QoX/a3HKitVvWevQKgjiE3rmLwXghAYFP+TFfTLePTJUoQmd42FLSM0KSbTlhkqlThCbdiWTMLmJntRFyYlhpO1BXiV3TuUgNUVoPJeh8xuA4se8tnDnevNqahC5/Hldib6RBBB9MbAfK9ZLbT6EkLqPQTCGGvsAA37WEj5BBLkJAVmFcDyHmuoVEP9X7JmBMPRLP6AVpRbhZ52Gt/w4m5pQhamf6gYkCA6HpOqQ/o572l0qC
x-ms-exchange-antispam-messagedata: rrMtbTRsY3CvCmae7oKEZ9/KTqHkOVB3gd5wu6isMIzwAxnKj0GndCWXUfFaNIFk+5L0NFtctkgCTJcGGvTA6+FpwYlgOCCdICevgB4BM+CWSe7L8+TYSCCBM4PpxB7USL0T8RDCEIq5hOe6f0mlkA==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a987890-4583-413d-029d-08d7a8798809
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2020 07:20:22.1476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iceOcwW4gHWdPwoaulg4JxCrlBBH/cdOvTCNk9hsiK9xltxA8aLDCon0iesnXz9xwoiaASFzq2oaKXyhxIa1sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6187
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_232031_595168_CF1CD9A1 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping!

> -----Original Message-----
> From: Manish Narani <manish.narani@xilinx.com>
> Sent: Tuesday, January 21, 2020 3:52 PM
> To: Michal Simek <michals@xilinx.com>; adrian.hunter@intel.com;
> ulf.hansson@linaro.org; Jolly Shah <JOLLYS@xilinx.com>; Rajan Vaja
> <RAJANV@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; Manish
> Narani <MNARANI@xilinx.com>; Tejas Patel <TEJASP@xilinx.com>
> Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-
> mmc@vger.kernel.org
> Subject: [PATCH 0/4] Enhancements and Bug Fixes in ZynqMP SDHCI
> 
> This patch series includes:
> -> Mark the Tap Delay Node as valid for ioctl calls
> -> Add support for DLL reset in firmware driver
> -> Add support to reset DLL from Arasan SDHCI driver for ZynqMP platform
> -> Fix incorrect base clock reporting issue
> 
> Manish Narani (4):
>   firmware: xilinx: Add ZynqMP Tap Delay setup ioctl to the valid list
>   firmware: xilinx: Add DLL reset support
>   mmc: sdhci-of-arasan: Add support for DLL reset for ZynqMP platforms
>   sdhci: arasan: Remove quirk for broken base clock
> 
>  drivers/firmware/xilinx/zynqmp.c     |  2 +
>  drivers/mmc/host/sdhci-of-arasan.c   | 59 +++++++++++++++++++++++++++-
>  include/linux/firmware/xlnx-zynqmp.h |  9 ++++-
>  3 files changed, 68 insertions(+), 2 deletions(-)
> 
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
