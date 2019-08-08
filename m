Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17119866E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGtTXg0ZQg3dNqei/fDVPbqrx7IeDsEA8YwWWNvZn9U=; b=SfdNIkXZu9TYT2
	Hd97fqnsVZbKobwFMVX4OmSCd/0Ctv9C4pJhKpR5eI8bGxmzBYxEoyJRYZ9tM7IYoEp2Zwll8ehKF
	5BFsHXY3+g0/+7XgqpfK4anwHbMHS6eIqL/DotqiJqksemaxagmMqTC++GZ6N3hIHbXNL+fb3nf0Z
	ddaLInt6IDe9vlReCCbTqH+V9tBqXqTmOizaIWmsCxPrPO+dzFoO+0+kjUJTs1z/L5HZg1biAw8lK
	71A/WcGPSPpMauvzWK6V40zYjeKB4fOg87MnylQIa5Otc9FghivXb+QhrhXCd1iT/Q6jVPsn6ap67
	krnFTWV6cbYNGTwU68ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlAG-0000WU-59; Thu, 08 Aug 2019 16:21:20 +0000
Received: from mail-db3eur04on0616.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::616]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlA3-0000Pp-N6
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:21:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qLBJoVDzH7bMp2WAajmt3aFLPL3zQ+436nv7X4WHpf0=;
 b=8H3lNv9fejtPxAELuF4qA22OPAEvPOYeee9Oh1gEEmks+Y4+pHPHpS1HtraELj0DOc2BsmsTMLM2meEDQqXKVkaPJAZJ7xqaoDnWBnUzeqUKXYpBGY9mkmBuL/PH1N4vHvpzE4E4U6dLC+wAzHPxaTNx52O6ZwXUqIHQlPdPek0=
