Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C49F48BBCA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FShDV1V8dD1VZOUz513Hxu7eBZGRm5iRIPhImxbwho=; b=RmY9ZMfPr22kS4
	sNmgUPYouUVxwyKPYmFDny++SSmoEyrf0HBUavib1Zp+n6rYYDV+wfVJnUn9ZpvPL/l2nFDgNLU7S
	NtJgU7wmcrEN2qYQtxSiJtJaJZsmy13zfSymKpmt3IWak7PI3AbLJAoqPGgr10vjDv3VszRDtnGTM
	dQkai20M8teMoIzZXyUZAuVdPEPaiNQJJNLgaOQ8sS/AMtJZ6hf5XaD8iw/lN1oMO0ATXydihBcEx
	zmUyS1VdRtE975XFBPoZJTvl6GEWfMe1LEiD9NrXCxfaPl8BRy9ILI7roqfrwpHyf/vf2OJlIqWyF
	yAcX6Mobvd3aOnXgEd0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxY0D-0007W5-Ra; Tue, 13 Aug 2019 14:42:21 +0000
Received: from mail-eopbgr150047.outbound.protection.outlook.com
 ([40.107.15.47] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXzk-0007KJ-FF
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:41:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HomWtSVe00R157Jki78xAH0L6Dp3rvPwia+2gMIi5zU=;
 b=IGbZnXc/QBQIX72N6MWzQ8oWyRI1ogeavVz41kwFifrcE+kl85PMKjQdIyoX581RzVSwdGS3lPeycHGZs3SQts5N3XzBKajzI4RDycTZJWRvoJoKhMWOCaEGJwYo3EoF8i1+E9l2FYmX9PcCL3IJW59YUiH2XAIo95ITAIOCYNI=
Received: from VI1PR08CA0184.eurprd08.prod.outlook.com (2603:10a6:800:d2::14)
 by DB6PR0801MB1846.eurprd08.prod.outlook.com (2603:10a6:4:35::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.20; Tue, 13 Aug
 2019 14:41:46 +0000
Received: from DB5EUR03FT048.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::206) by VI1PR08CA0184.outlook.office365.com
 (2603:10a6:800:d2::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.15 via Frontend
 Transport; Tue, 13 Aug 2019 14:41:46 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT048.mail.protection.outlook.com (10.152.21.28) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 13 Aug 2019 14:41:44 +0000
Received: ("Tessian outbound a1fd2c3cfdb0:v26");
 Tue, 13 Aug 2019 14:41:39 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: bbd765f446a65acf
X-CR-MTA-TID: 64aa7808
Received: from bef36e6b21fb.2 (cr-mta-lb-1.cr-mta-net [104.47.1.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 85C9BA67-92A3-4968-B783-FE266B64BDB8.1; 
 Tue, 13 Aug 2019 14:41:34 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01lp2058.outbound.protection.outlook.com [104.47.1.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id bef36e6b21fb.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 13 Aug 2019 14:41:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HnUhCebXxocG14uca/tEMczfplC5/GS7a8V0YNexryy5woJ7qx6akB2CMllhR1/ogBAcb0cErU1yBDtzwp6UqniWedg+/dIOwIw0qezZQKj9yDMJJTj1lrp56gyuNg8MTIkV8Ilx72/VVz1WD5VvrZRb9fGAU/VX/RZs6rK6ejnqOk0RUcIh2ImjO3WBYBWdTB1mdMpN/1jVQ3c/dUSXjX73UeQnXs+7RupIV64E4HLcVahip6iOKZGnbrMXSY1fCL+NVTN8HUXZjsY12Oykt9RZFWRVNEfhi7KK2Zn0gjuon6yCaIsGF9T5Qi378AfzIA/mlSw+bQ83K4JWxFlnoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HomWtSVe00R157Jki78xAH0L6Dp3rvPwia+2gMIi5zU=;
 b=IkF+qJxADy4nCo87vkr9itIyrmk3E9TO/4l3ZCqCftNs7rOZ7VwvhO6lL9QpraNN4ZBM+Dax4ZOEiRlm84krflPz06amrNjaTrE7qs/PjMESQ1YpsYzFSGtdrMU2qYtiL0nxo9a093UqV4sHxsr3cDI9ph2tRbpGVARyfZ86QtIYQZbpnEjmr3HIZAva3MisiDtt+1k1sDyn0Cc76dIskZGoslzWDziDcg2HvzMQ9xF52K5J32TTb21CGPYk0N+4jdhZXgjxP7ztrvVsxQ+adDeiGpa0eo1edclQ0ZLftsw8Fi3vNpsQfuXHGkYcJyjk75wZJO36ZBNMFR4AyH6VuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HomWtSVe00R157Jki78xAH0L6Dp3rvPwia+2gMIi5zU=;
 b=IGbZnXc/QBQIX72N6MWzQ8oWyRI1ogeavVz41kwFifrcE+kl85PMKjQdIyoX581RzVSwdGS3lPeycHGZs3SQts5N3XzBKajzI4RDycTZJWRvoJoKhMWOCaEGJwYo3EoF8i1+E9l2FYmX9PcCL3IJW59YUiH2XAIo95ITAIOCYNI=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5099.eurprd08.prod.outlook.com (10.255.18.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Tue, 13 Aug 2019 14:41:32 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 14:41:32 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: "arm64/for-next/core" causes boot panic
Thread-Topic: "arm64/for-next/core" causes boot panic
Thread-Index: AQHVUVgl/V1eSqMRPUyufGDCtItMGqb4yNmAgAAgpgCAABL2AIAAMcSA///5egA=
Date: Tue, 13 Aug 2019 14:41:32 +0000
Message-ID: <20190813144130.GA15482@capper-ampere.manchester.arm.com>
References: <1565646695.8572.6.camel@lca.pw>
 <20190813090200.h2rz4xphgnb5j5bc@willie-the-truck>
 <20190813105852.ovk5gtzddwlsm4ly@willie-the-truck>
 <20190813120643.25y5px4andu6cfwp@willie-the-truck>
 <20190813140451.GA24579@capper-ampere.manchester.arm.com>
In-Reply-To: <20190813140451.GA24579@capper-ampere.manchester.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0279.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a1::27) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 42f7a01a-8784-4714-bc0c-08d71ffc5d1e
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5099; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5099:|DB6PR0801MB1846:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0801MB1846601964C5D3D7ED934A0081D20@DB6PR0801MB1846.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(376002)(396003)(346002)(199004)(189003)(81156014)(6246003)(64756008)(386003)(6506007)(5660300002)(102836004)(53936002)(26005)(186003)(1076003)(76176011)(305945005)(66476007)(66556008)(66946007)(52116002)(86362001)(66446008)(81166006)(7736002)(8676002)(14454004)(316002)(58126008)(446003)(11346002)(476003)(25786009)(6512007)(256004)(54906003)(99286004)(486006)(478600001)(44832011)(6116002)(66066001)(3846002)(6916009)(2906002)(229853002)(33656002)(71200400001)(6486002)(8936002)(71190400001)(6436002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5099;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: ZEyvq5sVTHEytT6K7n7Yndo94sRZUfZt3ZG598hcFnZp+e52oFiqJKKso/5qqJY5ultaEu6qgXttCr0QD7AtYh+y8yv6lisK7ShNEoZgAvE6jCG+1dfdOAdDtxVeensaLt+YErYDFw0BnGgALsgxXW/EUCsaIekFHqCKT5OKV26UWzRG0bscC0QAbSiXEQKhT5IQEVu3ln+J+hvXT5USdZVjaz99guJ/+B258bL7qhshH9WS6kLt/Qn2siEIyDQ4kCJ/BxSPG/hhGY1cI5HAEtdAv/M26qm6tHtxO0BKQhtaXagiLwLSdx2G3Gke5PO9c3si1VS39yl3ut3EoK9PoA6islHnMpMyOKoMn/RrmRVjrVVIw9gNLs7xeLylI4hHRiwRmFcWfE+BAcjBY4SVQuD7ALw/1mD2XkUZmy6j0nk=
Content-ID: <04F997140A69904B86CDF26BF2A3E53C@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5099
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT048.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(39860400002)(396003)(2980300002)(189003)(199004)(102836004)(126002)(8936002)(476003)(446003)(336012)(186003)(86362001)(26005)(70586007)(50466002)(6506007)(70206006)(63350400001)(33656002)(76130400001)(47776003)(11346002)(66066001)(486006)(76176011)(8746002)(63370400001)(386003)(6512007)(2906002)(6486002)(229853002)(1076003)(356004)(478600001)(22756006)(3846002)(8676002)(6116002)(23726003)(97756001)(81156014)(81166006)(54906003)(99286004)(58126008)(7736002)(305945005)(316002)(14454004)(4326008)(25786009)(6246003)(6862004)(26826003)(46406003)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0801MB1846;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: ce893f85-11a0-4cce-400f-08d71ffc5586
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0801MB1846; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: 6GBfoaV4CjFumDvhzdvfz3OT0wWYaUsDH7N2zxCI1CYZ/pkg+PFc8Th3NJ8VoIchdpHX5T2g6Z66XpHXVQRk+IbyWg447SIRm+f6mcm0F7LRYLDi6Qzcesq/MaNjvgIrVvHlYYu/4zjl2ZrtMrglot+sboefbtWv0/j8Y8TVlubOCBBdgDm7yYKXAX38EHuWr7pvJKheoF7uQr2Sz/xbjjIZH+Xf1IBj+0AoewBGJsZyUIyLqoQazU7y7rO21pji33DowzFrY6cbmNnuiJwZuzUKfMhhjLOtlg2zmGdNU0BWD28ACGbAX9WI9dtq1pX2mvmuj52DYQuv/v7Ccotn86bbFe5Dr0miZ74wBOGSZz37cIJWyGF9AeOYWuMd/n+P4nM6Oe2qmzTI53iBCvw8iFrXbKaxu74i6G2uJXIzbFY=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 14:41:44.9818 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 42f7a01a-8784-4714-bc0c-08d71ffc5d1e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1846
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_074152_659696_8BBFF2FA 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Qian Cai <cai@lca.pw>, Andrey
 Konovalov <andreyknvl@google.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 03:04:52PM +0100, Steve Capper wrote:
> Hi Will,
> 
> On Tue, Aug 13, 2019 at 01:06:44PM +0100, Will Deacon wrote:
> > [+Steve]
> > 
> > On Tue, Aug 13, 2019 at 11:58:52AM +0100, Will Deacon wrote:
> > > On Tue, Aug 13, 2019 at 10:02:01AM +0100, Will Deacon wrote:
> > > > On Mon, Aug 12, 2019 at 05:51:35PM -0400, Qian Cai wrote:
> > > > > Booting today's linux-next on an arm64 server triggers a panic with
> > > > > CONFIG_KASAN_SW_TAGS=y pointing to this line,
> > > > 
> > > > Is this the only change on top of defconfig? If not, please can you share
> > > > your full .config?
> > > > 
> > > > > kfree()->virt_to_head_page()->compound_head()
> > > > > 
> > > > > unsigned long head = READ_ONCE(page->compound_head);
> > > > > 
> > > > > The bisect so far indicates one of those could be bad,
> > > > 
> > > > I guess that means the issue is reproducible on the arm64 for-next/core
> > > > branch. Once I have your .config, I'll give it a go.
> > > 
> > > FWIW, I've managed to reproduce this using defconfig + SW_TAGS on
> > > for-next/core, so I'll keep investigating.
> 
> I've installed clang-8 and enabled CONFIG_KASAN_SW_TAGS and was able to
> reproduce the problem quite rapidly. Many apologies for missing this
> before in my testing.
> 
> > 
> > Right, hacky diff below seems to resolve this, so I'll split this up into
> > some proper patches as there is more than one bug here.
> > 
> > Thanks,
> > 
> > Will
> > 
> > --->8
> > 
> > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> FWIW, this fixed the crashes I experienced, I'll run some additional
> tests.
> 

This works for me with 52-bit VAs + CONFIG_KASAN_SW_TAGS +
CONFIG_DEBUG_VIRTUAL + CONFIG_DEBUG_VM

FWIW:
Tested-by: Steve Capper <steve.capper@arm.com>

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
