Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A042130642
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 06:51:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cZImqyrcYb5DxvfmXAp3gsVN0UkvePVCO82mBhblis=; b=huboRDKPbzfULy
	fe7EsxJHOLvg+iuLoEzYJyRB30kksvchXnk25maqgNrjvaX6PB3HgjV/UglVNgMj5nmZaH6Uk/DdW
	oUkn93WKpKF8eutDbuL9+yHMF/PoCyEcCDDFAAQV63Ef66n0bOFEvm07R7WtdIRLhct7KEddEQUyr
	KUqvG1BrVcLzX/BYMcGGeOh8FyUTgx8caSZbBdKG3pWR2NWkhaNi+wrG95HI/0Qw2F4ZJ7tKFBYeI
	sA2CNOjZPNQpT1P7Q8W2JLvMZ1X7OuYF7UilH2rZNjBmr9XHy8wbQXf4W1yOw2ieQZEWGy497ytyY
	r0jNODWJlRgquiFmn6Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inyp4-0001j9-Ic; Sun, 05 Jan 2020 05:51:34 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inyou-0001hI-LW; Sun, 05 Jan 2020 05:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1578203485; x=1609739485;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sUi6wqPs0k5OylI8see6LJEBZgAlUFkPWvvnsOXUXCg=;
 b=SPjRg9qDSviHDcygehLCfek4lJ8YdpgTyNC+IwV6jpQSmOTE3OvqsxvB
 P4DbV3ZUvyDBNjZgllxOSpCCvE8QDkGG/1FYGqBR7qQhNnrcXUmFjVq4D
 5krp8k5ZZqW8UU7CDhL4HQblZbIk8o1i+lHg2sAQwx/+x6AmQdQehu9l8
 FZ1OQEU2cQjTVlf1XhazYau2Grap6F29tBAW/UqJFgZWjM3Z+mKmr4fLB
 px5PcwkWXloh2p8OqpMZiD9nPQVltNzVDSTBqeObJFIHRRc3hyGRkgR/i
 RHQ4Fl9a0n9t3LvECqRx7yrgZMyHYwwSHSBmO7DV8AVBxvT313KS8lazj w==;
IronPort-SDR: /13JGtN/SW/pw/adJNi177onl1MVcztl6kR2y/z/A/SwR/9w/v7a22Vz2aWPqhcmQvV1JmEzcu
 iN/RCraTOsQVVs/xp+7O32NQBQKfQCzYIh+hdDgcL5n561INN16AHpbcggXMngDd09rmhSyEVL
 0KW8yHMwvbl2vX2LXKWXd4tVYo0K9ae8WgFhbKqTBdgAuULCo2tUZiWEYkZdQSKtWFm2PYwEdS
 SUvu2EFhyh2G8eaFXxLvroDmspQoyY98yq3hKSRoKLuWxoxz/rEVAt2avXYPGuddyEiczgx2kv
 sIQ=
X-IronPort-AV: E=Sophos;i="5.69,397,1571673600"; d="scan'208";a="131203882"
Received: from mail-bn8nam12lp2175.outbound.protection.outlook.com (HELO
 NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.175])
 by ob1.hgst.iphmx.com with ESMTP; 05 Jan 2020 13:51:17 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RZ/h5++j6Sfe+82LBbKrEd+w/RrHsAwxlz7OvE8UPj4bkDNYob2pR9P9tgtE7bp18Ad4qsVhG3u8rZNUo1mdIFeQwKz+5EocJzUyONSwNfmqQeFWsXa2LS4KPWi7pGWieD9Vr65kP6x17GHRr+UV3JLXhbaQd+nwDCRM7UmrXEvfMsxusbrKBkIxRBhlBvrLbN9YuJvK0A5/sbGDt2Vr6yx/6p/63874D2AfhDuAaJfoDANGh2zmEIfKfXmEBgzJs0ScPcj6pgXL0deau9tTueS6GiKvae/M4ubrJiF7B1Sj5R4ThBWUFYmaInl/PuxHI3aani/g/qioOJMh5Mn2gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LDSICHiA4AGENjnEKDQBWkghDmxnzSI6AoxJ9CmWG38=;
 b=X80A4i/GQ/4scB44S+yDoMmJyb9usaQDA0c2iEUXuVLL4+LuZI4xUAt17yZRLc+MAMWdo9QVza7F3N1OkIWhe5tnVtxiwm76cMFXEhrJWk6cP0e0VwhuZIZ1PAg/UCxAczdD+zGYCWOszMrtqS7sguqXah4wTzVSCpgi8UKL2WUR9Bzk91DL5nA9DX8ZrRqRNjVK/bsdFE6sLBu4jSGM1ovaFVFFf1QprcJ59vVEWUi37t16ayCtGpfj4UNIbTkA7cwgiKydAocwIVYKohiJMCckgBvntA4r1t5Ts720vCxwwSxkkLoJIcRbkryQRvmk5UTm3seeGU3nvgmRpG2VhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LDSICHiA4AGENjnEKDQBWkghDmxnzSI6AoxJ9CmWG38=;
 b=vXHysYslCli3dd2oj1jq6DZqD1r7iQwrnXvar4ZMsHhpKnscdZrr/mJO8fUIZfdnLpr95QHxdkMRqzqPuf6m5vSVXeZ4zTtJqkfMj075yNPrG489jx/VTeN8bvGx2AVVNHMpE5w852w3dVhI/dzg6ue8M8TxM9Ya54Sfo+xJcb0=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB5935.namprd04.prod.outlook.com (20.178.255.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.13; Sun, 5 Jan 2020 05:51:15 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::460:1c02:5953:6b45]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::460:1c02:5953:6b45%4]) with mapi id 15.20.2602.015; Sun, 5 Jan 2020
 05:51:15 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>
