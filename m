Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FAD1CA546
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 09:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Z54ENpLRp3Ho2UrXI1fwu1eghRsglaptqH7o9OgLms=; b=jQ6EwD5tFN6dGs
	WwTFR3Nu/AvJROI01h3pCVcYDI5rOpzbjIA/8RLrkflTyxtLTWoYlsDn1B+qxcmWOEzkUnLOj+g9N
	JaaOYVxCcQ2osKvauXhxyH/E3oEJtnkhy5qfdVpoLCVr/gqosLL+fi865V1U90W3vKp5WLpB3EXcz
	36bqDxgX2/yfJJKXakPDF7hr0U8OoRdbkBWnYtd/7hXAVM+4gY7CO9scZX9/0zte9LAg9Lgwp0h68
	24aPLLJtHBvi8a+NkWB18Rez7sE3Ky3V4XY6RgEXc3vkEwESnqsj16WmB7R3zO0SrIrF1pNB/dsSy
	z+1m//Z+5oaZJjdZ8u7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWxYB-0007lo-Sz; Fri, 08 May 2020 07:36:03 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWxXy-0007ij-70; Fri, 08 May 2020 07:35:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588923349; x=1620459349;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X5zpXGzypz+RUfEDSxNZYpScsSgg3HpAUCUhb3mVpSY=;
 b=B7k1BmMWtSb49P1JR2eCGYgSWS6Ev6Ol9fV844pmy1joMxpS1nYWCCG/
 +gD41jGFpzlyNAS7zXlBodOZ8G7V2+8vPzF3Y+FLPFY9UEYBpaNl7IpbY
 kFe36T36IXTrbtllRna2NiLt+SpDM09UVRhVS2HEh0VwY7GPeXQwNw/lB
 AsohYa0Bcu8gjX/QwRAQM2p5muXMwussBTpOKIcgUvB3iGmPBGM19ahQI
 +h3x3h0feg8jUIZbbi7Gi8vzacsRDUjbpZxRjXf+7K4LFvkTBedFZ5AH0
 X2wog6by7zNB5uEKotr0pa9UUeBuTpC5dgruxAuJK6vnIxyk+UhLVUXLS g==;
IronPort-SDR: mLiukl/iEaDcfyte3dnKMYBvtGRzRm51497jfvfleyY+qgdm4+myOPsp0fmwGGje6F83QA4zoB
 c/6XHtXciHK1eP+cep56GwFKy/Mdfadcv2pPRXUnP60InCK3dK05YX6vkoj6MZn6+qe9B1/ol/
 G3FrVLIRX979rujqDAVch9PRCz4AhzDyy+BQ0pMrsVpXfStHTbAFmukU/G6CbzlPMuRZ/TTdsz
 o4AkfxQluKbbQiLDqa3ZqilYDLE8xxTIb3VLp0X1uJ0b+5vBRHrHQB+IV8GAwgmpwESq+JpEeB
 Ec8=
X-IronPort-AV: E=Sophos;i="5.73,366,1583164800"; d="scan'208";a="246093381"
Received: from mail-bn8nam12lp2176.outbound.protection.outlook.com (HELO
 NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.176])
 by ob1.hgst.iphmx.com with ESMTP; 08 May 2020 15:35:45 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KEOWaOn+FPnuWU2vJPnzlx+kbEmcXnejBNF0xJbEPnIWRXHEJqUF7cGR43YB91Hqn5pg+0wz1tVApgzPpCkBtkkHIcGwXpXtt+sUaUr8RPv/JZLFWSz47k+7FLZkhkONpeEtTFzrHA18B4pDTncrQVkQtt6PGmGe5GAveMh1UQdG9X4l8WEAKGtsDSRFT/7mzUGEU1y6S8ea26eWKdc50YhSDt8x3ACcI1npS/Wb8dSkyeJDMr+nUTGpnxbsaSudhr3mYEabgqmkim0HVrE6+aWMbPQTssN0+UJCvzkmcDLBpbckP6X0RiwWKHXL6NnKiQwqJmnn1avWZ4nCgkA9WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x+8ELw6aHoSUiZfVKYmdXzmRh2+/ZAIWp8FU0p5Ri+0=;
 b=nT1/bYuQAM1QCh5UtJFnaIPAlXDPLkwbAGwJw3LwxPkOZVwVwu2PYZiaCmwsyypFkOwfYyS3YU76EZf/GSZkHAoVhAS2iEFL+hAyixyIEKFbenOr7KXlQJOx4JK1P7Tt8/0jnOaKQBiHyCK+/V4kErc5ZB/F1slT6Tw0+zF7+2s6fsCSyM3znyDskiEWIhYJUS76sItDCSMapW2q8C6s4x2x+34hvYAKfPyJXFIzIBi47DP45Bu67k4X5RZ8F3lqMVc4ACl0KNuiPyMJTla5ThXe+bDy3mMq9nyESebWrtdclXGhgxdhvYrQzSi1LpK/vui0jeQRMZfMFXs86XX2UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x+8ELw6aHoSUiZfVKYmdXzmRh2+/ZAIWp8FU0p5Ri+0=;
 b=OsRuotv9E5gR3yUCEBL8IIyBjS7IDG8sN8vuCo6BV6KYvFejfFPvzzXcxsZ4glD3qxztaTozlGs08v8vS2EdBgyeGkQkO3FVakx57XdGE2jNoQVNtE1EZ8CZ6stkygD3H7UAVDuO/OrdGgfeuWy+38pJ9zsphK5B3V43bjeJkpE=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4845.namprd04.prod.outlook.com (2603:10b6:805:b3::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Fri, 8 May
 2020 07:35:44 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.2958.032; Fri, 8 May 2020
 07:35:43 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v7 1/8] scsi: ufs: enable WriteBooster on some pre-3.1 UFS
 devices
