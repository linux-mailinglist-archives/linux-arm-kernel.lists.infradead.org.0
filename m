Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5ED18554A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 10:47:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8F6/0yXsVMn5Jk/kU0V0IfPEkbSa8cZtSyQ784NidU=; b=O5qQxfpv6QGnE5
	eSAh6TydWsbzTRT+AWQsHp1XYUdHMXNtPOIRwrCQA+DTGkoV+csGN5QQT1a0cnLQqQ91Gu8fhefiJ
	/9pquZPSPwpYoBDHfHzTsfPttWo2sxEb7CtItbYWc0LOMbb0cI/D2hfohqLFmY2RtLXlcNWl7uG0K
	4pFQHfKfOMmS2JGvc5sFHShyl4ixRK789VTf3jp0NKWpUJ64MFxn5RyUIND/cyM2oAix+V5xjYiTH
	HNTdO1C9jMl/4HMc7Qu9k5KEcXTAfUkLJ4H2ceEYAhT64IdLbAMRdvbh79ddW7sEBVx4OpfhTC5Mg
	1EfCDC0Lh17ZUfHm+1Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD3OC-0000k4-Fr; Sat, 14 Mar 2020 09:47:28 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD3Ny-0000ir-Ke; Sat, 14 Mar 2020 09:47:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584179235; x=1615715235;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5ffzs/j17EKw3jqq5Jg4iahkqMhMTWcgIy4/HKUbCt0=;
 b=FEyaag68A8ricMyHkAzxkqDo7zIdEVCn93JgkRkD+c4d3o7jC7/UeGIR
 dSZHCDaVAECXbn4rLqlbPN9e/+KH78bC5dKmhfDztuATUZHQo/rdkVvEE
 ZQ2NvMT0d4BU/Kgj2475/u7AKm916dgwTEwNJ0wSdTEjWHqRFPI6J5Sto
 8zaCShMqf84jEshLs9RMSY/sRMhvvzZ8THVZgV0Ggs6AFStKEpEpUW1PK
 lrApdLNyitBvELjdRaEN+GwuDASU4B5lfFwl/Csq+COXnKltM+bvxFf1L
 wx3h9V86zOH5EhQc1WbMYp4N01p+YppO6+YblbG/aQ8YA+F9aEo2RQiVe w==;
IronPort-SDR: hGpCbq1j3xPCOVsqmeXkHSrrxQ3t2WpqhMK/aEU2d53gjlnoiKdKG+prZXbPWdobYG0Bu0XAa8
 hdwwVEPSHVwv+u9EiULSpOefAGkpo/TnTbdnIGor7Po8tylAUVKeOvr6qWFBhOoPqF4hqWg8Wg
 eKiICgSNVSoQgcY0eF9O0lmGA/2yOJ5MPhmQCmFIFE7GsCiM3xUynlMoHYyoJE90hWRGLbRCai
 CJMF5lzgG17acBoz42VhaFkED9IVHmkJLnS/s81vHxAZZiinyAgXsCxzb2lpyIN2NXEzOMEqCK
 L8U=
