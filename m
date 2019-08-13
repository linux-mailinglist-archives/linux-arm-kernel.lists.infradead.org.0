Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987D28C116
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKnJ3V+/HIN7GioIUXFYkm3YucIJWFmmOHrEak60gjQ=; b=o9M+dddHDqT/kv
	5Oq3xxnEOiBoPxfCMzJ1oImx6O6PpK2EbADPjn9DH93uAFZyb44Qw8isbK0ZACJjI2ObqMhrhGtin
	jZO2A74X4I7V/qRRNJjkFhkWgC9UhlnCymUWexz24vybIgEzA6s6xSMA2yOShXlXgXyMlLANPASRs
	TSPUGsv4r2nQOybbO/JTOpAJselvG9pg4DZpdhKdU74jfc0CFhiD38u3luxEOo0RDrNqtmLN42Q/K
	zm+YRPaJDAG56Mo5A5B3XQ77L/FaLX+R9KMUE9vKtVtC7XA5kbpVojBDQgu45IvxVvz3hv1UznJ/4
	G38VJL8Vf2yKwofPNnwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbvN-0006Dx-HI; Tue, 13 Aug 2019 18:53:37 +0000
Received: from mail-vi1eur04on0616.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::616]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbvC-0006Da-Te
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:53:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=veG25/vhjSrlTz2nb44W0I1OHy/d5qO0omIJaa44MxY=;
 b=XNifHHFEyaGGKs51kSbLuN4h3cVQC1NlVMEO/hDk9qArepIaH0aXF2/7mN025/0jrG3DpmvYJWALE83ZQ0w/0BHgk0A+eCzqXe0ubmAicOfh1HGaxH40Gbmsa6f64qWCeaFaehBnS8FEs11zVxdQVFExCIEEZdqlFWIspRViht8=
Received: from AM6PR08CA0014.eurprd08.prod.outlook.com (2603:10a6:20b:b2::26)
 by DB6PR0802MB2598.eurprd08.prod.outlook.com (2603:10a6:4:97::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.18; Tue, 13 Aug
 2019 18:53:21 +0000
Received: from AM5EUR03FT062.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::204) by AM6PR08CA0014.outlook.office365.com
 (2603:10a6:20b:b2::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.16 via Frontend
 Transport; Tue, 13 Aug 2019 18:53:21 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT062.mail.protection.outlook.com (10.152.17.120) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 13 Aug 2019 18:53:19 +0000
Received: ("Tessian outbound 6d016ca6b65d:v26");
 Tue, 13 Aug 2019 18:53:17 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 139f25301890d52b
X-CR-MTA-TID: 64aa7808
Received: from ee4307373ea4.2 (cr-mta-lb-1.cr-mta-net [104.47.8.54])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 8C0A14E1-0515-48D7-852A-C2F600557791.1; 
 Tue, 13 Aug 2019 18:53:12 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2054.outbound.protection.outlook.com [104.47.8.54])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ee4307373ea4.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 13 Aug 2019 18:53:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lNHjH3ifRvV8sdHQZe6+wu8CiM/NmyixVbqKWec5ewtwZzoteMgJ3yN5CToChUhWtpVZgK4D996T/MNpPMYYYxGXf08377PzzhcsvQ/Tc6dcMRWtw1AIqTX4o7ceDCTKguhvAwix1q4LvNxKADJCKeXYyDsh6z4FhgH1vNduodYrqwo2jM/mcVg0cGb2owQdgftA08dZaQGZW4C9eSFI2la830JQlGODosG1YpWRKS4YdXGuC222dW375cDYbYfCygPEfLhKuOZdW7Muy5xGTr1dSvGF+AyA0kwui+78uUWJJcMqHWbzUw7dkWtqegFju7rpGd/AJd++b793pWQ13w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=veG25/vhjSrlTz2nb44W0I1OHy/d5qO0omIJaa44MxY=;
 b=jNDboTjbeRgoNesupBhcPXU0F8Hg/L/jVay3feL3q6ZGLQtQwAixVJNvM4iq++DNSnI55V2o9w/qFH7gofL4c9ZigoQOihDx0we47Sz2OSnAHsVfuFM0qa8KODOStbXoixch1JV8+ivYzjxjmj9L1zMSskwC/9FrmbSQt13pE54W3HplRGbnjnCmqUEZ5aHIPCXhsb/+vC8O6L2QvOUyK/mU/HpZQtwEuy3Q54Gnf4kK62jknNsL1LrOQU2PRyjKCSCrI3mrN3GQfRItmSD98GoKzppjoGa/EQ7GxJOL2kntqfF82cBxQjPfYHMEOP/22xx7M+EV49ZdLNGZrSM42w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=veG25/vhjSrlTz2nb44W0I1OHy/d5qO0omIJaa44MxY=;
 b=XNifHHFEyaGGKs51kSbLuN4h3cVQC1NlVMEO/hDk9qArepIaH0aXF2/7mN025/0jrG3DpmvYJWALE83ZQ0w/0BHgk0A+eCzqXe0ubmAicOfh1HGaxH40Gbmsa6f64qWCeaFaehBnS8FEs11zVxdQVFExCIEEZdqlFWIspRViht8=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5004.eurprd08.prod.outlook.com (10.255.19.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Tue, 13 Aug 2019 18:53:10 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 18:53:10 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/8] Fix issues with 52-bit kernel virtual addressing
