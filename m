Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D2E1BF1BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 09:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4+9kWrGfZ7D3jEiA81AJB1R/me9ntNOLz5bTZieiHk=; b=VLlrQCKRWRYHEM
	xzUuBL2kmVLWDGg/GkrrQ92BuGfiQjQ39sJKf50+pcfG1lpeVubi/4JbzxIASYd4IoPW7WdsoFs6Y
	R8110V8lSyUjWWWeAVH1OW5TDPag2uoqgratJ/CKSN0wsOVMssfQSIzcDGJN03e+gHte3+mYHrN4f
	PPCoXc+wpvmuWnjgZL3rzJXmYxn+Ke1gwtXfsiEDac93VWSimGJAhiNenM0rQEoA02N4yz2HNWwJN
	N1NJMVaiTvcvtanQQNg0xaU+NRt11UzLw0cyAHzalITb8tjbvJW6ACnV6mPeUVT1SAj4P4TFPK2To
	pM5C7O3PEErkBvHmM6vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3sS-0000iI-EA; Thu, 30 Apr 2020 07:45:00 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3sH-0000gP-9x; Thu, 30 Apr 2020 07:44:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588232689; x=1619768689;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G062Cwk5QU0GnDIYwWhXQ1/tjyK4hwlKsoaWJILACDA=;
 b=ZeASR1OAR7unBFrZwRFytUCRIVlPtHESRpIvwHh7L7t70+fPBrPzuVQp
 H3TDxa0TABp9/gXXmKCKrnsY4+lEZ2cTDcAztS0QOLSle99kYmu6+wsUV
 Ii2yyBNaNcONWZbxno4ESxNCJ2JqTriU9doUTPKFOLMvyGz0nYDqdYfna
 rxfme7EfZP9+PEUz92L8SzSrAZdXIK7vlc0TUfwMsETuCvZvHQmyJy5Ee
 nOrsugCGLBF2r+x40cuX3IGtCeyqe6uQNXff3vSjEoEB6x6Rlegakae7w
 EHSheH+Jyt9V3FnLfUS2wvLQhCq/vTc2BNyezxRpbBL55naNJDvvvmpFv g==;
IronPort-SDR: qZlwLocpel+zYdEI7DQLv+dj8rFj2fvuU3OwkKdq5I86jQeZK8kn6AHilpUN6w8+Gy5RsIJRLV
 QDhKAJBruzshUs8+bLk77r6V5nbUzdtSLbxmnvVHLhmT+IoKLQIY8lrdP7kkw8OsD7ysbbya0r
 08ru6loI9YKgYDKxrgesJ+kbtlId+WAh9izCx3vFWLlt9aaFAqFdQGRATaydA9/XBjM68e++R0
 2gzRs+U6qQ3XCHaMAcQg3i1s5XHtjbrONb20/qmwIVTBBnGtAlwuJyLsMrN2JApcyzHXs4yso5
 XWo=
