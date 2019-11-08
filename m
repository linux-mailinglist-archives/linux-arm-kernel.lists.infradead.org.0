Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4F2F4DA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:59:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nl1kxXVfpvcUM81qRM+49JF3TEt4EZAkjx6SLJbpJw4=; b=XBLnhfN72yc0t+
	cETz/svzwXTzz6pBGeffl6KO3Z6LDvEEohK0DUKzk/0ycsPyiM6LljgH6dtOsCLpLZ7Rc0clTdB53
	P5Uri6OuRZWkr/7LA2Agr8neJsqnoQpYlQbk+gO9S0bqAC/eMMI+0Zuj+VyV2MNNwUq8AiDTfpoh2
	/rYqLMF8WPIfz4tHLifC81O9jwvgPkMlgZcmTmTHvjxK6N9v7jLL0JQ7q9L7C0H09k8vXUYv8Cf8M
	tpzuM+gdY//sa/zkh6Wous9U2sHAvHeLk+wUQFHoc3b3rKxaf1Jd1rIlzYtnMn+GdoyX1vtYKsPcO
	tPWXDjYstArtww3JOMVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT4nn-0002yl-VQ; Fri, 08 Nov 2019 13:59:51 +0000
Received: from mail-am5eur02on060c.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::60c]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4ne-0002y3-9M
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:59:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sjgHKYjq7oqSbSpxEDwfFng1XHT2lFXMf86ysMRkC8o=;
 b=iLiQDc4iDBRwoRlhCu1McEtq9z65g46bGcQ3ZtVtILMoB4BwQrmGwttSu+c0QY/cXLdr1OktJr5EHQsAgeAKslGbEwC9ZcwtBePCtauKRVF927tjuBs9gjkY+lJWCQ1bTLvDRsYbSwbmQMHR29a55CUCyouxSAweBxt7NrB51JE=
Received: from DB6PR0802CA0035.eurprd08.prod.outlook.com (2603:10a6:4:a3::21)
 by DB6PR08MB2646.eurprd08.prod.outlook.com (2603:10a6:6:20::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20; Fri, 8 Nov
 2019 13:59:34 +0000
Received: from DB5EUR03FT017.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::201) by DB6PR0802CA0035.outlook.office365.com
 (2603:10a6:4:a3::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22 via Frontend
 Transport; Fri, 8 Nov 2019 13:59:34 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT017.mail.protection.outlook.com (10.152.20.114) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.21 via Frontend Transport; Fri, 8 Nov 2019 13:59:33 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Fri, 08 Nov 2019 13:59:33 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 005bd53b5cd89064
X-CR-MTA-TID: 64aa7808
Received: from fe762897a665.2 (cr-mta-lb-1.cr-mta-net [104.47.14.53])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 CED5BD97-489A-4458-9FFF-3FA289A7E106.1; 
 Fri, 08 Nov 2019 13:59:28 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2053.outbound.protection.outlook.com [104.47.14.53])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id fe762897a665.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 08 Nov 2019 13:59:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VKiAxF2g3Zol48ZipN3EvvBpfbCoTp8JA35iY9Eqb6DRVac6yHUfRgtCIXqjOJK+7Www2Tyb1eRncLA1kkgat6u3E8FCGyXSxwRS4zCzyax2Q8394lRh7pEmylql2xutksCVNx8tYJJfLNQqvIgAfGTVzxYi7Vf3ZYq7QSLg9+297heeVIluNtpaeRY2Slwf5dQ3MK9/tTHA99sjvsn+4NR62DtKRf2BQ3Od3la3KaeYdZeEN3DyfVUQXJUEEzssFBhqALVx5d113xxAztkXk6SaMf19LkvPWXeanqzVtdKVcuJUzp1r9K8GBbuaAoMYOb4nQft5t+MYxnFcdm1yyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4asgjvfl/TpWaq4QD4U+QVpdjCtmTYRgOZ7kECgQQLE=;
 b=RF+PIWtKdyVFyv5c5HcHlLCubFE3J2eih7jWFlQgop7+ZTr65noGXqH+7qDJJuCDQYDQaDmKL6pe7N3H5ZP0PLLuxWmd5ZxepLiTNscb7V397RUVTk4SCmN9qsORGGxaYShPNzGYSpO/kMTtmrCzwdL8xd7pVBaY6nkGQxGfATx0LWbBMDsnX3HufGgCG9/NJqB7D1cXbN3u390ruHD2lkjyfHsCbasCPgcYxdGjNYUKbXG0hd1R3FXhiB05gctPaSplkLPnbX3kYxb3rF4qbRLRpypfYI+UzSaZ5KU3luJ8fz7Ba1/aR2xoLO1ylSj3j3OSU7ipGrhHygvTX+0gMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4asgjvfl/TpWaq4QD4U+QVpdjCtmTYRgOZ7kECgQQLE=;
 b=oEIOPihFDYVdsqqreefR6TvUiUqdIvnAice01X0RurguQlPYyxPU3s9sqQ9tVTdL5pBHu3gVDHsSR0OMwfbqKF/BVFx7ikrVh4I2UX2jEi8Cu8ljwTqQlS7B4YbGpqtud82+JXU774+2mRzGe8O7AF/oAV80ny5S6wtR1tkSkeo=
