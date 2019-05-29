Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D062D41E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 05:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnsA5pIz/ciVdIQ/NN0EFq4V+D5ZgynnT7g7YBHRlj4=; b=Jh8R/2ArFNjmhX
	r+QZs8NW+8rJguu1pBDKX1qFxVCvu86+73g+/OpTCwt1D2fj6yoqroEuUlJAimzrMZqVGL5UJJjXj
	gJQwQiPFaZQzI0d2DxEFpk7Dz6ncTpqo1+Kxm7RdlzKayzR0ob24vuCIpQneneLHGy/5NZdPHiL2T
	maEwgdLIee9NaczH5HeKuvCWinxFdql1rXRVL5OAJscX1/CvDE4KpqliDQM+4iZ5u7mbsP8EGCfiD
	c/ByEwuHbpHQH9oBnTR9Xptxm+mcowmbswUgI9jlVaTJBiFiCLZ8djhNPywmpR9XK0jkenEq2kO87
	04DIwlLiU8hAZw4KajuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVozc-0006nW-KD; Wed, 29 May 2019 03:11:08 +0000
Received: from rcdn-iport-1.cisco.com ([173.37.86.72])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVozV-0006nA-4K
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 03:11:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=1352; q=dns/txt; s=iport;
 t=1559099461; x=1560309061;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Sdulz10sBIhnJIx8fDZdylJ9FoEjzCor9wR+V9xoFE0=;
 b=QW93kefVGnYogwiTcD4hp03I7EQiFsN1AvgjHrT7vJdWPccW3Bf8KPZN
 D5kAG85gmcothrb4bGF6WnReMSjGvoXA+kEs9lzaR5YtYy8u5mM6tWcDD
 MkBU+TZDYmfCbzzMysNxhlFRGHEJP80X4jET76Cc1GYK/edX6yqomQs4B s=;
IronPort-PHdr: =?us-ascii?q?9a23=3AzjqGjxQkDbo/uCXTgBZNRqHDmNpsv++ubAcI9p?=
 =?us-ascii?q?oqja5Pea2//pPkeVbS/uhpkESXBNfA8/wRje3QvuigQmEG7Zub+FE6OJ1XH1?=
 =?us-ascii?q?5g640NmhA4RsuMCEn1NvnvOjchF8RLWVRm13q6KkNSXs35Yg6arw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0ChAABp9+1c/4kNJK1lHAEBAQQBAQc?=
 =?us-ascii?q?EAQGBUwUBAQsBgT1QA4E+IAQLKIdaA48AgleXLYEuFIEQA1QJAQEBDAEBLQI?=
 =?us-ascii?q?BAYRAAoJjIzYHDgEDAQEEAQECAQRtHAyFSwEBBBIVGQEBNwEPAgEIGB0RMiU?=
 =?us-ascii?q?CBAENBSKDAIFrAx0BnhoCgTiIX4FtM4J5AQEFgQYBhAMYgg8JgTQBi1IXgUA?=
 =?us-ascii?q?/gREnH4IeLj6ELBiDPIImk2CUeQkCgg2TFhuWS4xwlXgCBAIEBQIOAQEFgVY?=
 =?us-ascii?q?LJoFXcBVlAYJBgg8MF4NNihwBNnKBKY1jAQE?=
X-IronPort-AV: E=Sophos;i="5.60,525,1549929600"; d="scan'208";a="564674925"
Received: from alln-core-4.cisco.com ([173.36.13.137])
 by rcdn-iport-1.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 29 May 2019 03:10:57 +0000
Received: from XCH-ALN-017.cisco.com (xch-aln-017.cisco.com [173.36.7.27])
 by alln-core-4.cisco.com (8.15.2/8.15.2) with ESMTPS id x4T3Avv5019255
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 29 May 2019 03:10:57 GMT
Received: from xhs-aln-003.cisco.com (173.37.135.120) by XCH-ALN-017.cisco.com
 (173.36.7.27) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 28 May 2019 22:10:56 -0500
Received: from xhs-rcd-003.cisco.com (173.37.227.248) by xhs-aln-003.cisco.com
 (173.37.135.120) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 28 May 2019 22:10:56 -0500
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-003.cisco.com (173.37.227.248) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Tue, 28 May 2019 22:10:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B59HeDLnmBJtwbhJij9ITHV/Zkb7RsiodX/MnX980z8=;
 b=Tqd35wk0xDYKzIlbG48ztOKMex2MD0vIRm9+YZzkCLujvZY9y00ASkDOiFiUgwRptysloaaK14XeGa0IPvuZxwhXioDkJcefkGsLKK8jXeElAODhLyw5eV4cHUS6NwndeQLVrGzjAIkrsLSze88bOEtrqhzX7XaZ3AnoOk1kRYk=
