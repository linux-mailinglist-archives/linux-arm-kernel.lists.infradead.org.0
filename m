Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D58D1BD1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 20:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gA0NhZj36O3PQrGv6t4oH4f2d88+LRnlhhV5AKdp3lU=; b=IQCxvO5UQEcs0B
	YlObSCZRgi8cFcp/RYRdpKbYhcba4W/F2V4BHf1ZxdYuCh824s60Z9e39bLGQ3WD9lC7bCk3eWFOs
	bXzYKRqdfovB5JFN7ADKxaNjqKXmPXMbn4NF6FGTFBGPtu+gBLAxDcH73aXUoWKuoehUNcx7wK7WJ
	SI9rdTW5nGrlTNmx9yjSPXGJisq2sObMVNgW8h5UTLl6KPzDWq63cybddkZQm2nw+1hOjSiZdQ01R
	t/au6xYf3Mqk6hLB+0Lzg01MV9+gqzU1qKmpZAs6mCWFPyuZtVhj8m/5+ukoyiuev4b5T4MFkSoMp
	Mohw1nPBK7QgEWIDBBhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQFa5-0003Y1-4Z; Mon, 13 May 2019 18:21:45 +0000
Received: from mail-eopbgr730054.outbound.protection.outlook.com
 ([40.107.73.54] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQFZw-0003Wx-JM; Mon, 13 May 2019 18:21:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8z+Mn+lb73jmCGFVT1Pk/z//+SLoGgNMe99zjJuR7Q8=;
 b=sK3HLb3cuMqVBE9El25ZGrDXGs/TS4n/FZylNfxPHNz3so9rU8hBeQh33WEzuBnrqp1esAIqYryOK/NnSvupWiMuuZFfXYdzU+ovwScyjPO/sPEhcCjocMx5bNKcrCW38IMpzcrxcYhDN/huxxtQmwrNdn2xKNPN4ul7h88pPjg=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (20.176.31.141) by
 BN7PR08MB5537.namprd08.prod.outlook.com (20.176.29.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Mon, 13 May 2019 18:21:23 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::8d6c:f350:4859:e532]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::8d6c:f350:4859:e532%4]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 18:21:23 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>
Subject: RE: [EXT] [PATCH v1 2/3] scsi: ufs: add error handling of auto-hibern8
Thread-Topic: [EXT] [PATCH v1 2/3] scsi: ufs: add error handling of
 auto-hibern8
Thread-Index: AQHVCZlJG8f+B7maOUSAPf/KvWjoI6ZpV6KQ
Date: Mon, 13 May 2019 18:21:23 +0000
Message-ID: <BN7PR08MB568438668FC7C90A1284F53DDB0F0@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
 <1557758186-18706-3-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1557758186-18706-3-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=beanhuo@micron.com; 
x-originating-ip: [165.225.80.131]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e905364-6b9e-4550-d84d-08d6d7cfce30
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BN7PR08MB5537; 
x-ms-traffictypediagnostic: BN7PR08MB5537:|BN7PR08MB5537:
x-microsoft-antispam-prvs: <BN7PR08MB553757C2B02303588760BB9EDB0F0@BN7PR08MB5537.namprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(376002)(346002)(396003)(199004)(189003)(110136005)(99286004)(54906003)(229853002)(73956011)(9686003)(256004)(74316002)(66556008)(14444005)(66476007)(64756008)(66946007)(66446008)(2201001)(5660300002)(7416002)(4744005)(86362001)(7696005)(6506007)(76176011)(76116006)(4326008)(3846002)(6116002)(53936002)(66066001)(81166006)(81156014)(25786009)(102836004)(316002)(55016002)(8676002)(486006)(71200400001)(6436002)(52536014)(71190400001)(14454004)(55236004)(33656002)(11346002)(476003)(305945005)(2501003)(2906002)(68736007)(186003)(7736002)(446003)(8936002)(26005)(6246003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR08MB5537;
 H:BN7PR08MB5684.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6A+z/BY7l3S1p8EMS/pDKFxtSp1S5N3L524N7fxBTRSZtpBL8ni0j6/BsDr1sy/RiY2qP5Gvo/2L/qYDvEx/PWg/fYNyQ6TG+/NZHVYeIXTz1GtmmZjGFKlkuLU5MyNpucxPWYgnR8CS2Il3koCZpdKvgrO04zoz07MORhN2C8/W7hLmI31PqqQpoodEhIaVtOt1Gm/0VYvQ2jKscAkeXITG940YgrysBSUNCd1lPa6rYBhWFF/YQBl1VA5G7IfCbUyQr61zJ9nlWXydACmC8vwRWodfpBhyfvkr5OSA7pneMXZxMWJQ8NrWHIsMJPFSeKRRI2+wKMa2r0I3nrvwJUH1r653QyGCIvSTsDbJYL/E/KwwZj3Gh1ir7CsYz7NFCxs5/3bfnyW4xz2NPsr19B63ePQgPDt2rpmzvBzxTlw=
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e905364-6b9e-4550-d84d-08d6d7cfce30
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 18:21:23.5594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR08MB5537
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_112136_696147_88908890 
X-CRM114-Status: UNSURE (   4.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "vivek.gautam@codeaurora.org" <vivek.gautam@codeaurora.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "sayalil@codeaurora.org" <sayalil@codeaurora.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stanley

>+
>+static inline bool ufshcd_is_auto_hibern8_error(struct ufs_hba *hba,
>+						u32 intr_mask)
>+{
>+	return (ufshcd_is_auto_hibern8_supported(hba) &&
>+		!hba->uic_async_done &&

Here check if uic_async_done is NULL, no big problem so far, but not safe enough.
How about setting a flag in ufshcd_auto_hibern8_enable(),

I concern about how to compatible with auto_hibern8 disabled condition.


//Bean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
