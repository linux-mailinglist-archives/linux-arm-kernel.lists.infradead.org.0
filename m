Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B417133C85
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 08:57:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPGiAIMv+BFGV/i/Sw6lwzLYXDbGHyBxcRSx6gZuy2g=; b=m4rhjFVda+fXks
	rQ2gyvuIBNB8DRKOXsM5nfX30LzAYic+UicxRQLV/qc5Htn0ggJoWZ9PPIeSNCg/fpNLNM4lrPtDT
	2iyOu4HgM6q/DU1ZcUdDB9AI60/5Uuqjo12I+ozFacA5FO+/WLsrRDaqzYxvNX6JdKhH36RlH9Gy5
	jus1k4mTKyThDPr3mpN08SJJVdtSB/LTMiWq3PYAUVx0C1QLT/Iv9tcDJk+cUyp73DLx7+Fhm6CRs
	7A1OJofnFL8/FAraxC3MpNRaqXUF2F++Z3S9YUxL6YteR2gFk19fD1VEwn4yHIbuIHFX82RZCAopT
	iNTJiqy1eqvOBiQ/xyoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip6Do-0000vy-7t; Wed, 08 Jan 2020 07:57:44 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip6Da-0000vN-7A
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 07:57:31 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 542AAC0094;
 Wed,  8 Jan 2020 07:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578470248; bh=rdpIj5Q2mFtZNLegJ/FDpcIDbFpk68d55dEhY77CYRM=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=JZIPctlb66fWQuKarJu8FruyW+4S8FQguLcZIhhWUfDaYjRjFuFZvyczZfkiH1zSE
 vZZMb+Ww4+YbTXij3dFqCUiMtEuUTP3dywYu3+VY/S00ZtJ9LJUbGzg7LgYJOt1kSw
 xRd+ppyInVpsr6zTOrmUSaDJgZ8lREnIxH/vibvYaGMZ+SNRThWNOECc6hOfDGNg9v
 qxMW0+zo2CD62rXSmXPOEwbciSxdM3pWIvR9rVaw+XGDVBU3HSobS3wNxlKtUorx4c
 eBgTJSpZ2QaetSAZafLDpYPGWMBzgCLmCszc3c9t9ZKj8T/eTuKMPLhhPZ7IifDYyS
 ItKY9/vDX4k+g==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 7EF6BA006A;
 Wed,  8 Jan 2020 07:57:16 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 7 Jan 2020 23:57:16 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 7 Jan 2020 23:57:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MylaaYMTP+a5nhKjLgtz7R1aFArliv6QzGHXmObDnK+HgOXhCQhIXIAQfPe6eCbN2YjEkqsx7lDFs5jGyddnib323Bgh4AN5HhrG0Wdgh7EHsmHTgheuWmuy6FagEGYMgqy8aqnUvtAHh/SSdBvJcbhg8ZQSAahy3DPVOo/m84d++hJIJWJXKJkU/VZoHwG5nAXxu1+2QE5C4MLJiCqA9be/cfxHQNbFAsKYacZCnN3BN+e+BsNUQoY76tGBXBTUekgELXSjYu6b2JubFqSu72O46yrmjlCkYwen/0KV5wbbmgnyam556fm5LOUlyFj7NlWHZEtff+dNv39r/LwnMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mIDMBg8T2OMnD/g6/Yf+dezWLytWG+B/8mdWKeSV0q8=;
 b=nk//l+HwIfAix5RqZovyPO8Biwx7g8ynH/eKkZYzYOUyrCR7PIJdymqOg6eon5V5XOS/TGiql32kCpvlwwfqBInXMxqyuvP+giHD/IvfNhS2x5xnbTdVjnKWpGEcILUttRWoVgWu8Pd1ao/4E3g8SULsf4wS8P17/RY85bS1gNHlI148lK2Y/JuLGzOdcotMPMVGmpvSWB3KeGDzWgEapYDAtsEDNXShbZqGTNsYx+fZFTSIJ9vKoWk5Z1nBcBUsKxQvgExCUtH+Zg5UFF6APmChcLR5pkpalKPi4OR4gjPWZpUUB7N0HiXR8C8m2lQilQd7PT4GDeDc5AyTkM3rzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mIDMBg8T2OMnD/g6/Yf+dezWLytWG+B/8mdWKeSV0q8=;
 b=l2u7BomT9rHK28TjeIzbg4XcEjU4rR/32PckXAFkId+aUk6sIHzlZe8AOCkBzXEaTewOk6B5/e6XbEloc99b0IvSUikO/6hDvn+6mmVl6lxbyEBzfZ0a7hGDfiIYVTbJAbZogxQW1AkC+fiu6bPv/CcpxWinfs8FWGLesF+KRnE=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB2866.namprd12.prod.outlook.com (20.179.66.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Wed, 8 Jan 2020 07:57:14 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2%6]) with mapi id 15.20.2602.017; Wed, 8 Jan 2020
 07:57:14 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Dejin Zheng <zhengdejin5@gmail.com>, "peppe.cavallaro@st.com"
 <peppe.cavallaro@st.com>, "alexandre.torgue@st.com"
 <alexandre.torgue@st.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
 "treding@nvidia.com" <treding@nvidia.com>, "andrew@lunn.ch" <andrew@lunn.ch>, 
 "weifeng.voon@intel.com" <weifeng.voon@intel.com>, "tglx@linutronix.de"
 <tglx@linutronix.de>
