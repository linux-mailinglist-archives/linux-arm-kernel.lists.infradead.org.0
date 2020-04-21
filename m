Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0AC1B2590
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 14:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01odLfFPwlgiM+A98SULaznV3hHRIn8wo4cTRHOsi/E=; b=XSoKQO3vKd1dEu
	n75LUddnPxXBCGXTn4GNNKYnzwEUFC1KmDbeZA+nBW0p6rqlR/+1jx/qGCOyq0zauadKSeO1fiLKT
	awQoDHZnx3IPOJ6k94Vuo3WyyX4zNI9FNOvgePs4n+SLwjh0lCfnTLoCCEGXoA9X7OzohqE1r4KtS
	F6klPiHo9M1Blgcp6RJGLuuUTb8PunyQHWU5QO+qZbLB2umziC5jlhRxaIvMiY0yirlwLKfbpCIlQ
	Iv32QbiOqtwzVDyDSj14OEEO1JDT5U6W4qwASXinyzMpanNA8eDgL7J8kZpKnIKhuhcgFZUIF9mu1
	DwRTdeAYLzig38iGD82Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQrgJ-0005pA-W1; Tue, 21 Apr 2020 12:07:15 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQrgA-0005ny-0u
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 12:07:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587470825; x=1619006825;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h9g+vuKTNiUMhQGreK6wl2Ok5Bwb7EsTTQX4aZ0cjmw=;
 b=WK6lA18ndwEJh+wCpSb2/r5NicWHkXHy5R1x0OvzKlhNew775oQ7Xosa
 jd+ZZ8z8F/4DdqMdo+0tyLzKktIxu+qLu9SBq0MmyTdZQYZl7hgog62nN
 48a3MFppMt38F+7nbumrsYT5rpxNOy68dLhj9SSpU4vVMQeR70Hhk0Oxr
 egWWRJ3T9folFtQArIJJImDLFrCWOEehTFH4KAWZQV4f493qPpfcTWfnn
 dBDi2WOvOlko5UnEBLr517a6RHAzJnTiPykuH/9VFLvI5owjz4fDbkq5h
 poNxxYfyI77LDF9k+CpAAOYLRlKvbLdSz7e2LTPvKdzryj2/YdlZW3l6N A==;
IronPort-SDR: Eqr87Oz8RXIMSbTZZq9Bczx0AXVw6873rTpuWZj8qGw/sMTwSi2H2NoI7kFVqyNiTCDrdGYjrp
 0f4YJodmvM9KX84Om7wvR4SL0rOiUrG0Z9WUTKCMSrSLnaYW+6AFKdY4JT30P48VMr0K+0G8Uh
 7dXv3H9nWwS4LqFs8rEofFCp+/zf5mCzQ7ozMPbDXPqgv/WROxhWNHMaijxvHf6xyzcPGbWrJO
 dijaxBrw0tuciCoeaxtCaZIIohp4yAfSd9WYNSL6iEEmNA95rrHylJ6i7DY1ru/YCKxqNmzNh5
 omw=
