Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79D61965C1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 12:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQ16K3hqu5p7JDPMfeFUJfYEViG6LTpmfOVMqPDUsEo=; b=R40C+hcmChVkut
	u/3ew32l4KVsur0yQWbwPBjzqtn3LeX4Z7VEAaP2plfN7gmGtnm0MJ1t7178ERsr2DWvZVT+QCH/7
	89fzBrXmvjYx6ELBONsPpgUQ1mBrZH00vkaJcUYB7Sc568Hjyu04FWIyeldQcVs8G/v6NSa62FBHq
	G5x2orf3wm2UZh61YDZGsnTuC5Qu5BB8CNUKQ9Vd9mi34x5aL9SscyG8Bd9q0zHbhNFcTSf66SHxa
	QGZLMfz0dH2OdWPhPY/zJgD1hx8xu370dfcm3hgOKUWEEYTkt8ChYjIQ4c+MEp8SXAb/ZtDa2Qvj+
	j9veNi9mFfLF1QI92NwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI9dr-0006SR-Nc; Sat, 28 Mar 2020 11:28:43 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI9df-0006Ri-Sb
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 11:28:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1585394912; x=1616930912;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=daDgnQ/Jir+PSWgC6qnWAUkygxH6pfgK259ujqAGMl8=;
 b=feaMWnPX4+Hz3IFMoIRuditB6ZzmyOj3aS7/0efoXXX6WXVlC4LhA+s6
 Y1TEW5mJTYLwAKTqHvva4X9e1WRtQ2vW1ipsWS8PHg4u65hkLTeEWcNTM
 g5aX3Pl4cHaKAvDlDY1fS+RCq9HHaECCtxaKLIZ8gFJGfTlBFWnJslcbN
 TmP0dk2oneRhB4kn0pVhQ696RLlr2+eysieRj5B45ohTAlVTrzW2pa3S9
 7VuYpzoEN9U1qcLRvzNfviAoT4PAN0sVpLPOXsIeUtmcgKuUjkvhUwehH
 brKYx4qQgVvmUqPto5YvFyLStSZhIfPCNr7fNxhX+yS0SbjMxu7uPJQM1 A==;
IronPort-SDR: DtfdMPfIUsnaUtCfaRo87d0PJdhi2obIG+5C5SBWG60R2fNIZ81LTVnXgfpNcBFFKpx0gnLqn+
 U7BXKSVLq5As6fZ+46MUSYb6hoir17Vvfs8Awc+hysdf7rSaKim39KWbTAMqubRLdDtPkW7ZBw
 3/QZt3Zl4ZWTbtU4qNfSi8A+qXBw3KGsEwGGx9PNTpKDHqYlxiEMCqkI6ZFPNZlrvl2mGCt9Uy
 XjybEHQyxIt9/AOGnVeylXBdun9NDk9OIBoTxPqYB+IzqlSW+fkqwqHyGPM6iFI8MRvIJCB612
 PuA=
