Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7638585E38
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7TRQPidPoA+rS7BfwDu6VIg3h7JNFcSz2TMOe+za3E=; b=uCUngfS3uz/9IH
	qie63d1fNJWr7/rvkK0pmrXjehCSwTDwFKsbKLliReiXsBZ1xBS/V+A+pKLbK0/XpqgsBmjgVq1vi
	DEfSIBJpieGm0NgmisRiQtYjl68aTDqWuQBx6JylD7X0zF94LURg0TuC5stOlFNpbDdhftGiFXDdY
	bVF84cLUYHwXbWvjXR/sCTqt8aaYw2mS64ijZG+zyIhIpMx2xu5BvszQfxspU0rq5mVlDWyEiXTg5
	GeYIUyecdTb1H4E7LL0OxoxuLi6q9T1yaAxEz2dH7upNxlIrTuwgkCHXW0kTjnpz8AHi7404/i+EL
	0HHgs4Bwjk6RYBFga+HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvegj-0003IP-3w; Thu, 08 Aug 2019 09:26:25 +0000
Received: from mail-he1eur01on0622.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::622]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvegT-0003Ht-2O
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:26:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PWmUXu6Z3ulF6zBDue55trNJhyLyULxjqTZ0CFENnAg=;
 b=EUW+HhMayIBSviMC+kpY+z/6ceGR6/DKFT642p/iDzJV/wj9//nfEdKssK28m4dBxxPoyjzVkyXdFS2Ey61xQy64dqmJvbnpCmu6sTpmb+jQdAOX7A502gyEYKz7yNMicscq/zG75dhCflCj3gIhmU6oWJ/YYJZzHJypqP220cM=