Received: from AM6PR08MB3176.eurprd08.prod.outlook.com (52.135.164.25) by
 AM6PR08MB3286.eurprd08.prod.outlook.com (52.135.161.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Fri, 8 Nov 2019 13:59:26 +0000
Received: from AM6PR08MB3176.eurprd08.prod.outlook.com
 ([fe80::f9b1:6623:ab49:7b13]) by AM6PR08MB3176.eurprd08.prod.outlook.com
 ([fe80::f9b1:6623:ab49:7b13%3]) with mapi id 15.20.2430.020; Fri, 8 Nov 2019
 13:59:26 +0000
From: Ard Biesheuvel <Ard.Biesheuvel@arm.com>
To: Christoffer Dall <Christoffer.Dall@arm.com>, "kvm@vger.kernel.org"
 <kvm@vger.kernel.org>
Subject: Re: Memory regions and VMAs across architectures
Thread-Topic: Memory regions and VMAs across architectures
Thread-Index: AQHVliZl1EGI7TljeEqvAqrUR5wJl6eBTRyA
Date: Fri, 8 Nov 2019 13:59:26 +0000
Message-ID: <d49efeb7-3cad-9400-5e67-8a1e80ef7407@arm.com>
References: <20191108111920.GD17608@e113682-lin.lund.arm.com>
In-Reply-To: <20191108111920.GD17608@e113682-lin.lund.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN2PR01CA0056.prod.exchangelabs.com (2603:10b6:800::24) To
 AM6PR08MB3176.eurprd08.prod.outlook.com
 (2603:10a6:209:46::25)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Ard.Biesheuvel@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.96.140]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: eb9ecd73-e266-4154-1164-08d76453e26b
