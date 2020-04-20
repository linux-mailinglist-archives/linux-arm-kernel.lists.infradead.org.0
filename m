Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C66431B068B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 12:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ho9ustXY0MjdOpPs5LVde7HgX40J6B0buJgNbE1/UpQ=; b=jjqXllXgSuPKKz
	Wx7K66mVLXi1vVVODe7/Jdh+DTfq38SR64UXATr+brmiGulp2UYSm7MH78N17E3bzeWWE2zZ88x3n
	oSyxsIVmWKx7SoxR1A6jB0JX5yTQOHN37CVyL1BRB67wE8EI4BDtZtS5T4JipHPv7fir7e6DH+yYx
	urGT7+GkwTezQUwsWobCo6QOUjWhjs3UQbmomQZEFI410WHvw5/gm4rk/RV8Eq2FRM9SzWfS3fFO3
	dXjeBmVkVQ3wgtkcWsuW1smoKx44xjXweuH7cmYolYQdRPxk+HGCjkGQAsx1dolRfwqHUHm7HX/GD
	inLG5oOmf79UQtlW1jdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTdD-0006RI-WE; Mon, 20 Apr 2020 10:26:28 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQTd1-0006Qb-Or
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 10:26:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587378376; x=1618914376;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ue3fdm2+yt+qFqyIKS53nvyhAo6tnuDoBPHozr2SAUA=;
 b=OiT4ldCn77SaiPBmR1ZzXBIo7owqZ+sd6j2UKHrQ7ZsZhnwgjQRsNO8G
 yzfcFjV+rLjkrqO9hKMFWyU/WObswgVAvSQLp2qL+nxLLYGkxQSL0Loip
 auCST05KG+T66VH0yiRdq2HifnWz6PKIo1jjTl0boHVoukRl9107kGoM4
 +TczTlhnxhrTSksvSf2dioqkqun8ZCUKqaLOErkZhu1geaDavj376Faxu
 pMbbgAnQEiwG0t1lRIChbBaO9DUwlDdskSCU20GXTmsuPutDKL+IpD6ST
 arROlUqAzWl1a1BR8k0nEhpl6Vc2DJLyzNOvUWAu5t3epmRm/2E/E8WmV A==;
IronPort-SDR: 2xo+meC+FMAs+wbV0sILAkJyg/dClQrmAW8O9pE7BmW5On1BC20yakP0yUVy3cmfqE7nJqas41
 VQYokQ5cHweA12PPPjvKVfj+gh8A+frJg0UpgkgeBIyxPKDOCbUAWFtdYoFqS0Kxun4Uc8kGkE
 v/Ii4BoEkFVg/YDT9gEgrD4TEMliQMUWqBlCOBzbs10gj4iu0WI4C6P7/xyxBVpPdXe/pPvpKl
 n6D9vgi4Y5Okczl35PA6zWYbusONlAeulgXJFyeojXHsjvOMBnDowFSRQsEBSirIcwMea/KG+V
 iUY=
