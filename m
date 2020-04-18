Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01D31AF223
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 18:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qP0pBUC95M2o4xiiFivfNXdWb/kjAP4zFoFRGTACcGc=; b=lF91KF6zbbddD9
	ES4kZEunPIpPb2YE4du6kr8JxPS2x18O8qdKI9cLCygtA73an4C0Qv21huCAylNRdjWg4u2e/vqnk
	XTzCGSfPQ/xPpngh5u2UK62IdIYPzYyr4hlIv1kes/0bUQz99monHhDk2KsDYPvOOviQB4lgH8N11
	diJFXwDIGI4rJwQVHLlGZgV53OtMxBKgAl/TRQkwZo4psNADa877C51ZKK4kU06uj66sdNAkAd3tO
	B3uNjYIm1KI7sW6ZnJV2R09VXDA3H3BySfu21pJloveDoRcL5gyarQstac3ggeI7bOL07J3X1z853
	znlpJK59YO0sBc51CgJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPpxl-0003JV-7V; Sat, 18 Apr 2020 16:05:01 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPpxc-0003Ix-Rj
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 16:04:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587225892; x=1618761892;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VT9asYG9+dpl6wZ6GecFzcx6XD7ODddghu32tuHgovk=;
 b=aDIM29QSUy+T1uc1XRODqeZM6gmYEQ4s1uiKbAHkH7xf2B7d821eZJyl
 symcJHUOVUgq8OwdpAQcjSpKe9hQEhP/oRu5ifvxGp060tx/02d0/xfRj
 DhH5OXKgkBaTfs7nqWec3oY8YtFm+jGWbwpVTP3Ihocwyq+nw1U1DsYJk
 ZCHJ4XTTFt1P2iIw4Awt+/Az2TGh0VonnYXYw/FExM50Mkho6mUZERAhN
 Y+cdKXDIUOGsOca3HO0tfpmA0MiHIS3/VFfU9CVMgFOntLbf8K2ArMqQa
 tJFn64FZkMQ6bxo2Rr7UTqf1/qqcFRDr8PyTr8C77FZwDK3m+ugaoFBuq Q==;
IronPort-SDR: NHwlOT3JApH8Oj4w6TaxWTHp3pHGgLe/ha12+IyFLE/1pZBvhkXnegCLj8Hfz/Ws1VrmCll5ba
 +7574xOH/7lpHYlpVk/L7/VFlwLv+A2gtLAR3HDyqoat6a70kDdGhOgeDGerIk4sWOHn8OYRH4
 QXh8XtZRquEMSp5f55V98ccTjTj6asb08b5IDbdrqBC8w+FRItcq9uXf+T+fxUushIOzjSNW47
 /0wUoFjJcL58DgIiotMyLLr+yHsVYq0TXQFym4qaSZSE+0kxLdKUgFovgRbbhQQQFYXeaz0J5P
 EZE=