Received: from BY5PR11MB4007.namprd11.prod.outlook.com (10.255.161.92) by
 BY5PR11MB4183.namprd11.prod.outlook.com (10.255.162.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.23; Wed, 29 May 2019 03:10:54 +0000
Received: from BY5PR11MB4007.namprd11.prod.outlook.com
 ([fe80::1de7:32f5:3a7b:ae21]) by BY5PR11MB4007.namprd11.prod.outlook.com
 ([fe80::1de7:32f5:3a7b:ae21%5]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 03:10:54 +0000
From: "Stefan Schaeckeler (sschaeck)" <sschaeck@cisco.com>
To: Andrew Jeffery <andrew@aj.id.au>, YueHaibing <yuehaibing@huawei.com>,
 Borislav Petkov <bp@alien8.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "james.morse@arm.com" <james.morse@arm.com>, Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH -next] EDAC: aspeed: Remove set but not used variable 'np'
Thread-Topic: [PATCH -next] EDAC: aspeed: Remove set but not used variable 'np'
Thread-Index: AQHVEwgkpwm7NMGqKUyhE4ayNBdRIKaBVTwA//+nlwA=
Date: Wed, 29 May 2019 03:10:54 +0000
Message-ID: <960D5667-41E7-47F3-9C0A-726CA919B82D@cisco.com>
References: <20190525144153.2028-1-yuehaibing@huawei.com>
 <04f103fb-54b1-4911-8164-44b20bfd1e72@www.fastmail.com>
In-Reply-To: <04f103fb-54b1-4911-8164-44b20bfd1e72@www.fastmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.19.0.190512
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sschaeck@cisco.com; 
x-originating-ip: [2001:420:c0c8:1002::23a]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da4acbc0-d7fa-40d7-c0d6-08d6e3e34381
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB4183; 
x-ms-traffictypediagnostic: BY5PR11MB4183:
x-microsoft-antispam-prvs: <BY5PR11MB4183B04A05AC67C88A772AC0C71F0@BY5PR11MB4183.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(39860400002)(136003)(376002)(346002)(189003)(199004)(6436002)(6246003)(6486002)(4326008)(71190400001)(71200400001)(83716004)(66476007)(99286004)(14444005)(76116006)(73956011)(66446008)(64756008)(66556008)(2501003)(229853002)(82746002)(256004)(36756003)(86362001)(305945005)(54906003)(25786009)(66946007)(6512007)(8936002)(186003)(68736007)(476003)(446003)(11346002)(6116002)(14454004)(7736002)(53936002)(5660300002)(2906002)(7416002)(486006)(81156014)(58126008)(81166006)(316002)(6506007)(102836004)(8676002)(110136005)(53546011)(76176011)(478600001)(33656002)(2616005)(46003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4183;
 H:BY5PR11MB4007.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AghqIJs59cYjUuUMuNNC5Q4ehQp8qSYJum6+gIx7AhhZQBQo7KWB3jXiBi7dIsX6BnLF1+HuS2yi7NoJdH/Bo1Z/mD321tvHvMLP7G+Hd8tElngXXNfnE3PUJR7wxKxnKwrPy6GukNZaBeOEhI9LrGXWO29Y2g2yCEXon0F329khucXeuAAnBjguh6/9wXl7PdAwG/Np7pLOAujZ21UY3COWwmT7Yepb9Ped2DgIIZ3HDhfLjv742N/RWL5//23H+E2YOl9NNcuN4tTyZlCk+jExupEjVcTUAEH9V6Xabzbjskpj7pX5D9Bvpvp2oNLZMbigBeEaoEY2+t3BRAs2Pma2H/keeMf/zegmWiQnEg8atCpRmrst5z8ZB7GhcfRLGATc4n1ynuqDb1xiMbcowSMh+HkZZCcGq3XQ6uz9jZM=
Content-ID: <3293C5D8B6EA624CB924C20630669181@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: da4acbc0-d7fa-40d7-c0d6-08d6e3e34381
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 03:10:54.7573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sschaeck@cisco.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4183
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.27, xch-aln-017.cisco.com
X-Outbound-Node: alln-core-4.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_201101_349210_5A8B81E5 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.86.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On  Tuesday, May 28, 2019 at 6:27 PM, Andrew Jeffery wrote:
> On Sun, 26 May 2019, at 00:12, YueHaibing wrote:
> > Fixes gcc '-Wunused-but-set-variable' warning:
> >
> > drivers/edac/aspeed_edac.c: In function aspeed_probe:
> > drivers/edac/aspeed_edac.c:284:22: warning: variable np set but not
> > used [-Wunused-but-set-variable]
> >
> > It is never used and can be removed.
> >
> > Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Stefan Schaeckeler <sschaeck@cisco.com>

> > ---
> >  drivers/edac/aspeed_edac.c | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/drivers/edac/aspeed_edac.c b/drivers/edac/aspeed_edac.c
> > index 11833c0a5d07..5634437bb39d 100644
> > --- a/drivers/edac/aspeed_edac.c
> > +++ b/drivers/edac/aspeed_edac.c
> > @@ -281,15 +281,11 @@ static int aspeed_probe(struct platform_device *pdev)
> >  	struct device *dev = &pdev->dev;
> >  	struct edac_mc_layer layers[2];
> >  	struct mem_ctl_info *mci;
> > -	struct device_node *np;
> >  	struct resource *res;
> >  	void __iomem *regs;
> >  	u32 reg04;
> > 	int rc;
> >
> > -	/* setup regmap */
> > -	np = dev->of_node;
> > -
> >  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >  	if (!res)
> >  		return -ENOENT;
> > --
> > 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