X-IronPort-AV: E=Sophos;i="5.72,406,1580745600"; d="scan'208";a="140055228"
Received: from mail-sn1nam02lp2051.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.51])
 by ob1.hgst.iphmx.com with ESMTP; 20 Apr 2020 18:26:11 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MPXm+wKAF9U4/wuq2ZOMjOxb6W/Swc1nj3G/076s0Xz2GH9STElJUTlyBbhkc2byHZBMe75wUE7WrEqbm7pKN0nuiUc1LG24g8WJelgQ8MbbqTc/LEO0U1Dz7/RUFcvlAGtUKVdyNhvq916xMt0HAS2Vb2ql8G/Yp8eVi0HlV1xdgapWI+t5HJVBRiZtgoTEAIP6NAlAi0MP5Z/vbW7pMwaaD/BT3nKgJ23JYC4x84VNgwy9xiDdsZsfecvdpgJWRO2lD5cvr4vzu3lTr6bsVS5Gb70jxiQW3Y7ECoFTKED9H1Npqa9Rj/epW3PAjCM9P46riyy/DMHnQL2pSKKJoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ue3fdm2+yt+qFqyIKS53nvyhAo6tnuDoBPHozr2SAUA=;
 b=BNizqJer82f8aP8FY2/7x9NqyqZlf0rlMb9ZgQL3Q1SA1eOk39uJmRV5bLrAzNGrYXT/2llrUwqmlbd6ceD085N4A0+iV97HfNjI5Wn7q1ea3yZDs4MmavPSWpPQrLm0PLOd5OZ64Ptz1uAkYTjtLVmvedkL84S772jmM0vjr/70h+ma9WLw3BEWvTEeoIT+aKNjbuiQpg5BBLkTw2L54ReIQjtTEyI/ZEaE4SE6jksXXEGcBjsuJR+bHHkIQu9XxRTRYf9d4RhNbTcLyS2n985y57QiwVckwyJ0X/zWCmYTzmEXSg5WotQ+kuISxhiN7BAPSwgIN7mD/7igN9fPvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ue3fdm2+yt+qFqyIKS53nvyhAo6tnuDoBPHozr2SAUA=;
 b=NI1nK1TYhmZyCxRfEN9ZQvLIay3NOhGw5EPr1H+AmHDRotTIBWkRP1dNWG7ZWreGoBzAXheRMv/1bNvI0qHIkbEQYe2s/kuQIoNjhpGQCIqf4tB5vxMv5GnvvKyfWI16GO0WMwcCuoigoi6R5V2lDt+wc7DHT8YcrUyjNsAmsXI=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4333.namprd04.prod.outlook.com (2603:10b6:805:37::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Mon, 20 Apr
 2020 10:26:08 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 10:26:07 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh@kernel.org" <robh@kernel.org>
Subject: RE: [PATCH v6 09/10] scsi: ufs-exynos: add UFS host support for
 Exynos SoCs
Thread-Topic: [PATCH v6 09/10] scsi: ufs-exynos: add UFS host support for
 Exynos SoCs
Thread-Index: AQHWFON9I42YB5gW00u/wT+K3g+GzaiB0ZlA
Date: Mon, 20 Apr 2020 10:26:07 +0000
Message-ID: <SN6PR04MB464049754716338FA4202E62FCD40@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181024epcas5p4231ae3dd2598155854e9b7ee52438bcb@epcas5p4.samsung.com>
 <20200417175944.47189-10-alim.akhtar@samsung.com>
In-Reply-To: <20200417175944.47189-10-alim.akhtar@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 13416250-60d8-436c-4b59-08d7e5153d1a
x-ms-traffictypediagnostic: SN6PR04MB4333:
x-microsoft-antispam-prvs: <SN6PR04MB4333007425952B576169086AFCD40@SN6PR04MB4333.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(6029001)(4636009)(39860400002)(346002)(376002)(136003)(366004)(396003)(2906002)(186003)(7416002)(5660300002)(4326008)(55016002)(26005)(86362001)(8936002)(8676002)(6506007)(81156014)(66556008)(9686003)(7696005)(33656002)(52536014)(71200400001)(4744005)(76116006)(316002)(64756008)(66446008)(66946007)(66476007)(478600001)(54906003)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kPeB2swhmQ066thH3FyvM6WTuM/2rlIS0+jJ0oCIIgDmlYjNaQeMSKWG07OTtshK8zc4Hcopo1sxwC2Aqpp+/7dWESmjJX1o90iZFLCW98Ejy9FGld8Sh/5T8+kLhd/eJPdneLCotOCBzl0PbqgxAumxWXKeG5adwId8it7wCANBPcp0E/SlQNuTHFEi391PM5rBnByrIcBmnmMizEYL3cDpxPFN7NuOHGF7AE0hhs1g4Oa/bAIGLIOAs+vIgxnNLwMr4W0eyY8tezXySIbV9QF0tzlCLNVSuMn3hjAyJhAMze/DVvrIOiVzl0kWC5Wqn6VtQ51pJ9buXKTz6MQdD3ihw9HD1SXDv12/baqvEKyENW2nT1LsOA89A01WlIWzA201pEIsx6RLpaKpzV6RxRTBylRuUVgtQX2yek/DL1zk/Pjw+RJP597F1XIKjwkC
x-ms-exchange-antispam-messagedata: a2K5aU1fLwpiJsEq0GgV3TEUk8nBc9qiCon6P95f9PmjfUGqJvLFXLnNiNr2s3Xbmxa9Qy4KEwRHmtRzBCqc8ZpEYI7j4Vv79qj3CVEnOe8tQM17JmX4n+3Mks/n+NdRN9w+d2pSJ5shwY8PHhn4Mw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13416250-60d8-436c-4b59-08d7e5153d1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 10:26:07.7662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Giwf3eRr3v7p5QPp3gtq2mhtQdIvNKOpzbuJJWDEbxE+MeBrkjRuJHLi8ZJeuwpD31MuVi3Whmj4bflpEFyuuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4333
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_032615_874714_B082E5D9 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [212.25.79.133 listed in zen.spamhaus.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

> +       struct exynos_ufs_drv_data *drv_data;
> +
> +       u32 opts;
> +#define EXYNOS_UFS_OPT_HAS_APB_CLK_CTRL                BIT(0)
> +#define EXYNOS_UFS_OPT_SKIP_CONNECTION_ESTAB   BIT(1)
> +#define EXYNOS_UFS_OPT_BROKEN_AUTO_CLK_CTRL    BIT(2)
> +#define EXYNOS_UFS_OPT_BROKEN_RX_SEL_IDX       BIT(3)
> +#define EXYNOS_UFS_OPT_USE_SW_HIBERN8_TIMER    BIT(4)
Could not find where the last 2 are being used.

Thanks,
Avri
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
