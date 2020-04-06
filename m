Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AA119F3E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 12:56:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DEqGOEAnv5GyOfceK++e6CTHSf/Yhh6joBzoSqmqEGo=; b=rrOm4EQyz5Q0PN
	utuJeOtWD/OvWRxzW/dM/MSgPvK/E2/m8IykT7OIEyXNVJIpXb8h0eEoEVoYsvmFy1u0VdhYF6zyX
	45Bf+VBuwbXyyoO5y6IDcfBASUMVQoLP7REPIdPdbc1GgraLWUdou1mLXpqi43SMJ1nEXLjtEXx91
	oT4GrR9Mrcmcf5o56vJOzG0H8/DA6PeX2mWgVztNMnuGbj7EJGj5y5aFxPt40TpP0R3dXxf6rM4Fh
	dlAIb5cg6rnVtprbnxkj4YD/upuiUvuF3z+GRHWHVJrRNotH/273UO03pcuC/JWI0LguFd3BAHgfb
	hJo81/g0FNoME7utjKyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLPQv-0001hR-CL; Mon, 06 Apr 2020 10:56:49 +0000
Received: from mail-eopbgr70059.outbound.protection.outlook.com ([40.107.7.59]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLPQn-0001gH-Lw
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 10:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ma8dwUqXEH6LvfaQpKK15w0yVBc8h9yKi+OXQKRHkQY=;
 b=YQ6jEUcTFVQqLkPq0hUpm4r8I/JkLiLlnzfETqmaXmGoJE3MIqIindc6y3MrIZw6Vjw/9H+RbhYtj9i6t2TgLU4DoXHUc/px916BuJTEB+Q9tdptfb1wDQH968knEjSHqF/0x55S0Ak3PQTUbANiW7MqlPQpmoTfYY+r7XtMGVs=
Received: from DB7PR05CA0062.eurprd05.prod.outlook.com (2603:10a6:10:2e::39)
 by DB8PR08MB3980.eurprd08.prod.outlook.com (2603:10a6:10:b1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Mon, 6 Apr
 2020 10:56:33 +0000
Received: from DB5EUR03FT034.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:2e:cafe::66) by DB7PR05CA0062.outlook.office365.com
 (2603:10a6:10:2e::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Mon, 6 Apr 2020 10:56:33 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT034.mail.protection.outlook.com (10.152.20.87) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Mon, 6 Apr 2020 10:56:33 +0000
Received: ("Tessian outbound 55454527ea3b:v50");
 Mon, 06 Apr 2020 10:56:33 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 3f529e7f25d549d3
X-CR-MTA-TID: 64aa7808
Received: from 6d15507f9406.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 27DB03B2-E2A2-4C41-80E8-371ABB97B2B5.1; 
 Mon, 06 Apr 2020 10:56:28 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 6d15507f9406.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 06 Apr 2020 10:56:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aRA9M2vS7FW90qC/DkBwmVvCgYf/7oUjJcryFP9nLqCl96CqiAzOOy6tdJH42ps9kSvD3kLlz+a9EH4zilye81Q7v56J02Kf3DcKhq4dP1xUFFcwpE4zo8WgPJDCyTG2//tJiyVPjjlDWWJJJNq5GHyttD+Go/oTaUtZPDHjqWlI7PnYP8xj20A+x4ZP1YdGZZfz4utcka9+9N00soiIamI3VmfUZixoXKhw2nxNAH6hkNchjO/msDGHGDyUdLnEKSneiI4kswLiohZY1SLAWMTM0ksMO/tgrAwAHxpLHEjo3ruucT9T7h3VoN4hlEHUQ3DIHsXnipYYK1EH/i8Ryw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ma8dwUqXEH6LvfaQpKK15w0yVBc8h9yKi+OXQKRHkQY=;
 b=WjkuR3r5fIfOAuHh5H7ZnPcG2DQJHasmuIuRdHMSqg65Aj87OwvAzbjExUTjjaIibSmUlVzri9k2hhcxGHL1Vhe4Kv95eah+8/P7L5xqr6+/NbqZbDWHsHSdOLSb+9APvgKJ/7YTYVICXZMovJxXyfvB6KNqljx91c/JgCzfQF+vidz6PYqm5ydMYwhXKSw0OyPMFx8ggCiIULLvv04S9EwbXaYeFVZX8tKlP+vyDKS6rHQlD0BqMB9K5K7WFVY6ISF97LIsyeebCO7OsU+3FWurrEsc2EQEv+UF1JtCWQRnHtt7TYUNB28f2XgTOgYQeo8U8CgYeAhYT0ngL2wU6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ma8dwUqXEH6LvfaQpKK15w0yVBc8h9yKi+OXQKRHkQY=;
 b=YQ6jEUcTFVQqLkPq0hUpm4r8I/JkLiLlnzfETqmaXmGoJE3MIqIindc6y3MrIZw6Vjw/9H+RbhYtj9i6t2TgLU4DoXHUc/px916BuJTEB+Q9tdptfb1wDQH968knEjSHqF/0x55S0Ak3PQTUbANiW7MqlPQpmoTfYY+r7XtMGVs=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Richard.Earnshaw@arm.com; 
Received: from VI1PR08MB2960.eurprd08.prod.outlook.com (52.133.14.14) by
 VI1PR08MB3424.eurprd08.prod.outlook.com (20.177.62.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.19; Mon, 6 Apr 2020 10:56:26 +0000
Received: from VI1PR08MB2960.eurprd08.prod.outlook.com
 ([fe80::908d:4b45:4600:32d9]) by VI1PR08MB2960.eurprd08.prod.outlook.com
 ([fe80::908d:4b45:4600:32d9%5]) with mapi id 15.20.2878.018; Mon, 6 Apr 2020
 10:56:26 +0000
Subject: Re: [linux-next:master 12804/13809] include/linux/compiler.h:350:38:
 error: call to '__compiletime_assert_1533' declared with attribute
 error:
 BUILD_BUG_ON failed: __alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE
To: Ard Biesheuvel <ardb@kernel.org>, "Michael S. Tsirkin" <mst@redhat.com>
References: <202004050718.B9NaFC2U%lkp@intel.com>
 <20200405045709-mutt-send-email-mst@kernel.org>
 <20200405123905-mutt-send-email-mst@kernel.org>
 <CAMj1kXGUru9K-z4JB6tBrgu9S4_5grPpkkSfe3ZfwB-SrGrPvg@mail.gmail.com>
 <20200406061817-mutt-send-email-mst@kernel.org>
 <CAMj1kXF5Tf0J9R0vhPgQJCnh0MM=OBJPK_AQCy-NSEBhpYbedg@mail.gmail.com>
From: Richard Earnshaw <Richard.Earnshaw@arm.com>
Message-ID: <c29c95aa-aeec-2333-5927-58ec764769db@arm.com>
Date: Mon, 6 Apr 2020 11:56:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <CAMj1kXF5Tf0J9R0vhPgQJCnh0MM=OBJPK_AQCy-NSEBhpYbedg@mail.gmail.com>
Content-Language: en-GB
X-ClientProxiedBy: LO2P265CA0024.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::36) To VI1PR08MB2960.eurprd08.prod.outlook.com
 (2603:10a6:803:44::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.19] (81.174.157.140) by
 LO2P265CA0024.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:62::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.21 via Frontend Transport; Mon, 6 Apr 2020 10:56:25 +0000
X-Originating-IP: [81.174.157.140]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8ba9770c-845a-4afc-39cf-08d7da192b70
X-MS-TrafficTypeDiagnostic: VI1PR08MB3424:|VI1PR08MB3424:|DB8PR08MB3980:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB3980589B1002000EEDFB099897C20@DB8PR08MB3980.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;OLM:6790;
X-Forefront-PRVS: 0365C0E14B
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:VI1PR08MB2960.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(4326008)(53546011)(2906002)(186003)(2616005)(16526019)(956004)(52116002)(31696002)(5660300002)(86362001)(26005)(66946007)(66556008)(7416002)(966005)(66476007)(31686004)(478600001)(81156014)(316002)(6486002)(54906003)(8676002)(16576012)(36756003)(8936002)(110136005)(81166006);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: YmNIZJjd8QDLNAU5RW51LyiX+bqde1yCdru2CtHhd5VyWb8W9DD1DZivWRDpdMLrE9YalICv9oX5iSOovLNi0uNObonKtt0zPQ1VFCNe/YHG/xE08vToBbIVaBKQ5Xh5nOmTuszUCtcEt+JZSHwDsNLazOGlA/zRMOu3SF1wIbm7sZofXlKaXkXpjncX8PkZoOOv/xdtobtQEEYzzMig4e6zvldmN9Pp3WWg8DA1gq3hKGVolpASvgRRaCpcDoqZpuHQhysDo9+FmPcxbOkhu8thxJYCM8fWcXFIdWQAzkeALv+3FYwpmAPe3qCHJzS668kcmzLueqU4h9JT8Mbaqp/cDJyq2sv0udSpxUwFwpSSyn5bj3JjLr3kbXaNbSDR5oTsdrrvD2xOP3Ocn77rvBfTfRBPNlYJKsSzA0IskAD4e9S1uh18yaxLaEp/LrFG/+RM2KTMNypokWi2keAJN8kZmY8kdMx8EicqmHYk02957M/c99O6ptjALXmMnnFGpz0ZkXV4wYaredJLS/rfYg==
X-MS-Exchange-AntiSpam-MessageData: 9O2zIXBetrehImipWjSryMvM6VjZQBsJW0TiV2PSOSaCxnxdZSevpn6O8RjTVP8mYDasktVYn0OJeNF9HOcZPLz+SLaRDIeJ2VN12LHPBZXQsIaRtlVNJH+RrD4cBMx8PVTVRIuRIm/bgwYeCZABTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3424
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Richard.Earnshaw@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT034.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(346002)(39860400002)(46966005)(54906003)(110136005)(6486002)(81156014)(16576012)(53546011)(478600001)(86362001)(70586007)(966005)(316002)(26005)(2906002)(8676002)(26826003)(81166006)(8936002)(36756003)(186003)(956004)(31696002)(31686004)(2616005)(336012)(82740400003)(70206006)(4326008)(47076004)(5660300002)(356004)(16526019);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 65cfb174-5856-432d-7eff-08d7da192746
X-Forefront-PRVS: 0365C0E14B
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2Z/1qey80aRPm1tZNk8vYbpdCu23yaYzXH1f4YbuxiMphrZ20A33OmM8mwee5PPUSwV768ntubSnqOH9spwyQuPjCM6uStGJFkDIYCUN/vRZOsTbryCiOi7+Njzaqz3RR1LeW6eoGqPE1mWtraMM7WEgAEasuclolAs/CdSgtxq5otGoNeaGL43yrdRKs7Wcvul24Aql1HNH+HCn/aVysRlJP6YGTprmaDMXeR+5y27iyEH8Px8EAFxye6Eb77A3FqKpZQfuIZhFqkCoqkgFaMowSyXIvaR1f0uDEsmvpXoxu1SICm/ddPIc72xts+iqhIRqEt+UyvXzY0XLlgNOGrOa+khjTbFc+fBCi5gO1aA9NqK3GFD1GqmsmZEwsvEsTVHTWgznpctSME2mtnXZ+Cn1ECBm6M9tSjvFiPK1lYr34b767tK1JznzliYMRLpi+78ppmzTlRBkgb9RN4B5rnppvoX13DxYiGtcdcsJ/xFmOU2sCk/J+aC97TMEFz+vNzuHsaFfRp70vHdqrlM1/C5cZdKQRXtUG4M6ybN5pgGnollPzkffEjnPFpYT2J9HwuCxggR06SIyacnUsSDz0A==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2020 10:56:33.3947 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ba9770c-845a-4afc-39cf-08d7da192b70
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB3980
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_035641_944318_5CAA37F6 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 kbuild test robot <lkp@intel.com>,
 "daniel.santos@pobox.com" <daniel.santos@pobox.com>,
 Jason Wang <jasowang@redhat.com>,
 "richard.henderson@linaro.org" <richard.henderson@linaro.org>,
 "christophe.lyon@st.com" <christophe.lyon@st.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYvMDQvMjAyMCAxMTo0OSwgQXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cj4gT24gTW9uLCA2IEFw
ciAyMDIwIGF0IDEyOjM4LCBNaWNoYWVsIFMuIFRzaXJraW4gPG1zdEByZWRoYXQuY29tPiB3cm90
ZToKPj4KPj4gT24gTW9uLCBBcHIgMDYsIDIwMjAgYXQgMTI6MDA6MzZQTSArMDIwMCwgQXJkIEJp
ZXNoZXV2ZWwgd3JvdGU6Cj4+ID4gKGFkZGluZyBzb21lIEFSTSBHQ0MgZm9sa3MpCj4+ID4KPj4g
Pgo+PiA+IE9uIFN1biwgNSBBcHIgMjAyMCBhdCAxODo0NCwgTWljaGFlbCBTLiBUc2lya2luIDxt
c3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+ID4gPgo+PiA+ID4gSGVsbG8hCj4+ID4gPiBJIHdvdWxk
IGFwcHJlY2lhdGUgQVJNIG1haW50YWluZXJzIHRha2Ugb24gdGhlIGZvbGxvd2luZwo+PiA+ID4g
KHNvcnJ5IGlmIEkgZm9yZ290IHNvbWVvbmUsIHBscyBmZWVsIGZyZWUgdG8gYWRkIHBlb3BsZSB0
byBDQyk6Cj4+ID4gPgo+PiA+ID4KPj4gPiA+IE9uIFN1biwgQXByIDA1LCAyMDIwIGF0IDA1OjAx
OjAxQU0gLTA0MDAsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4gPiA+ID4gT24gU3VuLCBB
cHIgMDUsIDIwMjAgYXQgMDc6NTc6MjRBTSArMDgwMCwga2J1aWxkIHRlc3Qgcm9ib3Qgd3JvdGU6
Cj4+ID4gPiA+ID4gdHJlZTogICBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0IG1hc3Rlcgo+PiA+ID4gPiA+IGhlYWQ6ICAg
ZGZmNzk1OTc0MzEwNDVhNzc1ZjJlNWQ0ZDlkZTMxYmZhMGQzMmEzNAo+PiA+ID4gPiA+IGNvbW1p
dDogMjBjMzg0ZjFlYTFhMGJjNzMyMGJjNDQ1YzcyZGQwMmQyOTcwZDU5NCBbMTI4MDQvMTM4MDld
IHZob3N0OiByZWZpbmUgdmhvc3QgYW5kIHZyaW5naCBrY29uZmlnCj4+ID4gPiA+ID4gY29uZmln
OiBhcm0tcmFuZGNvbmZpZy1hMDAxLTIwMjAwNDA1IChhdHRhY2hlZCBhcyAuY29uZmlnKQo+PiA+
ID4gPiA+IGNvbXBpbGVyOiBhcm0tbGludXgtZ251ZWFiaS1nY2MgKEdDQykgOS4zLjAKPj4gPiA+
ID4gPiByZXByb2R1Y2U6Cj4+ID4gPiA+ID7CoMKgwqDCoMKgwqDCoMKgIHdnZXQgaHR0cHM6Ly9y
YXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2ludGVsL2xrcC10ZXN0cy9tYXN0ZXIvc2Jpbi9tYWtl
LmNyb3NzCj4gLU8gfi9iaW4vbWFrZS5jcm9zcwo+PiA+ID4gPiA+wqDCoMKgwqDCoMKgwqDCoCBj
aG1vZCAreCB+L2Jpbi9tYWtlLmNyb3NzCj4+ID4gPiA+ID7CoMKgwqDCoMKgwqDCoMKgIGdpdCBj
aGVja291dCAyMGMzODRmMWVhMWEwYmM3MzIwYmM0NDVjNzJkZDAyZDI5NzBkNTk0Cj4+ID4gPiA+
ID7CoMKgwqDCoMKgwqDCoMKgICMgc2F2ZSB0aGUgYXR0YWNoZWQgLmNvbmZpZyB0byBsaW51eCBi
dWlsZCB0cmVlCj4+ID4gPiA+ID7CoMKgwqDCoMKgwqDCoMKgIEdDQ19WRVJTSU9OPTkuMy4wIG1h
a2UuY3Jvc3MgQVJDSD1hcm0KPj4gPiA+ID4gPgo+PiA+ID4gPiA+IElmIHlvdSBmaXggdGhlIGlz
c3VlLCBraW5kbHkgYWRkIGZvbGxvd2luZyB0YWcgYXMgYXBwcm9wcmlhdGUKPj4gPiA+ID4gPiBS
ZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4+ID4gPiA+ID4K
Pj4gPiA+ID4gPiBBbGwgZXJyb3Ivd2FybmluZ3MgKG5ldyBvbmVzIHByZWZpeGVkIGJ5ID4+KToK
Pj4gPiA+ID4gPgo+PiA+ID4gPiA+wqDCoMKgIEluIGZpbGUgaW5jbHVkZWQgZnJvbSBpbmNsdWRl
L2xpbnV4L2tlcm5lbC5oOjExLAo+PiA+ID4gPiA+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBmcm9tIGluY2x1ZGUvbGludXgvbGlzdC5oOjksCj4+ID4gPiA+ID7CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gaW5jbHVkZS9saW51eC9w
cmVlbXB0Lmg6MTEsCj4+ID4gPiA+ID7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGZyb20gaW5jbHVkZS9saW51eC9zcGlubG9jay5oOjUxLAo+PiA+ID4gPiA+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIGluY2x1ZGUvbGludXgvc2Vx
bG9jay5oOjM2LAo+PiA+ID4gPiA+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBmcm9tIGluY2x1ZGUvbGludXgvdGltZS5oOjYsCj4+ID4gPiA+ID7CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gaW5jbHVkZS9saW51eC9zdGF0Lmg6MTks
Cj4+ID4gPiA+ID7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20g
aW5jbHVkZS9saW51eC9mY250bC5oOjUsCj4+ID4gPiA+ID7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gaW5jbHVkZS9saW51eC9ldmVudGZkLmg6MTIsCj4+ID4g
PiA+ID7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gZHJpdmVy
cy92aG9zdC92aG9zdC5jOjEzOgo+PiA+ID4gPiA+wqDCoMKgIEluIGZ1bmN0aW9uICd2aG9zdF92
cmluZ19zZXRfYWRkcicsCj4+ID4gPiA+ID7CoMKgwqDCoMKgwqDCoCBpbmxpbmVkIGZyb20gJ3Zo
b3N0X3ZyaW5nX3NldF9udW1fYWRkcicgYXQgZHJpdmVycy92aG9zdC92aG9zdC5jOjE1ODE6NywK
Pj4gPiA+ID4gPsKgwqDCoMKgwqDCoMKgIGlubGluZWQgZnJvbSAndmhvc3RfdnJpbmdfaW9jdGwn
IGF0IGRyaXZlcnMvdmhvc3Qvdmhvc3QuYzoxNjE0OjEwOgo+PiA+ID4gPiA+ID4+IGluY2x1ZGUv
bGludXgvY29tcGlsZXIuaDozNTA6Mzg6IGVycm9yOiBjYWxsIHRvICdfX2NvbXBpbGV0aW1lX2Fz
c2VydF8xNTMzJyBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSBlcnJvcjogQlVJTERfQlVHX09OIGZh
aWxlZDogX19hbGlnbm9mX18gKnZxLT5hdmFpbCA+IFZSSU5HX0FWQUlMX0FMSUdOX1NJWkUKPj4g
PiA+ID4gPsKgwqDCoMKgwqAgMzUwIHzCoCBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwg
bXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2VydF8sIF9fTElORV9fKQo+PiA+ID4gPiA+wqDCoMKgwqDC
oMKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeCj4+ID4gPiA+ID7CoMKgwqAgaW5jbHVkZS9s
aW51eC9jb21waWxlci5oOjMzMTo0OiBub3RlOiBpbiBkZWZpbml0aW9uIG9mIG1hY3JvICdfX2Nv
bXBpbGV0aW1lX2Fzc2VydCcKPj4gPiA+ID4gPsKgwqDCoMKgwqAgMzMxIHzCoMKgwqAgcHJlZml4
ICMjIHN1ZmZpeCgpOyAgICBcCj4+ID4gPiA+ID7CoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCBe
fn5+fn4KPj4gPiA+ID4gPsKgwqDCoCBpbmNsdWRlL2xpbnV4L2NvbXBpbGVyLmg6MzUwOjI6IG5v
dGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnX2NvbXBpbGV0aW1lX2Fzc2VydCcKPj4gPiA+ID4g
PsKgwqDCoMKgwqAgMzUwIHzCoCBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBf
X2NvbXBpbGV0aW1lX2Fzc2VydF8sIF9fTElORV9fKQo+PiA+ID4gPiA+wqDCoMKgwqDCoMKgwqDC
oMKgIHzCoCBefn5+fn5+fn5+fn5+fn5+fn5+Cj4+ID4gPiA+ID7CoMKgwqAgaW5jbHVkZS9saW51
eC9idWlsZF9idWcuaDozOTozNzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdjb21waWxl
dGltZV9hc3NlcnQnCj4+ID4gPiA+ID7CoMKgwqDCoMKgwqAgMzkgfCAjZGVmaW5lIEJVSUxEX0JV
R19PTl9NU0coY29uZCwgbXNnKSBjb21waWxldGltZV9hc3NlcnQoIShjb25kKSwgbXNnKQo+PiA+
ID4gPiA+wqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXn5+fn5+fn5+fn5+fn5+
fn5+Cj4+ID4gPiA+ID7CoMKgwqAgaW5jbHVkZS9saW51eC9idWlsZF9idWcuaDo1MDoyOiBub3Rl
OiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ0JVSUxEX0JVR19PTl9NU0cnCj4+ID4gPiA+ID7CoMKg
wqDCoMKgwqAgNTAgfMKgIEJVSUxEX0JVR19PTl9NU0coY29uZGl0aW9uLCAiQlVJTERfQlVHX09O
IGZhaWxlZDogIiAjY29uZGl0aW9uKQo+PiA+ID4gPiA+wqDCoMKgwqDCoMKgwqDCoMKgIHzCoCBe
fn5+fn5+fn5+fn5+fn5+Cj4+ID4gPiA+ID4gPj4gZHJpdmVycy92aG9zdC92aG9zdC5jOjE1MzM6
Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdCVUlMRF9CVUdfT04nCj4+ID4gPiA+ID7C
oMKgwqDCoCAxNTMzIHzCoCBCVUlMRF9CVUdfT04oX19hbGlnbm9mX18gKnZxLT5hdmFpbCA+IFZS
SU5HX0FWQUlMX0FMSUdOX1NJWkUpOwo+PiA+ID4gPiA+wqDCoMKgwqDCoMKgwqDCoMKgIHzCoCBe
fn5+fn5+fn5+fn4KPj4gPiA+ID4KPj4gPiA+ID4gVGhpcyBjb21waWxlciBzZWVtcyB0byBiZSBi
cm9rZW4uIFdlIGhhdmU6Cj4+ID4gPiA+ICNkZWZpbmUgVlJJTkdfQVZBSUxfQUxJR05fU0laRSAy
Cj4+ID4gPiA+IGFuZAo+PiA+ID4gPgo+PiA+ID4gPsKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHZy
aW5nX2F2YWlsIF9fdXNlciAqYXZhaWw7Cj4+ID4gPiA+Cj4+ID4gPiA+IGFuZAo+PiA+ID4gPiBz
dHJ1Y3QgdnJpbmdfYXZhaWwgewo+PiA+ID4gPsKgwqDCoMKgwqDCoMKgwqAgX192aXJ0aW8xNiBm
bGFnczsKPj4gPiA+ID7CoMKgwqDCoMKgwqDCoMKgIF9fdmlydGlvMTYgaWR4Owo+PiA+ID4gPsKg
wqDCoMKgwqDCoMKgwqAgX192aXJ0aW8xNiByaW5nW107Cj4+ID4gPiA+IH07Cj4+ID4gPiA+Cj4+
ID4gPiA+IEEgY29tcGlsZXIgdGhhdCBkZWNpZGVzIHRvIHJlcXVpcmUgYWxpZ25tZW50IG9mID4g
MiBieXRlcyBvbgo+PiA+ID4gPiBhIHN0cnVjdCBvZiBwYWNrZWQgdTE2J3MgaXMgbGlrZWx5IGJy
b2tlbiBpbiBhIGJ1bmNoIG9mIG90aGVyCj4+ID4gPiA+IHdheXMgdGhhdCBqdXN0IGhhcHBlbiBu
b3QgdG8gdHJpZ2dlciBhIEJVSUxEX0JVRy4KPj4gPiA+ID4KPj4gPiA+ID4KPj4gPiA+ID4gVGhl
IGNvbW1pdCByZWZlcmVuY2VkIGp1c3QgZW5hYmxlcyBidWlsZCBvbiBtb3JlIHBsYXRmb3JtcyAu
Li4KPj4gPiA+Cj4+ID4gPiBPSyBhZnRlciBzb21lIHJlc2VhcmNoLCBpdCBzZWVtcyB0aGF0IHRo
ZSBpc3N1ZSB0cmlnZ2VycyB3aXRoCj4+ID4gPiBsYXRlc3QgZ2NjIHRvby4KPj4gPiA+IFRvIHRy
aWdnZXIgaXQsIHN1cHBseSAtbWFiaT1hcGNzLWdudSBvbiBjb21tYW5kIGxpbmUuCj4+ID4gPgo+
PiA+ID4gRHJvcHBpbmcgIC1tYWJpPWFwY3MtZ251IGZpeGVzIHRoZSBidWlsZC4KPj4gPiA+Cj4+
ID4gPiBJIGFtIHN0aWxsIHJlc2VhcmNoaW5nIHRoaXMgZmxhZy4KPj4gPiA+Cj4+ID4KPj4gPiBJ
cyB0aGVyZSBhIGRpZmZlcmVuY2UgYmV0d2VlbiBfX2FsaWdub2ZfXyAqdnEtPmF2YWlsIGFuZAo+
PiA+IF9fYWxpZ25vZl9fKHN0cnVjdCB2cmluZ19hdmFpbCkgPwo+Pgo+PiBZZXMsIHRoZSBzYW1l
Lgo+PiBJIGZvdW5kIHRoaXM6Cj4+IGh0dHBzOi8vc3RhY2tvdmVyZmxvdy5jb20vcXVlc3Rpb25z
LzQzNzg2NzQ3L3N0cnVjdC1sYXlvdXQtaW4tYXBjcy1nbnUtYWJpCj4+Cj4+IE5vdCBzdXJlIGhv
dyB0byBpbnRlcnByZXQgaXQgLi4uCj4KPiBBaCByaWdodCwgSSBtaXNzZWQgdGhhdCBhcGNzLWdu
dSBpcyB0aGUgYW5jaWVudCBPQUJJIHRoYXQgaXMgYmVlbgo+IGRlcHJlY2F0ZWQgZm9yIGEgbG9u
ZyB0aW1lLgo+Cj4gR2l2ZW4gdGhhdCB2aXJ0aW8gc3VwcG9ydCBvbiBzdWNoIGFuY2llbnQgc3lz
dGVtcyBpcyBub3QgbmVlZGVkIGluIHRoZQo+IGZpcnN0IHBsYWNlLCBsZXQncyBqdXN0IGFkZCBz
b21ldGhpbmcgYWxvbmcgdGhlIGxpbmVzIG9mCj4KPiBkZXBlbmRzIG9uICFBUk0gfHwgQUVBQkkK
Pgo+IHRvIHRoZSB2aXJ0aW8gS2NvbmZpZyBkZWNsYXJhdGlvbiwgYW5kIGFkZCBhIGNvbW1lbnQg
dGhhdCBpdCBoYXMgdG8gZG8KPiB3aXRoIHN0cnVjdCBtZW1iZXIgYWxpZ25tZW50LgoKYXBjcy1n
bnUgaXMgZGVwcmVjYXRlZC4gIFRoZSBwbGFuIGlzIHRvIHJlbW92ZSBpdCBlbnRpcmVseSBpbiB0
aGUgbm90CnRvbyBkaXN0YW50IGZ1dHVyZSBub3cgdGhhdCBhbGwgcGxhdGZvcm1zIHRoYXQgcHJl
dmlvdXNseSB1c2VkIGl0IGhhdmUKbWlncmF0ZWQgdG8gdGhlIGFhcGNzLgoKUi4KSU1QT1JUQU5U
IE5PVElDRTogVGhlIGNvbnRlbnRzIG9mIHRoaXMgZW1haWwgYW5kIGFueSBhdHRhY2htZW50cyBh
cmUgY29uZmlkZW50aWFsIGFuZCBtYXkgYWxzbyBiZSBwcml2aWxlZ2VkLiBJZiB5b3UgYXJlIG5v
dCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBwbGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgaW1tZWRp
YXRlbHkgYW5kIGRvIG5vdCBkaXNjbG9zZSB0aGUgY29udGVudHMgdG8gYW55IG90aGVyIHBlcnNv
biwgdXNlIGl0IGZvciBhbnkgcHVycG9zZSwgb3Igc3RvcmUgb3IgY29weSB0aGUgaW5mb3JtYXRp
b24gaW4gYW55IG1lZGl1bS4gVGhhbmsgeW91LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