Received: from VI1PR08CA0115.eurprd08.prod.outlook.com (2603:10a6:800:d4::17)
 by AM0PR08MB4945.eurprd08.prod.outlook.com (2603:10a6:208:157::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.14; Thu, 8 Aug
 2019 09:26:03 +0000
Received: from VE1EUR03FT008.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::202) by VI1PR08CA0115.outlook.office365.com
 (2603:10a6:800:d4::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.15 via Frontend
 Transport; Thu, 8 Aug 2019 09:26:02 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT008.mail.protection.outlook.com (10.152.18.75) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Thu, 8 Aug 2019 09:26:01 +0000
Received: ("Tessian outbound 71602e13cd49:v26");
 Thu, 08 Aug 2019 09:25:55 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: d7cb0969aa170b39
X-CR-MTA-TID: 64aa7808
Received: from 0c6d593ab3bc.2 (cr-mta-lb-1.cr-mta-net [104.47.13.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 55948023-1D86-4AFD-9B76-7F5F0D2AB9A6.1; 
 Thu, 08 Aug 2019 09:25:50 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2051.outbound.protection.outlook.com [104.47.13.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 0c6d593ab3bc.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Thu, 08 Aug 2019 09:25:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HSKjV8eo7xrv3vuSLqaVy78hFjzs5Zs1WLlrwFzgF9I6Wj6mSZN/6aaGrbzoWvksFyeOxjw3n6z+nfEbQk5BAuUbb1GOpNa2y6lZxz8DD+8RUQOdx9xnO+5D5puaO2YoBABSBrBwfBSAuDWyNNgidRfoA7Yp50jJSv4R0Sq5Hbqw4HERRMpDoTso3Dc8yQ9NYLm1Za2o27+JVwC7Ci+V8lxS7fSjLn7iNNw16fCFDSXUvijZOnOmSV5QQKLO6OAkrJmZeVGafZW57hXe0zPP//LEM/Mfe9MGTe7WI7JBYKZitMkJugIwfpoJWjjhVIssFLGOMxzGHHP/zwQBnFRIZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PWmUXu6Z3ulF6zBDue55trNJhyLyULxjqTZ0CFENnAg=;
 b=ZLD9krQtJuYnmkbEdR6ta+GNK9fmfyL2qYEV2hqvORK7FDdD7+/FcxIhAg/EnR0dppT6UgM16xjhLeK/iLwr/BgavIFtxHWOwHpSWWYV1SUfQu9J8tDzjhzDinRV7cDpIKpXPPcIhtxwXdGHMkfmAu2QsF9jkeKg7/96S5tLz5rrie9etrqJjdyfk7W9HdinpMY22A+UY/VWtwL5yxoS0h8DdHUv94a2Ug5OdCiwyMBCuf28VDEM2Q0DTGNOn7MZRDJJWtN8obDKDnu81zmjwLX+jJc9p8PeMr8PBsUfU+x4h/oaruP5NosxWadfqF9y8qKwG4Wf7eoaPBqO45hnfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PWmUXu6Z3ulF6zBDue55trNJhyLyULxjqTZ0CFENnAg=;
 b=EUW+HhMayIBSviMC+kpY+z/6ceGR6/DKFT642p/iDzJV/wj9//nfEdKssK28m4dBxxPoyjzVkyXdFS2Ey61xQy64dqmJvbnpCmu6sTpmb+jQdAOX7A502gyEYKz7yNMicscq/zG75dhCflCj3gIhmU6oWJ/YYJZzHJypqP220cM=
Received: from AM4PR0802MB2307.eurprd08.prod.outlook.com (10.172.219.8) by
 AM4PR0802MB2161.eurprd08.prod.outlook.com (10.172.216.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Thu, 8 Aug 2019 09:25:47 +0000
Received: from AM4PR0802MB2307.eurprd08.prod.outlook.com
 ([fe80::e854:32de:1cad:f93a]) by AM4PR0802MB2307.eurprd08.prod.outlook.com
 ([fe80::e854:32de:1cad:f93a%9]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 09:25:47 +0000
From: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To: Dave Hansen <dave.hansen@intel.com>, Catalin Marinas
 <Catalin.Marinas@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v7 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
Thread-Topic: [PATCH v7 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
Thread-Index: AQHVTThJtBlc8zHC8EmoKLcy3EHPqqbwJaMAgADWb4A=
Date: Thu, 8 Aug 2019 09:25:47 +0000
Message-ID: <48c5f9b3-d253-bede-e755-0aabba2757b5@arm.com>
References: <20190807155321.9648-1-catalin.marinas@arm.com>
 <20190807155321.9648-2-catalin.marinas@arm.com>
 <826a9ace-feac-c019-843e-07e23c9fd46c@intel.com>
In-Reply-To: <826a9ace-feac-c019-843e-07e23c9fd46c@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [217.140.106.55]
x-clientproxiedby: LO2P265CA0217.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::13) To AM4PR0802MB2307.eurprd08.prod.outlook.com
 (2603:10a6:200:61::8)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: a0e70460-4ff8-468e-ecb3-08d71be26da5
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM4PR0802MB2161; 
X-MS-TrafficTypeDiagnostic: AM4PR0802MB2161:|AM0PR08MB4945:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB494591E4444C30126A95CDC5EDD70@AM0PR08MB4945.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:5236;OLM:5236;
x-forefront-prvs: 012349AD1C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(366004)(39860400002)(54094003)(199004)(189003)(6512007)(52116002)(53936002)(86362001)(25786009)(7736002)(99286004)(71190400001)(71200400001)(476003)(36756003)(102836004)(386003)(53546011)(6506007)(44832011)(256004)(486006)(4326008)(6246003)(76176011)(2616005)(11346002)(446003)(186003)(5660300002)(26005)(66946007)(66476007)(66556008)(64756008)(66446008)(31696002)(2501003)(6116002)(14454004)(65806001)(65956001)(66066001)(3846002)(65826007)(478600001)(6486002)(81156014)(81166006)(2906002)(54906003)(110136005)(316002)(58126008)(229853002)(305945005)(64126003)(8676002)(6436002)(31686004)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR0802MB2161;
 H:AM4PR0802MB2307.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: kAQ/NcX1v7sXRgpyyyNJZO/B0kZE/8IxEJH6DBs6ZzZ4jOpflqQFaW1n/5gg1IgHZ/RuWIBFK9Wls04AmYnyjJi3XlpNsuqeJ1vNmVkieYu/x5VtoZFCKTIUdUCahah90rLVx2bfmiowjz6+gVFEobszH/k2YWYJBdoPRT8jp+xzUpJ0fHer3GJVm6FFbMBCFrCBY5sP5iJ1PxX8okJs9zxCUCzoukY55IGVk+u24lZminPg6mdJ52j3B94I3mRvRD1gAn+W4ZEphyeAWuNB+s75+OWalyPQqhfysIJ9adn3oiYHq12ZVgdsYyVxw4PgbCqvVtk66CRaej92QasGdv0oU4kSa3rjCJUDBxMaPu7vVq8vtGmFN7lYUdIKsJht7A6oK+btq4piRwBASokXW2DZrc91qvLYB+6fkwUMu5k=
Content-ID: <960F9790878B3346A988307D90E92E55@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0802MB2161
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT008.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(39860400002)(2980300002)(199004)(189003)(54094003)(86362001)(6246003)(107886003)(8936002)(31686004)(6512007)(31696002)(6486002)(14454004)(65826007)(6506007)(64126003)(229853002)(26826003)(478600001)(7736002)(102836004)(305945005)(386003)(99286004)(26005)(53546011)(2501003)(186003)(76176011)(23676004)(2486003)(110136005)(476003)(2616005)(63370400001)(11346002)(336012)(356004)(58126008)(126002)(446003)(54906003)(3846002)(63350400001)(50466002)(436003)(36906005)(486006)(22756006)(6116002)(4326008)(47776003)(5660300002)(65806001)(65956001)(66066001)(316002)(81166006)(25786009)(8676002)(36756003)(2906002)(81156014)(76130400001)(70586007)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4945;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 92843451-54da-426b-674f-08d71be26534
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(710020)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR08MB4945; 
NoDisclaimer: True
X-Forefront-PRVS: 012349AD1C
X-Microsoft-Antispam-Message-Info: gSDPrPLaeDgudYMy4xUbZWOJWnp/opgpQs8+4ZVZpEU/MRILBK1q0H9iJ1sjNJ2mVP3Y4VxCiNQ+FFgA/BW7gm5mqxrFoLk/2ibiTlT+6NPx3Vel5B9h1LgShdjv4V6goKWDSvzrSUjCPPZSLj0kFiW2H9eN6ajNTPv+Tm1latj/ocvxPYLdgBMpZftH8wgqjG3ZX/iTxnnvbe0229IZZvWMjNWDQVumV+GbHdJmceCByOGdDfSniMaCiyae5dgaVX1Xu4FoA33wB3ztffdUM1wAPkZq4TXvC9xkHoRhOjsQPG/OTPWkjwhs1m+XUCUGjM3IEffhr9PYwugv4cjeemdah4nUMbQl2wuYKOHvpdEL9V6Amc5NIKfUeLNFUo75ebN2/7wj4zgIOL5Jo6N4Jt62XD1ZRI+/3pzmQ+Ub+Gg=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2019 09:26:01.1032 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a0e70460-4ff8-468e-ecb3-08d71be26da5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4945
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_022609_176966_D6811505 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:622 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Will
 Deacon <Will.Deacon@arm.com>, nd <nd@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/08/2019 21:38, Dave Hansen wrote:
> On 8/7/19 8:53 AM, Catalin Marinas wrote:
>> +- The syscall behaviour is undefined for non valid tagged pointers.
> 
> Do you really mean "undefined"?  I mean, a bad pointer is a bad pointer.
>  Why should it matter if it's a tagged bad pointer or an untagged bad
> pointer?

bad pointers are invalid, but some non-bad pointers are
also invalid if they are tagged (e.g. tagged pointer to
device memory?) those may be valid to dereference in
userspace but don't work across the syscall abi (device
driver does not handle the tag?).

>> +- mmap() addr parameter.
>> +
>> +- mremap() new_address parameter.
> 
> Is munmap() missing?  Or was there a reason for leaving it out?

the new address in mmap and mremap may not be currently
mapped, other m* functions operate on existing mappings
(munmap, madvise, mprotect, mlock,...)

although by this logic brk (and related PR_SET_MM_*)
should be excluded here too.

>> +- prctl(PR_SET_MM, ``*``, ...) other than arg2 PR_SET_MM_MAP and
>> +  PR_SET_MM_MAP_SIZE.
>> +
>> +- prctl(PR_SET_MM, PR_SET_MM_MAP{,_SIZE}, ...) struct prctl_mm_map fields.
>> +
>> +Any attempt to use non-zero tagged pointers will lead to undefined
>> +behaviour.
> 
> I wonder if you want to generalize this a bit.  I think you're saying
> that parts of the ABI that modify the *layout* of the address space
> never accept tagged pointers.

something like that, but i think this is hard to specify
in a generic way.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