X-IronPort-AV: E=Sophos;i="5.72,399,1580745600"; d="scan'208";a="139967679"
Received: from mail-dm6nam10lp2101.outbound.protection.outlook.com (HELO
 NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.101])
 by ob1.hgst.iphmx.com with ESMTP; 19 Apr 2020 00:04:49 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DeoJ/awOp584n7EWGviWtoP9oF6kNebsFTHnEmpHsrqhfRheZgmHtN7AUFFRCxpshUTBdFAOy7iCvaTR0rv1tk4GQv0U4J3x9MvY6e8wLuVNyLKRL/gOVPODYFVrLPlH22SXfhlsypR5pYZPxGlbsTb7HmrosE0crs2KtRIAeHQiwNLi/tk1ZGpqJM/puQSHDM5Qb5JHQWudmtdNseOFJ8C3/8ILaPiT+c6fgH3uQzdnkQQmHrFicwLVxnAUz8UTHdgNLsUBPbEy/ilBSrgSr4bBYwcRkYzWhv4sKtvgfaUoqaS5Y2cxffLj56WL09FjRDRMSZAFZySROVb+Bjfg9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VT9asYG9+dpl6wZ6GecFzcx6XD7ODddghu32tuHgovk=;
 b=gQHe+SREPkIWl14NLtWZfcXNX3BRKw1C9s2NiGEFwQonjwgBLKwy8YKeBlbdqfC4JhxMTg0U5VozctWbQevesNww9hl5Um7e35BeF4LAmTEZiMhIkJqo1fre30vBdMcz+yEhHK02OV3FSPlURZHiXZmiToW9jIPXIalHR5++czIeVnjVmuwfDeqqE+XzkYbcbjqSuIUrjBUO/Ab8GWhUk+Zlawm3Dnl19GyCFaamC6scM27A2Mk1SMADjzNhzMwBAOIBaAl5VihMVptDAAEbi4dfKD2xJcyIxPG+0mWBplg4AQTT9Pf7bQ8rJHgiCnf1QlM8vvBSaX46JNsE3wWV1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VT9asYG9+dpl6wZ6GecFzcx6XD7ODddghu32tuHgovk=;
 b=kN+5Dcur3fqON7CBYFGtXnNIUus4zo5YoRQ9JYCCfDQn/CBTLmXoeXn0UPkq63FVK723O6btvhZ4owMC/Rgc41VX26bMUHxeBN41GbxSs7NkFr5ElbRrGhkoU3wVFXwEMpTtaHx0Vf1tvAcjEK3EiPiSrxVKK1v/Iw9jGD5eqM0=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB5134.namprd04.prod.outlook.com (2603:10b6:805:90::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.26; Sat, 18 Apr
 2020 16:04:47 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 16:04:47 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh@kernel.org" <robh@kernel.org>
Subject: RE: [PATCH v6 0/10] exynos-ufs: Add support for UFS HCI
Thread-Topic: [PATCH v6 0/10] exynos-ufs: Add support for UFS HCI
Thread-Index: AQHWFONyboJhjuJWAki6eibLTJAA36h+0jPwgAAI5ICAAC8qUIAAAdbg
Date: Sat, 18 Apr 2020 16:04:47 +0000
Message-ID: <SN6PR04MB4640E907A9A8F0709D4417D9FCD60@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <CGME20200417181006epcas5p269f8c4b94e60962a0b0318ef64a65364@epcas5p2.samsung.com>
 <20200417175944.47189-1-alim.akhtar@samsung.com>
 <SN6PR04MB46402211952BC3D427AADA00FCD60@SN6PR04MB4640.namprd04.prod.outlook.com>
 <002a01d61582$72250990$566f1cb0$@samsung.com>
 <SN6PR04MB464066C386886C45202E6107FCD60@SN6PR04MB4640.namprd04.prod.outlook.com>
In-Reply-To: <SN6PR04MB464066C386886C45202E6107FCD60@SN6PR04MB4640.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 997d5c93-dfa0-4882-7fa0-08d7e3b237eb
x-ms-traffictypediagnostic: SN6PR04MB5134:
x-microsoft-antispam-prvs: <SN6PR04MB513446D58F7CAE1564A3B968FCD60@SN6PR04MB5134.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0377802854
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(346002)(396003)(39860400002)(366004)(376002)(136003)(71200400001)(66556008)(66476007)(66946007)(8936002)(64756008)(76116006)(66446008)(7416002)(186003)(5660300002)(2906002)(81156014)(8676002)(316002)(33656002)(54906003)(9686003)(55016002)(7696005)(110136005)(6506007)(53546011)(26005)(4326008)(2940100002)(478600001)(52536014)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3C+FMcceb1gQgWt54cm3x4dSpeZXao8FInPPhV2uI4pAhwKl6KmNXAyvov8CYlFP+txppBzYH/ro3XmAaZKgEA274kZf1EFykp+Q7JpUN60dUY12RJNVxjrwmG1kvwgAxV2VBkP6RbhkrliArtOgcsHtkXjjL46DxBSOkxpk4aCgf/BHl6dnbJ8ktSpq3+ym4APGr9FXetBCuCD2ZEoqJlXcBu9d5+zpVoJLvrcNIXf9A4+QL0NeJqTi/ib5c6Zth9oCtIYpwX4RZQmfhLoJdNkzXYmXrYpTzHyR8yPaLmy2IUxzAn9KEeUNnhpJBJ/VJ7M4iVcSg/mxhH/V3Srd2CqydtwbqI0myy7aClmiiMrhCnWjvhOvkxS+upVKyLnSi8m0ZAk5xfAuICD2nctVSPIayGxGfV7S/eievx+7EXBlLBbjFrxKGw4Wfpq8Ivf/
x-ms-exchange-antispam-messagedata: Uf14vXdhiL71Ou1fr1epUb4mYXxm2zZ2BkXsmfcohqKYUBfAaQloQSteQ7RuW4/rmmeqj4OnxWO0b+skJPGCWvuiKksLzVA0a8R9Lxc+QY7SET7vU+TnXTbA3t6EK4rGXLwPyb/vN3EXwGNxqipftg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 997d5c93-dfa0-4882-7fa0-08d7e3b237eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 16:04:47.7379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 012jZ+GclxiUjX3XM06snxtoXaFAp5gIL/2UVdYbyKroVrSShzJiU2/Kzn74lSO+3awfmozj4I2AXUT4FjJiPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_090452_905286_14978CBC 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "kwmad.kim@samsung.com" <kwmad.kim@samsung.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "stanley.chu@mediatek.com" <stanley.chu@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Avri Altman
> Sent: Saturday, April 18, 2020 7:00 PM
> To: Alim Akhtar <alim.akhtar@samsung.com>; robh@kernel.org
> Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org;
> krzk@kernel.org; martin.petersen@oracle.com; kwmad.kim@samsung.com;
> stanley.chu@mediatek.com; cang@codeaurora.org; linux-samsung-
> soc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Subject: RE: [PATCH v6 0/10] exynos-ufs: Add support for UFS HCI
> 
> > > -----Original Message-----
> > > From: Avri Altman <Avri.Altman@wdc.com>
> > > Sent: 18 April 2020 18:09
> > > To: Alim Akhtar <alim.akhtar@samsung.com>; robh@kernel.org
> > > Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org;
> > krzk@kernel.org;
> > > martin.petersen@oracle.com; kwmad.kim@samsung.com;
> > > stanley.chu@mediatek.com; cang@codeaurora.org; linux-samsung-
> > > soc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > > kernel@vger.kernel.org
> > > Subject: RE: [PATCH v6 0/10] exynos-ufs: Add support for UFS HCI
> > >
> > >
> > > >
> > > > This patch-set introduces UFS (Universal Flash Storage) host
> > > > controller support for Samsung family SoC. Mostly, it consists of UFS
> > > > PHY and host specific driver.
> > > >
> > > > - Changes since v5:
> > > > * re-introduce various quicks which was removed because of no driver
> > > > * consumer of those quirks, initial 4 patches does the same.
> > > You forgot to add those quirks to ufs_fixups.
> >
> > ufs_fixups are for ufs __device__ related quirks, what I have posted are all
> > host controller quirks.
> Right.
> So what I am saying is that I am missing the hba->quirks |=
> UFSHCI_QUIRK_<new-quirk>
> In ufs-exynos.c for each one of the new quirks.
Oh, but you add those in patch #9 - 
Ok.  Got it.  Sorry about the confusion.

Thanks,
Avri

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
