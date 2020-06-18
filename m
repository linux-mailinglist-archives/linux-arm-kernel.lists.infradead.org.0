Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9036F1FF070
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 13:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2C1z6cmLVNgbTWhzLphIwhLwbnSmtdggZ0My7AtSIo=; b=kTn1MjuyZe+3TV
	M4b869wDmWZOT6jzH+N5b7dn3rZkIDemMm6X3GmR0l0nVnejqumD47Hd7qDvxWZIaBs1kYOiZZjV0
	WMSmMKh5/9PW0LiZf5JzVzQDYVkBk5riSd6z+jkZRFwIVsGElCi8zCNSSi9I/IzDQ3TIjMrhWBIfm
	ky4AZRnctmuMRsJu52Rg9Z/yPkKkDNMQcobTw8bQN2yKWPr6qGB7QIdpAxaXLQkpWo0jKyHtSRHMo
	FOvVgmPHL4z74pGTSuLnyEUgDCuInethfKII0zliCvyzDcDLPJEe0GzBDuycjWz1lKxzl07GlgIXQ
	2X+Zrg0lPpiMTJqm4mPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlsdT-0000kj-V4; Thu, 18 Jun 2020 11:23:11 +0000
Received: from mail-eopbgr50042.outbound.protection.outlook.com ([40.107.5.42]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlsdK-0000jp-UV
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 11:23:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTgcgLosVt0MQ8C3nMAvizF/SlKahFZgkmpmAdRnH0s=;
 b=nvESG1acfy8CUt1Q4O/j6d7asP+4EfApHv9YIAGqNsGqx6dpwOnazkmGMxA4okE2v2A6FsowFClTpxTI+5GkngpUiOTVBfMXvrDU9CrCKZw9PmY8C5Cb28bhwj46UkPO1YBuP4iV/kb6wQ3bJKZ/lq2crLh40y4PEOR01Tj0frQ=
Received: from DB3PR06CA0018.eurprd06.prod.outlook.com (2603:10a6:8:1::31) by
 AM0PR08MB4482.eurprd08.prod.outlook.com (2603:10a6:208:140::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Thu, 18 Jun
 2020 11:22:57 +0000
Received: from DB5EUR03FT028.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:8:1:cafe::f7) by DB3PR06CA0018.outlook.office365.com
 (2603:10a6:8:1::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22 via Frontend
 Transport; Thu, 18 Jun 2020 11:22:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT028.mail.protection.outlook.com (10.152.20.99) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22 via Frontend Transport; Thu, 18 Jun 2020 11:22:57 +0000
Received: ("Tessian outbound 13f833fb3c6d:v59");
 Thu, 18 Jun 2020 11:22:57 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a390bb1731c5f051
X-CR-MTA-TID: 64aa7808
Received: from a90f89448e81.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 F4D431B4-7591-4474-AF03-3ACEDA4EC9B3.1; 
 Thu, 18 Jun 2020 11:22:51 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a90f89448e81.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 18 Jun 2020 11:22:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YcezBWaRfQzZDB1ALpaDGq+to6CXaCytIcgiwlTA/v37FeBtxEtnv+SlsISpAzJ3bvxDyn3P0+L5N5DmQto97HR65DfapaTtXhG0qxwMBUmiwlU++hPImD7YOjofiBYWaqZhO4HnV2mlnZUEh81Sq3+mY4u556Z/HXL5bYLlBDHU5sGUS2q0xv5LgTNtff9rsqhNTudmP+rgCOAJEqaOBm0tv/Abv5dE80itNt5gtpWQWohKIWozhbFSOUTKs88PhVpCQiPqdnbmwby1Ek3udMrTzLMDv5xJkpL8PcUd9Q0BQDuJqGbrCg5q+HS1+bcLGab88S3pqJEKtwPEdDTRSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTgcgLosVt0MQ8C3nMAvizF/SlKahFZgkmpmAdRnH0s=;
 b=WdSvngReqn7udbXkYZe9hq3+eZPbk859Sey5xRBLVg6hwiwuZVyc6nqfY5C4CJM63BVD3teIY/fVYV1HLwQfI6L2vyv1J9ySxxcT+x/CzxGWNplIwP9BJRzPfMOxMaQ/WoJMOK4RxGTAGDICJzUdIX/mowcaeFls4rBtkeevnFgxilrb2A6En84I/ug0oXQo81LqA+M/T0f7wp6xHUUa0jzxqqfy9ThLagIsgifa2Zc9hoxaaOosbjDi/vIlpXFkciLGTzS4e4PreJB0ttX+ohyoI+tW1KszRD8kGCqir0eM35zuixZUT+3cRX0qGnpGtKTBytk4bTV6kW8fjqny0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTgcgLosVt0MQ8C3nMAvizF/SlKahFZgkmpmAdRnH0s=;
 b=nvESG1acfy8CUt1Q4O/j6d7asP+4EfApHv9YIAGqNsGqx6dpwOnazkmGMxA4okE2v2A6FsowFClTpxTI+5GkngpUiOTVBfMXvrDU9CrCKZw9PmY8C5Cb28bhwj46UkPO1YBuP4iV/kb6wQ3bJKZ/lq2crLh40y4PEOR01Tj0frQ=
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com (2603:10a6:20b:e7::32)
 by AM6PR08MB4982.eurprd08.prod.outlook.com (2603:10a6:20b:e9::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Thu, 18 Jun
 2020 11:22:49 +0000
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859]) by AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859%7]) with mapi id 15.20.3088.028; Thu, 18 Jun 2020
 11:22:48 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Thread-Topic: Clang miscompiling arm64 kernel with BTI and PAC?
