Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0531B027D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5T5QiDso0HMlIzxlZ8hA01piVbwqNvzI7kXBuxRRJA=; b=ePuLIyP5M/ryDW
	UZjm78mpLLY95wb/6cYswro462iYfioa8RIAZQcgcyYShum2ECA8tBwZP9LlntcCNpZ5wKRfC+7FP
	BoLelSP9W7BwjtwsY2bx5c0Fvkw2vggGPBXd0BYilSkpYd1wi2mxMc7zj2S6DLkWNW0AQH6+bZpls
	4ZQQ/YcBU12PVTeFYcuyhQ+/rCOb6YPOwjw0SLIFlT7TWRS1r4gVkz84dlAKe/3dG3WzSV4dUKT+m
	nVex75Yi/wjeoxEM7TZUTmASO6hrBkClEuCqqDRv27Loe2mRow3AYHgjw18C7P6BZDlbo2OjpOPRm
	Do9PJmSAqZiS460pepHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQdd-0005vg-Er; Mon, 20 Apr 2020 07:14:41 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQdU-0005uH-J1
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 07:14:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587366872; x=1618902872;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KwU7xueAau9D+GU6TFQHWns+Dngy6h6T5a39ygBn5WE=;
 b=gtoPqYCtd2Tsy2jHywZAvWH6Lz1Wq7kf3Ejl9IG69hUGxYOTbVDZzCwx
 N6KOOuA5nE1bA2Nq/mYwF4wAKv1d5ijEPC7VHFxWvv5Rjg1r4GHiPM7gm
 Son2a60o9TWaxiEys0GaKZUajsPh9CJLeJtrPD5X1FgwrUBnvXPdspDZ1
 bBV2mFh9zoVL1KCG2N75YN+IMykPAU2bwMox2sZ1hbQArn7wtGV9J3lpo
 909016hprSNkemfY+VEAEo9SDsnrV91eIKyIqbzxd7FnXFMusY51x/z5K
 1iyEYMKcmeEeesceT2/w+Yn1AdHPrK+2hzd1KeIW9tvuVIQdcWLIQ7FYR g==;
IronPort-SDR: iHu8Qrvlhi6TppXa4/5HgckMMUuErJFlteZnfI2dsSdWkixVgEnPctKBgX2qqx3pbE6TVHSuk9
 pTz1RMglhQvI+F1/kJZK5ChVCOD8LEZDhcEBke1v0ZbN2vrYGUNPueLVPJM+2KWOSZph/eene4
 hgRGgUh/lfTK1E63uiUDY5TaRcFWesjwEjMXFN8jNAUQ2T6lKQT/vcdjk0Zs+NGVl60Pvm0Soj
 9dNctr1p2znfar6SKSvnEJ/dbLqMqeK8y8oyktG93ukXPDn+XwUYVqrzJVTP2hj6bKIRxoYzOD
 tP8=
