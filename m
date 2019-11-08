Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C029F3E23
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 03:37:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZefnjPg3mm46/hg1R5Aa0CAJp9ovQOfRUhm0nZiOjjM=; b=sNNTh8go/NY4ze
	cmpZ7qJWPy9dOJxYhgIuWEe6DtVtGtzRlPu55wqY6mGGfe2Fc+Q9CPdNcISoV0xHDu27NMGY3ZBVJ
	uT0c60iFq/SmlyDd+ZP2TwbFgiruFNNAzu7xTHHHeQa0ex26talbqYTbYjjFeejdHA5aQi1XWL3W4
	c16BzuxE9vtLqlEVlrmRFv3uggZi5GTMjAouESObHKj58kP2O1kw5g05+/2Nqbx4ysbPAGIXdmftx
	uNnqh9s1buf/xGUA/T+yiEl1Lpr2oljaMl+mve2o9bl07TGR4MOe/9oodaXKDPPPjCG2hBPFIU1K2
	NwC0pTEbFrK5M5YdFQrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSu9M-0002ji-Q5; Fri, 08 Nov 2019 02:37:24 +0000
Received: from mail-eopbgr10067.outbound.protection.outlook.com ([40.107.1.67]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSu9E-0002j5-Px
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 02:37:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GCnzmZUrX5lTrpc0/SPrvwdgHd1/NP/C8fhl2P2vUNw=;
 b=DejLCdpPN6ptNNRG4QdGQqqEzq0nUIbtyjKXk8OL6Yirnyb81ml02vz5w/jz6wv6MjtP5axcLkGKtRzyD5itDukfM3bjbEnHRwAKCPlV1fno8/8Dhi5STu+47l91AHZYvxOz1ozxoSzjG13j+GOC7TrWxDLoRr17HRrkp1aDWbU=
Received: from VI1PR0802CA0004.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::14) by AM6PR08MB2997.eurprd08.prod.outlook.com
 (2603:10a6:209:49::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20; Fri, 8 Nov
 2019 02:37:13 +0000
Received: from VE1EUR03FT037.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::205) by VI1PR0802CA0004.outlook.office365.com
 (2603:10a6:800:aa::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2430.20 via Frontend
 Transport; Fri, 8 Nov 2019 02:37:13 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT037.mail.protection.outlook.com (10.152.19.70) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2430.21 via Frontend Transport; Fri, 8 Nov 2019 02:37:13 +0000
Received: ("Tessian outbound 6481c7fa5a3c:v33");
 Fri, 08 Nov 2019 02:37:12 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9d9df14b002c205a
X-CR-MTA-TID: 64aa7808
Received: from e3d98b5ebf2d.2 (cr-mta-lb-1.cr-mta-net [104.47.5.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 E0D49F12-8643-4C14-9295-D9278C8B80DA.1; 
 Fri, 08 Nov 2019 02:37:06 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2058.outbound.protection.outlook.com [104.47.5.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e3d98b5ebf2d.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 08 Nov 2019 02:37:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EoATJ8kG33NnrCzrt51fs/HuwnICtZfr9/naZYsHOJcOIbceCSRLO43dEFNFM7VkLRkPI69CXssQ6ejCapFyBQEmQdOv6nkOMKPUYRQuoeGf4351rffAJejSdag2omqsMcFV/05kfH9z0tR+sTi1pn+OqBokDLzJjpWnIWz0rDcU6gGKRYcnpHHufnS6Ea2JcDwU12M6/nLsfbYxUjC/F9WXfftWrvvtviF3FaZ3kdp37UR+S5tNLXj3Hodn0ceqtjnuI5u9mU4fpoiS3YQLeFUdzVXtC4fC2YWE1Xz+w60zPhRUJD6/mBCjSfMp4KRbc0jUvKMYuRogEhf5Y+lgzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GCnzmZUrX5lTrpc0/SPrvwdgHd1/NP/C8fhl2P2vUNw=;
 b=mgtr2FCSmqcWPL5d9z151CTUq4IYqHu/AZ3/AGj5XSt2AZhAraDSYD3gRMZRt0/ftSsH5GKq0s/b4pmf7UTjQL2R9YKDZuMv+x9KHqKgVJlDT2g0kfTnqDyG4mjx6VXSh3ae79VRAT3pYwBvdl5OoOePKb91hhh60RWoYRPOBCTEvowk9fF88bL8h1A4lbbvuKvBr2k4OrYRVsUHd6U96bXLitxbnmed4XxFTufElgn8jqcDzizwWHAMgOk2rsHsk59xUFup/qhqwDN4OvyuaLtr/3xYs6YG6IEhFvO3slx9dqcvg2OUGAHiK6tp1vT+Ko6yV2E7XOqBLN5pLpbNCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GCnzmZUrX5lTrpc0/SPrvwdgHd1/NP/C8fhl2P2vUNw=;
 b=DejLCdpPN6ptNNRG4QdGQqqEzq0nUIbtyjKXk8OL6Yirnyb81ml02vz5w/jz6wv6MjtP5axcLkGKtRzyD5itDukfM3bjbEnHRwAKCPlV1fno8/8Dhi5STu+47l91AHZYvxOz1ozxoSzjG13j+GOC7TrWxDLoRr17HRrkp1aDWbU=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5099.eurprd08.prod.outlook.com (10.255.18.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Fri, 8 Nov 2019 02:37:04 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::d8b5:2886:72ff:123b]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::d8b5:2886:72ff:123b%5]) with mapi id 15.20.2430.023; Fri, 8 Nov 2019
 02:37:04 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Do not mask out PTE_RDONLY in pte_same()
Thread-Topic: [PATCH] arm64: Do not mask out PTE_RDONLY in pte_same()
Thread-Index: AQHVlLiiWzqD9uSahEyLDDEQR8UtU6d/mRYAgADwaQCAAAfdAA==
Date: Fri, 8 Nov 2019 02:37:04 +0000
Message-ID: <20191108023702.GA23577@capper-ampere.manchester.arm.com>
References: <20191106154105.15176-1-catalin.marinas@arm.com>
 <20191107114826.GC11587@willie-the-truck>
 <20191108020854.GA22491@capper-ampere.manchester.arm.com>
In-Reply-To: <20191108020854.GA22491@capper-ampere.manchester.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [213.86.15.71]
x-clientproxiedby: LNXP265CA0054.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::18) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5ecbcf0d-c762-4130-821f-08d763f48fe3
X-MS-TrafficTypeDiagnostic: DB8PR08MB5099:|DB8PR08MB5099:|AM6PR08MB2997:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB2997641CA78411A3EF27A6D0817B0@AM6PR08MB2997.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 0215D7173F
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(55674003)(199004)(189003)(5660300002)(4326008)(81156014)(476003)(86362001)(81166006)(446003)(386003)(8936002)(66066001)(11346002)(8676002)(6436002)(14454004)(14444005)(256004)(486006)(58126008)(3846002)(54906003)(6512007)(6116002)(478600001)(316002)(44832011)(6246003)(6916009)(52116002)(76176011)(33656002)(66556008)(66476007)(66946007)(66446008)(25786009)(64756008)(26005)(229853002)(102836004)(55236004)(1076003)(6486002)(99286004)(186003)(71190400001)(71200400001)(2906002)(305945005)(7736002)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5099;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: hdp35jFlerMsVC3k1J86ZGkt/ex1gqwfn8C3j6A4OIlDV5DefoOW34SNtbNuV2wiyv4DvK6eF0XslOZqcFEUQsFHpRjrRxisZubx+uZnBt20OGNflxe7fYojompfRLpaCt4WhxPMdpNR9I9lIe4HhGwo+epkF38sIR/fWaffd/sLJeNZIVFNFgM24b9jG9bQ5qWMxX0ZybFVKszfOkNq65tD4ly7LfwVYQdvCybxRPC5q53PSt4ZmFV8xs1v0+7PmYo+EMA8+rSRdcyd3bifzB9Oz1BhDL8F7OdmrDCYpb+KtLG6YmtblcemW7Qo/9+ldGp39HI9kLBdVRTVrwHG/y3lkcYqJlVc8P0nN9Fs+TjSqE7eUbBONchKICWpCIb8am5BfKPZxKw/tH6f4APtvBPbZjc9Nd8WdqPhH6luYv3ADhfZIvSeokav3FDZLoZ4
Content-ID: <4C1B267BAD01ED4CBE54B78477C04A19@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5099
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT037.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(376002)(346002)(1110001)(339900001)(55674003)(199004)(189003)(186003)(26005)(478600001)(5660300002)(26826003)(105606002)(305945005)(1076003)(70206006)(3846002)(14454004)(25786009)(70586007)(6116002)(76130400001)(336012)(46406003)(8676002)(81156014)(81166006)(97756001)(22756006)(7736002)(14444005)(36906005)(446003)(102836004)(4326008)(8936002)(6246003)(47776003)(11346002)(23726003)(54906003)(316002)(8746002)(33656002)(476003)(6512007)(486006)(99286004)(50466002)(6486002)(76176011)(6862004)(126002)(356004)(86362001)(6506007)(229853002)(66066001)(58126008)(386003)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB2997;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: a36ddeb1-4446-4331-3dbf-08d763f48a85
NoDisclaimer: True
X-Forefront-PRVS: 0215D7173F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zC6lhQJ9q4vHCUu6xBesC6eEGEsMrHZI7cSEhPaOmq8h1h7IoMPzuR5cJMH5iodLI+Lm6wa951om2c87Tsn1RTuu/GPr3Ex3dok5+atvEVlmHQrMTz2ZO2dIO+G1ACv/KMS+lVM9utVlRdmCgkQmGLhCwASjERvZHmf0951oYhC1Z4WIipOJly1kKEk+hMN00bB4VXH4Rt6PF4k6D26q5I0dZBQ+bWnx4cKyY5HTqx1kzGFtLDyt/wUjaXDUWV+e4rhCcL/6zxE0K/RxywSlQC0mV9CcgMDO0GOzZnjGkvOnm+QB9X+pxhsD5cuwn/rfppDJKJ27VivHoRoALXIubI3Y/+7W4SyAUMk8QrB0tLZxPEsqeo9fnkh6kaZlcgfg1IqTvQ88LC6YQcBPej6oQn6cGyFdwBSveAsm2cocFIWgpMD9rRH+pgTm7YuNi62z
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2019 02:37:13.1995 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ecbcf0d-c762-4130-821f-08d763f48fe3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB2997
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_183716_845233_C7E5DBDB 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.67 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <Catalin.Marinas@arm.com>, nd <nd@arm.com>,
 John Stultz <john.stultz@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 02:08:56AM +0000, Steve Capper wrote:
> On Thu, Nov 07, 2019 at 11:48:26AM +0000, Will Deacon wrote:
> > On Wed, Nov 06, 2019 at 03:41:05PM +0000, Catalin Marinas wrote:
> > > Following commit 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out
> > > of set_pte_at()"), the PTE_RDONLY bit is no longer managed by
> > > set_pte_at() but built into the PAGE_* attribute definitions.
> > > Consequently, pte_same() must include this bit when checking two PTEs
> > > for equality.
> > >
> > > Remove the arm64-specific pte_same() function, practically reverting
> > > commit 747a70e60b72 ("arm64: Fix copy-on-write referencing in HugeTLB")
> > >
> > > Fixes: 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out of set_pte_at()")
> > > Cc: <stable@vger.kernel.org> # 4.14.x-
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Steve Capper <steve.capper@arm.com>
> > > Reported-by: John Stultz <john.stultz@linaro.org>
> > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > > ---
> > >
> > > Steve,
> > >
> > > Could you please check that the original problem fixed by commit
> > > 747a70e60b72 no longer exists after reverting it in 4.14 onwards?
> >
> > In the meantime, I've pushed this out to for-next/fixes since the CI came
> > back clean and it fixes John's issue (which I've confirmed locally too).
> > Interestingly, I'm not at all sure the problem is related to the Mali
> > driver. Some tracing suggests that the ART JIT thread is stuck on a write
> > fault, which could be explained by a broken pte_same().
> >
> > Steve -- if you could please run the libhugetlbfs test suite as described
> > in 747a70e60b72 before tomorrow, that would be really great.
> >
> 
> Hey Will, Catalin,
> Apologies for my late reply, I've been travelling longer than originally
> planned.
> 
> I have tested for-next/fixes (with the pte_same removed), under
> libhugetlbfs and I have been unable to reproduce the original memory
> leak that prompted the pte_same logic in the first place. So this patch
> looks good to me.
> 
> Will check this out for 4.14 too now.
>

I can confirm that 4.14 with Catalin's patch cherry-picked also passes
the hugetlbfs cow tests.

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