Thread-Index: AQHWQwvIwUPc6Qlv+0K2LxDL7OeqQKjZk5CAgAApjICAAcZoAIAAAz4AgAABv4CAAAstgIAAyXSAgAHiXQA=
Date: Thu, 18 Jun 2020 11:22:48 +0000
Message-ID: <05299121-7B49-43DE-A5DD-8C8FC16A4C72@arm.com>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
 <20200616173728.GC2129@willie-the-truck>
 <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
 <20200616175519.GD2129@willie-the-truck>
 <CAKwvOdm_0W5A+=C0uNfFfU2+wb-f4MA2B_P+15KWdGsBqfZ9rg@mail.gmail.com>
 <20200617063621.vqtplv2l3nnaye22@google.com>
In-Reply-To: <20200617063621.vqtplv2l3nnaye22@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
Authentication-Results-Original: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
x-originating-ip: [2001:4c4c:1b20:6f00:9549:acb8:ec95:efd3]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 38fa6400-005a-4e60-3df0-08d81379f3a4
x-ms-traffictypediagnostic: AM6PR08MB4982:|AM0PR08MB4482:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB4482F6CA1A6D50F2ED1FFEB3EC9B0@AM0PR08MB4482.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0438F90F17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: m/3CppYH9zOU9Kb1+r24WI2FOpKHkMyr5mMLcwwpZWsamNX5BTgXoTt8rZ1JFf76bl1ofTEGI75UR0FIW2Q6O30ZNV/0ST7tPpTrRrdiyN93EHqpYhWUaim4pTzIUNyhT8JFto14TfpQDvSx4je/a91QAMUvm10rruxGqvj+WM4rHhvohgumCwtHxaL4RxWd3xn8/FW5Ip243EPBT2ypkk+bJl0l7NDzX2l5nQCvESp8zqZ0YsBrx+cIB4TuYkVCAOolGeEulLyzGDf/1bvpsm0HgRJMGpp5nR6tGFxOsytRdLhYGrpkbupzEbi0KW4KKJsdJq5g87spaj025unsVbH7NBlbX726mSgu5/SU2fZ3DTZ23k9NqfPnM5UQ8Fxe6NwgMQXMus/sc0J8m27w8g==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB5256.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(39860400002)(396003)(366004)(376002)(346002)(8676002)(33656002)(6512007)(2906002)(4326008)(478600001)(6486002)(5660300002)(8936002)(2616005)(6916009)(966005)(186003)(66476007)(66556008)(91956017)(6506007)(76116006)(54906003)(53546011)(86362001)(66946007)(316002)(36756003)(71200400001)(83380400001)(64756008)(66446008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: gusUeTjY6wIlDLgI2THXYVT7088iNMjRoLHKxxxq7Lerme2K8quQQf/32FjViu7plhLa0qmuY6V3yiD0uC/ZrMnHgWvjiPObNtQ/SPWm3i2oovWp92WFr+AwKX1S5YZpjMs+J8iZ1LQNn/jMAYPkH+cuz0+TfSVrxOOFh79C1klbDRqYiAknMOc4SXykloXNUutPaiLYSTNl/URBnCy6Hqr23AGXrEbON+1vyTuRuE6EpytnuLXAqLlwfSlNYtutwtwb23Sj7bf0P6Xob/a+cQC1YUgzxNDUS1/s9sOs3W04WLxuZDi6GggmqXsx/LYmq4XPAlUPDe8+z2zE7/gW83M/ZbTZiYuTYL8R4sGMn6vJgFf//WERceF/NcPvXafLiVjQStiZPqZT+8dAXdnxIKV8wD99Zqxo+IWTbDAbjSFXaEKOLS4yN1i1AScPREcWB+VEkmd7MZ4JBv1T67fXZuXNLLEA4dnvQfxvYnKN/IJlAL+sJPTIOhcfIn8GF2vyBcFzGtow9OOOSPBRB5Pq92USgiBtgaomw+gAalH3pQslha7Jzv9TjElyCmaoCzQa
Content-ID: <48701183C14AB7488347BBA8FC143902@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4982
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT028.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(346002)(39860400002)(396003)(136003)(46966005)(6506007)(53546011)(86362001)(54906003)(316002)(186003)(26005)(70206006)(70586007)(83380400001)(356005)(36756003)(81166007)(82740400003)(47076004)(82310400002)(6512007)(4326008)(6862004)(2906002)(336012)(8676002)(33656002)(2616005)(966005)(478600001)(6486002)(107886003)(5660300002)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 2f190d88-0a79-48a9-ffa0-08d81379eead
X-Forefront-PRVS: 0438F90F17
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ein3cO9BhxnWw5KbsNr4+XNTbe8Zwc8rqridtHOjeaWwrCiqCPogviyOHbe85gLyh0VfA2G1RUGGRBhAQ48D5/RFSdaC7TipqJv8d9lk0Ar/vOkjzNQgUkUUGS8Z4fpVEMeCR0ALI65Qh9nO21XBgo5ZV8gJcBAw8vNPPJgemWkE18Pr6JY7u8+nqQnsUVB46JRtzh7ocWb9hnZfzG2LZMvjUrn9BHYAAFJ1m9cKXM5RRs8HEt3RUHW/TsIv8SN1pSFo8usnqEXQkCHaUOzfgFJnL+kerQhh6iaO8n6HfF3t/tqGY7bnBeoLDzM9IC9T6G+GH0og4jilLZIIxkncDJuDuBa8zaDr+RA7pGKZLgIXPfH85eQymJt1zz06VG5g9Z6bAkLdTITWClIHMRUJZ+J6nHj2LPEgflKKuOojKEqr0AmViPaUM2r0VbIl+1jj8+tw1jwqOg6Y7QuZfkiHkg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2020 11:22:57.2463 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 38fa6400-005a-4e60-3df0-08d81379f3a4
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4482
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_042303_045952_F2E54974 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Fangrui Song <maskray@google.com>,
 Tom Stellard <tstellar@redhat.com>,
 "android-kvm@google.com" <android-kvm@google.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Mark Brown <broonie@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

v5.8rc1 compiled with the patched llvm 10.0.01(dc94773a91c85a05f4f249153cb1e9522b3beb5e).
The function you reported now looks good to me.

Thanks,
Daniel

0000000000006ae8 kvm_vm_ioctl_check_extension_generic:
    6ae8:       e8 03 00 aa     mov     x8, x0
    6aec:       3f 84 02 f1     cmp     x1, #161
    6af0:       20 00 80 52     mov     w0, #1
    6af4:       8c 01 00 54     b.gt    #48 <kvm_vm_ioctl_check_extension_generic+0x3c>
    6af8:       29 0c 00 d1     sub     x9, x1, #3
    6afc:       3f dd 01 f1     cmp     x9, #119
    6b00:       e8 02 00 54     b.hi    #92 <kvm_vm_ioctl_check_extension_generic+0x74>
    6b04:       0a 00 00 90     adrp    x10, #0
    6b08:       4a 01 00 91     add     x10, x10, #0
    6b0c:       8b 00 00 10     adr     x11, #16
    6b10:       4c 69 69 38     ldrb    w12, [x10, x9]
    6b14:       6b 09 0c 8b     add     x11, x11, x12, lsl #2
    6b18:       60 01 1f d6     br      x11
    6b1c:       9f 24 03 d5     bti     j
    6b20:       c0 03 5f d6     ret
    6b24:       3f 88 02 f1     cmp     x1, #162
    6b28:       a0 ff ff 54     b.eq    #-12 <kvm_vm_ioctl_check_extension_generic+0x34>
    6b2c:       3f d8 02 f1     cmp     x1, #182
    6b30:       60 ff ff 54     b.eq    #-20 <kvm_vm_ioctl_check_extension_generic+0x34>
    6b34:       3f a0 02 f1     cmp     x1, #168
    6b38:       21 01 00 54     b.ne    #36 <kvm_vm_ioctl_check_extension_generic+0x74>
    6b3c:       60 00 80 52     mov     w0, #3
    6b40:       c0 03 5f d6     ret
    6b44:       9f 24 03 d5     bti     j
    6b48:       00 40 80 52     mov     w0, #512
    6b4c:       c0 03 5f d6     ret
    6b50:       9f 24 03 d5     bti     j
    6b54:       00 00 82 52     mov     w0, #4096
    6b58:       c0 03 5f d6     ret
    6b5c:       9f 24 03 d5     bti     j
    6b60:       3f 23 03 d5     paciasp
    6b64:       fd 7b bf a9     stp     x29, x30, [sp, #-16]!
    6b68:       fd 03 00 91     mov     x29, sp
    6b6c:       e0 03 08 aa     mov     x0, x8
    6b70:       00 00 00 94     bl      #0 <kvm_vm_ioctl_check_extension_generic+0x88>
    6b74:       00 7c 40 93     sxtw    x0, w0
    6b78:       fd 7b c1 a8     ldp     x29, x30, [sp], #16
    6b7c:       bf 23 03 d5     autiasp
    6b80:       c0 03 5f d6     ret

> On 17 Jun 2020, at 08:36, Fangrui Song <maskray@google.com> wrote:
> 
> 
> On 2020-06-16, 'Nick Desaulniers' via Clang Built Linux wrote:
>> On Tue, Jun 16, 2020 at 10:55 AM Will Deacon <will@kernel.org> wrote:
>>> 
>>> On Tue, Jun 16, 2020 at 10:49:04AM -0700, Nathan Chancellor wrote:
>>> > On Tue, Jun 16, 2020 at 06:37:28PM +0100, Will Deacon wrote:
>>> > > On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
>>> > > > On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
>>> > > > > On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
>>> > > > > > ([AArch64] Fix BTI instruction emission) should fix this, it's been
>>> > > > > > reviewed so should be merged shortly.
>>> > > > >
>>> > > > > Cheers, that's good to hear. Shall we have a guess at the clang release
>>> > > > > that will get the fix, or just disable in-kernel BTI with clang for now?
>>> > > > >
>>> > > >
>>> > > > This will be in clang 11 for sure. Tom, would it be too late to get this
>>> > > > in to clang 10.0.1? If it is not, I can open a PR.
>>> > >
>>> > > Any update on this, please? I'd like to get the kernel fixed this week.
>>> > >
>>> > The AArch64 backend owner said it should be okay to add to 10.0.1:
>>> > https://llvm.org/pr46327
>>> >
>>> > Tom just needs to pick it, I see no reason to believe that won't happen
>>> > this week.
>>> 
>>> Brill, then I'll tentatively queue the diff below...
>>> 
>>> Thanks,
>>> 
>>> Will
>>> 
>>> --->8
>>> 
>>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>>> index 31380da53689..4ae2419c14a8 100644
>>> --- a/arch/arm64/Kconfig
>>> +++ b/arch/arm64/Kconfig
>>> @@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
>>>        depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
>>>        # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
>>>        depends on !CC_IS_GCC || GCC_VERSION >= 100100
>>> +       # https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
>>> +       depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
>>>        depends on !(CC_IS_CLANG && GCOV_KERNEL)
>>>        depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>>>        help
>> 
>> That should be fine.
>> Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> 100001 is fine.
> 
> Tom has merged it into release/10.x
> https://github.com/llvm/llvm-project/commit/bf89c5aeb8915d488fa1c790e1b237b62a49c01f


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
