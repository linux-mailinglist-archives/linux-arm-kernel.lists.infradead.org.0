Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066F48B692
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFnybaox2+rEorlcR7wV/QmoxLQNVXhkPGCXCImd9YM=; b=rOaV+HO3RUQFJj
	M8fVW1fUB6zK5+FOnqGaIYMISFtmSIR1Bk03FDFQNrxMMNgqXjAoQddQFGUEXzxYDweV03YIS7CvO
	2LlzEYh70KgWZgrpj+bNNDHlZ+M/AIlB2n5HWBf2b3XnpdrPhq+pzjSYVDGLE7xC/KPynLHNSJccN
	PDfZ29WQ4ON4zkBqp2rEgty+xzecWZsaN6MV7YL7Ww1SIeJj/QOTs1ctJu7gxTBI8PJNKyMhkhHIe
	snnpXjaVaPGlLn5aTfVEMGlZQEjkd9vkifaIrU2Kg60fJmAcsWovhUGYVLZVsHplra5lSEKw3YIJR
	NxkwK6QpKzxLAxzeBGcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUuh-0006uM-LS; Tue, 13 Aug 2019 11:24:27 +0000
Received: from mail-eopbgr40053.outbound.protection.outlook.com ([40.107.4.53]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUuP-0006tl-BS
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:24:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uu2RghbKj6N6k0p1rNtabRO5ajAW26Op6YcWb5+rU88=;
 b=BSBrOaTnYeToHr09mOKmT6Xcbr/vjRpBRxc/LiNdljGGaD6OGootupgmZJ9AtFjZUoY7tjBplPsi/NFFqJrlJFqYftxL+aNh1ThqcliueD6q3U/MWD54yKcz/mGFQKTiTW0WinzvabYTvEnGaZVewv2VzHCxs33hF9TQIk2g890=
Received: from DB6PR0802CA0043.eurprd08.prod.outlook.com (2603:10a6:4:a3::29)
 by VI1PR0801MB1854.eurprd08.prod.outlook.com (2603:10a6:800:5c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.14; Tue, 13 Aug
 2019 11:24:03 +0000
Received: from DB5EUR03FT011.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::206) by DB6PR0802CA0043.outlook.office365.com
 (2603:10a6:4:a3::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.15 via Frontend
 Transport; Tue, 13 Aug 2019 11:24:03 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT011.mail.protection.outlook.com (10.152.20.95) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.18 via Frontend Transport; Tue, 13 Aug 2019 11:24:01 +0000
Received: ("Tessian outbound cc8a947d4660:v26");
 Tue, 13 Aug 2019 11:23:59 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: afef7554edce05dd
X-CR-MTA-TID: 64aa7808
Received: from fa4f95d64671.2 (cr-mta-lb-1.cr-mta-net [104.47.9.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 598FED45-FB2F-41B7-B528-A1E7155CDDAA.1; 
 Tue, 13 Aug 2019 11:23:54 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2050.outbound.protection.outlook.com [104.47.9.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id fa4f95d64671.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 13 Aug 2019 11:23:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b6Wbn6/WVFRkvoZzdCAzIX5rn8Qt2GlPrRtLNNHgIUOhhoGVXP+VWiCo/Ts2vu1qDJNgWGj6FXMuIZ9Eamn4/zfE09oEWRXxZwqwUHo6+DWJgQDInMG5PqPd2fBF18DfESHgjVLcGhwAiAQqJy6gmutJGMrPQbCqxJshJDeFf2OXgRqC4qXePW9hE6YlGQ4cPYZxkViuI39sz9DsZgd6u6M90HzVk8Umr0tpxGDssty6VAyOUMsX9b4ITsNrwo5ACpWSWojo9E/dUd19hiClGyJp/GasmoJVTl+U5A3BVgfY3OwR394CV4WE5siO9QXrlld2SE7J7bMZE31Ipx53Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uu2RghbKj6N6k0p1rNtabRO5ajAW26Op6YcWb5+rU88=;
 b=MAClQF4qU9n30WB6hfiKshZCtTTDL6lOMXvq6lAElI5xo61Uv1gq0HJATwtv/fEXRKb301lDP3mEUFNoZ1L4iNzcoamVLOmjW6lHI7JOR93pRbN5AXh23N7/B429ZY69rKFFPZNlt4Mr3naC2vvLBQPYsrJt3OP034p8YGxOAxHIrmLKECg6+nFNIr1JIK9Ht7P9mDj7PTGH7WIfGQTnH0/S8Ju644ElaYtOfl2DdR/DUJdmZNpUYMMavlPLUQxm4tZPEZ4yzdr92BGCtydkHc8NH5TIVxGmm1iWzF4IV3iXE3nsSQdtEzkyNiqot6hZMT0VhXnRzY4lS4vdUipKpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uu2RghbKj6N6k0p1rNtabRO5ajAW26Op6YcWb5+rU88=;
 b=BSBrOaTnYeToHr09mOKmT6Xcbr/vjRpBRxc/LiNdljGGaD6OGootupgmZJ9AtFjZUoY7tjBplPsi/NFFqJrlJFqYftxL+aNh1ThqcliueD6q3U/MWD54yKcz/mGFQKTiTW0WinzvabYTvEnGaZVewv2VzHCxs33hF9TQIk2g890=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5323.eurprd08.prod.outlook.com (10.255.185.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Tue, 13 Aug 2019 11:23:51 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 11:23:51 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH V5 00/12] 52-bit kernel + user VAs
Thread-Topic: [PATCH V5 00/12] 52-bit kernel + user VAs
Thread-Index: AQHVTTiaXwC3JHcDtUuzrF75Xg9u2abzCcOAgAXu8gA=
Date: Tue, 13 Aug 2019 11:23:50 +0000
Message-ID: <20190813112348.GA19242@capper-ampere.manchester.arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190809164716.qtt7zizfbqyjukwe@willie-the-truck>
In-Reply-To: <20190809164716.qtt7zizfbqyjukwe@willie-the-truck>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P123CA0022.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::34) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 71572668-3e10-4ff5-6848-08d71fe0bdef
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5323; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5323:|VI1PR0801MB1854:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB185473BB1A169F39697AB6D681D20@VI1PR0801MB1854.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:6790;OLM:6790;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(346002)(39860400002)(396003)(199004)(189003)(2906002)(316002)(1076003)(71200400001)(5660300002)(71190400001)(58126008)(33656002)(256004)(4744005)(6486002)(6116002)(64756008)(86362001)(7736002)(99286004)(66476007)(66946007)(66446008)(3846002)(66556008)(6512007)(305945005)(8936002)(25786009)(54906003)(186003)(229853002)(6916009)(53936002)(11346002)(52116002)(6506007)(386003)(446003)(6246003)(26005)(102836004)(76176011)(478600001)(6436002)(8676002)(4326008)(44832011)(14454004)(486006)(81156014)(81166006)(66066001)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5323;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: Pi8rKHCr6Sm3feUoZyARcaeys0tpiOL/d58qLVO7vP0DiH1UtZSs/BOJeWVPjHUaz8tTVTf6YRVjBzl3dWTgTqDG8z+QtEzQTs9MTKTZpOyuqNrXjjGxzVTffQTzYnIgpAQsLVqS8Pi4g1g+yZfqcTxRFoXG0i0Q6S9MmbVMZApC1mIZmfFHLcnEAtDv/sGuL6ifQb3XKxONfpORxWyNFqXM+OAq5eCKMB+4n+KK1JYG/SSPr3k5eV3AT9cmMEpAF7fqVtcpSkdpjWEii0W4r8qMBCAK8zBSb0dT6YDqPIUhgfYcb+VJB0WUYnTi96+IgEu4kMKpLcGlNMd92jGzWgZGzWKM4o5ghqISiLXHcPiArOTLqNq937dQCKrwVXVaOoqj+v9nvoNyrTNRnMQO836gDtlKWNirFnvDlL0PnL0=
Content-ID: <C5E1939D1B5EF246AAE81100ACA6F772@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5323
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT011.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(136003)(376002)(2980300002)(199004)(189003)(23726003)(11346002)(6246003)(70586007)(4326008)(229853002)(6512007)(6486002)(70206006)(8676002)(5660300002)(58126008)(54906003)(76130400001)(22756006)(3846002)(126002)(476003)(6862004)(486006)(446003)(47776003)(33656002)(2906002)(81156014)(81166006)(4744005)(25786009)(102836004)(6506007)(386003)(26005)(14454004)(86362001)(46406003)(6116002)(478600001)(316002)(66066001)(305945005)(1076003)(336012)(8746002)(356004)(8936002)(7736002)(99286004)(50466002)(97756001)(63350400001)(186003)(26826003)(63370400001)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1854;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 0f227e72-8cbe-4ea9-5c25-08d71fe0b772
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0801MB1854; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: iymm/baD6Epca5AiM7T6EMjlgmsXBK7QwjYQK2jzMYbkKtmvZD15bygnmZM1Ua3utZM6Nfb7kCjqUggGLHEx+Cy+hXCtWMOUStZZXMzu/H/v7oPRDy+I5CHhhcnFfwm2u/DqVWaJWNMf/HvdjFfqOs+ivqtXYj+didaMV8KRqBPYYTHww6Ghu1RTvBGqulhp4MnRaD2HpAks+B5dAVJFIUNiwjJwGsAQd328gxAfPbk+eiuRCUfkImi2Oox1VfdBeLMyceNlhgeSt1r1zDYmBHr1wZXRZyfxBIjvCusyiDMlY8VA4HEADK3gvK/8l1gr9E32uiVReVWPfqmhD60nqLlmVwvIuCmO9yqNirZK1LE7G1xcEhu2HUSbzisrP1Ewl2DgLvi/y5S29tEYfmQomItzmetwBwpRtzlvJSCkTkM=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 11:24:01.5393 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 71572668-3e10-4ff5-6848-08d71fe0bdef
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1854
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_042409_398875_4DDED9EA 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.53 listed in list.dnswl.org]
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "bhsharma@redhat.com" <bhsharma@redhat.com>, "maz@kernel.org" <maz@kernel.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 05:47:17PM +0100, Will Deacon wrote:
> On Wed, Aug 07, 2019 at 04:55:12PM +0100, Steve Capper wrote:
> > This patch series adds support for 52-bit kernel VAs using some of the
> > machinery already introduced by the 52-bit userspace VA code in 5.0.
> 
> Cheers, I've pushed this out on a for-next/52-bit-kva branch with one
> small patch on top and Catalin's tags added.
> 

Many thanks Will!

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