X-IronPort-AV: E=Sophos;i="5.72,406,1580745600"; d="scan'208";a="140044046"
Received: from mail-dm6nam10lp2106.outbound.protection.outlook.com (HELO
 NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.106])
 by ob1.hgst.iphmx.com with ESMTP; 20 Apr 2020 15:14:31 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E/T/+zOGmkIIRzDGakv+uBc/TDirFP7HYEBa9RdO65N94vymWWyXJPF9CH8XV2bc4ABrdj25Hr9C8LlMqN4btjOuYX797/o8ANERR4qfweknAX014vDGQZBOS5kTmkmrhxAKyz+cJ1FdO22MVAaSj8Bl7ij353k7AhNJzkEdjHs+Zab3xQ8xXADJY7LZrtzJ2ntMhsxi1pSIvRavcZwAXDNf+CV0P2Tpc1jP5clU1Y0k66WFiHWaXFZYFfTWyD9+ZYrw7WbITPLZkxBpiJclqFqSVKduJQ6HVYkBf/V+KKG5v0nCTs19YEuJwaWH0+X3h90lWWF2oWR5nNZQyqNRLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KwU7xueAau9D+GU6TFQHWns+Dngy6h6T5a39ygBn5WE=;
 b=jdZFQuxwtSkHUo6Cql5AGLJONR0g4mNT1QMk8jlGRwh/A8oylob86IuXS3YLX+mZhmdzUuKKvhM+WVQ6nLeahKmUV7jIJDL6mK6xt4S5ylkqAfHHcTheQLRv9B1mBh3Q1/GONLDUMviAh6Q7xCB3jLUx3Gn90pfbho0dVjc2w6lBg0E0LYeTT1igD8pmlqhilD9EX+E2RZYt/ek4yMsuocU6JXDdfjJOfEzMc2kbhM/n+KIbjxfkg/l1N+tiBbNp4XtEtpvI5xtDJ98UXvTXHpjcbIySaF1CngMKZUM6iUGnWnbjwo/9z4O0tRjJDcUEj8t9ynSTw9H4BItIiFFEjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KwU7xueAau9D+GU6TFQHWns+Dngy6h6T5a39ygBn5WE=;
 b=IDokG2/5j8EL4dKdnQOZWiq4HkHzdjOWqXtyntKy+q66m2bebmx75sJev4zd4z42XXVbLmOFVyzY5k60dqcZSoGplKABuu6X8pqaYKJGK3W4EWcwRg/z2hF+s/xKQRy6qXFyyKb0WeBtl4ehW5tQ1l8InIql2iH/c+x8O617lS0=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB5216.namprd04.prod.outlook.com (2603:10b6:805:f7::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Mon, 20 Apr
 2020 07:14:29 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 07:14:29 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh@kernel.org" <robh@kernel.org>
Subject: RE: [PATCH v6 03/10] scsi: ufs: add quirk to enable host controller
 without hce
Thread-Topic: [PATCH v6 03/10] scsi: ufs: add quirk to enable host controller
 without hce
Thread-Index: AQHWFON2F3tEHGSKoUec1wnTuJZOw6iBnIZw
Date: Mon, 20 Apr 2020 07:14:29 +0000
Message-ID: <SN6PR04MB46403B55EB956336690B0C66FCD40@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181012epcas5p2004ac8f0d793abd4d58c096ff490da68@epcas5p2.samsung.com>
 <20200417175944.47189-4-alim.akhtar@samsung.com>
In-Reply-To: <20200417175944.47189-4-alim.akhtar@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3463cdf6-b593-4b35-e11f-08d7e4fa7799
x-ms-traffictypediagnostic: SN6PR04MB5216:
x-microsoft-antispam-prvs: <SN6PR04MB5216D064E09B63E65677511BFCD40@SN6PR04MB5216.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:400;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(39860400002)(396003)(136003)(346002)(366004)(376002)(54906003)(2906002)(71200400001)(4326008)(110136005)(7416002)(316002)(55016002)(5660300002)(186003)(8676002)(81156014)(66946007)(76116006)(66476007)(66556008)(64756008)(66446008)(86362001)(9686003)(7696005)(558084003)(52536014)(26005)(6506007)(478600001)(33656002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: imFiLJQLrq6/+8Ob3ol70vuoq2+bwySpC/nMzYbARCfJrfc/lpjAuJzwPqwQYi48juk2vTzW4bj57VLhJs2EkRqjSmoJuaobx9g97st1jWRY8QG6Gc+kpIVF24Km6wyeoXao+n3IWlmov4po2FZI1HRpC5XFkWwteBLbNHLDblJsx+D6DhTyf1mJxsL5ppXNX+cafTveUrZcS63t04YpTAcO63dBySpx+sf1BsCK1FaHWGbut4I8T0eQRsFNM+cGWDlPD9/3kia70vkDIkVfllEHbiOMPgQo1R3I6q5E3W6d23Szal/ADSmDhzrP13ulS/1gGs7bfbJh7AEIQiU/GJEIkTX5YK2kWPHhiEwNt1ybYV9TdNkyDaHlE6SaJAwxFxI6DALw4VhY2QiyQnZQMnd4XNPD41pzJiC5fJQW74GWgpxotwNZWNtarXRuAXZL
x-ms-exchange-antispam-messagedata: XdXdP1NyAWF5duhh4xXjAN9VLtPzzhfzgVZDV0J7RbkRIY7zPd0sKiUR52hfattfnulev8J99COSPwdm6a+ECEyvk77PfLW3k++SMB/YIV2UZVhILlWWaqVEjqDFQcz8iNvfb65c69VIqaLPEuXxuw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3463cdf6-b593-4b35-e11f-08d7e4fa7799
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 07:14:29.4635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /QQT87oP9Bs6Jl1I5kIp1pFJaovHZxJXliFuLBQLpaj4W/5l9ywHiYZ7gFOq6Lh7tcByGtxn1GFdnk0l9TF70w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_001432_630364_315AA087 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [212.25.79.133 listed in zen.spamhaus.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

> 
> Some host controllers don't support host controller enable via HCE.
> 
> Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
