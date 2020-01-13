Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91830138E60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:59:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHEB8C6HS7WeeiEEbfEYRSdrH3Ux1sYY8TaYuPFjM4s=; b=aDubF8Tn6emr2O
	fM0pf5sjbUQ/roSXGPmx8Qu3lSmzuazaXTaQ998BNm7zgLPFUntlbR5fPNLa18qMMHcFHeVRMwHrd
	v+UXQxt53XEvp62T5lYVt6VRLoc5mQhbAAuRYrQUTd7Xn4A5C7f6+NNbpmjlsGmDF29Fl7RfSbYu+
	mrE4Y/kbsrSyo3qG5wWkZKHyIJ4HprT3p0FTM/swNloLFazMtBq1etUcxMcrDOA8OY2gkzIG+n1CQ
	R7lOFaqI+cl0JeVwq5QXcQRpopSBg5+neSOdUnqgSRMyBhJLEpfl5ywP65LMLKpqguPSQYUWJhKW5
	P1KfmmrI729kdpyuLBig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwV7-00081S-4i; Mon, 13 Jan 2020 09:59:13 +0000
Received: from mail-mw2nam12on2078.outbound.protection.outlook.com
 ([40.107.244.78] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwUp-0007zS-BF; Mon, 13 Jan 2020 09:58:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HOz/eEFrG1inWPOM1JJcLgsv4JBMX1suVKQn5dE4h65JIwvEWQOmtxS+piOe9RV+rTxdG42rbnc7R/ox0PUHn4vzHN/ORrAgGyi+AyGJ5nCSY2s+aQ1zPyT70HuxGR4ItL/WuNstqu/xIu6A+d86ZX2iXPKxCeqHUp/ZU7SkTT2/YOETchRBoWvqhlWsWQu15OtE1DQHqT3K6TWi5gvpC6IE2XgTPDYMLX64z3YjHO+7FdwDbSsVnQdJtbSSVMP5VYjfxSqDuNjpHrBB8qgR2/CVtm4JufQHn6IgRHhKMy5vk8CUnfQp1Ct1cFuGJLygkDGZlO0s7Ws94669nt421A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mkzh2HqmbmY1jtwx3yTyry6Lixdo5GjU70EYVHBqcZI=;
 b=Kx8weRhF4MLXzGE3A5r2jRxXxjMcvBATMgwNZ3s/dfQ1wCn3z/YnWD6cDWeKDs5ROdG0dopFGZNxP5vZPRTeR313HMAHvKIC779BYOaXP/0K4T22cJ4Qq4+ujxpO82iZ0D9YJ75qLbz3ZcpO9Ao98q9edJJ1pX8tvw4DgrKIqMtqFrXul0QPL+Gfiv521T0Uy5ya8YQBYsIdA3ptVZF+I3iBR3cFB+5/4DBNiCfkUOh1jNIOA2WcF1CGYprQTY+tsC/XL/yIJ3XrV20ClqSH2uLpBTks29N65rwQJFWIrZKFDck2q6j+FJr67lzu1F/jwXU0in9pvRN9rwKdhQLHPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mkzh2HqmbmY1jtwx3yTyry6Lixdo5GjU70EYVHBqcZI=;
 b=xRNgMX619b8LJzLAVJHBEl9NVPl0K/FdIT5TIVK7aAYi7ACN50UsZDdntrXZL6g/OZ/LpHtIAZ0jVIRiZPqHE4IQJKYaNMWqebNus4AydKQ271avkxHpqK+iGyPf07zoviqISfWmnp8KjcVp1M9CjcfxNEJY4PXY1EWAPh4Nmew=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (20.176.179.87) by
 BN7PR08MB5089.namprd08.prod.outlook.com (20.176.177.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Mon, 13 Jan 2020 09:58:52 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::981f:90d7:d45f:fd11]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::981f:90d7:d45f:fd11%7]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 09:58:52 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: RE: [EXT] [PATCH v1 1/3] scsi: ufs: fix empty check of error history
Thread-Topic: [EXT] [PATCH v1 1/3] scsi: ufs: fix empty check of error history
Thread-Index: AQHVwwrtYdyISOHmvEWfKtFqbPPmzqfoX2LQgAAGaICAAABC0A==
Date: Mon, 13 Jan 2020 09:58:51 +0000
Message-ID: <BN7PR08MB568462931864FC928D262098DB350@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <1578147968-30938-1-git-send-email-stanley.chu@mediatek.com>
 <1578147968-30938-2-git-send-email-stanley.chu@mediatek.com>
 <BN7PR08MB56841F049CEF89CD8F40B4E3DB350@BN7PR08MB5684.namprd08.prod.outlook.com>
 <1578908621.17435.18.camel@mtkswgap22>
