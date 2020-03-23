Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E8818FAC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 18:04:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fraT7VcZVs/uOwxIRzwvac1zXEIUqbW6odEEjwgjTC0=; b=UR/01iBRJcJqzR
	sP8SpwAIWkspGXs4rc2N2PMObpzekN/Ev9uMo8hI/dmzIICIktqJl6uFyilSfA2wmuNHZVARxBoIQ
	3jIt4aSodt3EPEVXh65i0OxNcxBC0hYuR1Zyw6FFQ13X8IAQ6LCeFTQ5hnOyHG30Kq1wO61jdjqnw
	1SKebCTfUOTqwZ+HKE+hHxtMnYHoBhABFlFBmd+RQmuGBJNZMBES8eZXkG62z8t1lWXsLf8Zjm9Rk
	hQEvmEucBlYMfT1i7zaz7SRDZxmGDX1DtHbbaLAfqaBTGALQKh/F1+zMBXPNI0zkUCm3GsXUUm4BG
	9W8R65HZoB+RrW7eapvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQVL-0005qs-5v; Mon, 23 Mar 2020 17:04:47 +0000
Received: from mail-db8eur05on2060.outbound.protection.outlook.com
 ([40.107.20.60] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQVC-0005q7-Hg
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 17:04:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NWqNOpldNI8lmkTV9aYwdjJxzfwBYivcekP/WNoRWCw=;
 b=xfjLTwm1igvKNBc9zOK80XkCA2CZBynP88QKGf499PstTVlk2kl4gqLEmZctegZtAG4cVaNXWWDMam4U9rm+W349HdtGZROVmO7voxVfSEILYRU2oNRun6ya6sw3tRO/sPX0SGWauu03gM8foPNsCI1G2PmsyFfKMfFF7HpL+gk=
Received: from DB6PR0601CA0047.eurprd06.prod.outlook.com (2603:10a6:4:17::33)
 by HE1PR08MB2939.eurprd08.prod.outlook.com (2603:10a6:7:33::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Mon, 23 Mar
 2020 17:04:28 +0000
Received: from DB5EUR03FT045.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:17:cafe::1) by DB6PR0601CA0047.outlook.office365.com
 (2603:10a6:4:17::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.15 via Frontend
 Transport; Mon, 23 Mar 2020 17:04:27 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT045.mail.protection.outlook.com (10.152.21.164) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Mon, 23 Mar 2020 17:04:27 +0000
Received: ("Tessian outbound 2fd788417c13:v48");
 Mon, 23 Mar 2020 17:04:27 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5262860ae4363fda
X-CR-MTA-TID: 64aa7808
Received: from 6dd23b8b0b02.3
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 84141459-6570-46D4-915E-6DE62B459D70.1; 
 Mon, 23 Mar 2020 17:04:21 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 6dd23b8b0b02.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 23 Mar 2020 17:04:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pwry8J/uLtgkS/b6K3HvjH90HfllXlYzPb+Hfq+KKeoONz46jKdDzTwy6QPo7aMHLohryuTKhHgpyD5Y18Jct2wH+Y12nV3e2qV+o+Wao5uQkHfZlNXu8kWZr29UAUhh7DQJyvvFOXOI9QMUht5UNDynNifsbZS6R600I8XBWJhYEZSkar3yBam5Lu2kGxzCMuiAdpprh5Ogb5OM6FXvXDH2gXE/uauFBDm+Uh/7efCR1kmLtyKvfixsGyfRI3tkD7JRaKBDYIOoIt87HEo895n1bbIipSvrx6yNaxELz3fg25JWO3AChgLj+t3Yq8l0VX9zyBEjvnZrZjhGM4Y+wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NWqNOpldNI8lmkTV9aYwdjJxzfwBYivcekP/WNoRWCw=;
 b=BM8iYn2mKrTjzsFjoEv/uK4aDKGJY+z8pRmf8oYE7m/JnE8NiE8eaPwib3lS7bEoQfh5+uWL2wG7+deVJ8L2RgYSAASZlioMdH0sdC3lA45DlaY9kWFQ2XZ6p8ldVdq2nwadnDJMG02KQS7BGNkPDjdMTTn+hJKCMcZvsZpkEDHfmweAXlvJllLSslnW3lBEsoLfww/rL+cUEK6u5dHvMgYw0Ge+F+E4sHTb2iZtXj3o9zu+0yjwKi4es0mebocE39mf7Vt7mZnbH1YsBGD9MIaW63XFjvYzWppNixO92BUyR3NhAyP7F2KzAqPbz8/AFYOSVzsGygVaRo+UHKgBCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NWqNOpldNI8lmkTV9aYwdjJxzfwBYivcekP/WNoRWCw=;
 b=xfjLTwm1igvKNBc9zOK80XkCA2CZBynP88QKGf499PstTVlk2kl4gqLEmZctegZtAG4cVaNXWWDMam4U9rm+W349HdtGZROVmO7voxVfSEILYRU2oNRun6ya6sw3tRO/sPX0SGWauu03gM8foPNsCI1G2PmsyFfKMfFF7HpL+gk=
Received: from AM6PR08MB4040.eurprd08.prod.outlook.com (20.179.0.83) by
 AM6PR08MB4503.eurprd08.prod.outlook.com (20.179.18.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.19; Mon, 23 Mar 2020 17:04:19 +0000
Received: from AM6PR08MB4040.eurprd08.prod.outlook.com
 ([fe80::ad1f:9759:7046:b508]) by AM6PR08MB4040.eurprd08.prod.outlook.com
 ([fe80::ad1f:9759:7046:b508%7]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 17:04:19 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: Re: [arm64:for-next/kernel-ptrauth 16/18] aarch64-linux-objdump:
 warning: fs/squashfs/decompressor_multi.o: unsupported GNU_PROPERTY_TYPE (5)
 type: 0xc0000000
Thread-Topic: [arm64:for-next/kernel-ptrauth 16/18] aarch64-linux-objdump:
 warning: fs/squashfs/decompressor_multi.o: unsupported GNU_PROPERTY_TYPE (5)
 type: 0xc0000000
Thread-Index: AQHWAQkGvqE5PP8B6k6ONpvKMy6FMKhWaByA
Date: Mon, 23 Mar 2020 17:04:19 +0000
Message-ID: <7813B650-5586-4A55-B846-556C2A641B1C@arm.com>
References: <202003211202.2NuTbuJb%lkp@intel.com> <20200323114837.GA4892@mbp>
In-Reply-To: <20200323114837.GA4892@mbp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.60.0.2.5)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Daniel.Kiss@arm.com; 
x-originating-ip: [2001:4c4c:1b20:6ff0:4874:34a4:ea85:b33e]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 312e1d35-a763-4240-f2f6-08d7cf4c3ea7
x-ms-traffictypediagnostic: AM6PR08MB4503:|AM6PR08MB4503:|HE1PR08MB2939:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <HE1PR08MB2939348701EB0C84C863920FECF00@HE1PR08MB2939.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:110;OLM:10000;
x-forefront-prvs: 0351D213B3
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(136003)(346002)(376002)(199004)(316002)(66476007)(5660300002)(6512007)(6862004)(53546011)(4326008)(6636002)(36756003)(6506007)(66556008)(86362001)(186003)(33656002)(2906002)(76116006)(2616005)(66446008)(91956017)(64756008)(66946007)(966005)(71200400001)(54906003)(81166006)(8936002)(478600001)(81156014)(37006003)(8676002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB4503;
 H:AM6PR08MB4040.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: h2X4i0y1r8a2N2qlyIBh/d2EQ7Dn8d9gnnNPtbXTTUbr5l5xohvEmuS/AaOVPK3jPKngCesRNBMeopWtr8o12G/J4US3896kD/dkPMc5wjkK6rpktQCQL2VqFzLGsix0y3CLngMCPTfe45sh5tbpJKf38ns0YCDk8sPcxy9dCgKbk4X5OHOZ/Z7mrUwZrYwou/MEw76AqWXdsbODSrYFfDkXPqI0N0H0Hr4i3KmqRe4kZuU+Q4y1GL307YKJN1dKCjXsPRTr1zy1G+v7xQ7Ttr54HIA71fbByfmR+YreDxPwKEYm6uPn5Qj7dbD/1nLvPqfnynDi0MsPjxQNw3Ri5uSRd9lZm+0VoN0SmSw2vdV9NrOTqP0+du6NKLr0yWONkKYbMgKpLIK/0L06uV7QjwXa59/U9hOFGfRLFGGHVV/GerUlPrHnQlc90G2ZWQuLS+WQNeIdq8Uk/quADrsQkh4LE/4A8PRCjJTzVdDqPFFKgx3pqOVVJ7pvDeAEjCwrj+tiwnISOz4gCdCuBAuMqw==
x-ms-exchange-antispam-messagedata: R1IHFMiA9pM58KMHcuBab2+r3xrKNOg5tbryn508gYiBDNknyAELhXy1b60IkYtPmr2qRB5a/O6q88Ys0ffbWqaPu6pj9iphiT7trYsI2fCHwDubplSa7LmEc92pi0eyNImUMyY+11BGGZ4fIAaZ5MICryrZ62vpS7Yw4T38EqoUXIHXyfAiq6PuyF72CFbCyskdMKj5ClzJ2UWM1jNtjg==
Content-ID: <1113ECDA0C03E14FA020FF0A4849529A@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4503
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Daniel.Kiss@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT045.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(136003)(39860400002)(199004)(46966005)(53546011)(2906002)(6506007)(186003)(26005)(316002)(37006003)(54906003)(36756003)(336012)(70586007)(70206006)(6486002)(86362001)(4326008)(6862004)(5660300002)(2616005)(6512007)(356004)(6636002)(81166006)(81156014)(8936002)(478600001)(966005)(26826003)(47076004)(33656002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR08MB2939;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 975dea53-1367-40aa-5384-08d7cf4c3a4b
X-Forefront-PRVS: 0351D213B3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QOJqXseaKrme/cMcuePofn6E9nReKCYitmszWDv+76zx/sy1IVOoWg2trdscqD0YaMsRtGqR1O7CPLkxXmju7+ItDbiCdo8LdV+E8wIVj4aZsAyab2eJeyRX4ilNSZqzL+sB9JUWJKCaEx8cCHIdDn4KKJLbczMDnfcxM84OOTp/DK8BjVsDH5s1Jc5pc42yEe3FL32BwhnNSkrIwgMGGwcpEqrUq7smhMT6bBwopkewgSVgeoXXGSjtkJfW1V0kTjr4akQ8zLpNPpZ3ISWq0YELcQTDep+7JmzCiylhz50PABj76REty7NY//Q/ksGUMqNHJgc1tRc0YBa3HySyd8qVoimTPsgbadvhBLi4xQj6kpnv288Cm7qCBxwMiT+Tf+d0spSvLA6S3lAic7fHKd2/KCTYUFc7gq7QzhSOxWUn0TxHtdDTezfwRVkBv5/6kkYpIWYgdrOXwWEqLCQ+6jcksn2/TRGMwAM/inuZUgHDGNdo8yq47zdTfN3mOSQ4efQRAWUCwrL84m4C/r+64uPXLOXi7x8zC90TbnqmV0xp7KSBy3DbiFkN6b1Uh/A75fkyQtRZi0gt1e0mT2Xwnw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2020 17:04:27.1792 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 312e1d35-a763-4240-f2f6-08d7cf4c3ea7
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR08MB2939
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_100438_645497_915C7D7E 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Kees Cook <keescook@chromium.org>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Kristina Martsenko <Kristina.Martsenko@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> On 23 Mar 2020, at 12:48, Catalin Marinas <Catalin.Marinas@arm.com> wrote:
>
> On Sat, Mar 21, 2020 at 12:28:06PM +0800, kbuild test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/kernel-ptrauth
>> head:   3b446c7d27ddd06342901bb35211363f6944291a
>> commit: 74afda4016a7437e6e425c3370e4b93b47be8ddf [16/18] arm64: compile the kernel with ptrauth return address signing
>> config: arm64-randconfig-a001-20200321 (attached as .config)
>> compiler: aarch64-linux-gcc (GCC) 9.2.0
>> reproduce:
>>        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>        chmod +x ~/bin/make.cross
>>        git checkout 74afda4016a7437e6e425c3370e4b93b47be8ddf
>>        # save the attached .config to linux build tree
>>        GCC_VERSION=9.2.0 make.cross ARCH=arm64
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> aarch64-linux-objdump: warning: fs/squashfs/decompressor_multi.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>> --
>>>> aarch64-linux-objdump: warning: drivers/gpio/gpio-bt8xx.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>
> Just to make sure I understand the cause of this warning: gcc generates
> a .note.gnu.property when PAC is enabled for the kernel but binutils
> doesn't understand it.
This is my understanding as well.

> Is there a way to check for this via the Kconfig
> options?
Maybe a version check on binutils could help here.

Cheers,
Daniel

> --
> Catalin

IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