Thread-Topic: [PATCH v7 1/8] scsi: ufs: enable WriteBooster on some pre-3.1
 UFS devices
Thread-Index: AQHWJN904L6sndOEuECiOw2U04WYjqidzIYw
Date: Fri, 8 May 2020 07:35:43 +0000
Message-ID: <SN6PR04MB4640F483F0821F76DF6C344AFCA20@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200508022141.10783-1-stanley.chu@mediatek.com>
 <20200508022141.10783-2-stanley.chu@mediatek.com>
In-Reply-To: <20200508022141.10783-2-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 481c8c9f-8e28-45ef-feb6-08d7f3226aa3
x-ms-traffictypediagnostic: SN6PR04MB4845:
x-microsoft-antispam-prvs: <SN6PR04MB48459F38A8756AF880879A0BFCA20@SN6PR04MB4845.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 039735BC4E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WLcD/kILk2XNVkIfjc6iuQA3EkaGRvG4yIccRjx+1Pg/Jl9HIcFrEcaHGEyqJ8PhI+2ztRO04jMc/xLwBvx+cBw72mOo/xPzPst8cjjWKBKG8BQrxR1i4JvAtd+j8KF3DfBB0Hsa3aGQqEwkpyHeWRgdX/gZ/CwJ63CDBkvhufzdG246b9NCc6LljSbywAWbNaNfnBIq/2NTcKxpFNIxqp/l1QaPmNGcPvocSJJpv4EZ41/DR5GV8opGS99UzbZeHO+am9ZvF/UPlSeyJyN96fOxakgnqMhrEYFJeSqzRMNFDG6Afg6NrdtX6PXLSmilbMeHJX0KP8VFYnf14r16FT1oLHs15wAKqqK0y9tHdbZo1wkW4i5rciC4sg53PBMxqztf1QwTKLB99XH72m9ksGX4SCg6Bl5GRqQhoh7E52Rw2IRoLESTENRbBuzLp/NUHa3ezNkphZ4rEyc90n7FjKvYx4mmQ1GWv+q0aFEPScm7WP50hSyvw4qZlEp8ox7ghTd78LBYxCBk7msWnPfK9g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(376002)(366004)(346002)(39860400002)(33430700001)(54906003)(66556008)(7416002)(316002)(478600001)(76116006)(66946007)(7696005)(5660300002)(33440700001)(83300400001)(186003)(8936002)(83280400001)(83310400001)(83320400001)(83290400001)(8676002)(86362001)(66476007)(66446008)(26005)(71200400001)(4744005)(33656002)(55016002)(52536014)(9686003)(64756008)(4326008)(6506007)(110136005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: bgmRUCOp0IPIHtvfLkfdX7av0az+TjvVWuDfdmF/MLFlqgiwcDTXazUC0hJX7Gw4XI85VBxRtdWaoFDJMipQnOX32ApsZVAZh7WpDCpqyMZoNkoaKNiJXRD6+6oChBhAyHAPf+iFnT7REuG/OnhwQm7zqOJ9DQEEAjaCWfkh71NrWFl6bfeKqSX27LhrmBL4fazKSQ+m6hvV/2cJ6lXmNaj/nk1pgQpVkwvZFln/7ou+jp36OjZypZC1jQLLaFNpIIbPsqL+kfHIIdrPVNkYMmRcHTfQ3HFNEGPpubxsLCuKEOGd7GLUCL105EwBmTy1lppoNb2nnQChFlGspYSpzRX7shf6YLOiOIgWllA0IwxUyRX4pD4VMYatFIHavsXendLJlcXzQQeBtwc0ojvVFlnY1vsFXhHW/5+2zNXqw6Cn/KRThYdMwDLayn9+Uz8PKsuY4y7jcGYdVi/022UAMilMS/J6VSCFH3DrjA4VpNo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 481c8c9f-8e28-45ef-feb6-08d7f3226aa3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2020 07:35:43.8825 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QzoYbvvQQKPpsFcTsqtk+8DFZE++iXZ5NvLoYGhNMNz6TrPtuK+ekaqTx4ib95cd1JiRzT1Xe/bgXeiljL5oDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4845
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_003551_911236_843166E6 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> WriteBooster feature can be supported by some pre-3.1 UFS devices
> by upgrading firmware.
> 
> To enable WriteBooster feature in such devices, introduce a device
> quirk to relax the entrance condition of ufshcd_wb_probe() to allow
> host driver to check those devices' WriteBooster capability.
> 
> WriteBooster feature can be available if below all conditions are
> satisfied,
> 
> 1. Host enables WriteBooster capability
> 2. UFS 3.1 device or UFS pre-3.1 device with quirk
>    UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES enabled
> 3. The device descriptor shall have
>    DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP field
> 4. WriteBooster support is specified in above field
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