Thread-Topic: [PATCH 0/8] Fix issues with 52-bit kernel virtual addressing
Thread-Index: AQHVUfjQt03gg+Q9uUiemJyQQRVmF6b5bL8A
Date: Tue, 13 Aug 2019 18:53:10 +0000
Message-ID: <20190813185308.GA19835@capper-ampere.manchester.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
In-Reply-To: <20190813170149.26037-1-will@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0297.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a5::21) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: f38d154f-c9a4-4eb2-19da-08d7201f823d
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5004; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5004:|DB6PR0802MB2598:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0802MB259819FAAA3A0AD770A56F9C81D20@DB6PR0802MB2598.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:6430;OLM:6430;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(136003)(346002)(39860400002)(53754006)(189003)(199004)(26005)(66446008)(66556008)(5660300002)(2906002)(6512007)(186003)(256004)(4744005)(8936002)(446003)(66946007)(44832011)(486006)(11346002)(386003)(71190400001)(6506007)(52116002)(71200400001)(476003)(1076003)(6116002)(3846002)(76176011)(102836004)(64756008)(14454004)(66476007)(86362001)(6916009)(81156014)(81166006)(4326008)(33656002)(229853002)(6436002)(478600001)(8676002)(6486002)(99286004)(305945005)(7736002)(53936002)(25786009)(66066001)(58126008)(316002)(54906003)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5004;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: cMvDdeq90mL85DVJldSnSFEuv68ojA1YSQVTn++fCloXfl4hanRpdVvqb01147azF1fpQvi+V7khKXAOAz80hvs0KA1XUlSocgZdYOMAQtnm0n3YHzc96GJKurFoBGlLthQXMLKqhXSuye8J18DF/wqnEsM2mCH9lTPDQ+ZRh3kty93p4noSeFw0IQ+aC4P+gBUE64YVTJLc+sJkPJBdm85O9ac7mBbzx65Cl0+UsI4TwU2k2nSya/gVofkeUxW3Aa0G1gZCenuMtrL/FViJu/fABU0KtJnIhXwIm2NaGUgXTs/CZQvboAcCWr3vckTe7IEYRlrMnxURwumNaH3t4yg/gVPuPN2BSIU16B1tHQels9DAkUynPw3lkWz3CwsifsrFf8dKJ0HlesW1+1ZOntsFn/nELr2BR0zsUVGY4ew=
Content-ID: <C8E128B2F924BA48A6FD8587A12A2A22@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5004
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT062.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(346002)(39860400002)(2980300002)(189003)(199004)(53754006)(3846002)(63350400001)(66066001)(86362001)(50466002)(26826003)(47776003)(478600001)(22756006)(4326008)(6506007)(6116002)(336012)(6862004)(8676002)(26005)(25786009)(446003)(23726003)(386003)(81156014)(76176011)(97756001)(8936002)(63370400001)(81166006)(476003)(126002)(6246003)(186003)(102836004)(2906002)(8746002)(486006)(7736002)(99286004)(11346002)(33656002)(305945005)(46406003)(1076003)(356004)(70206006)(70586007)(6512007)(76130400001)(6486002)(229853002)(36906005)(4744005)(54906003)(14454004)(316002)(58126008)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0802MB2598;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 8b585e3d-554f-480b-0445-08d7201f7cbf
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0802MB2598; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: oBTtX7mVklgBodAmqO98sokLXgZnyAJCpnVq31v0FKX9/D6SdiPkkBA8nC6JQr7F/2VIrctHoSeG/DP6FrEqRqWljIVLOtzy3FX9mbeJ32i6S+d/cRc694XUdJZhWpwVTxfMCbXWkea10ndcRgUGu/5TiD2cKha6F/oHhzLL/3msvrxIMYTxqkS4ln92iy7eRzSb66AVHHFEGh58LYoR0O8/9brK0sTyQYKuUpE3J+1BeI6YNqrDbW80mM1D3QUOUfv0hc+1p1MBlG+T1MXxzgQBDi+sqFg3vwnQVkqDDS3/EVx4RXwQB+ULydzJVp0YYYw5xZggNP0SYtqcBsNecaUv1Gqm5LAQzVFEogSuSMHJf4ZlxGVqp6TqF/FhAlWJioBgGFBeGbuYZUf/XHnc4JSHDCCHBhXgVclZ6oTq17Q=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 18:53:19.6601 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f38d154f-c9a4-4eb2-19da-08d7201f823d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_115327_009409_46EF3B33 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:616 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Andrey
 Konovalov <andreyknvl@google.com>, Qian Cai <cai@lca.pw>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 06:01:41PM +0100, Will Deacon wrote:
> Hi all,
> 
> This patch series addresses some issues with 52-bit kernel VAs reported
> by Qian Cai and Geert. It's all confined to asm/memory.h and I got a bit
> carried away cleaning that thing up so the patches get more worthless
> as you go through the series. Still, I'd like to queue this on top of
> the 52-bit VA stuff currently sitting in -next.
> 
> Although Geert and Steve tested my initial hacks, I dropped the tags
> because I've split things up and could've easily broken things again.
> 
> Cheers,
> 
> Will
> 

A really big thank you for this Will! and apologies again for missing
these things in testing.

I've applied this series to for-next/52-bit-kva and tested using 52-bit
VAs with SW TAGS with DEBUG_VIRTUAL and DEBUG_VM, so please feel free to
add:

Tested-by: Steve Capper <steve.capper@arm.com>

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