X-IronPort-AV: E=Sophos;i="5.73,334,1583164800"; d="scan'208";a="245342953"
Received: from mail-co1nam11lp2173.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.173])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2020 15:44:46 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X5WT1xSjPuHiRJOc9dp7M3yHE5nD9d7LGK5OgkmWkmhPpWPwOCUVLORG+TTVGrYx7CY0QOYFvX7yB8Aexrto7W+9wrHFJFM3q2ERklK9cATWIW8539lWdJkRpqa1zOLZMUpmmwoFNRK1hZ9aXcEGQMRYtbCZ4Dsrv8GgvNNg0m4ya+jvZkhsDDHxVyJeB3DH2kJcq2ucner89mLkYVy9dJQPmT5DTxVN/TYmVGqMB4rrcodTHiDac2Zct2OlB1z7tiHOkXu0prC2KokboPuqph+XOIdKjntAlQ308OS/lV+scf7zH/PSBegFxsHw7ul1x7WqTzQmX6/Q/b2dFYvnbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G062Cwk5QU0GnDIYwWhXQ1/tjyK4hwlKsoaWJILACDA=;
 b=M2rEpIg1S9o/cJbqwbXVYgjzQnfQ8SJBRW21+aJhccDsrj8mfltKEaTB/vZtoKoF+4rllk1EVela0C8ZYoEXgSD0ZD8GkVxlMvWOcaEWRNW/hxwKVeWuexRWi7t6qGz5WoDGuOkj2g+pwt79efkrWNEUvecXlP8Xm9UN05L77WtZ4t+yubW2VKvMw//uUSG8ngyf/ju6zyz9hsxhz8bZgb/gg8xmA3U3UnSxr6vDg6k7yDJWUd58oeClkfIzR+5ZDg/g0VJ6z+rqyV3/6LrrbYt1VvMr8THo7YcXpd+c3YjXc5QH1s6FJV/7oJxOCRLjJarOJzPupzJgLzRWfoALzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G062Cwk5QU0GnDIYwWhXQ1/tjyK4hwlKsoaWJILACDA=;
 b=h+RiG8srO7JZRnO1K0Kkogt2nw+45MUv6ZD/d0mNKrj8oxPPyytHUG7VQKAAe6skYlBYAHGN9OGfv8EJRgHTBtEHrXG0YWIxfmDbCxxIgn5Scm1pBVTNHkSVRMWRK9lKzLgrsgyFK7LrvfMBSNPRpBC+MVP4D4/9GKLbK0sqvxA=
Received: from BYAPR04MB4629.namprd04.prod.outlook.com (2603:10b6:a03:14::14)
 by BYAPR04MB5400.namprd04.prod.outlook.com (2603:10b6:a03:cb::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Thu, 30 Apr
 2020 07:44:44 +0000
Received: from BYAPR04MB4629.namprd04.prod.outlook.com
 ([fe80::75ba:5d7d:364c:5ae1]) by BYAPR04MB4629.namprd04.prod.outlook.com
 ([fe80::75ba:5d7d:364c:5ae1%6]) with mapi id 15.20.2958.019; Thu, 30 Apr 2020
 07:44:44 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v2 1/5] scsi: ufs: allow legacy UFS devices to enable
 WriteBooster
Thread-Topic: [PATCH v2 1/5] scsi: ufs: allow legacy UFS devices to enable
 WriteBooster
Thread-Index: AQHWHi34Hoh3MU907kyUtpkKOgDgW6iRSO9Q
Date: Thu, 30 Apr 2020 07:44:44 +0000
Message-ID: <BYAPR04MB4629B87143D7BD7693141D39FCAA0@BYAPR04MB4629.namprd04.prod.outlook.com>
References: <20200429135610.23750-1-stanley.chu@mediatek.com>
 <20200429135610.23750-2-stanley.chu@mediatek.com>