Received: from VE1PR08CA0006.eurprd08.prod.outlook.com (20.179.29.19) by
 HE1PR0802MB2602.eurprd08.prod.outlook.com (10.175.36.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Thu, 8 Aug 2019 16:21:03 +0000
Received: from VE1EUR03FT055.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::205) by VE1PR08CA0006.outlook.office365.com
 (2603:10a6:803:104::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.14 via Frontend
 Transport; Thu, 8 Aug 2019 16:21:02 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT055.mail.protection.outlook.com (10.152.19.158) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18 via Frontend Transport; Thu, 8 Aug 2019 16:21:01 +0000
Received: ("Tessian outbound a1fd2c3cfdb0:v26");
 Thu, 08 Aug 2019 16:20:59 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 777faca64e48032d
X-CR-MTA-TID: 64aa7808
Received: from f716b1a1155c.1 (cr-mta-lb-1.cr-mta-net [104.47.2.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 E476E1F2-1D6D-490A-8B3B-217DD1E4BE2B.1; 
 Thu, 08 Aug 2019 16:20:54 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur01lp2055.outbound.protection.outlook.com [104.47.2.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f716b1a1155c.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Thu, 08 Aug 2019 16:20:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=apJbbjum2mtrUhDRndiMh2/xJ6PbIAwlQ41b0dMroI5KtEEpw9fwAeKGscJ9uQ4RiJbS4oVGzJ61Bhb3vwX2na8eizvEZoY8pkTYyHekD35ODgjgUqt/xaTdYZzeh2go/cZgeutcblvrM5MM4D7BHIx8OAt9SfBGJrEiDlGAyF1OL7oAmJpt/BhSWMTlMI4D/8qpG7qR2gD2LSy3l3LORjZRyelW2/UF6Jq6nYMkeP9sj+hFHCMkCW28Vynwy0jP28h31WQU8seiJibzbQO0y7pJ2OuYnOqcfnolHnIUIlmn/TGRkzsPNEEouIJA1tSrv00t42qd+QZ8Xgyts9Lqmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qLBJoVDzH7bMp2WAajmt3aFLPL3zQ+436nv7X4WHpf0=;
 b=PqKDFCAQ1BkSxQxy4hB3Uid9e1tbIQNUD9xb5rTFAHxBA9xXPiauBXKqYiJ6kHBCL6cV+26p3/371s7204gIYtVottxqAE56elJ/dk2/c45rSAebkL4zGflRv8xs5x2iSsKi5eUs08cohOSb8x73DHAox0Z3RcWKN9I7sYrBd8seEHYiD0vo1hdqPopvg1Ss+X7cnrSCiN0tnOLFijRhupGeWQTqoHHkVhkdDRnFfquAvn40L/mRRsEQpGDWEDnURaNosOICnZuy0c9h6BR6D36BhoRD9N96AUt/YFMP7LB0ZOlpi+hJEZEPAdl30jpE5oj5zMULbFOcPb+hQiN6xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qLBJoVDzH7bMp2WAajmt3aFLPL3zQ+436nv7X4WHpf0=;
 b=8H3lNv9fejtPxAELuF4qA22OPAEvPOYeee9Oh1gEEmks+Y4+pHPHpS1HtraELj0DOc2BsmsTMLM2meEDQqXKVkaPJAZJ7xqaoDnWBnUzeqUKXYpBGY9mkmBuL/PH1N4vHvpzE4E4U6dLC+wAzHPxaTNx52O6ZwXUqIHQlPdPek0=
Received: from AM4PR0802MB2307.eurprd08.prod.outlook.com (10.172.219.8) by
 AM4PR0802MB2226.eurprd08.prod.outlook.com (10.172.215.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.15; Thu, 8 Aug 2019 16:20:51 +0000
Received: from AM4PR0802MB2307.eurprd08.prod.outlook.com
 ([fe80::e854:32de:1cad:f93a]) by AM4PR0802MB2307.eurprd08.prod.outlook.com
 ([fe80::e854:32de:1cad:f93a%9]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 16:20:51 +0000
From: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To: Dave Hansen <dave.hansen@intel.com>, Catalin Marinas
 <Catalin.Marinas@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v7 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
Thread-Topic: [PATCH v7 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
Thread-Index: AQHVTThJtBlc8zHC8EmoKLcy3EHPqqbwJaMAgAFKZ4A=
Date: Thu, 8 Aug 2019 16:20:51 +0000
Message-ID: <d487294a-43b0-45ca-93ea-dcff1c2b022a@arm.com>
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
x-clientproxiedby: LO2P265CA0143.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9f::35) To AM4PR0802MB2307.eurprd08.prod.outlook.com
 (2603:10a6:200:61::8)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 9592dd66-e728-42f6-56d6-08d71c1c6738
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM4PR0802MB2226; 
X-MS-TrafficTypeDiagnostic: AM4PR0802MB2226:|HE1PR0802MB2602:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <HE1PR0802MB2602A589B73FC3C61A9C9EC9EDD70@HE1PR0802MB2602.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:2201;OLM:2201;
x-forefront-prvs: 012349AD1C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(199004)(189003)(31696002)(86362001)(66946007)(2616005)(486006)(476003)(76176011)(66476007)(4326008)(64126003)(81156014)(8936002)(66556008)(81166006)(64756008)(6486002)(8676002)(66446008)(44832011)(256004)(7736002)(71200400001)(305945005)(6436002)(6306002)(71190400001)(229853002)(53936002)(6512007)(14454004)(2501003)(966005)(3846002)(6116002)(65826007)(99286004)(4744005)(5660300002)(6246003)(25786009)(54906003)(316002)(58126008)(110136005)(446003)(2906002)(186003)(36756003)(26005)(53546011)(102836004)(478600001)(386003)(66066001)(65806001)(31686004)(6506007)(65956001)(11346002)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR0802MB2226;
 H:AM4PR0802MB2307.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: kN0sHRCAenECeJssjNBl4+s8x5rlnUJG2XnekZ0krdvJkdX4UvtEApfEALBqiufDWC52tDmnPaapTH1eN0Cl7j7IyTPWDLh/XxrhOht/6Pq5i6Sz/6ZdPloqpxAAYOBHf3o+j8Vo9GdRzf516cNTV87bUv3os5xRQtd7itFycZoWDFsvzJH9zG2lTVci0rDihrPGmb3RGrBRdKwsnna9pOLTz5n0ItanUBF1cbPLy+JMVs/zreGfYY7LbbJ0MUtxokHMTMZw/1ovZGaZNrR9xUdPnibcIz4/A0BRSEZzAfQqyVwpl5PKMf0hv8kMBFIRnwI4Byb8/k1JJd32Bd0wSECwObe1Cb1EaGWdqrjrxzUYlSCvkM12MemO9GO3DhaeaPtxRpD3KSfTe+rKEcKYUfdqxtoJyp08PxkDPOBZ5D8=
Content-ID: <F8DD9C09E60D9E4589E7C3CCF10A847A@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0802MB2226
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT055.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(136003)(396003)(2980300002)(189003)(199004)(53546011)(6506007)(436003)(6306002)(50466002)(6246003)(8936002)(356004)(6512007)(229853002)(966005)(25786009)(36906005)(107886003)(4326008)(64126003)(316002)(86362001)(110136005)(54906003)(26826003)(478600001)(486006)(81166006)(446003)(11346002)(6486002)(476003)(81156014)(58126008)(126002)(2616005)(31696002)(36756003)(2906002)(76176011)(63370400001)(47776003)(2501003)(63350400001)(336012)(4744005)(65826007)(6116002)(22756006)(26005)(14454004)(8676002)(5660300002)(186003)(386003)(102836004)(2486003)(23676004)(99286004)(3846002)(65806001)(65956001)(66066001)(31686004)(76130400001)(70206006)(70586007)(7736002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0802MB2602;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: f54523b6-96b1-4a58-0138-08d71c1c615f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:HE1PR0802MB2602; 
NoDisclaimer: True
X-Forefront-PRVS: 012349AD1C
X-Microsoft-Antispam-Message-Info: mzSCglvoH1C5xBLA+g5mGy0lxvNXYZV+cQ+vHCLarwWrvmy7naAdWi+DDAU2llEfdX24KiYg8VsRU75YMeL0zT3ANjmBO3bGKbewDXpKtaFwxhwJxiVUEyF7uvSNntKuewzC2N+bJ18lm0JYX5U1ltnBCm2R9N+MfMDMLudwoFPEImO9yimV2a+//TBmZuOqdgl1nqOONfY+k42gHuPnvfDz4P1Opm7ark+GrjB6kmIpU5EPA62AexiCvedRbeaVNhWHkGRd0Waj+Yb0N76b2Krn5QpN//4tpIQkT7KLe3yk3R7lc0WcTviQ95XQ18YkIwUCjYcadjdvJZ4zSUiKbkU82OT1Qxmd+5QOc4QqUl6PWaOwvBqOwGY1VioSgjWeLfTY9JU6aIZWpWrzVlE+slrlU9abhm+0NgzbqHrL0zo=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2019 16:21:01.1240 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9592dd66-e728-42f6-56d6-08d71c1c6738
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2602
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_092107_823133_1CACEFCC 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:616 listed in]
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
>> +- mmap() done by the process itself (or its parent), where either:
>> +
>> +  - flags have the **MAP_ANONYMOUS** bit set
>> +  - the file descriptor refers to a regular file (including those returned
>> +    by memfd_create()) or **/dev/zero**
> 
> What's a "regular file"? ;)

i'd expect the posix definition.

in posix "File types include regular file, character
special file, block special file, FIFO special file,
symbolic link, socket, and directory. Other types of
files may be supported by the implementation."

where regular file is "A file that is a randomly
accessible sequence of bytes, with no further
structure imposed by the system."
http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap03.html#tag_03_323
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
