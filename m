Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD7E16583C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 08:11:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G9yPUUic416CPimlxDmXi9Dcatp+w9j6drfboaQJGJ4=; b=oqwjCSNpIRwXjX3RO/N0LZvXQ
	Il9rMOqJ6cUTJtpG9tbQRINhoI7CClQqVvYZun2qj+Oy3ii5vbvpHC8xYdrsfXpTVUo3caBpv+K6l
	oxUQYZ3cn064o55RmJ9sN8rnVMhzF1l9NaIHJDc+LBy1uYuw6maneiqR4niQStEnt9qpIn7kHjsF5
	OugWVPtzqk0i//SGLBSgVlc/48Yh4dH3DfHQ8kP5wuT3vOUZSXvKbzaQtPmYLZtu7mCt7rsc0QANf
	soU2VfTSXL8RNKBgVkAQIFaPfu4NRs4Qh6AJaBmxdCVJTKQneCgovoKeczI2ESgfwpg63n3Dos6Xm
	yhw+YV5ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4fzk-00065J-BW; Thu, 20 Feb 2020 07:11:36 +0000
Received: from mail-am6eur05on2042.outbound.protection.outlook.com
 ([40.107.22.42] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4fzZ-00064b-QW
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 07:11:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g335xwYBUt+rCE+YVjmF38K3osI4p9T1tvg0u7DI3/A=;
 b=VISDvLIXTonKxwKg5+Vo3+xRfWZz7X9ImKSjF3HUIf+NeYCXF1z0+qNfRGD+pBsxViFHDjGJBnxZ6Sg8RQ71RHZvsG11hIXS4byWvl7ykv2l/xjOStYCpPg+9knHu6e+vH9ovsJw7/GZzvleTYlQUPcV9qv5ve5xOyh1OIgvVr4=
Received: from AM5PR0402CA0002.eurprd04.prod.outlook.com
 (2603:10a6:203:90::12) by AM0PR04MB5186.eurprd04.prod.outlook.com
 (2603:10a6:208:c4::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.22; Thu, 20 Feb
 2020 06:56:34 +0000
Received: from VE1EUR01FT057.eop-EUR01.prod.protection.outlook.com
 (2a01:111:f400:7e01::208) by AM5PR0402CA0002.outlook.office365.com
 (2603:10a6:203:90::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Thu, 20 Feb 2020 06:56:34 +0000
Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; vger.kernel.org; dkim=fail (signature did
 not verify) header.d=topicbv.onmicrosoft.com; vger.kernel.org; dmarc=temperror
 action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com; 
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 VE1EUR01FT057.mail.protection.outlook.com (10.152.3.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Thu, 20 Feb 2020 06:56:32 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (104.47.14.54) by
 westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12)
 via SMTP; Thu, 20 Feb 2020 06:56:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lR+RZ3Mlsdabhv+gDhZGy5X0mF5skTOoGBBOTwNDVY060C+utz6gHt3xzCd4YfzGs7NtfFqJ/XZpAonbkhFYpXQEYHCIOdFPHzxhn7NwBUjK7nKk2EVnc3E1i59vafaVa+7R4yxlfvfG7EB3w6LzQiD/SOwavJg3VxjlePStKyuc/UWI1Z2GOphmXkBTyQ5q87PUbj16hqCnc5ptQ0101HMDqog1q50rtU/NtA5hPKYGYTUYHfRc8r+wbgbd7dsbQBlNVgkUcY7LCF7EDXDRPA7t7Q6k03pQ6G/4tCPG7TLIzZStpzBoAPHtcSwN4PW4TzwzMQLCG0Lig1H/vte26w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HoNnuSGgS4a1JvTPbOIZxrO+DZllWiUjEm7W9HtTbQc=;
 b=atyp9qu+qRBH7fdG2jegprH8daEXILTUZhea58kmA+R9kKdp2jhlPvDyKkeGBlJ7szECumdY5ewGaO2aRIeb1zoMVVGLdxGsvvru/jKNIkV5HBkJcAmz5h0+0RRppTvuW85ToFvWevmjboXYo+jU7SxP0Wl9NbuZ8jvxnm0ZSZW9xWY+5Hu3EOtpgGx2gqXMRGzP1gS7tG34WMieahVKsIffSWI4Y596QKQrGIOCyozaGVXHh3ZiohPun0/7s3dQ9rxVduJbBDGhEvH7vUCw1l9KRHzEKK4A0YkMjShwEoPKTGc30vZfXaunLeZnyXdUmI66WrRXkAHZcMlaAd7CDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl; 
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HoNnuSGgS4a1JvTPbOIZxrO+DZllWiUjEm7W9HtTbQc=;
 b=MdBVD4ZipqP2aqwjUbHNqTVtX8TY6gP8EVn/K79a5WuVgX2x5Cy9uVMemLXCPQARuK4ZseR/9UABg+/ngd+Rt3kFfxeO3fV2i5epdJwqrumWmIJmgXrQvcJu1zyWZdvnfn8hIombFqZJdJMV0S43AZnWS2SkE8MFQnqlI6348e8=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) by
 DB3PR0402MB3851.eurprd04.prod.outlook.com (52.134.73.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.29; Thu, 20 Feb 2020 06:56:29 +0000
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::2921:6c3f:a653:732a]) by DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::2921:6c3f:a653:732a%6]) with mapi id 15.20.2729.032; Thu, 20 Feb 2020
 06:56:28 +0000
