Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CFCE8AC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 15:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60ObMwzl6uinyszFn+SPZdNpKKHoVJtAuOUGmi4mBFY=; b=fj3Gn1gvsEXJc7
	tp3WxCsbipsRB9ZgaN1j84qpGIL7Xxv0g+5dnUn1vX1BwP1GQewa1m9wALh3opMCOSbVre6MIWvsi
	mZ3NVTooNzmEFG0bMN7oQ6ZIOspilj2RrQq4mLd25Dt9XuZEMa23ZpoSmI2PlCPXuZHyY0EYSjbqa
	Qvm+WQHlIyzuGCu3VSvwNYSdcEr0LklmqFrBfCiTQuLvXMfbh0w8OImXtrEIWFzJ1s3tU1zAR3GiD
	sev3UWBml5OcAaHxIYMOMQ+JvuR7T/O6pHBVTzlpNJe9cbL1AFpeXiBFJRwYsbrEqZ9MllweVABxj
	zhRvs3kKRje4uh48PEOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSUK-0000iY-5p; Tue, 29 Oct 2019 14:28:48 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSU6-0000i8-So
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 14:28:36 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 89C9BC0C3C;
 Tue, 29 Oct 2019 14:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572359314; bh=h5gtIpA8YjzCDEZUirmF08xpzRXiU54ysGbGHhBp+NU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=fGGfN+/tWisCH5qkvfJs28cl684dihRMQASEuYnelqeOySyISsAh0K1ykX9ziz3Ux
 lZ9A/3jfyxQ++06C5HGnzf4bhv318ga92yQ2CewaXJiOhdLwN3Qwe2ffiIZR957fcu
 37G/b4horxHIiezLiK8lmaDkuWpPTdfUClx6mQqXM8UYskyuWh/02jCEd80brB26GZ
 m5MSoz0qK3W8lQhKNA+VlskBJI1Rmc82jpak95RODD+afmCow1SSTRSqGsflI3alDC
 py5ekSpkFvXGNj1YKCWA8CV8BakNUqU+bxyNtSYWwX+o4zrDb+Zor4rbblR1Yh7zoo
 +6swdSp0ojmFg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id BA02DA0085;
 Tue, 29 Oct 2019 14:28:33 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 29 Oct 2019 07:28:33 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 29 Oct 2019 07:28:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PpahytwP8H2v86B5BQlR7MnNGIkUuReSy+l9YdjBJlC1XYA6mAVq4TzxLxZvyaTtdMFL2qNt+2H05KUYNYhvk1X3xhfXR0bs0Kx8SbgJWXtWlsdLWhmQ34vgrtrcs+cI1E4eB33jCJhGgnafErwfEbLwryfBiCdzn5r9cvOf7zgXE3U9hPf0t93I885RBHUfbDyjPRvPTSjzn3hXBf+g0biS4Dn+5DaIKtIMswX/1kdzplaFfoHrjAEB9wdPC+gM0W2vpRHZUfm0HKg7GqwOz/v0RQdUxZH3qUg+o66n1RAIiHEeb7oZE4IfNo6/Di3Mbxe4wkVBr/0TWXlQBWMgjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h5gtIpA8YjzCDEZUirmF08xpzRXiU54ysGbGHhBp+NU=;
 b=O2xAbYiXSQ8R/XJpYC5vPvwTgCAnIeN7eizyTR+Cs1XMn6puuQ/JzhiLsQTlTvmq1kEe6sB95pH6AdxwA3pVMAJ62TWDmpTNVx5jSlDI6EffhfIFdguZlbG9pRcljybJ1d6v6fkjq2fhH5sSiF+j0rAR9BZv/3uBq5Coodyjwo0MxKdIgsxTzOwa73b4WMeUKJkCXpCdeMiEJeBXrCKSHFCLxD5g/KNIbrmkIRKHpa4UqCAxij7EWTRajtb17MHNwEpcAq75Xq51JC07pRRpGLu8DGLweduEmcDUU2zc4BWRtclEo7ePeui++cmL3vDUiKVBjOiJv5nyiaSNE05E3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h5gtIpA8YjzCDEZUirmF08xpzRXiU54ysGbGHhBp+NU=;
 b=EVbdTM4ZCcPh/Ea6C2Bhtk50G1lx5+owhkaJl0PWSCygTfz5Dv5XBOcKPpXO0EmtQ7ZAUEfsPPlEOA8R9aB2rp2EXzOZ/ZP7/p2Hgs036ZR+SLTq++zDFP8J3mMkjJoCWGmYim/Q2LBSwY6dfXW2+flsibpy3KnFmMD1CN9Ck2A=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3122.namprd12.prod.outlook.com (20.178.211.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 14:28:24 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::f060:9d3a:d971:e9a8]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::f060:9d3a:d971:e9a8%5]) with mapi id 15.20.2408.018; Tue, 29 Oct 2019
 14:28:24 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Subject: RE: [PATCH net 5/9] net: stmmac: xgmac: Only get SPH header len if
 available