X-MS-TrafficTypeDiagnostic: AM6PR08MB3286:|AM6PR08MB3286:|DB6PR08MB2646:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR08MB26468DF0C641B90BCE5A174A887B0@DB6PR08MB2646.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0215D7173F
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(376002)(346002)(136003)(199004)(189003)(6436002)(6506007)(486006)(476003)(7736002)(71200400001)(2616005)(386003)(66066001)(256004)(110136005)(316002)(446003)(14444005)(11346002)(6512007)(66946007)(66476007)(66556008)(64756008)(66446008)(31686004)(6246003)(2906002)(6486002)(44832011)(102836004)(52116002)(229853002)(86362001)(478600001)(99286004)(4326008)(186003)(25786009)(71190400001)(36756003)(14454004)(54906003)(53546011)(26005)(81156014)(305945005)(81166006)(3846002)(31696002)(6116002)(76176011)(2501003)(8676002)(8936002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3286;
 H:AM6PR08MB3176.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: nI03puv6OIyLODdfk+mgHsgQji/c/HNP89ivdDp81+WpIyn0QUDxlbnY3WkfUGWvN66PvT8K6tXV+XbQlKjk0OoVCfadX69qJoHwPxHFsQZgsSTmdFgdYpm7uAcOk2NZR516RnuJdj6shc1R72Y0AnO7gy+ttPqgi2bDjbJqzLJm9kjJoyVgsSvUHGtOHsYQgbB2WaFVxhXHfBBxrmc3+P4muUFwioMEDxFQuvPqpKfs7U+Q87xhEBVP8s8foDurjJOOpbHctao1faVmRTkpn6OavSx/aM9ctwlyosmYxevPeT8LWo2aWRSVhgvkfiBEXRIw1Yykeutu7ZUDTvSQ1aDDzaghH6zMnsYD/Y+hnyaQfCLcUPZMjbU5GL6M9D+BynfmfkUGZEsrCLuGoPTqISOYoVCcZVqnC/bYkLJTSZ7b7eflF0HNhCTmL02kYQyP
Content-ID: <ED42909F6BFB084D9B660B1E9E2A52A5@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3286
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Ard.Biesheuvel@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT017.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(376002)(346002)(1110001)(339900001)(40434004)(199004)(189003)(6246003)(102836004)(47776003)(99286004)(70206006)(26005)(11346002)(446003)(436003)(2486003)(336012)(3846002)(2616005)(6116002)(305945005)(76130400001)(7736002)(386003)(486006)(186003)(81166006)(53546011)(6506007)(14444005)(105606002)(356004)(23676004)(50466002)(6512007)(476003)(126002)(8676002)(54906003)(14454004)(316002)(31696002)(25786009)(2906002)(31686004)(478600001)(70586007)(229853002)(26826003)(5024004)(110136005)(81156014)(4326008)(76176011)(5660300002)(8936002)(66066001)(2501003)(36756003)(86362001)(6486002)(22756006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR08MB2646;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 2abd0225-7547-478f-0daa-08d76453ddd0
X-Forefront-PRVS: 0215D7173F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jdTMJQYKa6c93ucGjblxiwQ8OKNiKDYxkgtf0iylkxhYenvDqJAxUsmoM3fNjn+PcRtdXlX1v9LL8MhbeLsQ1cz3wOQhZTKc+m8H7Dvym/q0ntzVjIS/fojQXu9AhlNBunEX1oo8pD/7yaRbzkeZxP3RHzXA09PEE7WsYJp4ltOGjN6ceYCxtfWw6Rl0het/PTCueuRFC/sP94YwdpFpbbGM6yly6y3p4r1V4mA7+pbmtntLpxMMNNNxE8WoRRK7DI/wa/yOJOs+Z3PgZ5UZW+/fXumMbfODe07MHHou8R4mE1err8zcZx8+8SOxdnUdbvLRFUBCn0VRVKbHRSo0thH1rwzh2PoIAI3KO5LoknLm2J/O/Budliotzp6faml+J5W6RwP6TWE3ngTJcxr6lafJv5A58kJLyj6fOQLqrnOSmrpoNfwdXlOq9ZEYN5YH
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2019 13:59:33.9414 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eb9ecd73-e266-4154-1164-08d76453e26b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR08MB2646
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_055942_419526_7DC65D7E 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe07:0:0:0:60c listed in]
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
Cc: Marc Zyngier <maz@kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "borntraeger@de.ibm.com" <borntraeger@de.ibm.com>,
 Paolo Bonzini <pbonzini@redhat.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/8/19 12:19 PM, Christoffer Dall wrote:
> Hi,
>
> I had a look at our relatively complicated logic in
> kvm_arch_prepare_memory_region(), and was wondering if there was room to
> unify some of this handling between architectures.
>
> (If you haven't seen our implementation, you can find it in
> virt/kvm/arm/mmu.c, and it has lovely ASCII art!)
>
> I then had a look at the x86 code, but that doesn't actually do anything
> when creating memory regions, which makes me wonder why the arhitectures
> differ in this aspect.
>
> The reason we added the logic that we have for arm/arm64 is that we
> don't really want to take faults for I/O accesses.  I'm not actually
> sure if this is a corretness thing, or an optimization effort, and the
> original commit message doesn't really explain.  Ard, you wrote that
> code, do you recall the details?
>

I have a vague recollection of implementing execution from read-only
guest memory in order to support execute-in-place from emulated NOR
flash in UEFI, and going down a rabbit hole debugging random, seemingly
unrelated crashes in the host which turned out to be caused by the zero
page getting corrupted because it was mapped read-write in the guest to
back uninitialized regions of the NOR flash.

That doesn't quite answer your question, though - I think it was just an
optimization ...

> In any case, what we do is to check for each VMA backing a memslot, we
> check if the memslot flags and vma flags are a reasonable match, and we
> try to detect I/O mappings by looking for the VM_PFNMAP flag on the VMA
> and pre-populate stage 2 page tables (our equivalent of EPT/NPT/...).
> However, there are some things which are not clear to me:
>
> First, what prevents user space from messing around with the VMAs after
> kvm_arch_prepare_memory_region() completes?  If nothing, then what is
> the value of the cheks we perform wrt. to VMAs?
>
> Second, why would arm/arm64 need special handling for I/O mappings
> compared to other architectures, and how is this dealt with for
> x86/s390/power/... ?
>
>
> Thanks,
>
>      Christoffer
>

IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