Subject: Re: [PATCH] devicetree: zynqmp.dtsi: Add bootmode selection support
To: =?UTF-8?B?VmVzYSBKw6TDpHNrZWzDpGluZW4=?= <dachaac@gmail.com>,
 robh+dt@kernel.org, michal.simek@xilinx.com, mark.rutland@arm.com,
 devicetree@vger.kernel.org
References: <20200219122036.24575-1-mike.looijmans@topic.nl>
 <07c68809-f65f-91ff-62eb-f12aa8960634@gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <85a5807e-1d66-867f-1d83-36e8a054a511@topic.nl>
Date: Thu, 20 Feb 2020 07:56:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <07c68809-f65f-91ff-62eb-f12aa8960634@gmail.com>
Content-Language: en-CA
X-ClientProxiedBy: AM0PR0102CA0050.eurprd01.prod.exchangelabs.com
 (2603:10a6:208::27) To DB3PR0402MB3947.eurprd04.prod.outlook.com
 (2603:10a6:8:7::19)
MIME-Version: 1.0
Received: from [192.168.80.121] (81.173.50.109) by
 AM0PR0102CA0050.eurprd01.prod.exchangelabs.com (2603:10a6:208::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Thu, 20 Feb 2020 06:56:28 +0000
X-Originating-IP: [81.173.50.109]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0e66adc1-56bd-497a-0dfe-08d7b5d20535
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3851:|AM0PR04MB5186:
X-Microsoft-Antispam-PRVS: <AM0PR04MB518633B88687013E75D4D98496130@AM0PR04MB5186.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;OLM:9508;
X-Forefront-PRVS: 031996B7EF
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(136003)(396003)(39840400004)(376002)(189003)(199004)(508600001)(31696002)(4326008)(5660300002)(31686004)(8676002)(81166006)(81156014)(36756003)(66946007)(66476007)(66556008)(8936002)(6486002)(186003)(16526019)(316002)(2906002)(26005)(36916002)(66574012)(52116002)(16576012)(2616005)(956004)(7416002)(44832011)(42882007)(53546011)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3851;
 H:DB3PR0402MB3947.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 6UGPPsP6GMuH4Wo3CN1mUPHOkOZclqKKUPhSmDDh0Atos9Cz8mQ5tc5vLjRUD4hHKH/a0pALm8jPTVtJbvPVn73Wx/HNCSvB+ONSSyjRKeFSUGV6rHJ6vjjLoJ3+mDIeoG8hqAPno9FqxK6jZBZiV7pt7N8I+5Ghr7TC6sBbmLW+CRwuRLf5g+7Ys+dssSRQ1+HUdzInHwMObqhKpAoEaKWE4B18YjfTn3DVsv4P56h12c/CPsVvypX04ei/IVAFlfY/BOECEjIqwtCHxb/KrGImcFx8aGAIP/AxImxDE8cOFMu6Dtf0zejWcAujks3LYVlFDgaByy9ddEYcoGCIax2z/a1bydiVdkMtILW4tOVdSsGKzAk2DVyBDwZLAUqSA3rf9IbuomPlqugoKvoVdCOkgFgO0MslWhZcuOOtfw+LDD7xESQyOLXYn10vI7oMUDqpU17fEOZZ0K5HxIwyFJWbq6tulHJkAqpf6P6JUpxcJNtM99WX8bgK0TcT1oaP
X-MS-Exchange-AntiSpam-MessageData: yuyLGNNvp6E/CPuvhKYLNJJZVFunBE+ajG9p1zGv9Ofu0ubWuB+SoD+9Q0GF8rjkLWXAXOsM28yu6AocMd0w5qwzcmhpykPlWA5W67SbY6BkfwN2Zi2foxNUPrRdJnt1Ga8pMoc3oi4S0cl9dpxc6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3851
X-CodeTwo-MessageID: d334d320-cefd-44e7-9f9a-1f69678cb919.20200220065630@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR01FT057.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:13.81.10.179; IPV:; CTRY:NL; EFV:NLI; SFV:NSPM;
 SFS:(10009020)(39840400004)(396003)(376002)(346002)(136003)(189003)(199004)(36756003)(42882007)(7596002)(336012)(186003)(70206006)(16526019)(70586007)(6486002)(316002)(44832011)(956004)(7636002)(36916002)(5660300002)(63370400001)(2616005)(31696002)(31686004)(8936002)(53546011)(2906002)(8676002)(246002)(66574012)(16576012)(4326008)(356004)(26005)(7416002)(508600001)(82310400001)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5186;
 H:westeu13-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass; LANG:en;
 PTR:westeu13-emailsignatures-cloud.codetwo.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 75b0d43c-6314-4b94-67c7-08d7b5d20282
X-Forefront-PRVS: 031996B7EF
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BwsniFGXMK7k3k9avVv7k4YDBTeaeIPOLouOH+QGQiTXHF7PNZ94CRVCzs8atK4XPyGKoAiP18nc/XdZAGgXv6OcdbliCi6hmm7Cg/y7P4u1nwGU0jeL7iU4Y20fjhs2wx7TwvDaUoHj8BTgfQfv47btaQxUKJuCOnCRwFwGxHGxhdFY4zdiwd15zoGGpfHDF6UPEVuFznt/R0+0h7Ob2navrj7RRq9gb7o8LnsmMsQeREovKKK1Hb+QPn+0lrtOLRXovLAbejP0xiQGAWSpAGGhdKFnRvOAa4y1OsbEXWRfqu73Pt2k+pDxbcuzC7Jwl/GoJkuiwqdjipI3WmIBXE5Lqf9E273KHpEBwabcnm/lmwIWXLwATWSljQT3foxkJYZoKdjzFhwOl6R2ZF7sVo3xbGwI3jXuYQzas4KO4sXDU/ApqDYllzhKjcpZvJvhnOEevKcvWlWPKLkVfKZ5fHVcuxwXmLlfitVCjye6QQPvEzL9EV/mvycnaMrHy07a
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2020 06:56:32.8118 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e66adc1-56bd-497a-0dfe-08d7b5d20535
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3; Ip=[13.81.10.179];
 Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5186
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_231125_866272_F6B05224 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: rajan.vaja@xilinx.com, nava.manne@xilinx.com, m.tretter@pengutronix.de,
 linux-kernel@vger.kernel.org, manish.narani@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTktMDItMjAyMCAxOToyMywgVmVzYSBKw6TDpHNrZWzDpGluZW4gd3JvdGU6Cj4gSGkgTWlr
ZSwKPiAKPiBPbiAxOS4yLjIwMjAgMTQuMjAsIE1pa2UgTG9vaWptYW5zIHdyb3RlOgo+PiBBZGQg
Ym9vdG1vZGUgb3ZlcnJpZGUgc3VwcG9ydCBmb3IgWnlucU1QIGRldmljZXMuIEFsbG93cyBvbmUg
dG8gc2VsZWN0Cj4+IGEgYm9vdCBkZXZpY2UgYnkgcnVubmluZyAicmVib290IHFzcGkzMiIgZm9y
IGV4YW1wbGUuIEFjdGl2YXRlIGNvbmZpZwo+PiBpdGVtIENPTkZJR19TWVNDT05fUkVCT09UX01P
REUgdG8gbWFrZSB0aGlzIHdvcmsuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1pa2UgTG9vaWptYW5z
IDxtaWtlLmxvb2lqbWFuc0B0b3BpYy5ubD4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9k
dHMveGlsaW54L3p5bnFtcC5kdHNpIHwgMjQgKysrKysrKysrKysrKysrKysrKysrKysrCj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3hpbGlueC96eW5xbXAuZHRzaSAKPj4gYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3hpbGlueC96eW5xbXAuZHRzaQo+PiBpbmRleCAyNmQ5MjZlYjE0MzEuLjRjMzhkNzdlY2Ji
YSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy94aWxpbngvenlucW1wLmR0c2kK
Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy94aWxpbngvenlucW1wLmR0c2kKPj4gQEAgLTI0
Niw2ICsyNDYsMzAgQEAKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIH07Cj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBDbG9jayBhbmQgUmVzZXQgY29u
dHJvbCByZWdpc3RlcnMgZm9yIExQRCAqLwo+PiArwqDCoMKgwqDCoMKgwqAgbHBkX2FwYjogYXBi
QGZmNWUwMDAwIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJzeXNj
b24iLCAic2ltcGxlLW1mZCI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweDAg
MHhmZjVlMDAwMCAweDAgMHg0MDA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWJvb3Qt
bW9kZSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJz
eXNjb24tcmVib290LW1vZGUiOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9m
ZnNldCA9IDwweDIwMD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWFzayA9
IDwweGYxMDA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIEJpdCg4KSBp
cyB0aGUgImZvcmNlIHVzZXIiIGJpdCAqLwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIG1vZGUtbm9ybWFsID0gPDB4MDAwMD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgbW9kZS1wc2p0YWcgPSA8MHgwMTAwPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBtb2RlLXFzcGkyNCA9IDwweDExMDA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIG1vZGUtcXNwaTMyID0gPDB4MjEwMD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgbW9kZS1zZDDCoMKgwqAgPSA8MHgzMTAwPjsKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBtb2RlLW5hbmTCoMKgID0gPDB4NDEwMD47Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgbW9kZS1zZDHCoMKgwqAgPSA8MHg2MTAwPjsKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtb2RlLWVtbWPCoMKgID0gPDB4NjEwMD47Cj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbW9kZS11c2IwwqDCoCA9IDwweDcxMDA+Owo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtcGp0YWcwID0gPDB4ODEwMD47
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbW9kZS1wanRhZzEgPSA8MHg5MTAw
PjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtb2RlLXNkMWxzwqAgPSA8MHhl
MTAwPjsKPiAKPiBUaGlzIGtpbmRhIGxvb2tzIGEgYml0IG1pc3VzZSBvZiByZWJvb3QgbW9kZSBz
dXBwb3J0Lgo+IAo+IFVzdWFsbHkgeW91IGFyZSBzaWduYWwgd2l0aCByZWJvb3QtbW9kZSB0aGF0
IHlvdSB3YW50IHRvIGRvIGZhY3RvcnkgcmVzZXQsIAo+IGVudGVyIHJlY292ZXJ5IG1vZGUgb3Ig
c3VjaCB0aGluZ3MuCj4gCj4gTm93IHRoaXMgc2lnbmFsaW5nIGhlcmUgaXMgdGVsbGluZyB0aGF0
IHRoaXMgaXMgdXNlZCBmb3Igc2VsZWN0aW5nIGZyb20gd2hhdCAKPiBkZXZpY2UgdG8gYm9vdCBm
cm9tLgoKT24gdGhlIFp5bnFNUCB0aGlzIGlzIHRoZSBvbmx5IHdheSB0byBjb21tdW5pY2F0ZSB3
aXRoIHRoZSBST00uCgo+IEFub3RoZXIgcHJvYmxlbSBpcyB0aGF0IHRoaXMgbm93IG1vZGlmaWVz
IGFsbCBYaWxpbnggWnlucSBNUFNvQ3Mgd2hpY2ggaXMgCj4ga2luZGEgd3JvbmcuIFRoaXMgYmVo
YXZpb3Igc2hvdWxkIHJlYWxseSBiZSBwcm9kdWN0L2JvYXJkIHNwZWNpZmljIGFuZCBub3QgCj4g
Y29tbW9uIGZvciBhbGwgYm9hcmRzIC0tIHVuZG9pbmcgdGhpcyBpbiBwcm9kdWN0L2JvYXJkIGlz
IHNvbWV3aGF0IGN1bWJlcnNvbWUuIAoKVGhlIGJvb3QgbW9kZSBzZXR0aW5nIGlzIGluIHRoZSBT
T0MsIGFuZCBpcyBub3QgYm9hcmQgc3BlY2lmaWMuIFRoZSBST00gCmludGVycHJldHMgdGhpcyBm
aWVsZC4gVGhlIG9ubHkgYm9hcmQgc3BlY2lmaWMgdGhpbmcgaXMgdGhhdCB5b3UgbWF5IG5vdCAK
YWN0dWFsbHkgaGF2ZSBhIE5BTkQgY2hpcCBhdHRhY2hlZCB0byBpdC4KCk15IGlkZWEgd2FzIHRo
YXQgYSBib2FyZCBjb3VsZCBlYXNpbHkgYWRkIHNheSAnbW9kZS1yZWNvdmVyeT08MHgyMTAwPjsn
IHRvIAptYWtlIHRoZSBRUFNJIGJvb3QgdGhlIG1ldGhvZCBvZiByZWNvdmVyeS4gVGhlIGJvb3Rs
b2FkZXIgYWxzbyBoYXMgYWNjZXNzIHRvIAp0aGlzIHJlZ2lzdGVyLCBzbyBpdCBjYW4gc2VlIHRo
YXQgdGhlcmUgd2FzIGEgYm9vdCBtb2RlIG92ZXJyaWRlIGluIGVmZmVjdC4KCj4gTm93IHRoaXMg
Y2hhbmdlIGhpamFja3MgdGhlICJyZWJvb3QgPGFyZz4iIHdpdGggdGhpcyBiZWhhdmlvciB3aGlj
aCBpcyBub3Qgc28gCj4gbmljZS4KCklmIGFueW9uZSBoYXMgYSBiZXR0ZXIgc3VnZ2VzdGlvbiBh
cyB0byB3aGVyZSB0aGlzIHNob3VsZCBnbywgSSdkIGJlIG1vcmUgdGhhbiAKaGFwcHkgdG8gaGVh
ciBhYm91dCBpdC4gSXQncyB0aGUgb25seSBpbnRlcmZhY2UgdGhhdCBJIGNvdWxkIGZpbmQgaW4g
dGhlIAprZXJuZWwgdG8gYXR0YWNoIGEgYm9vdG1vZGUgb3ZlcnJpZGUgdG8uCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
