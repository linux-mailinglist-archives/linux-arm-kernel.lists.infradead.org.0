Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F061F8FF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80pIlcwjl/TYAAaM3NenBvvjT8tTVz+0TZoABFbctKU=; b=ekFXJusoKrUrO7
	IhabWENoI3U9YD0k2IdYl/fsOMrtm8AtUFkUutYQAY9dCNsyQ4o4cW5agvxi0DHpZiGJ8nuauXnXo
	tyEC17l9TCS4ET0X9h/nj8pU5gmWh+qznt07vXCw/W3d3iRoMdQ7H4I8oqLovOdc8bfPg0sH8eELr
	iAdPP4uLBl9C1sQ/1Q3AsUyv7Ir6t1KR5XxdB8UvQhiq4tQsdC36h1cgCJJs4HWNIWqFvttmo10Uk
	JP5PISWZ1Wa6Nb0hWepEqya/eg/MZ28ofueEOdWnK7q9UpYZel1m8mt9/rPuUCLOlqH7LsWwwdlEw
	ml55Q6jefFuQ+zHk5QcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjba-0003Zp-7b; Mon, 15 Jun 2020 07:32:30 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjbC-0003HF-SV; Mon, 15 Jun 2020 07:32:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592206327; x=1623742327;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UCPh9nnOLJQOa5+2ym/DZ4EMeZYp+q1/7H9nm8F8hmc=;
 b=ExUv09ZX0zXU3GlNAR752idpWdinDHoRNoRXx6g4xEqUuZiec+f+6jED
 BvNVP2lFZDa6EIawmAdlrmMmpyoV9CoaR07heuaZiTq2ocBxqAYyW/5Bk
 PhKt7n3Lsw++mRmhUB9qQrdtRs8BDwAnlBr1Hu9asz94l+PG3O/lKOGct
 XlBAI6O3Z2JKQBaMjxBQPH3apBbRs7qgTpW8Su0/xg9sokzLB7R8OTI6t
 JaWoy/a2l18FhnPMr71SEZ1YaQjw63tl7RGe62Vh5Td9yeimGY/R7Rqxy
 k7nCZXq9ExZkjUy5gKbOQOc9raAhvBIRKficgY9ssAYQc8WKF0PXPywO9 A==;
IronPort-SDR: q5O0GQSgSMwVIlDKYEgBch4qcH2FbR99BROzDF0tMmSaMWQRoE0j6ew6areU98s8kQZFQUR3FN
 eZg+1zJTQlqlgio/YQojKoRYffo6KgdO202iWX3aqXy/RxXFEtiWWFqHwr+6p6EShu+doO6Kbl
 HMsemQLf2TmSB+CH8LQANg4iK92dobJ11OtTHmOVYCY+mS8dMFOHPTMpA/amnoeHd+6pi1vTC1
 GN3g0I981IQ6VZm2F4XY10WPzXDqhR/swM26WQAk+pwoHJo4kpMo/s5d+p+XmEsTe3RBEjSEac
 eec=
X-IronPort-AV: E=Sophos;i="5.73,514,1583164800"; d="scan'208";a="144328971"
Received: from mail-dm6nam12lp2173.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.173])
 by ob1.hgst.iphmx.com with ESMTP; 15 Jun 2020 15:31:59 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bu+X2DkGp+OF++qXHxM2bImuTolUseYqUIs0jELaNKU0NL16vP6LQ/rzWwvJyDJRdrTHc10yOLJl/aCs3xe2aQlSyfTmwO8VhqXN0+xWxzGpKwzz+KWXno6zW5KCViW2oH3k4iSmU/EWzCSpQ8xZwGKCDSwJS6UZb1QdLRuZftkSknWDwqRHZju66J7OQunaGVL/tib/tel3KYfuVKN/NweUY5wo/SwJbLcYbI9to0yy3Lfyygi2cfU3mhSjfa1e5HSXEddCnaJjVwFsyIHw7sgZH4twyy9+FiQ4ZzHByp9JM6tUoJDyU1r1xMPck1ExydtEottYbmd293F4+n9vow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPrXFE2K3KaA7qL2ov68PWSD/9aopTG3HiemXZKwniI=;
 b=HuFty+lviKJ5dzvi5H6hu8OmRg3ni0yZs8lUejoGXniT3u44VsTbwrO8Db0Bt0gkMRruyCZ4NpRIQJ7CIGbA2IGr55EmPdiFAsHoTsEA8B6bfdBy8KQc6TWC6c0HXi5jIxNKaJPQzLz6332nGOngv3gzs2Li4309YsPEzgwDlDKARnTYtpO8XRkjUlgif5HapZKvCbU3WpR9nN7ZDU23VwFf+ZLyw2WYVIO/dfxOIaugm6Ylrbr6E6P9tIVQBNP06BABDAENyIez2HlXw+biABhdUspWj0vXaSAOGN4E8urvNFuR21A1ug8gwVEZeQjfaojcQ1X+19rIshHBezP+Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPrXFE2K3KaA7qL2ov68PWSD/9aopTG3HiemXZKwniI=;
 b=tzDBAnOpdbf+VJfEC113I9WkLG9K2TPS1QPI9bsdtpY00rRKxo15HKsFZih/lF3PY/0QNEuOfpgaV4xT0gdEzi3QFmkmM9TG4i8BYTNtIUXVYFI/0/IgzGZmuZtm1j+4prpa/mjyIOUQVSpV8s012Q7MfDojbW4praubzfeDSRA=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4574.namprd04.prod.outlook.com (2603:10b6:805:a9::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Mon, 15 Jun
 2020 07:31:57 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.3088.028; Mon, 15 Jun 2020
 07:31:57 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v3 0/2] scsi: ufs: Add trace event for UIC commands and
 cleanup UIC struct
