Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 496251AF1FD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 18:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3tJIxUmGOr+bbTxV2pYFeMo6qAGpDTlSrd1XdaHBFY=; b=MX6mKoNlv5n1jZ
	etpyOIkvH3d4NhXjVlljh33NVHANAk3Xisc93UZlOgBLiV0IbYjGupGcDk291FMgPDev/HdbZW4db
	3IrfgkZMERwnAcHGorKky6Uj2UUjqkZS0gfJz/jrBgIftokuC/DAzh7pZNQD0D89iJc5nY/4TjsTt
	7KqhAhL0zmJrHPHK6qZmz8idIUYPiHZZa+JLX8B0XXKBV1Hg6Fsv72lJ/25onoQdhzGeJkS6MYYSH
	XQRrJ9ylZ+LNAUbwueJPw8gTGb87oRvvNxoPw6fHcJm2qa7/NmllQ1D+guJsn+aECGKvF34wtd/yk
	/hkNXReIV28D6072nwwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPptc-0002Bp-9Y; Sat, 18 Apr 2020 16:00:44 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPptV-0002AO-0Z
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 16:00:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587225636; x=1618761636;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HlEpixWKamHd+fsIaVTDPF0+2BxrY+9Agnk1GpSmDvs=;
 b=cvplZygBagiDFFJJ9e2wRZJcVlkJ83SO40q03WW/Uwmj4mi4sEzBT37O
 45h0koQbaRXEqSmCvA8/dZKeIhYmtzYHZFcNNRjWuMs7oNjf1LgU7DPNJ
 6DWTXYVfaNa/vaCMy8GrHOm7cRqg14a5dskUDBNjCObbgGJ8rjBO8m7m/
 UMae0H3MZJ0KSKbMD2rs1h6v/0lBhzeH1PYAMgrbGBF3P4pjby61+Wizo
 8FpbkZV1KQgfjwPZxkrYjgECrHZBV+vaUVGq05zSl+uukCExipq9iEee5
 4GlL/gzxaYdKvjQcr9K+TGOOZamnSJ/5TwM9hlipdR1n10MlY/xZ9rMs3 A==;
IronPort-SDR: wz1DpeAhMrPYGPRAQsv59uhkMtlJ3uOQVOWapKI0dNrmfafZH35DIoVkVT0meQZwKI6pKVLFes
 aree8JpajMyED3uRTn12LQcEbbkbiEZFeMUt1VWSJDdxHDQz6mXtCYs2oQRAh2f1+DY7zCAbpT
 0gRP5jnpyVOyCf+8mtpzO0iC1/f8qe+IIMmw8B0q+ZiHPr41KdCIm2BktprwLuPW7JKdi0BrtP
 lstXEAb+x4w+wayQaCBe2H8vV/cu0Y14W64GDwkM7MBFviNCmeRs8spgBmsnA9J4qJ9rpEHJGK
 fec=