Subject: RE: [PATCH v2 0/2] net: stmmac: remove useless code of phy_mask
Thread-Topic: [PATCH v2 0/2] net: stmmac: remove useless code of phy_mask
Thread-Index: AQHVxfUGgqwdWhtbcEaMF7LHLdtnx6fgZjWA
Date: Wed, 8 Jan 2020 07:57:14 +0000
Message-ID: <BN8PR12MB326627D0E1F17AE7515B78E4D33E0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <20200108072550.28613-1-zhengdejin5@gmail.com>
In-Reply-To: <20200108072550.28613-1-zhengdejin5@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f546a490-8c27-4d16-47bb-08d794105fec
x-ms-traffictypediagnostic: BN8PR12MB2866:
x-microsoft-antispam-prvs: <BN8PR12MB2866F218CE08712B56B2C9C0D33E0@BN8PR12MB2866.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(366004)(396003)(39860400002)(136003)(189003)(199004)(2906002)(316002)(110136005)(54906003)(55016002)(9686003)(81156014)(33656002)(81166006)(8936002)(7416002)(8676002)(71200400001)(76116006)(558084003)(478600001)(66556008)(66446008)(7696005)(64756008)(66476007)(86362001)(26005)(52536014)(5660300002)(4326008)(186003)(6506007)(66946007)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB2866;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LSScbBxyL3s4+nLoLBKcxxQsftu2GCb6KORsekJBNoq2r3r7wxU9lQesh+aMlJ4ERxIEaHQ+BiYb+dCG0vz6RJuzrM6ocBTi9lBOdGwD/O8Rhvsv69iPTy4HGvPaiKWqYhtyh8Y9U7YC+7RWZyS6RrRV5Ezs/VMi1P2nXoPHRpfYe4vBRYDYKuNWnWhCodvCEW/VKY32iAJloS9DvxRYcT2kLAgn0tABXtxgctMkqGYO8AAz28hdNlttYJQeQTzpqm1XjSH5aRccejQhvTO8RfQGUOZodr6+alI9lB8y8musFmtiH4gQrWApJ7epAHFc5+np5xXzsE6I4KxCpTV7vcplLvlFM3JtzoWbDXm/L1pNMsigKjkSKGYt8eG/XOg6dn7ZAutTiJUADzQqv3pscvW4g8UqrBAGC9EHMPMhkUplo87f45bsqXM81uhp9P+mV8BJRzUb3Viz8DSygyjbZv0tZHftXFzPBdBSUtzfEEYHbWpEMU27WYJ4pVSEA+l2
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f546a490-8c27-4d16-47bb-08d794105fec
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 07:57:14.3423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NynmEP2QEd1CN6tyWpka2b0xiaMHE7k+yS5frUVK2JxzwGSqX83PRHP3T7bF4zNptNYlE+N9kBqp4j8pZipksw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB2866
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_235730_393084_5B610C4B 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dejin Zheng <zhengdejin5@gmail.com>
Date: Jan/08/2020, 07:25:48 (UTC+00:00)

> Changes since v1:
> 	1, add a new commit for remove the useless member phy_mask.

No, this is not useless. It's an API for developers that need only 
certain PHYs to be detected. Please do not remove this.

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