Thread-Topic: [PATCH v3 0/2] scsi: ufs: Add trace event for UIC commands and
 cleanup UIC struct
Thread-Index: AQHWQuXCGsZjEECOEkK/CSP7H3WFf6jZSDGA
Date: Mon, 15 Jun 2020 07:31:57 +0000
Message-ID: <SN6PR04MB4640ABE5681594C4C1A53F7BFC9C0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200615072235.23042-1-stanley.chu@mediatek.com>
In-Reply-To: <20200615072235.23042-1-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3e02f386-0fe0-489c-1964-08d810fe2f4e
x-ms-traffictypediagnostic: SN6PR04MB4574:
x-microsoft-antispam-prvs: <SN6PR04MB4574EA21B24468D0B6776E72FC9C0@SN6PR04MB4574.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 04359FAD81
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iFGwxXstVhtqYVPlYXCpHkhKWy7ZDoxcIJ2xqVqfWzOuN3Y8T7RDh1fdzaUVtJqrVdocZ8oznBRS5u0O5kbJO/SMU/9y+3sIH9Dd4jyLvSMFb/yZsV7OLBAhDLKzD0sEVMqxnkTbGSCoeJompHCZZPd/NmXXAmCptLyOFU22z3TE5wl+nv2CEt7sdY8LQIGm1g4LEnAF2qtIQljQ/6m17DBkvO7Did5qK12OCQQB2RXPMdktYRRewOBdXIdWjcXhX29Csd9DrLBMrurhiWIKxJtsP0Gn+BNp/lHa805vAPD7E0QRKFGPrCP2SfXJflnx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(39860400002)(136003)(396003)(316002)(33656002)(186003)(6506007)(2906002)(7696005)(83380400001)(478600001)(4326008)(110136005)(54906003)(26005)(76116006)(66556008)(64756008)(66446008)(8676002)(66946007)(71200400001)(66476007)(8936002)(86362001)(4744005)(52536014)(55016002)(5660300002)(7416002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: g8MtzIJDRVTzUb5kg1m7eqQRonfTDkBuMoHUQjU6H7xb/TyYU+cK5SRQAnkihqm0+558F2n23UZRgqN2mV+tFa5Bexm8vxPRC1hvPXQP+HTldDHZvYzXXdW6tP2nNZBeM1n95EzCXA4L+QWRYbLhqFtxdfwzCRYr6R/1BE/rj+whur7JxszRu4TuStxfXlDswvccBGioGw6bv0XGng4004hTEqR71GMpaGBtIG5t+K3ClaEiTtciw9HjNwzaKdwWVNCG624gOiTM8UdE8k+4VyooeaslDVTofwDAtCqRLpEBQRUPxS5QdC9iTSU99F6lpskAiqXME+PmeYg/ieX3cI1OKII+UF9GHFwjX/xhmokbbjIvRk602FMG42HMsNBeVPnxM5FDw7mkvgmcS3Q1pGYcR4Nd3/nspJyXSr72fofHBjnrPhBmzt0BdBmBXfvOy53dbVuAYWQRcrzy+sRZ2ZB14jXGNxZxMmFQ3Es1jPE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e02f386-0fe0-489c-1964-08d810fe2f4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2020 07:31:57.3180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OGvK99Qa9rdojRwJ5mYFdwZ4r+0JI/TCSjzHfwfVBdfwupKN0b1DF1Y4BeHBviTyIw1IzwiqgtpSH2QkpWYhvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4574
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_003207_015601_186DDFAB 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "cc.chou@mediatek.com" <cc.chou@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "chaotian.jing@mediatek.com" <chaotian.jing@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks good to me.
Thanks,
Avri

> 
> 
> Hi,
> This series adds trace event for UIC commands and do a small cleanup in
> struct uic_command.
> 
> v2 -> v3:
>   - Refactor "complete" event hooks in ufshcd_uic_cmd_compl() (Avri Altman)
> 
> v1 -> v2:
>   - Rename "uic_send" to "send" and "uic_complete" to "complete"
>   - Move "send" trace before UIC command is sent otherwise "send" trace may
> log incorrect arguments
>   - Move "complete" trace to UIC interrupt handler to make logging time
> precise
> 
> Stanley Chu (2):
>   scsi: ufs: Remove unused field in struct uic_command
>   scsi: ufs: Add trace event for UIC commands
> 
>  drivers/scsi/ufs/ufshcd.c  | 26 ++++++++++++++++++++++++++
>  drivers/scsi/ufs/ufshcd.h  |  4 ----
>  include/trace/events/ufs.h | 31 +++++++++++++++++++++++++++++++
>  3 files changed, 57 insertions(+), 4 deletions(-)
> 
> --
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