X-IronPort-AV: E=Sophos;i="5.72,410,1580745600"; d="scan'208";a="244503062"
Received: from mail-dm6nam11lp2174.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.174])
 by ob1.hgst.iphmx.com with ESMTP; 21 Apr 2020 20:07:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HmmG+9OlhYVHUKLUj7nH2uDwxBMruMaRiVPZpp28eHl/nPlke2Ljd4zdMCyyAQ8JPh8ZsD5xnCKPjI9OfIjlgz9Cbt+u7JDLj/Ywcn1/x5aXYL4fd9ZUO+7t2QdnDdDf899OuWOD5rUG9jC8gmUh0Hf7FCX4ra1cUfD6W8oAdamVjPaz9ONBSHmzH4Ws8e8dthwBANOGGGZGwsv74jgfzLFNVwyUJBnN6ysKTJtrdjnJNsU+TTJgsy+0rEaFJocTis8oltxxpndwMwMaUIHb86X0+GUx9uEOnV7H3S6j4Skn6n44I/GRbAlewrEa8h9dEsfaIttDRFyns+zIMNCicw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h9g+vuKTNiUMhQGreK6wl2Ok5Bwb7EsTTQX4aZ0cjmw=;
 b=HpgB+13W3yDid2jW7t/1AHwnw0uSz9TTNVzE1JGscuiYO7+w8wp/sFMseFyoJOqjXIGsxRgNuGX7q2isQVLLRr5HcX5SVonJnlsWRZxf4AtJuVR/Beu8ysvxfAaddFcEpnKyclwVy4q05BZ/f+XH9LxetxxAWzTdEQ/WknrS0PyYwz6vEaMX2+erXPOVGZjOQxRXe1yguEG1KcDmplEU31v9PQSnU2dpQBAZVH/nwliYJHdxw+JA0/VsXTsxofpH+WFY7ZCe0fpb0QEV1Tv5BVKAGQwH9OJZJrdQDxzFgljSPiUFtDz28GOj4IKvUm7QWDH/EeygXrD1YE3VfXg2AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h9g+vuKTNiUMhQGreK6wl2Ok5Bwb7EsTTQX4aZ0cjmw=;
 b=zD+x2DHOQmJui5iB2rNbEUDX2mpl3rWZja19eZ79nl9T+HSme0z6u73nAM8Zz2E+jUIC7L22K7p2/oSG4OH2X6wg0iKvpdNII/vYXtmuJW7gF62hq0U6hXjEo1lEymSu+gC55gVEJVDkBSUHICFRXmVX7CDsbS/6ZhTPKZ1APo8=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4656.namprd04.prod.outlook.com (2603:10b6:805:aa::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Tue, 21 Apr
 2020 12:07:02 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 12:07:01 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Kiwoong Kim <kwmad.kim@samsung.com>, 'Alim Akhtar'
 <alim.akhtar@samsung.com>, "robh@kernel.org" <robh@kernel.org>,
 "cpgs@samsung.com" <cpgs@samsung.com>
Subject: RE: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal
 error
Thread-Topic: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal
 error
Thread-Index: AQHWFOOBFbSRs7BAOkOiLBrzlbkq96iBrgCAgAGLl4CAAEQsIA==
Date: Tue, 21 Apr 2020 12:07:01 +0000
Message-ID: <SN6PR04MB464022365ECC9F5565030147FCD50@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08@epcas5p2.samsung.com>
 <20200417175944.47189-6-alim.akhtar@samsung.com>
 <SN6PR04MB46408CF4DD05DB9B48DFE412FCD40@SN6PR04MB4640.namprd04.prod.outlook.com>
 <062001d617b1$af5f0aa0$0e1d1fe0$@samsung.com>
In-Reply-To: <062001d617b1$af5f0aa0$0e1d1fe0$@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 44829a46-bee8-40f4-21ef-08d7e5ec8013
x-ms-traffictypediagnostic: SN6PR04MB4656:
x-microsoft-antispam-prvs: <SN6PR04MB465636FE958A247ABA2A5CDEFCD50@SN6PR04MB4656.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(366004)(71200400001)(8936002)(76116006)(66446008)(66946007)(66556008)(64756008)(7416002)(66476007)(52536014)(186003)(54906003)(81156014)(4326008)(8676002)(5660300002)(110136005)(53546011)(498600001)(55016002)(9686003)(6506007)(33656002)(2906002)(26005)(86362001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M5pdj1AB6Rxtfi4WFK1Gvcg34+syg+AxwJqolaj8uUG9FC/AKwVrfft2dYTZBu6UDb5nkTVEzZhVMF1gJkmuVIvBtNSlLQHqyhmWnpurxrWSSLoV3WDG6AqOEB2jotQEezx3M3VXqAMExIOBWasNpb+uyZ+ia7v5G3T3k9p/j7EA9myJz0jRDATJyRfglTFKQyMJtL+VR3O5ZX6N/VAOXgNauAgA/Lm0h/XfFGgpkMFpl2XY53J03kPes7NhAEIN5cjQ/63Eck73MbgHScG+nOzUaAUU7wyu8WBbZDiFUwKCprSMaQ2nAjkszts2z+ftqCbBQdk4kV9Plc1UNznlZkySYAUdk00pTB+4UPbv5USIaz7FI/0J+JjA3ky5GzfKkFmGDTiE67nlTGS3EhPaCiwZom/ex2+Mnd1/wg86V0qvnZZrAYpC5icAJZwRgcl7
x-ms-exchange-antispam-messagedata: 3LU5iUlMZx0m38T/WfVHguTFbMwdX2CtxP8xeHd5oPPss/VMv66ssHukgY4l9LPrUh4cR6M1i0z9nomraQP1QoCNKf+4/tSABiNZiKJaXgQ98kvO/gyVt8QQsgNTbIfOqJjsWhqiW9PyJ3oQRb6mDw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44829a46-bee8-40f4-21ef-08d7e5ec8013
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 12:07:01.5467 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mfQrIQu/L3ifsgHkroHiUQtSRJ/jecuv9l1T7RmpevXExTT7WLZs8aZCd6oAz+1Ac4V9YWf/pIQ80ORByNSKdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_050706_151242_E266EE40 
X-CRM114-Status: GOOD (  27.99  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [212.25.79.133 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> > -----Original Message-----
> > From: Avri Altman <Avri.Altman@wdc.com>
> > Sent: Monday, April 20, 2020 5:56 PM
> > To: Alim Akhtar <alim.akhtar@samsung.com>; robh@kernel.org
> > Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org;
> > krzk@kernel.org; martin.petersen@oracle.com;
> kwmad.kim@samsung.com;
> > stanley.chu@mediatek.com; cang@codeaurora.org; linux-samsung-
> > soc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > kernel@vger.kernel.org
> > Subject: RE: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs
> > fatal error
> >
> > >
> > > From: Kiwoong Kim <kwmad.kim@samsung.com>
> > >
> > > Some architectures determines if fatal error for OCS occurrs to check
> > > status in response upiu. This patch
> > Typo - occurs
> >
> > > is to prevent from reporting command results with that.
> > >
> > > Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
> > > Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> > > ---
> > >  drivers/scsi/ufs/ufshcd.c | 6 ++++++
> > >  drivers/scsi/ufs/ufshcd.h | 6 ++++++
> > >  2 files changed, 12 insertions(+)
> > >
> > > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> > > index b32fcedcdcb9..8c07caff0a5c 100644
> > > --- a/drivers/scsi/ufs/ufshcd.c
> > > +++ b/drivers/scsi/ufs/ufshcd.c
> > > @@ -4794,6 +4794,12 @@ ufshcd_transfer_rsp_status(struct ufs_hba
> *hba,
> > > struct ufshcd_lrb *lrbp)
> > >         /* overall command status of utrd */
> > >         ocs = ufshcd_get_tr_ocs(lrbp);
> > >
> > > +       if (hba->quirks & UFSHCD_QUIRK_BROKEN_OCS_FATAL_ERROR) {
> > > +               if (be32_to_cpu(lrbp->ucd_rsp_ptr->header.dword_1) &
> > > +                                       MASK_RSP_UPIU_RESULT)
> > > +                       ocs = OCS_SUCCESS;
> > > +       }
> > > +
> > Not sure that I follow what this quirk is all about.
> > Your code overrides ocs by open coding ufshcd_get_rsp_upiu_result.
> >
> > Normally OCS is in utp transfer req descriptor, dword 2, bits 0..7.
> > My understanding from your description, is that some fatal error might
> > occur, But the host controller does not report it, and it still needs to
> > be checked in the response upiu.
> > Evidently you are not doing so.
> > Please elaborate your description.
> >
> > P.S.
> > The ocs is being evaluated in device management commands as well, Isn't
> > this something you need to attend?
> >
> > Thanks,
> > Avri
> >
> > >         switch (ocs) {
> > >         case OCS_SUCCESS:
> > >                 result = ufshcd_get_req_rsp(lrbp->ucd_rsp_ptr);
> > > diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> > > index a9b9ace9fc72..e1d09c2c4302 100644
> > > --- a/drivers/scsi/ufs/ufshcd.h
> > > +++ b/drivers/scsi/ufs/ufshcd.h
> > > @@ -541,6 +541,12 @@ enum ufshcd_quirks {
> > >          * resolution of the values of PRDTO and PRDTL in UTRD as byte.
> > >          */
> > >         UFSHCD_QUIRK_PRDT_BYTE_GRAN                     = 1 << 9,
> > > +
> > > +       /*
> > > +        * This quirk needs to be enabled if the host controller reports
> > > +        * OCS FATAL ERROR with device error through sense data
> > > +        */
> > > +       UFSHCD_QUIRK_BROKEN_OCS_FATAL_ERROR             = 1 << 10,
> > >  };
> > >
> > >  enum ufshcd_caps {
> > > --
> > > 2.17.1
> Avri
> 
> As specified in the spec, OCS isn't supposed to refer to the contents of
> RESPONSE UPIU.
> But, Exynos host behaves like that in some cases, e.g. a value of 'state' in is
> isn't GOOD(00h).
OK.
I still think that you might consider rewording your commit, explaining this quirk better.
Specifically you might not want to say "if fatal..." because fatal code (0x7) is just one error code out of many.
Also you might want to use ufshcd_get_rsp_upiu_result() in the quirk body instead of open coding it.

> 
> For QUERY RESPONSE, its offset, i.e. " dword_1" is reserved, so currently no
> impact, I think.
> But if you feel another condition is necessary to identify if this request is
> QUERY REQEUST or not, we can add more.
No need, as long as you are ok with whatever ufshcd_get_tr_ocs() returns in ufshcd_wait_for_dev_cmd().

Thanks,
Avri

> 
> Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
