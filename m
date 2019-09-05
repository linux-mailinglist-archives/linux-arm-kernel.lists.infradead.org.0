Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32DAAA0B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKIvOz1Dtfcb/W/7zSBCQP/Okzqlz9jmJzqIQOp+GqY=; b=rg1AoS1HLPDuuy
	4BGzEWwpFxqnQgT60JnSnHl9tBnRdoWzemcJHGS0jU5puA0FxVrQoz02F5CZZSdYiaRZ8QcX3Cupo
	Be1Clnv037SyLEkUL2v/3JmWoTDtq5OIZRcE4t6+XWrplZZGQZfeAtzbhVNwJrdz0+b8YxMw8GfP/
	10u81GH63UvA5rbLJLvBudMl1cYRsgo+giYUZrXt1gju2VoGd2dCYtSWeAeCXZmaSljCJvJS2Jm4h
	PY9pum3gAa3K4jzexLX6z4QHDeY+ITZV0X/699AXHRRHAlnxRQoVWTq7Y+IUgeuAjqkFhIYvcP3DY
	z9UV6BJ/h2QNsyYfZaaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pUd-0001tE-BC; Thu, 05 Sep 2019 10:59:59 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pUT-0001sl-62
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:59:51 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x85Axfu4025062; Thu, 5 Sep 2019 03:59:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=Tmb1qq7rMuoaeFj+9bOcy+6+73+uzPJHDuZCgCY2i58=;
 b=kK7RIQY4XmM4xMW4vVuIHiZ2T4XhbPMXq3fLZlKpybN2jLIl5zXh10e2xr9J8mvf1X+0
 bLZcDUoPHhaYhiUmVKm2Yuop8yJtkduwXdIfCrmZS83j3Dow2KoXBr0NSp5xCC8ZYKsY
 slpOb/l6maHcOJq3mE4q+89XJ51cWjlUMBZpCLwumAL9lpVq/rUvx4FLBp11oO3Lv3g1
 7Uslmig+l6KtAKcSkowgE9eNbbr0dQwdp8SGHDxZxwAEQxJXO3f0aRaMIJ7wNWfvUZ/j
 0ecfofW70aq9rndL9vfAFXqaYIf5qiwk9wsxRsa8NiXtV8Pdus1/DLVnRS70+9nvLvsE zg== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2uqrdmj3u0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 05 Sep 2019 03:59:42 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 5 Sep
 2019 03:59:40 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (104.47.42.53) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 5 Sep 2019 03:59:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X84T8i8C5/KbLBZEtHkIxk6A+wamq2sg6Fvose+Jtn1qOHnNuqErt8w37FJO1hWEhTKcECjqdXEpUdfnk58feauQ/8OwZkt3QIuIVPMQ1TREEVlNH9eRaJGE9vb2rJC6hloqyIsTl5MHlXQVleXfxGNpqscyvwQp3+8+hqw4hmn/fJJEAwhydyo8jKdr4MeMAbv5LyLPPzJWddyKEc2ICo5TImLywyznAmB2wQ7jIH5YwMudvxrs1AkdFnMQF4Ms9r6XvQuBLKQYm+9nyRmCDpOJSSQp8kCsG1PHy5NS/CQ24hrW9KiJ59lNufk+7mEUEloV3VU9TE7Gny4k1koi2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tmb1qq7rMuoaeFj+9bOcy+6+73+uzPJHDuZCgCY2i58=;
 b=WbmjOvtl8HbD2IFtx+yn2cegZYOtX9JEgb669Oy7DkT21G1cmBSdlb3nh/k438z4XcahrBsCQnCRNc/X/ZOxGtley13L9PeP3j7OWyGi53lVelvh0umHscLdgpaSUlxuFJtDAEsppbptWXZzU5dNH99uLLLZ05gpXirkwFsjTh4qpWwK8Zcf01w70aeK9TBr5ukFxyMLuqcHa1Wt9jTkwWfG4bp/aUCpWeCJWxIzxhHqTKWtDu+4ODRrw3J6IUdQzdFftq05z0CSD77LhapnVeJiWl7aIfwmLalAIztHSOT3Q8W5T3flUWPc+UetntRyl5CRJ851XM9vQ0gOUjxa6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tmb1qq7rMuoaeFj+9bOcy+6+73+uzPJHDuZCgCY2i58=;
 b=gjfzAUeaimAlZB4d0U1bYx8HwPpvHL1fKzXwYivXOe/gRoKMUbKKdslxZkef6jMx1VFrKHkHUknFk4g92X8yNLYkvmYlxQ3rCm/bkOisJeRw8TPj7VPLvXhu+uNIoFQtB/QtbGPcTKLd5ZwOsscjI4WrfLZNXZbcg9nuscbJK1Q=