X-IronPort-AV: E=Sophos;i="5.72,316,1580745600"; d="scan'208";a="135193001"
Received: from mail-cys01nam02lp2055.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.55])
 by ob1.hgst.iphmx.com with ESMTP; 28 Mar 2020 19:28:29 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DsGge+/YsJ+Xp6WkKiPGiLFZvSJ+qhFbGBxyV8m+dcveBCZe8n3XflUyONFmYbnxLpgap7L1CPziJjDP8YWB5xeLYZ2/PRQkwpKi86/6ClwcW2PQnohK5/NDgnwDqrwimN3NOVfScm2zrCT8DiWum8Q3XeLTuHgYY+pr4N9B2Xvb+uvynaQDM5b9cD0BM1Pjv3H3Bn6k6Kvs5gv2CYFZ7uA6y6SgrTjTD6hhgsTHb8No1ENUectZoxIkmxk5n6kp4tJQ04aG43/1WakkpHH3TJGJTPAwW7sXivYcacjM77bb48D8t6cm7sbWY/Sz73oiwi2lBJ3DpFmhZ9ToquadVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=daDgnQ/Jir+PSWgC6qnWAUkygxH6pfgK259ujqAGMl8=;
 b=NPYTzme1kDb6RqCd6TCM/JxQ3yi48SASK7Sg3czT4Yh/4MGIwiZXKuTtlzgOTuK51NyeOd20dfAQiZV3toMSZEWwmtQEZiqczWRxFnq1+M+S7xLZJNPUL3wXdAhi1jBgwxScuAj0tTMzy7n0FhIk9A132dI+72DSe0mOCaIOvcZVtS5kEaqLkkf6oR9Kg0l76yg69btzZvkiUq065osxpS3pexPYlgOETG7iA/N2dAX5tdxjaoHZGbZlZvRkZ3hPCViqaMzUw4RNkfobr9IqpfMKWeX6wP88ZSQDCSqsxd44Xj4yF0cN0R8CwEMO5o5hmNbsTl9uSM2bOw7/QlUOiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=daDgnQ/Jir+PSWgC6qnWAUkygxH6pfgK259ujqAGMl8=;
 b=mcn4Kab0X3Z3AIqfPfajmA51F9VIbssFBmPKnBYsdXMmnEdNStHAiMG0oNh6r9kOyDuSFneoa56U4Ydzepx9sGEKvsfw1QdTQdgf59qxz3lV2mjh3Jzr6VXkxJ9ZZ5VjUrze0UneCkVulcuH9gyVMPol/A7LihOEsMSPjCcmzNU=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB5293.namprd04.prod.outlook.com (2603:10b6:805:f9::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19; Sat, 28 Mar
 2020 11:28:27 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2856.019; Sat, 28 Mar 2020
 11:28:27 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>
Subject: RE: [PATCH v4 4/5] scsi: ufs-exynos: add UFS host support for Exynos
 SoCs
Thread-Topic: [PATCH v4 4/5] scsi: ufs-exynos: add UFS host support for Exynos
 SoCs
Thread-Index: AQHWBFstXCevzUCX9UuieWMryrlIrKhd3W9g
Date: Sat, 28 Mar 2020 11:28:26 +0000
Message-ID: <SN6PR04MB4640B92BC9EA5CFEB74BE5EAFCCD0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171420epcas5p490e1e6d090a540eaf050e0728a39ba25@epcas5p4.samsung.com>
 <20200327170638.17670-5-alim.akhtar@samsung.com>
In-Reply-To: <20200327170638.17670-5-alim.akhtar@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8609f09c-199b-4596-ffc0-08d7d30b2258
x-ms-traffictypediagnostic: SN6PR04MB5293:
x-microsoft-antispam-prvs: <SN6PR04MB5293C79F985799E5F0DDFDCAFCCD0@SN6PR04MB5293.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 03569407CC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(6029001)(4636009)(39860400002)(136003)(366004)(346002)(376002)(396003)(8676002)(81156014)(81166006)(9686003)(7416002)(4744005)(33656002)(6506007)(316002)(54906003)(55016002)(110136005)(7696005)(8936002)(86362001)(71200400001)(5660300002)(26005)(186003)(64756008)(66556008)(76116006)(4326008)(2906002)(66946007)(478600001)(52536014)(66476007)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0yBrWRq6frY6Q+Kcjn4/LtZX7t4ZYx6KE+z53Jtw/7+014kcFPgJB7EoOn2PfbqKXmMlJdvzZFXpf87IwZIfRPZWHkWwLy2oOqzLN9J/tKhdxirsi1LXctwDEW/9KsNDK2v4NTf3ABFbW2dgpaCoqQgXLlyeCLrtF7Pb5A3fqzLk7T4IsOEpWY0/5NK4URpqi/lmU7tKQ6BQOe7n6uKXAm3PUfQLXJTrUkaTtBPWU2i8mPbC812VtLVEGBiNbTF+S2WL86iEM7tr/gVyNEJgrUKUY2bsctAbpKx2lBAIUq+PM4NU2Mqc4EgC1D8ArPqUnhY5ykPpqm2+/qfcjKXaftoJJ00/Pbl3q59EQQI0teTg/+PGHFl5T/u44TjE97M0WTLnTdLA+tYEvbZUUvTiHMZ1U9Y8ZenpO+VAAK7fbN0RmG2ssIIlr40Tteud5Ncm
x-ms-exchange-antispam-messagedata: ZPdY8PnW7+3iIIkuttKirQZ6sdZg2aq9g1cZO0aSDlqophy88nacBLZ6sSw1r6hnZ5c42u7E9wfi/qvxpc8Mg+MlgnQKpcGRFYj+Uz9HfCrqJvIOWP9vGVFYi3ZRueMWAwGth137OwUBcrA7+QyKFw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8609f09c-199b-4596-ffc0-08d7d30b2258
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2020 11:28:26.7565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y0beeGRxkwUGS9mzr3mu/Rg4OtSdliwt9x8P1ZrS8z126yilMDJmdVo3I0p4UX+RutxL0DCmUzL1bPcy0M6ttw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5293
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_042832_038545_0A584D88 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
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

Hi,

> +
> +long exynos_ufs_calc_time_cntr(struct exynos_ufs *ufs, long period)
> +{
> +       const int precise = 10;
> +       long pclk_rate = ufs->pclk_rate;
> +       long clk_period, fraction;
> +
> +       clk_period = UNIPRO_PCLK_PERIOD(ufs);
> +       fraction = ((NSEC_PER_SEC % pclk_rate) * precise) / pclk_rate;
> +
> +       return (period * precise) / ((clk_period * precise) + fraction);
> +}
This helper essentially calculates a factor f, and returns period x f.
Why not do that regardless of period?

> +extern long exynos_ufs_calc_time_cntr(struct exynos_ufs *, long);
Why this factor needed to be exported?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