In-Reply-To: <20200429135610.23750-2-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fb71eb94-5929-40ab-d267-08d7ecda59bc
x-ms-traffictypediagnostic: BYAPR04MB5400:
x-microsoft-antispam-prvs: <BYAPR04MB540039BE08BE8AC42D4829E4FCAA0@BYAPR04MB5400.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0389EDA07F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR04MB4629.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(346002)(136003)(366004)(396003)(66556008)(7696005)(478600001)(9686003)(55016002)(186003)(8936002)(316002)(6506007)(110136005)(7416002)(26005)(54906003)(4744005)(86362001)(33656002)(64756008)(66446008)(2906002)(8676002)(66946007)(5660300002)(76116006)(4326008)(66476007)(52536014)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u/xhfbRD/0jajxKw7N1aVpTe7RJ0Lpr+HueiojA0mHja12h/18ks/yFq3HDg1fJ4vo0UKn7IQkqMGSE8dBwvgk5HYiAIKlOqIxV9jxLunS2Y31LVvYnYt7HX3Pd9fbL7fFACtVZ/CROd/Ar7HiF81eQw6RrtPILKUm6/uoxSkAlO8bCfEl4O7QZB9eeRDRsaZiBYj1BznzXQ56uVpPn8dxgT3DJfZTmAqvvI3Mis26XtR30N5l2uxsOAyUs1nsMeAkL3C7jl2G+hW88o1W3mArNHS4eiRbtXwnnYpJsKumdkGfJIECYDdqkQbl6A+fqno3WO5+qjtWuHTOjb2Y+TLtrhD5NkhW0btHbWolOMt5caSXpoaGl2dTtaN8vSw5h2TslLZTjn91Am6hEoTZtrzvlCn4ddmUnA932S3Dn6VSksYW7uBVxva4ZN6z3Q72xr
x-ms-exchange-antispam-messagedata: xRXZbVt2/C+BZhg7RPNxGd9gsphyyQwU/W0b0objQj3sfrniwidZBODF7MwpO9rHCIZEBtHc8iSjhaNi3eL7vVyDQNNZU5ZYEcd9AQgqJ5wgW8Oo9qOruXsvymKh/XcgoG2eIqd7VuEPqOi29h48r8TcUni9GJX5mbkhDyOyQhcw/pmNDBXKlUUEL/BL1yXaZCEwHbO+v0cmu4hRCUE2RsapxeENXU+ArQZu5xvMxWY5ZcYjXIPz9C5OXY1rmVKIif1ylq3+3kRN3pct/Dmf9eoLs7ZbW/mM0D4AIcffJWYD8mHmAkDuW0I2Dr8ESbaP5oecVc3A4UN1fW5ZtlNE5tYpkHVahj9WmXxVPZOVOmF91kOZX0h4eCuuqWadz5m/MQI/23Qaiax4jDcc2H4UT3OewSyxOawKjBGWucro2TFbR+sfdlcQH7cONcT+wFUlStzI3ZVrM/VfqHLyjRpoSQaYGUqn69jVqYGpwijvyELUKsOWkq/g5emP/uerF896I3cUqpXwTWo+ldDA/9aW/CzxlaJNjEvdkMe357wgx3Prg35gvJXro02TkjEET4pErqho/innqT3R89gwLr5jG2ko+KIzepefIEaizYxw5OG3fCLepOXAI1FVfuIPFwWNBSo8ng0dp+qbQEoLTNbRy2e6x9ExYzBPuAPgRmDhbzeKcfpZ2XstsRULdw/8huThAt6BcepLfJ5Po3653DBnS/xS/eD7MXpji5V0Wq+TZSXiLiCKATImjiHTQk1IFqPn4RnwHa+SdSxhGpHV/vnYmy74Kry10La9wSXY6uL5WNI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb71eb94-5929-40ab-d267-08d7ecda59bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 07:44:44.7727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8I7C21HjbXvoA5J4J4JMZzc6lxZ2mp1sRwXRFAVcNXOAXKGkZ7FnyUX33n1NWIhcMsJ9VcTxkumOcq+IIyCZBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5400
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_004449_358524_6F6B3B42 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Stanley,
 
> 
> WriteBooster feature may be supported by some legacy UFS devices
> (i.e., < 3.1) by upgrading firmware.
> 
> To enable WriteBooster feature in such devices, relax the entrance
> condition of ufshcd_wb_probe() to allow host driver to check those
> devices' WriteBooster capability.
> 
> WriteBooster feature can be available if below both conditions are
> satisfied,
> 
> 1. Device descriptor has dExtendedUFSFeaturesSupport field.
> 2. WriteBooster support is specified in above field.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> Reviewed-by: Bean Huo <beanhuo@micron.com>
WB was first introduced as part of UFS3.1, and lately as part of UFS2.2.
Any non-standard behavior should be classified as a quirk.

Thanks,
Avri

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