Subject: Re: [PATCH v1 0/3] scsi: ufs: pass device information to
 apply_dev_quirks
Thread-Topic: [PATCH v1 0/3] scsi: ufs: pass device information to
 apply_dev_quirks
Thread-Index: AQHVw4RnKOmg85o31Eufk/ca9N3SIafbkG15
Date: Sun, 5 Jan 2020 05:51:14 +0000
Message-ID: <MN2PR04MB69913F0B671032A388747CF7FC3D0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1578200118-29547-1-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1578200118-29547-1-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [2a00:a040:19b:4327:8ce4:162b:4d1a:a5c4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 74e89c91-07e5-47ef-08ce-08d791a346d4
x-ms-traffictypediagnostic: MN2PR04MB5935:
x-microsoft-antispam-prvs: <MN2PR04MB593536076E2F47BB7B3C27E3FC3D0@MN2PR04MB5935.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 027367F73D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(396003)(39850400004)(136003)(346002)(189003)(199004)(33656002)(86362001)(4326008)(5660300002)(9686003)(52536014)(55016002)(110136005)(54906003)(316002)(7416002)(186003)(478600001)(66946007)(53546011)(6506007)(7696005)(81156014)(76116006)(81166006)(91956017)(8676002)(8936002)(66476007)(71200400001)(66556008)(2906002)(66446008)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5935;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OAxoApTYCf9zIMe5rRCaDTQDZ3z8VzjA01UxIne1th02OWsG1eBPznrT51AWfqgRuqTMoazeqdgDXVPC6NEZ/7/9tdX3OxeBNmOci3DwTwwC00MVGQmttax/mcgoe8mTFi7mKAByGXfVmRD4ewDZ9mSdKey5ElJtGLrYTBtIvwUqc5JKx0FB3YAofjYRhz4Wh3wCFRSlPQBEXynQqse8wvQ1uslPsHTpzglmrR+T0W/f/dYng+KAawGJE1Zv01EHtB2v/fita80CJEQtHpS+zqH07/1FXkEdmFlr2lMEdrN1nE1VDxmPD6mU6i+iscZF1B4qjCSr7AcvKUbOL3Bxsl0gfVnxF51bYptp2Kjh6RwdoiZEqat03VIZPPOHZ8BvojqZxE980hrJq81d5sanmBu0SoFqFupRosOHMkNvUAqwBYi7nKP/Udgmw84ygeVG
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74e89c91-07e5-47ef-08ce-08d791a346d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2020 05:51:14.8908 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VDv9xT4o0CzRiZjH0fngfu4XF/bFBUDvh7T3fIXBqb08ToobuO5HZJ5sTEwaHfe1ZGtFxZWGDnuO3d0mXqLA6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_215124_805115_9F3081B8 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

You have to squash patch 1 & 2, otherwise your patch 1 won't compile.
Other than that: looks good to me.
Thanks,
Avri



________________________________________
From: Stanley Chu <stanley.chu@mediatek.com>
Sent: Sunday, January 5, 2020 6:55:15 AM
To: linux-scsi@vger.kernel.org; martin.petersen@oracle.com; Avri Altman; alim.akhtar@samsung.com; jejb@linux.ibm.com
Cc: beanhuo@micron.com; asutoshd@codeaurora.org; cang@codeaurora.org; matthias.bgg@gmail.com; bvanassche@acm.org; linux-mediatek@lists.infradead.org; linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; kuohong.wang@mediatek.com; peter.wang@mediatek.com; chun-hung.wu@mediatek.com; andy.teng@mediatek.com; Stanley Chu
Subject: [PATCH v1 0/3] scsi: ufs: pass device information to apply_dev_quirks

CAUTION: This email originated from outside of Western Digital. Do not click on links or open attachments unless you recognize the sender and know that the content is safe.


Currently UFS driver has "global" device quirk scheme to allow driver applying
special handling for certain UFS devive models.

However some special device handlings are required for specific UFS hosts only
so it is better to make it happen in vendor's callbacks only to not "pollute"
common driver and common device quirks.

We already have apply_dev_quirks variant callback for vendors but lack of device
information for handling specific UFS device models. This series provides such
information to apply_dev_quirks callbacks, and applies related modifications.

Stanley Chu (3):
  scsi: ufs: pass device information to apply_dev_quirks
  scsi: ufs-qcom: modify apply_dev_quirks interface
  scsi: ufs-mediatek: add apply_dev_quirks variant operation

 drivers/scsi/ufs/ufs-mediatek.c | 11 +++++++++++
 drivers/scsi/ufs/ufs-qcom.c     |  3 ++-
 drivers/scsi/ufs/ufshcd.c       |  5 +++--
 drivers/scsi/ufs/ufshcd.h       |  7 ++++---
 4 files changed, 20 insertions(+), 6 deletions(-)

--
2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
