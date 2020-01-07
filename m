Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A3E13220B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvfWi4n+a9adkZQbwYtINhq5uiomCX1kReh8JBHvEuE=; b=RSgK0RknJ6cDwg
	sNMJ5PKE/esTkJHXjJoSZfULLvmnqAmmz9PZ416PmVNi9t3wmFRJQrj4SwqfjZDJmH2WKrI4ygMs6
	bMS41S7+sr72wrA3xja7st2Ax6wibiDGr5ZpjBuHlwnf0zrW/tmyanOaUUcjK/B01wg2YZGbQ64AD
	UCVOsZ76u/mxukN8bYlJkDODY3Ylk1pJfeUCGDBx9FVhAlWEYgruLbk4PmRZt7qarv/s13HHlUMBH
	DSGi0mWSBR28NqB1MJDijtzp54hGwdF+K5mr2Nd9xSKDYAmyR2Q1B9di/oS+R4g1n3hLRj4X86c/v
	qQlUYt8xglzBzhiyAmkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokyP-0003Hk-HU; Tue, 07 Jan 2020 09:16:25 +0000
Received: from mail-co1nam11on2063.outbound.protection.outlook.com
 ([40.107.220.63] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioky9-0003GC-4E; Tue, 07 Jan 2020 09:16:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=agBsy/jrPf0B4Iab4vSo/C8LcPjxR5ChO3ZCtloAQOBiBO6Ks0nDqDz/XCIKMgmEsOYF30KtPSjTDJ6bx06KZcifvBmQgmH5ll+u77p4UTe0q94/1Vp9mUBqoRTTyCOKxyNLFqMo4X6UeqD+WSOnbsK7ewBRnLqV8V7eMJUAW33QkpvTLU6AyVslkb2lbfWe42xGqHG53Oln7h4ZVkWcJpDRUrHD+WW8SA0+Bp+WoWagMtla05OUn1Q4TA0GitPcF4pL1sXxL95149C+qShzSRQnzvRu2bz/h0ifqT8w5RBL+/5J2GUUANZhajduTA3scLk3Gw5IDuHoETND6ZP/dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZTDomqYrN/WvPtLGjg+YTjp+hmq3bXyMaVRmPL8Oag4=;
 b=g/upcJ483i6Ci92rvop/3QQxVba/Nv1pw4VhgOHPWQVOujORxFakAygz+STFnU+ltedRlxiXIiBxMnWIvqXu5gBsQ8SZFpS3qt+Oq0WSoynZ36mbZieB7LUU7JAWfCF7O0l7dbcqjGIm/ObUydH7O0C7WLmEN7dpeawkd2qNXArvOftRhcWwgKngDi2rzMwe8KXfy5kXaVDMnARrJsmpVS71hjqsVS+FMa5zgKsATgftilFbzHn4xuoK+c5OBdZDd0fqljcsT/zLnxGQ2TDhx0HbdUXHQSfYyvFHRzLHpax6lewT13X55i4LLsxz8H9KmDzAUrdIS45oJUY2ivCUqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZTDomqYrN/WvPtLGjg+YTjp+hmq3bXyMaVRmPL8Oag4=;
 b=33/ltGgVCCo6FgNd5PkEowut976MktMlyHyTKIlTUbJbtcZbTxchgiIHhBeygtOMNIeie9h7e5LQtNRNY82T8flW9kj1/MPB3eu+WsBQ4FTN89XJdA9ls1XxQun2e6wvObgLDzmSSkMf3KbvazCvAgaw+gDTZSm9NDOHUQDBQs8=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (20.176.179.87) by
 BN7PR08MB5123.namprd08.prod.outlook.com (20.176.176.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Tue, 7 Jan 2020 09:16:06 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::981f:90d7:d45f:fd11]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::981f:90d7:d45f:fd11%7]) with mapi id 15.20.2602.016; Tue, 7 Jan 2020
 09:16:06 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>, "jejb@linux.ibm.com"
 <jejb@linux.ibm.com>
