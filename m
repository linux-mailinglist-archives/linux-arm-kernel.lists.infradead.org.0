Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A73B1F957C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adas2Tp2W0r0/w72WG0Pn8GZNv1kYkFZDxwTH5BZFBc=; b=oniZqX9OyXy5Qg
	MfmxQ45/d8gH2LhcN07vlPYEbatm6iwW+/ZTvDVVhLQYots/UJ4YfgnG9V0IrZWyoWQ5Pm5G62THO
	S0nuGcw3taklhFRElAmxiL771p25kuIvhDKopx5X1zgvBhcUKSZMz0RCPDI1h4GqluY4XniwcbLDo
	lHyTO4m0LpO+A2TS3R+7kBG6BwdJKOtD+NWbd5ukeoNdZ7Ik4MIGTgVIkliMnQVGKefs0i6xIlYe8
	aSEZrOMoO0ue9Xiqz1x8QXbeEe7SPFsoQQmdssnl4dZEOc94qrgV+pjgogoVmvQAtSPiEZIXDhSN0
	MFrGzSYAZxtJJzdJsKDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknWV-00041h-Su; Mon, 15 Jun 2020 11:43:31 +0000
Received: from mail-eopbgr40074.outbound.protection.outlook.com ([40.107.4.74]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknW9-0003v1-0a
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 11:43:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ma7y0JebvfR2qlgpX/GeMfqA09AcySzvtkwKLoE+LNY=;
 b=MJkmyUMhhPw6gwyBlCg/WnIRxV2tkc5bAglDsPQLyxN593H49AkfXSCp5boc8dSwOIAF9hgzoIU96BQhs+53UJEr9PgdANmzDcwfZmB46iVaoJoxVaLO0tSTkZgfK47AGuomPlPfk6BQE3wPwUGffGUIxgF47piVQs4MbFb5ylA=
Received: from DB6PR07CA0164.eurprd07.prod.outlook.com (2603:10a6:6:43::18) by
 HE1PR0802MB2298.eurprd08.prod.outlook.com (2603:10a6:3:c4::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.21; Mon, 15 Jun 2020 11:43:05 +0000
Received: from DB5EUR03FT060.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:6:43:cafe::28) by DB6PR07CA0164.outlook.office365.com
 (2603:10a6:6:43::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.10 via Frontend
 Transport; Mon, 15 Jun 2020 11:43:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT060.mail.protection.outlook.com (10.152.21.231) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Mon, 15 Jun 2020 11:43:05 +0000
Received: ("Tessian outbound 8bb15bb571b3:v59");
 Mon, 15 Jun 2020 11:43:05 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 990b144d1fa36f7d
X-CR-MTA-TID: 64aa7808
Received: from cf8903235265.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 B5F5F256-C443-4D19-97A6-FEC4B41F19FD.1; 
 Mon, 15 Jun 2020 11:43:00 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id cf8903235265.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 15 Jun 2020 11:43:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gl8cC8LGgthrucel3KrC44ctbPDhNbIH63Pj5ClunFnADdS7Eiym0Gtjed+262hNMZtWKUFoEoFSVBqVtOGJENcfKdDXuXWmiS+ZgTy23hQJOSfi5JHzKnIYWp2+INHjqGA5Ot7JW4aJn0jlAW3f2wWz+amMnI0LDJvziyi9qrOEj+yZD3eg+48h8sjW+6dEYibbubXnfV76Tw2acs4SEq7MXfO7MR5ZPdbxWlUeLqbE2ZcRpKBwl12tuxBj3WuJhkEYDLG4D/x6zQLA56bsGSm+1BVEApIJmA6cpAOwZXrR4OB87iHCmjpPkAge+JU1s5/EZpGLVxXHpJr18pSrDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ma7y0JebvfR2qlgpX/GeMfqA09AcySzvtkwKLoE+LNY=;
 b=MQPU3ZJkkUxtofxS/3AXQKrQr1dPC+MBNIWYNHlz/9DhcOUdEx7NtSPLUdLGJxxtWevKwprf31SSfjXnRMDARkLA/oVPo19kMOr5NUhb7IvSKrXkgmhPRDNtEgyDndGZO0H/2JbSE8tkMhB0upVTBzioy/26ptisvOdG1TJ2AqNHKfp/gGYLymfSCHLiLLfCpBMIjdXxmjPSnvcrD61r5p9Bqi67WwQW4aNz9ZCn7ixSHKVy1Arkaf7wK4fz/lLGKXnkrEKvmD1b0ZmsDi5GIAEkFtKa1/RLyyAzf/v7m0JRcLciBSo70kfASLLiDy4e2pqRaAWROJ375DNfsG8jmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ma7y0JebvfR2qlgpX/GeMfqA09AcySzvtkwKLoE+LNY=;
 b=MJkmyUMhhPw6gwyBlCg/WnIRxV2tkc5bAglDsPQLyxN593H49AkfXSCp5boc8dSwOIAF9hgzoIU96BQhs+53UJEr9PgdANmzDcwfZmB46iVaoJoxVaLO0tSTkZgfK47AGuomPlPfk6BQE3wPwUGffGUIxgF47piVQs4MbFb5ylA=
Authentication-Results-Original: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
Received: from DB6PR0801MB1861.eurprd08.prod.outlook.com (2603:10a6:4:73::21)
 by DB6PR0801MB2087.eurprd08.prod.outlook.com (2603:10a6:4:77::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.23; Mon, 15 Jun
 2020 11:42:59 +0000
Received: from DB6PR0801MB1861.eurprd08.prod.outlook.com
 ([fe80::ac31:e5b9:8aa0:4a33]) by DB6PR0801MB1861.eurprd08.prod.outlook.com
 ([fe80::ac31:e5b9:8aa0:4a33%8]) with mapi id 15.20.3088.029; Mon, 15 Jun 2020
 11:42:59 +0000
Date: Mon, 15 Jun 2020 12:42:20 +0100
From: Achin Gupta <achin.gupta@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH 1/3] dt-bindings: Add ARM PSA FF binding for
 non-secure VM partitions
Message-ID: <20200615114220.GE46361@C02TC1ARHF1T>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
 <20200601094512.50509-2-sudeep.holla@arm.com>
 <20200609223551.GA1620273@bogus>
 <20200610074346.GB15939@willie-the-truck>
 <5B3F18A4-5DA4-411E-9E26-7D25DEE3D414@arm.com>
 <20200611171222.GB7725@willie-the-truck>
 <20200615091639.GD46361@C02TC1ARHF1T>
 <20200615095133.GA2477@willie-the-truck>
Content-Disposition: inline
In-Reply-To: <20200615095133.GA2477@willie-the-truck>
X-ClientProxiedBy: LO2P265CA0190.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::34) To DB6PR0801MB1861.eurprd08.prod.outlook.com
 (2603:10a6:4:73::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from C02TC1ARHF1T (217.140.99.251) by
 LO2P265CA0190.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:a::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.21 via Frontend Transport; Mon, 15 Jun 2020 11:42:58 +0000
X-Originating-IP: [217.140.99.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 99cb54d8-c5be-44a7-80fc-08d8112144bd
X-MS-TrafficTypeDiagnostic: DB6PR0801MB2087:|HE1PR0802MB2298:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0802MB2298BEE298A4DC5E890A7C62FF9C0@HE1PR0802MB2298.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-Forefront-PRVS: 04359FAD81
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 5NifFQqv5w0MYM6GIJcUdZbam8T8BzjbqsBzdMD9OgucXbeTkrPeSJ6RzygVpq0k1DhSIpw2mSN25T0HkH67m1ZaGsFtxWWcr2Cl/p2Hgwn/J5Qz6tZbBFFZT0Ak1YJwaAKTfTJMDVA95M1/WkblkyDzHJHtgIDomg6UYhj90Pzov/ok5cJ5Y1H+9rUARZ0t0Z33k/r66+/CdivhznpMFb9zr1ahMx+W83RreahpfcVV6QMLZ5gZ9SSVGGKhK87CMjoLdGvBfzJghpjwxrt6W61fL3OsLCXndBzA1MXAkwSXeEN0PH/bb0RbYE7WdxIsOmos5yOQJ1b4z3k/dA30dg==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DB6PR0801MB1861.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(366004)(346002)(376002)(136003)(39860400002)(4326008)(16526019)(33656002)(186003)(55016002)(6916009)(8676002)(26005)(66946007)(8936002)(66476007)(5660300002)(1076003)(66556008)(9686003)(2906002)(316002)(52116002)(54906003)(44832011)(956004)(33716001)(6496006)(86362001)(83380400001)(478600001)(6666004)(53546011);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: j6YNtTGdp/kYjGKTT7VVqkHCfbMbiazhHDp7gbZqaBcCPQJA17uJ0KtYYcppuI6SbRjH7j3/MHbvMMThavkJ/wSqy1V9ZZvlj/CYOQw3JWP2ETf2UkkAwu2Yer6+I2+9Jj9H6Lbjc0YwfJxZf/lKBwfZD40PdrBPkiZ4DjbegT1w/ZRtjs50Kc9OjTsr5jYcNojz6NVmbISE6rW7VJZ3ESMEnBVz/hL6B9qClODGcvowi6EWQ9Qo2yyPFhykeadFX6tuDgq6o4inMM63v1bUfvxwc4zT0YI1ki4YQuBlwv38DRGtOLKz8hMl1SMNYXhdfgDU2qTcQcbWqzxoxB1Oz/tWniBBmGbsBXwh+CUGK5wDr6o5tID3GgXQVjN2pHgOp9kPIS5jnfmpKvaYRoi2b1vqdI1EcxAmgPsFG2wf+SQyxRgnux+CrntbzUEpkwiuh8uXLXtBGF2uLj1OC4MJDM7PNqDNAldlmQaq60DCK7H7kNxRHZP5S7U/zhvwkrr/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB2087
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT060.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(376002)(396003)(346002)(39860400002)(46966005)(81166007)(2906002)(4326008)(16526019)(9686003)(33656002)(26005)(1076003)(186003)(8676002)(55016002)(44832011)(356005)(8936002)(6862004)(478600001)(70206006)(6496006)(33716001)(70586007)(82310400002)(82740400003)(5660300002)(86362001)(83380400001)(316002)(956004)(53546011)(6666004)(47076004)(54906003)(336012);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 0f4457fa-6c72-40f8-5e21-08d8112140ac
X-Forefront-PRVS: 04359FAD81
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4MgNj9UaK10lnsBOTnW9Yzyu6R7cEC6c4ydVPKKdWNBBX5bEPNUC7yK8sVXk9UMng6P+Z0d29NpgV7HvadZzbkxLhE4nGLcL6KeS2fSKlPg9HJEsYctgBY9pkC7IrVtK5VJiSsG3SxF1V1ROn6gIVZVnfcCuI9QXAQ1Hd2hAS7NEd3zfJA5KJxmYMcNvLHBxjaOXFcn/KM65WGLJjXT//eF5VNA5BlIVKuunkW1YRBAfPe6f/Oap9A207CFHLMV8Glu2I1Md89uKO2d97qq0baK6Q+/dG9Y+kEh1RxQpbhzLNmyKJIvE+tJRyqeyIoYV1PD6XLrYHsiblWGcn7VUBRnE8dJSovVwF+C9tUq7yTrD3v2Aqj2rGY+UyK/t/wIXiOlduSOGd2URAxxMx7b5pA==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2020 11:43:05.7718 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 99cb54d8-c5be-44a7-80fc-08d8112144bd
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2298
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_044309_269706_2F3356FA 
X-CRM114-Status: GOOD (  30.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.74 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Rob Herring <robh@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <Sudeep.Holla@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMTUsIDIwMjAgYXQgMTA6NTE6MzRBTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gTW9uLCBKdW4gMTUsIDIwMjAgYXQgMTA6MTY6MzlBTSArMDEwMCwgQWNoaW4gR3Vw
dGEgd3JvdGU6Cj4gPiBPbiBUaHUsIEp1biAxMSwgMjAyMCBhdCAwNjoxMjoyM1BNICswMTAwLCBX
aWxsIERlYWNvbiB3cm90ZToKPiA+ID4gT24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMDM6NDY6MzVQ
TSArMDAwMCwgQWNoaW4gR3VwdGEgd3JvdGU6Cj4gPiA+ID4gPiBPbiAxMCBKdW4gMjAyMCwgYXQg
MDg6NDMsIFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPiA+ID4gT24g
VHVlLCBKdW4gMDksIDIwMjAgYXQgMDQ6MzU6NTFQTSAtMDYwMCwgUm9iIEhlcnJpbmcgd3JvdGU6
Cj4gPiA+ID4gPj4gT24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMTA6NDU6MTBBTSArMDEwMCwgU3Vk
ZWVwIEhvbGxhIHdyb3RlOgo+ID4gPiA+ID4+PiBBZGQgZGV2aWNldHJlZSBiaW5kaW5ncyBmb3Ig
YSBBcm0gUFNBIEZGLUEgY29tcGxpYW50IG5vbi1zZWN1cmUgcGFydGl0aW9uCj4gPiA+ID4gPj4+
IGF0IHZpcnR1YWwgaW50ZXJmYWNlKFZNcykuCj4gPiA+ID4gPj4+Cj4gPiA+ID4gPj4+IFNpZ25l
ZC1vZmYtYnk6IFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+Cj4gPiA+ID4gPj4+
IC0tLQo+ID4gPiA+ID4+PiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYXJtLHBzYS1mZmEu
dHh0ICAgfCA0NyArKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gPj4+IDEgZmlsZSBjaGFuZ2Vk
LCA0NyBpbnNlcnRpb25zKCspCj4gPiA+ID4gPj4+IGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2FybSxwc2EtZmZhLnR4dAo+ID4gPiA+ID4+
Cj4gPiA+ID4gPj4gSSdtIGhvcGluZyB0aGlzIGdvZXMgYXdheSBpZiB0aGUgZmlybXdhcmUgaXMg
ZGlzY292ZXJhYmxlLCBidXQgaWYgbm90IERUCj4gPiA+ID4gPj4gYmluZGluZ3MgYXJlIERUIHNj
aGVtYSBub3cuCj4gPiA+ID4gPgo+ID4gPiA+ID4gV2UnbGwgbmVlZCB0aGUgYmluZGluZyBmb3Ig
dGhlIGt2bSBob3N0IHNpZGUsIGJlY2F1c2UgdGhlcmUgYXJlIHBsZW50eQo+ID4gPiA+ID4gb2Yg
cGFydGl0aW9uIHByb3BlcnRpZXMgdGhhdCBhcmUgbm90IGRpc2NvdmVyYWJsZSAoZS5nLiBudW1i
ZXIgb2YgdkNQVXMpLgo+ID4gPiA+Cj4gPiA+ID4gSnVzdCB0cnlpbmcgdG8gdW5kZXJzdGFuZCB0
aGUgcmVxLiBhIGJpdCBiZXR0ZXLigKYKPiA+ID4gPgo+ID4gPiA+IFRoZSBGRi1BIGRyaXZlciBp
biB0aGUgaG9zdCBjYW4gdXNlIEZGQV9QQVJUSVRJT05fSU5GT19HRVQgdG8gZGV0ZXJtaW5lCj4g
PiA+ID4gdGhlIGNvdW50IG9mIHBhcnRpdGlvbnMgYW5kIHRoZWlyIHZDUFVzLgo+ID4gPiA+Cj4g
PiA+ID4gSXMgdGhpcyBhYm91dCBhIGd1ZXN0IGJlaW5nIGFibGUgdG8gZmluZCBvdXQgaG93IG1h
bnkgdkNQVXMgaXQgaGFzPwo+ID4gPgo+ID4gPiBUaGlzIGlzIGFib3V0IEtWTSBmaW5kaW5nIG91
dCB0aGUgaW5mb3JtYXRpb24gaXQgbmVlZHMgaW4gb3JkZXIgdG8gc3Bhd24KPiA+ID4gbm9uLXNl
Y3VyZSBwYXJ0aXRpb25zLiBJIGRvbid0IHNlZSBob3cgaXQgY2FuIGRvIHRoYXQgd2l0aAo+ID4g
PiBGRkFfUEFSVElUSU9OX0lORk9fR0VUIC0tIHdobyB3b3VsZCByZXNwb25kPwo+ID4KPiA+IFJp
Z2h0ISBGRkFfUEFSVElUSU9OX0lORk9fR0VUIGlzIG1lYW50IHRvIGhlbHAgdGhlIEZGLUEgZHJp
dmVyIGluIHRoZSBrZXJuZWwgdG8KPiA+IGRldGVybWluZSBwYXJ0aXRpb24gcHJvcGVydGllcy4g
SXQgYXNzdW1lcyB0aGF0IEVMMiBTVyBoYXMgYWxyZWFkeSByZWFkIGVhY2gKPiA+IHBhcnRpdGlv
bidzIG1hbmlmZXN0IGFuZCB3aWxsIHJlcGx5IHRvIHRoaXMgQUJJLgo+ID4KPiA+IElJVUMsIHdp
dGggcHJvdGVjdGVkIEtWTSwgdGhpcyBpbmZvcm1hdGlvbiB3aWxsIGhhdmUgdG8gYmUgYSBwYXJ0
IG9mIHRoZQo+ID4gbWFuaWZlc3QgdGhhdCB0aGUgS1ZNIGhvc3QgY29uc3VtZXMuCj4KPiBUaGUg
aG9zdCBkb2VzIG5vdCBjb25zdW1lIHRoZSBtYW5pZmVzdCBkaXJlY3RseSAtLSBpbnN0ZWFkLCB0
aGUgYm9vdGxvYWRlcgo+IHdpbGwgdXNlIHRoZSBtYW5pZmVzdCB0byBwb3B1bGF0ZSB0aGVzZSBE
VCBub2Rlcy4gQWdhaW4sIHRoZXNlIGFyZSAqb25seSoKPiBmb3Igbm9uLXNlY3VyZSB2aXJ0dWFs
IHBhcnRpdGlvbnMgd2hpY2ggYXJlIHRvIGJlIG1hbmFnZWQgYnkgS1ZNLgoKWWVzLiBVbmRlcnN0
YW5kIGFuZCBhZ3JlZS4gTWFuaWZlc3QgaXMgYW4gb3ZlcmxvYWRlZCB0ZXJtLiBJIHdhcyB1c2lu
ZyBpdCB0bwpkZXNjcmliZSB0aGUgRFQgbm9kZXMgdGhhdCB0aGUgaG9zdCB3aWxsIGNvbnN1bWUu
Cgo+Cj4gPiBCdXQgdGhlbiwgY2FuIHRoaXMgYmUgbWFkZSBkaXNjb3ZlcmFibGUgKHVzZSBhIFNN
QyBmb3IgZGlzY292ZXJ5KSBhdCBhbGwgYXMgUm9iCj4gPiBoYWQgb3JpZ2luYWxseSBzdWdnZXN0
ZWQuIEZpcm13YXJlIChTZWN1cmUgd29ybGQpIGhhcyBubyBjbHVlIGFuZCB0aGUgYm9vdGxvYWRl
cgo+ID4gaXMgbG9uZyBnb25lLgo+Cj4gTWFrZSB3aGF0IGRpc2NvdmVyYWJsZT8KCkkgdGhvdWdo
dCB0aGUgb3JpZ2luYWwgcXVlc3Rpb24gd2FzIHRvIG1ha2UgcGFydGl0aW9uIHByb3BlcnRpZXMg
ZGlzY292ZXJhYmxlCmluc3RlYWQgb2YgcmVseWluZyBvbiBEVCBub2Rlcy4gSSBtaWdodCBoYXZl
IG1pc3VuZGVyc3Rvb2QuIExvb2tzIGxpa2Ugd2UgYXJlIG9uCnRoZSBzYW1lIHBhZ2UgaW4gYW55
IGNhc2UgOm8pCgo+Cj4gPiBTZXBhcmF0ZSB0b3BpYywgcHJvdGVjdGVkIEtWTSBkb2VzIG5vdCBn
ZXQgZGlicyBvbiB0aGUgbWFuaWZlc3QgYW5kIGl0IHJlbGllcyBvbgo+ID4gdGhlIEtWTSBob3N0
IHRvIHNwZWNpZnkgdGhlIGFkZHJlc3MgcmFuZ2VzIGZvciBlYWNoIHBhcnRpdGlvbj8gRG9lcyB0
aGlzIG5vdAo+ID4gbWVhbiB0aGF0IHRoZSBLVk0gaG9zdCBjYW4gY29udHJvbCB0aGUgcGh5c2lj
YWwgYWRkcmVzcyBzcGFjZSBlYWNoIHBhcnRpdGlvbgo+ID4gc2Vlcy4gVGhpcyBzZWVtcyBjb250
cmFyeSB0byB0aGUgaXNvbGF0aW9uIGd1YXJhbnRlZXMgdGhhdCBwcm90ZWN0ZWQgS1ZNIG11c3QK
PiA+IHByb3ZpZGU/Cj4KPiBUaGUgaG9zdCBpcyB0cnVzdGVkIGR1cmluZyBlYXJseSBib290LCBh
bmQgZ2l2ZXMgdXAgdGhpcyB0cnVzdCBhZnRlcgo+IGluaXRpYWxpc2luZyBFTDIgZnVsbHkuIFNv
IHJvdWdobHkgc3BlYWtpbmcsIHdlOgo+Cj4gCSogQm9vdCBhdCBFTDIgYW5kIGluc3RhbGwgYSBz
aGltCj4gCSogRHJvcCBkb3duIHRvIEVMMiBhbmQgc3RhcnQgdGhlIGhvc3Qga2VybmVsCj4gCSog
QmVmb3JlIHNvbWUgaW5pdGlhbGlzYXRpb24gKERUIHBhcnNpbmcsIFNNUCBicmluZ3VwLCBldGMp
Cj4gCSogSW5pdCBLVk0gYnkgY2FsbGluZyBiYWNrIHVwIHRvIEVMMiB0byBpbnN0YWxsIHRoZSBm
dWxsIGh5cGVydmlzb3IKPgo+IEF0IHRoYXQgcG9pbnQsIHRoZSBFTDEgaG9zdCBpcyBubyBsb25n
ZXIgdHJ1c3RlZCBhbmQgdGhlIGxhc3QgY2FsbAo+IGVmZmVjdGl2ZWx5ICJsb2NrcyBpdCBvdXQi
IGZyb20gRUwyLgoKT2suIFByb3RlY3RlZCBLVk0gKFBLVk0pIG11c3QgY3JlYXRlIFMyIHRhYmxl
cyB3aGVuIGFza2VkIHRvIHNldHVwIGEgcGFydGl0aW9uCmJ5IHRoZSBIb3N0LiBNeSBtYWluIGNv
bmNlcm4gaXMgaWYgUEtWTSBtdXN0IHRydXN0IHRoZSBIb3N0IHRvIHByb3ZpZGUgdGhlCmNvcnJl
Y3QgcGh5c2ljYWwgYWRkcmVzcyBzcGFjZSByYW5nZXMgZm9yIGEgcGFydGl0aW9uPwoKSSBndWVz
cyB5b3VyIHBvaW50IGlzIHRoaXMgaXMgbm90IGEgcHJvYmxlbSBzaW5jZSBQS1ZNIGNhbiBsb2Nr
IHRoZSBIb3N0IG91dCBvZgp0aG9zZSBhZGRyZXNzIHJhbmdlcyBpbiBhbnkgY2FzZT8KCkl0IGlz
IGEgYml0IGNvdW50ZXIgaW50dWl0aXZlIHRoYXQgdGhlIEhvc3QgZ2V0cyB0byBzZWUgYW5kIHBv
dGVudGlhbGx5Cm1hbmlwdWxhdGUgaW5mb3JtYXRpb24gdGhhdCB3YXMgdmVyaWZpZWQgYW5kIGV4
dHJhY3RlZCBieSB0aGUgYm9vdGxvYWRlciBmcm9tCnRoZSBwYXJ0aXRpb24ncyBtYW5pZmVzdC4g
VGhpcyBoYXBlbnMgYmVmb3JlIFBLVk0gc2VlcyB0aGUgc2FtZQppbmZvcm1hdGlvbi4gQ2FuJ3Qg
cHV0IG15IGZpbmdlciBvbiB3aGF0IGNvdWxkIGdvIHdyb25nIHRob3VnaC4gRGVwZW5kcyB1cG9u
IHRoZQp0aHJlYXQgbW9kZWwgdG9vIQoKPgo+ID4gPiBCdXQgeW91J3JlIHJpZ2h0IHRoYXQgbnVt
YmVyIG9mIHZDUFVzIHdhcyBhIGJhZCBleGFtcGxlLiBXZSBhbHNvIG5lZWQKPiA+ID4gaW5mb3Jt
YXRpb24gc3VjaCBhcyB0aGUgZW50cnkgcG9pbnQuCj4gPgo+ID4gWWVzLiBGcm9tIGEgc3BlYyBw
ZXJzcGVjdGl2ZSB0aGlzIHNob3VsZCBiZSBzcGVjaWZpZWQgaW4gdGhlIHBhcnRpdGlvbiBtYW5p
ZmVzdAo+ID4gdW5sZXNzIHRoZSBiYXNlIGFkZHJlc3Mgb2YgdGhlIGxvYWRlZCBpbWFnZSBjYW4g
YmUgYXNzdW1tZWQgdG8gYmUgdGhlIGVudHJ5Cj4gPiBwb2ludC4KPgo+IFJpZ2h0LCBidXQgdGhl
IGZvcm1hdCBvZiB0aGUgbWFuaWZlc3QgaXNuJ3QgZGVmaW5lZCBieSB0aGUgc3BlYyBzbyBJIHJl
YWxseQo+IGRvbid0IHRoaW5rIGl0J3Mgc29tZXRoaW5nIHRoYXQgTGludXggc2hvdWxkIGJlIGRl
YWxpbmcgd2l0aCBkaXJlY3RseS4KCkFncmVlLgoKY2hlZXJzLApBY2hpbgo+Cj4gV2lsbAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