Received: from DM5PR18MB2184.namprd18.prod.outlook.com (52.132.143.143) by
 DM5PR18MB1545.namprd18.prod.outlook.com (10.175.219.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Thu, 5 Sep 2019 10:59:39 +0000
Received: from DM5PR18MB2184.namprd18.prod.outlook.com
 ([fe80::68e9:e24f:3f9c:de02]) by DM5PR18MB2184.namprd18.prod.outlook.com
 ([fe80::68e9:e24f:3f9c:de02%3]) with mapi id 15.20.2241.014; Thu, 5 Sep 2019
 10:59:38 +0000
From: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: RE: [EXT] Re: coresight: Add ETM4.1 support for ThunderX2
Thread-Topic: [EXT] Re: coresight: Add ETM4.1 support for ThunderX2
Thread-Index: AQHVU3DbTaHKp89/hUGoLbf98FNqKacC89GAgBoT6JA=
Date: Thu, 5 Sep 2019 10:59:38 +0000
Message-ID: <DM5PR18MB2184C7E5FDC9E82908C28CBFD6BB0@DM5PR18MB2184.namprd18.prod.outlook.com>
References: <1565877215-1331-1-git-send-email-tanmay@marvell.com>
 <20190819203325.GB8268@xps15>
In-Reply-To: <20190819203325.GB8268@xps15>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [14.140.231.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6eab5de7-025b-43cd-4d76-08d731f025a9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR18MB1545; 
x-ms-traffictypediagnostic: DM5PR18MB1545:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR18MB154500064DEFD96E834F053DD6BB0@DM5PR18MB1545.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(366004)(39850400004)(136003)(189003)(199004)(55674003)(99286004)(7696005)(74316002)(7736002)(305945005)(3846002)(6116002)(478600001)(86362001)(2906002)(6436002)(14454004)(66446008)(76116006)(66476007)(66556008)(64756008)(66946007)(6916009)(55016002)(8936002)(9686003)(81166006)(81156014)(8676002)(33656002)(107886003)(26005)(102836004)(53936002)(6246003)(11346002)(71190400001)(71200400001)(256004)(19627235002)(476003)(446003)(486006)(66066001)(186003)(54906003)(316002)(25786009)(229853002)(4326008)(55236004)(76176011)(6506007)(5660300002)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR18MB1545;
 H:DM5PR18MB2184.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5Iu5dYdjB/5M5UBuBvzuXcUY4wH9rYmfbMn8RUABgZjTBi4h4CBDhCkF6YFar6C82alnJpsjjR1Dj8gLaHCIpCQn1tCmhs1olhERpSbj5qk7j9FafyESAcBuY/oKwKfmCKvMPsNDzMv66BzLDVkkMvrgctLGxYpMofUVwWFMNRlaVitChfade6Gyg+sfP3homo3q/0ZMdV3uoYuwqOsG8XR2EVifYghOrMWuoF5itVoPmkMS0LEX/aE+w6c3t6VIltxMaZOXXe49wDmkfSieJMOWm3hGJY65PNu6ZP9qcJAeRZZjHtQy3hoKx3fcuG+wDwD+eKTOyq8f9yDbEb/eVHKGmlSmoUuRXzsqUImSijOcrIRmETNR7ro5HjaaqHsmjRhhFdd6hScryeY/v4FvbKKf8IPZRgbik3HKUv7M/+Y=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eab5de7-025b-43cd-4d76-08d731f025a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 10:59:38.9069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qfqt51VAIQCt7OnQCWdWUyCnzbtrwFfOlifs1DuynacisdQNtkP7yBBrLhlTHTa2Y01JE5dKFQjO1zBk/7FR7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB1545
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-05_03:2019-09-04,2019-09-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_035949_651147_85CC824B 
X-CRM114-Status: GOOD (  20.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tomasz Nowicki <tnowicki@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

> Same comment as the previous patch along with the following...
> 
> On Thu, Aug 15, 2019 at 01:53:46PM +0000, Tanmay Vilas Kumar Jagdale wrote:
> > Add ETM4.1 periperhal ID for Marvell's ThunderX2 chip.
> >
> > Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>
> > ---
> >  drivers/hwtracing/coresight/coresight-etm4x.c | 2 ++
> > drivers/hwtracing/coresight/coresight-etm4x.h | 1 +
> >  2 files changed, 3 insertions(+)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c
> > b/drivers/hwtracing/coresight/coresight-etm4x.c
> > index 7bcac8896fc1..ac3bd617907b 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > @@ -58,6 +58,7 @@ static bool etm4_arch_supported(u8 arch)
> >  	/* Mask out the minor version number */
> >  	switch (arch & 0xf0) {
> >  	case ETM_ARCH_V4:
> > +	case ETM_ARCH_V4_1:
> 
> Why add ETM_ARCH_V4_1 when the switch statement strips off the first byte?
> 
> Look at[1], someone already added support for 4.2.
> 
> [1]. 5666dfd1d8a4 coresight: etm4x: Add support to enable ETMv4.2
> 
> 
> >  		break;
> >  	default:
> >  		return false;
> > @@ -1196,6 +1197,7 @@ static const struct amba_id etm4_ids[] = {
> >  	CS_AMBA_ID(0x000bb95e),		/* Cortex-A57 */
> >  	CS_AMBA_ID(0x000bb95a),		/* Cortex-A72 */
> >  	CS_AMBA_ID(0x000bb959),		/* Cortex-A73 */
> > +	CS_AMBA_ID(0x000cc0af),		/* Marvell ThunderX2 */
> 
> I suspect this processor also has "coresight-cpu-debug" IPs.  If that is the
> case it is very possible they both have the same CID and a UCI (see next line)
> is required.
>
Yes, our processor has the coresight-cpu-debug IP. Currently I am working with
the hardware team to test this feature. Once that is done I will post a patch
that supports it. In the meantime I will post a v2 patch for ETMv4 with UCI.
Hope that is okay.
 
> >  	CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),	/* Cortex-A35 */
> >  	{},
> >  };
> 
> Thanks,
> Mathieu
> 
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h
> > b/drivers/hwtracing/coresight/coresight-etm4x.h
> > index 4523f10ddd0f..03369e56b2eb 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> > @@ -137,6 +137,7 @@
> >  #define ETM_MAX_SS_CMP			8
> >
> >  #define ETM_ARCH_V4			0x40
> > +#define ETM_ARCH_V4_1			0x41
> >  #define ETMv4_SYNC_MASK			0x1F
> >  #define ETM_CYC_THRESHOLD_MASK		0xFFF
> >  #define ETM_CYC_THRESHOLD_DEFAULT       0x100
> > --
> > 2.17.1
> >

Thanks,
Tanmay

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