Subject: RE: [EXT] [PATCH v2 2/2] scsi: ufs-mediatek: add apply_dev_quirks
 variant operation
Thread-Topic: [EXT] [PATCH v2 2/2] scsi: ufs-mediatek: add apply_dev_quirks
 variant operation
Thread-Index: AQHVxCgRQlkyWmeZCES6JiJKGQMiW6fe3rgA
Date: Tue, 7 Jan 2020 09:16:06 +0000
Message-ID: <BN7PR08MB568474ADD8C6853D26A361C8DB3F0@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <1578270431-9873-1-git-send-email-stanley.chu@mediatek.com>
 <1578270431-9873-3-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1578270431-9873-3-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcYmVhbmh1b1xhcHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJhMjllMzViXG1zZ3NcbXNnLTU0MjUwYTU4LTMxMmUtMTFlYS04Yjg3LWRjNzE5NjFmOWRkM1xhbWUtdGVzdFw1NDI1MGE1OS0zMTJlLTExZWEtOGI4Ny1kYzcxOTYxZjlkZDNib2R5LnR4dCIgc3o9IjI2NCIgdD0iMTMyMjI4NjIxNjQ4ODE0MzMwIiBoPSJQL2NaaTdVVjR3MWVrTHZvMVF6eFViZElOZW89IiBpZD0iIiBibD0iMCIgYm89IjEiLz48L21ldGE+
x-dg-rorf: true
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=beanhuo@micron.com; 
x-originating-ip: [165.225.81.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 87e5fbcf-08f7-4293-2010-08d793523a36
x-ms-traffictypediagnostic: BN7PR08MB5123:|BN7PR08MB5123:|BN7PR08MB5123:
x-microsoft-antispam-prvs: <BN7PR08MB5123D89C7AD1F5D6B8205B82DB3F0@BN7PR08MB5123.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:400;
x-forefront-prvs: 027578BB13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(189003)(199004)(66476007)(64756008)(66446008)(9686003)(66556008)(7416002)(55016002)(55236004)(86362001)(66946007)(76116006)(4326008)(478600001)(33656002)(6506007)(316002)(7696005)(71200400001)(558084003)(81166006)(81156014)(8676002)(52536014)(26005)(54906003)(8936002)(186003)(5660300002)(110136005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR08MB5123;
 H:BN7PR08MB5684.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VMrzhLhCJtl3OJDL+Frn0kTSYHMmjX/BMLz2O95EU401IUIGElq1kH92QuSlTVNpSN8MUa7N9X0j3myiWQLtCm5QzVvxOjtjUX0u4ffS+CrWKpt5MsxBQ8DtiItswDiJF/NFKHG3/tgNPsDWS0r0NkO/D94d7nKIiCwqKHpPUgfDkBYwRVu1irq9TeWGlFnf2wAndbMIuuT7IiiHUrz2bd1qlLsgfXnnZWhis00kboO9qSY9eKqAzjHKdh3rt/njSrLbOrjjfPjvNdb+kb9ITXZcKVTFdBRsUJt7Xg3ZT+IDAsDb0G+7W9b1GzIAQ7E+8Kteovsn4HasXwwOnfiOvVzlFSfy2k/y4t5OHE7B6a7hpBCbLOn6QjG4313Xp3NoLZ3b5kD8cbVYO+Y7zbUrlHIAlPkfy2bUxDglPoFXIFfnOstZr7Uh9+kpO4mPI4bq
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87e5fbcf-08f7-4293-2010-08d793523a36
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 09:16:06.8548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d8k7CVfXqvkRqJ3EXrI0HOw2kk0BraYrRvnmchuIKUy3aHHZ8uo7reUGzMpSMWV3QBYESOaRerioz5MMuK3rfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR08MB5123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_011609_176302_4D4E36A2 
X-CRM114-Status: UNSURE (   4.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Reviewed-by: Avri Altman <avri.altman@wdc.com>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Bean Huo <beanhuo@micron.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