X-IronPort-AV: E=Sophos;i="5.70,552,1574092800"; d="scan'208";a="132919508"
Received: from mail-co1nam04lp2054.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.54])
 by ob1.hgst.iphmx.com with ESMTP; 14 Mar 2020 17:47:06 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dWDCP9lFZ+IhcQnJU9WN9dt19kUZz2dA0R9eODx5C1V587zOV09ZkmIyGkYtHGVc0+A4i9Ka75EU1joq7pDqtWO9KgGL3jsNtQyKKkf3pBYo+ZRf2SrI4caXw3L081u+HWPWmdUWu3qjo7EZs5P9+sa63j4lXnsu+tGSDgYTESm6xU+6wgDnwT2/L4cHbAMvgiSuJA1wjuyf8J4QZXqDXpIESWIsJeWExLf3/Z37UiarU85RLCiViiEB8jDbwxpnYNjfy7S4xsiUDKyQuEuDU1bptei4FlRhDXUZBXzp5mhtOladHrwfhdyG0LgO2QU53XzJroqUab7uG/5VSN3qKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aNjOe4QFYL4DkY9KX/Fj1W3iiZnHL7bjGaLr0pDt4Dk=;
 b=T6oR7rZrU5j9OIOR3tcNqqgdW/cTBxK6/1kMU4uU2E4dbG9wK28QcU7eN4j1TNtr6kzOK7bw41wO4mpEHtvH0s+Mezxp7xXW1GAyv2L4H8zaNwMKLpMImAMdQ7AtCw4lI/TreKcBL/9GSAsjiIlYya+xLlACzI1p8pojF+f4q8RrLAkI6MGVM/m2ldAbtxTfKJ18noAAGuwjVKYx0cnEM9uiHlmSs0nTINgVtENjPSfnxiVQE/aEp2tI/Qn3fxjy9KYf5QX5vAj9b1DpFCj/MZ+OTHmNSGjZQ5uQY7EYTWwKeBCFIbji7XO4/EQCzHnMk7a62kKk6xxW1pF78cfLMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aNjOe4QFYL4DkY9KX/Fj1W3iiZnHL7bjGaLr0pDt4Dk=;
 b=HMJvo6W0ixVzsojGWVh4Kf5nhQev/AFuRR7OlrWwtzK8YI7UY7E/kSOmp0HjLxOBMykneq1H56NuYEjiP5iJ7ukgDuQukMdXQlNVhYDI9hO99hcpELatJLzck9e8ehFDiaAmpgReFOidaS8p55ETmGxzfAxeD6q4EByN8WXRboI=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB3888.namprd04.prod.outlook.com (2603:10b6:805:50::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Sat, 14 Mar
 2020 09:47:02 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2814.021; Sat, 14 Mar 2020
 09:47:01 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>
Subject: RE: [PATCH v4 0/8] scsi: ufs: some cleanups and make the delay for
 host enabling customizable
Thread-Topic: [PATCH v4 0/8] scsi: ufs: some cleanups and make the delay for
 host enabling customizable
Thread-Index: AQHV+RX9jRrM0tPTvUyCj9SJPGT/n6hH2KzA
Date: Sat, 14 Mar 2020 09:47:01 +0000
Message-ID: <SN6PR04MB4640CB68C9FBD3702A30CE60FCFB0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200313090103.15390-1-stanley.chu@mediatek.com>
In-Reply-To: <20200313090103.15390-1-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [2a00:a040:188:9241:146e:dac0:a78:a147]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cf60fd2d-018c-4d7c-0053-08d7c7fca588
x-ms-traffictypediagnostic: SN6PR04MB3888:
x-microsoft-antispam-prvs: <SN6PR04MB388884A49096928D9C0AB07FFCFB0@SN6PR04MB3888.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 034215E98F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(366004)(376002)(39860400002)(346002)(199004)(2906002)(5660300002)(478600001)(52536014)(8676002)(54906003)(110136005)(316002)(186003)(8936002)(81166006)(86362001)(81156014)(7416002)(7696005)(33656002)(4326008)(66946007)(76116006)(6506007)(55016002)(66476007)(66446008)(9686003)(66556008)(71200400001)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3888;
 H:SN6PR04MB4640.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MTlegNq6FYpA5UUlB2BHKQI7OyoC2Um5sRs2tMZisW1c0uKo9hGxYhg5iuahGqbon63e4ruXnm18KMkHSXXN0EG2SqrpOrf5VasM0DGUL1kRl6QVVqZ4jfPq70pysxUPEkKxU4FyiF0W6JNQwtrsSIVvemx8BR04M8993Synuy7WUpXWz8MzfgaSpTfANMOBRRQG55+qRSUwagxhKeJJhX7l1twQdBFHJNrQFD16y9lBcoNAnHf7TL5qqMjYnklljNc8R5Gifa45sg5bHswKuoV8e+PtjIFWE8HDJgVspR0kaUz83htZT1Kx9UvAPEaT41EZMsWgPF5KgFDv9fwJt7glZeLdybnKcbs1rNjAIOSvOLKOlrGjTyBdljGtsNHcshOPbGpQXGac7fE3ql931SI1qrEl9SeOwmgLexp6P4TSqIuCSkXHhGtGJ7SPl9RN
x-ms-exchange-antispam-messagedata: +pLH3gVuV7sE9tz4NXeE7bsnt59xOVTJhTo+tPMxEJgxU/6pEih8aXamGQ2zrgagVyjRL22hg7t097SgiEka0irBC1hqr9lUn5zjULfbxhB2xF31IqdV36fr0+HxxmnUkbMHf3CdeCMTIwbA6RY+Kz41WtmeAJB+r3B2JBmau5xtLdm0XwARZV2pDaGX9naMWrp+owmSViz5rZHNhPQrkw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf60fd2d-018c-4d7c-0053-08d7c7fca588
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2020 09:47:01.7525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ndJJzruuu5o/qYz3VTOcgtcNnsPgE9pENeLhaLCShyxuULgasTCz0o1ckGdgPcDpYmq7G+RtW4MiFbp7AIPdGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3888
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_024714_922605_2A123E20 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks good to me.
Thanks,
Avri

 
> 
> Hi,
> 
> This patchset applies some driver cleanups and performance improvement
> in ufs host drivers by making the delay for host enabling customizable
> according to vendors' requirements.
> 
> v3 -> v4
>         - Collect review tags in v2
>         - In patch #8, fix incorrect condition of customized delay for host
> enabling
> 
> v2 -> v3
>         - Remove /arch/arm64/configs/defconfig chnage because it is for local
> test only
> 
> v1 -> v2
>         - Add patch #1 "scsi: ufs: fix uninitialized tx_lanes in
> ufshcd_disable_tx_lcc"
>         - Remove struct ufs_init_prefetch in patch #2 "scsi: ufs: remove
> init_prefetch_data in struct ufs_hba"
>         - Introduce common delay function in patch #4
>         - Replace all delay places by common delay function in ufs-mediatek in
> patch #5
>         - Use common delay function instead for host enabling delay in patch #6
>         - Add patch #7 "scsi: ufs: make HCE polling more compact to improve
> initializatoin latency"
>         - In patch #8, customize the delay in ufs_mtk_hce_enable_notify
> callback instead of ufs_mtk_init (Avri)
> 
>  drivers/scsi/ufs/ufs-mediatek.c | 64 ++++++++++++++++-----------
>  drivers/scsi/ufs/ufs-mediatek.h |  1 +
>  drivers/scsi/ufs/ufshcd.c       | 47 +++++++++++---------
>  drivers/scsi/ufs/ufshcd.h       | 78 ++++++++++++++++-----------------
>  4 files changed, 106 insertions(+), 84 deletions(-)
> 
> --
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