In-Reply-To: <1578908621.17435.18.camel@mtkswgap22>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcYmVhbmh1b1xhcHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJhMjllMzViXG1zZ3NcbXNnLTQ5ZWNkZDY2LTM1ZWItMTFlYS04Yjg4LWRjNzE5NjFmOWRkM1xhbWUtdGVzdFw0OWVjZGQ2Ny0zNWViLTExZWEtOGI4OC1kYzcxOTYxZjlkZDNib2R5LnR4dCIgc3o9IjE3MjkiIHQ9IjEzMjIzMzgzMTI3MjU3NzA3MCIgaD0iR29mQVgwaU90MEJUTmtzY0FBenVqZFdncnhNPSIgaWQ9IiIgYmw9IjAiIGJvPSIxIi8+PC9tZXRhPg==
x-dg-rorf: true
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=beanhuo@micron.com; 
x-originating-ip: [195.89.176.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3551af9-03c7-4af9-e0cb-08d7980f31df
x-ms-traffictypediagnostic: BN7PR08MB5089:|BN7PR08MB5089:|BN7PR08MB5089:
x-microsoft-antispam-prvs: <BN7PR08MB508900ADDE6689A1C0C35D9DDB350@BN7PR08MB5089.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(189003)(199004)(4326008)(54906003)(71200400001)(86362001)(8936002)(9686003)(55016002)(8676002)(7696005)(81156014)(2906002)(6916009)(66946007)(33656002)(66556008)(76116006)(66446008)(64756008)(66476007)(478600001)(81166006)(7416002)(5660300002)(6506007)(52536014)(26005)(186003)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR08MB5089;
 H:BN7PR08MB5684.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6zrUJ3uxkhrShR1eBkUvsN2fwy2LNolvKQwC/GgTAkgQx2mUepfSOkeoDlFo3aVnKjUkL+2JEe6Eo84Gn+JfRvE0Dxrav2q4nlJpGR6tBGyO9mP81/I2KvyTRWCIov03SH09KbLDtyupnk+JiOOy9GTHvkkSwdSBqCc6ZnRZP4Vzvk36cbGglo/nqdHhQsxCd2drhN89Vl4cGBp6XvJDGc3JucXmZ1LUfXtlJ8Zr/4WWjJrmyQMr2ZwPMoLRduDUVk6/oq6XRbywOOvQAxqfJNmtecJicWu5m5NdDn+muwDBe4dQIeIg1TBgXaWSXH7weMHCfNITGARk2MEAWGbppja9r5rTU08PLOMUPFpPn6FGTnPYLPI171adMBTVRWH81pQiX97qV2mMlS+izGIPYADcbRS5L5GQ9ajeDBaME5qfXA8e5cz1iw7LXGS7lTet
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3551af9-03c7-4af9-e0cb-08d7980f31df
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 09:58:52.2715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kpVHKFgO4HKMqNpgRCfInpjUdg5mAM31h63RDvRDe400+3SHFjbOqc26FfMPdry3pRqRZCaPotwaWFeh6DrDug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR08MB5089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_015855_388614_C8933D53 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: RE: [EXT] [PATCH v1 1/3] scsi: ufs: fix empty check of error history
> 
> Hi Bean,
> 
> On Mon, 2020-01-13 at 09:28 +0000, Bean Huo (beanhuo) wrote:
> > Hi, Stanley
> >
> > >
> > > Currently checking if an error history element is empty or not is by
> > > its "value". In most cases, value is error code.
> > >
> > > However this checking is not correct because some errors or events
> > > do not specify any values in error history so values remain as 0,
> > > and this will lead to incorrect empty checking.
> > >
> > Do you think this is a bug of UFS host controller? According to the
> > UFS host Spec, If there had error detected in each layer, at least
> > bit31 in its error code register Should be set to 1.
> >
> > Why there was an error happening, but host didn't set this bit31?
> >
> 
> Thanks so much for review.
> 
> Yes, the case bit[31] set is true for UIC errors.
> 
> However the users of UFS error history, i.e., users of ufshcd_update_reg_hlist(),
> are not only UIC errors. Some other essential events will update history too, for
> example, device reset events and abort events.
> 
> Take "device reset events" as example: parameter "val" may be 0 while invoking
> ufshcd_update_reg_hlist(). If this happens, the device reset event will not be
> printed out because its err_hist->reg[p] is 0 according to the original logic in
> ufshcd_print_err_hist().
> 
> Feel free to correct above description if it is wrong.
> 
> Thanks,
> Stanley

Hi, Stanley
Thanks, now clear, it is not controller negative act issue.

Reviewed-by: Bean Huo <beanhuo@micron.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