X-IronPort-AV: E=Sophos;i="5.72,399,1580745600"; d="scan'208";a="135623271"
Received: from mail-co1nam04lp2051.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.51])
 by ob1.hgst.iphmx.com with ESMTP; 19 Apr 2020 00:00:30 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bF9e5farm8Cl7/9lZYofOQvE7DcRFj9iQLUrYotMZopnrh29F9Q/1nEpJHESPIVdmacd6NEoKnTgs2h66OjrfpoZPeeESUirerS6um/WADcUjDUsdK/dl6l6HcZnGKCSKrli88La54O9co82wDkE0EABk+eaQymdmhuBNNQ0fN6gsibtMfmMcIG4NCqnOBJKRSr184ZFdQuo+ximjG8Wasz/F7dSUL04S81iSghXfL63KsKCr6g7yTP2LcSb/S/H8AWIbFZCtWw/zSkUM2qHuQKhqP7CwPweP/yCW/zQaQYI53ZrfK0oBnscTQvICkZJTF05O9gQ7HUZccD1yYwF7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HlEpixWKamHd+fsIaVTDPF0+2BxrY+9Agnk1GpSmDvs=;
 b=GBkcpJ1fDvC1G0lu7FbN/Z3I6QmBYs4HDwY0JDSN4TaVvA01QdXZw7goOTzwDtv8MPvReDo/HySN5Q8p3IfD0UYabCFLL2kAZvSbXPjqeFI93j1zfBh7UjVRYqrjdL4HK8zssW2Q4V4lZkgH/X9VvMAa1OSWEo7e4Uwd28rkY1pyXktHnHXDKEO/zxL69RVHpHLaGEoVzqhR6pg1tCqfPIbWTaQnYzOWsekApp5WSSryVC3Fh48n0w7CrAvJt1BHa6b+4Vkasn4JJcbRVla6rKWszwai0j0M9WKHPH3HBcBGywbIVAdVJyjBYSamzFnAvthL0xlvNLew8hyL5ssPAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HlEpixWKamHd+fsIaVTDPF0+2BxrY+9Agnk1GpSmDvs=;
 b=R1B4h9ikGhnnha2GhDQtpU4HOR4uElzqd6kRuhMsbU50MSdVm5YQI6HTsI300n7Gc1BpFLaUy2RL8joOp9+ef4DRlU9HPrcG6UKrHK3ICYRr46hnkdYxxgDm988JgWupI6rXCD81w6NG0OBHlz4l2dirCEX78keFwW1TEhacly8=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB5134.namprd04.prod.outlook.com (2603:10b6:805:90::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.26; Sat, 18 Apr
 2020 16:00:29 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 16:00:29 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh@kernel.org" <robh@kernel.org>
Subject: RE: [PATCH v6 0/10] exynos-ufs: Add support for UFS HCI
Thread-Topic: [PATCH v6 0/10] exynos-ufs: Add support for UFS HCI
Thread-Index: AQHWFONyboJhjuJWAki6eibLTJAA36h+0jPwgAAI5ICAAC8qUA==
Date: Sat, 18 Apr 2020 16:00:29 +0000
Message-ID: <SN6PR04MB464066C386886C45202E6107FCD60@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <CGME20200417181006epcas5p269f8c4b94e60962a0b0318ef64a65364@epcas5p2.samsung.com>
 <20200417175944.47189-1-alim.akhtar@samsung.com>
 <SN6PR04MB46402211952BC3D427AADA00FCD60@SN6PR04MB4640.namprd04.prod.outlook.com>
 <002a01d61582$72250990$566f1cb0$@samsung.com>
In-Reply-To: <002a01d61582$72250990$566f1cb0$@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ab9c0689-6527-4ee7-9833-08d7e3b19df2
x-ms-traffictypediagnostic: SN6PR04MB5134:
x-microsoft-antispam-prvs: <SN6PR04MB5134FB50C2B0BA76B315CA67FCD60@SN6PR04MB5134.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0377802854
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(346002)(396003)(39860400002)(366004)(376002)(136003)(71200400001)(66556008)(66476007)(66946007)(8936002)(64756008)(76116006)(66446008)(7416002)(186003)(5660300002)(2906002)(81156014)(8676002)(316002)(33656002)(54906003)(9686003)(55016002)(7696005)(110136005)(6506007)(53546011)(26005)(4326008)(478600001)(52536014)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DlBBoQjGH+YTJjFZJ3KAykk478dpkMNOPqfDEglRH5X3q3sGvdjuX7t1Tk7aRvqob5RyV4/L9Kn0jaJ10AiG3QZHHlQBVpjr6RTkoyBalaXZxW82pxcRG4nfoVI8WNnsCp2VMre3YH0tpseHhaZ9Ue+7bEUY4b3nA8+WW4TLJ+KfbuZ8rSI0ryNtxzxQrxCkv4av4X6y0UKVSshx4ORwTyjQ9PH8584FVg7rUXAZ9mE+sf605tsRd0tD0bhQCsgAVtHfjx8rZov7yP6pnHy22Ly2WYpW3grr7XcN6mjtl4OFwZGkDAf8eshScybPbL7nU9XDx4PB5bcywAArXDdDYTHPmBe3S4/L+vGJ3on4ICdt9EKkjyiWpW4sXT4k6qsEdwiXWhCWHCtChZNjkVIeZzhuQTnhzTxGSyHuvlYRmeIGCH6AN7WfLYYyRMjSi+HS
x-ms-exchange-antispam-messagedata: 7jUD7gMPHSmDqI6eZGZfQjN4QGeBTh7bqGCtB3JBcQ3TEc3e5UdesLgqHLcGnQKdWtT1eXwWcHzrUeGugkofrxKN8U8eiDnqNrs4sPMUli5mlGw10vH28r5SircsbXQ7WMC7YRKFHLRaueEhi0UH4A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab9c0689-6527-4ee7-9833-08d7e3b19df2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 16:00:29.2893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 62CMCHeOb9Kg46WQXgJ14MfjT15Avz7cCcOa7PyQaTDtZpIP848h/3KYWtLlaedEQX5jZ4YHbcXq7RLqOpGnFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_090037_181682_45312404 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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

> > -----Original Message-----
> > From: Avri Altman <Avri.Altman@wdc.com>
> > Sent: 18 April 2020 18:09
> > To: Alim Akhtar <alim.akhtar@samsung.com>; robh@kernel.org
> > Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org;
> krzk@kernel.org;
> > martin.petersen@oracle.com; kwmad.kim@samsung.com;
> > stanley.chu@mediatek.com; cang@codeaurora.org; linux-samsung-
> > soc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > kernel@vger.kernel.org
> > Subject: RE: [PATCH v6 0/10] exynos-ufs: Add support for UFS HCI
> >
> >
> > >
> > > This patch-set introduces UFS (Universal Flash Storage) host
> > > controller support for Samsung family SoC. Mostly, it consists of UFS
> > > PHY and host specific driver.
> > >
> > > - Changes since v5:
> > > * re-introduce various quicks which was removed because of no driver
> > > * consumer of those quirks, initial 4 patches does the same.
> > You forgot to add those quirks to ufs_fixups.
> 
> ufs_fixups are for ufs __device__ related quirks, what I have posted are all
> host controller quirks.
Right.
So what I am saying is that I am missing the hba->quirks |= UFSHCI_QUIRK_<new-quirk>
In ufs-exynos.c for each one of the new quirks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