Thread-Topic: [PATCH net 5/9] net: stmmac: xgmac: Only get SPH header len if
 available
Thread-Index: AQHVjmNlGpdY/wr1i0CUE5JPinf626dxrUcA
Date: Tue, 29 Oct 2019 14:28:24 +0000
Message-ID: <BN8PR12MB32667D41FC3A12A717F77BB5D3610@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1572355609.git.Jose.Abreu@synopsys.com>
 <ef314ca26e4a621fa8464d76aed07882dd4b0ee5.1572355609.git.Jose.Abreu@synopsys.com>
In-Reply-To: <ef314ca26e4a621fa8464d76aed07882dd4b0ee5.1572355609.git.Jose.Abreu@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 88db2f14-6103-4fb8-7329-08d75c7c41a2
x-ms-traffictypediagnostic: BN8PR12MB3122:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB31221A14BC2D0BFAEC071523D3610@BN8PR12MB3122.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(396003)(136003)(346002)(39860400002)(199004)(189003)(4744005)(5660300002)(14454004)(99286004)(316002)(33656002)(11346002)(66446008)(81166006)(26005)(76116006)(64756008)(4326008)(66946007)(66556008)(6506007)(476003)(66476007)(478600001)(256004)(55016002)(8936002)(6116002)(3846002)(2906002)(186003)(25786009)(305945005)(74316002)(71190400001)(71200400001)(7736002)(2501003)(8676002)(486006)(6436002)(9686003)(66066001)(54906003)(102836004)(446003)(6246003)(86362001)(52536014)(81156014)(76176011)(229853002)(7696005)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3122;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4ozrLPE+l9IHUItzz4FclTut9we8v98P0UUqEBP7tjveQPmMU2SBfBQW1dAnysMFEvx51sWLzYId4FjOtrQpXyta0aUFU38WTCrhwoEmE22RXk81qqnnpXtTdyVvAQ3GoZAJLw2KshYYOk8YSAJmELkaCD1ro8hgabWozvabziICbPeJ7aa2QxCSBMXIKsbLDrS6ikFpI3esq/eUb4bnV/ouT/MUI0aNQATSv7Lj+1mHxwhF1TvncYnsQVlV6wnqMJlqodJYf6p/DBJOAioSLsNvljUiIP7A3QJLsnrRCeHewIXWrUIAJNevek3AP3W9AYcA/L1/gbgz1yvC2hOQz8hSrWAj+Kwc/qCXkmy56k9kMQ9jQ/mwQT/1v2fu7nRBY7WvKIxMkVGKXKPoyugBA1XLhu+wJa9m10QyeqNwWKJa2Kzy1WnZ1LjwVytWktmF
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 88db2f14-6103-4fb8-7329-08d75c7c41a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 14:28:24.1870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Crk6S03bEL4m0NPQnXpTGWkzfjT5NUyBK1/UAjlPf3ooSibBv2fNyJgmwex88Nt4gS3eIBjmlRXDhc5gsOG3gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3122
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_072835_000149_478A8A24 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David  S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Oct/29/2019, 14:14:49 (UTC+00:00)

> Split Header length is only available when L34T == 0. Fix this by
> correctly checking if L34T is zero before trying to get Header length.

This is a typo, sorry. I mean:

"Split Header length is only available when L34T != 0."

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
