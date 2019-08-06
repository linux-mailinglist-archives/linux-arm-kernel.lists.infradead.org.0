Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3435B82E5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 11:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQ7Vi7FTHTvaz8oNyNQNRzZbAqaoyQDKtm9FXcskfH8=; b=oPVWZj9fgJwCY3
	W3OVibf1tFWbga4aa1/OYHZEf3WIxuuvGcPb3wnQwiaaY2VI6bl9GGqPhmh6fsaAizA4xVIbrlGb0
	5a73bxgAoiAeEmkSnunNZ3F1Vzui0AurMF4QTEi0Pd2sFXRefvSv2+FOm7ogaW1ajDY0m/7vw44aY
	7/nhO02RTVq5svXfKwi529B3txgLCeihnvHT+htM3jP7JSlBqfMroWNMJyfkLwBUOId1HA7O1Je4j
	9tnYvaqZU55Y6GexsszdhQrOtdL4qlPNtPhmfqsNk//StfOtDA2F0DV+kC78S4P+vpEQ5OPFkP8WK
	DiBxePA3asrfHR57wDXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huvQP-0001Fr-02; Tue, 06 Aug 2019 09:06:33 +0000
Received: from mail-eopbgr40075.outbound.protection.outlook.com ([40.107.4.75]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huvQ0-0001FB-BL
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 09:06:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvKVDl7CjMVMeyoFiE+jCGn0ReI2xatCUrOPglhq8LM=;
 b=kW2UdJy8ehzEPF/hyDsWJ5ZmXho88iE7ZUN5OHnhzR9hWfgfOVFsf9AsQIwpNBr0+D+xgI2gIGibPuX6gDCZjOfjuDPsfnE68DFfeVaMuHzXj10DFCbAhcSkbG0SszEiSYNJB/wzRLuH7eCh7G0qf5CuCteK/VB5FiaEMDTxn5Q=
Received: from DB6PR0802CA0045.eurprd08.prod.outlook.com (2603:10a6:4:a3::31)
 by HE1PR0801MB1852.eurprd08.prod.outlook.com (2603:10a6:3:7c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.17; Tue, 6 Aug
 2019 09:06:04 +0000
Received: from DB5EUR03FT046.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::204) by DB6PR0802CA0045.outlook.office365.com
 (2603:10a6:4:a3::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.16 via Frontend
 Transport; Tue, 6 Aug 2019 09:06:04 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT046.mail.protection.outlook.com (10.152.21.230) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 6 Aug 2019 09:06:02 +0000
Received: ("Tessian outbound 220137ab7b0b:v26");
 Tue, 06 Aug 2019 09:06:02 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5bfe0aa6424b7bf0
X-CR-MTA-TID: 64aa7808
Received: from 1a72071b7715.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.1.59]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 CE6B810E-3145-4D61-9154-34AE95ED84E6.1; 
 Tue, 06 Aug 2019 09:05:57 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01lp2059.outbound.protection.outlook.com [104.47.1.59])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 1a72071b7715.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 06 Aug 2019 09:05:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ERrgbQDjiT9S+X8QxV9TKzlUMEIy8yGVZDWNvVj1nGyn08QEFhPNGXYnzST/BBeQVRSbao2EnI+pjEwGJ0uFewKN/m4yg+i3vgClS6y1Pue5PjiAsAOYfsCZu6wGsETnygnABK1S7tOLxw64Qqp0yAuBW7cBwTUrfyXBoDm5k3yShfnGEewsxhqDDhXW2XM2SZBGr0OFY+7H5yi/5SAvh+8Lg33h/S+p3xWNaNFuMj18gMxuTo/MuSrM1VZ7yRSnwOYP+PqboAcIRLiD5GOzo/Da7lfB8K7aZWEd+CTw55NJjti/4ZeDQF9rEiLpdzi8YNjc2B+qxxYdW+qKXfaxNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvKVDl7CjMVMeyoFiE+jCGn0ReI2xatCUrOPglhq8LM=;
 b=gw4IqJ02ducPdYmjA5Att85zpU1CWFQH5ocPWzcKuhoOu6WS6R6XVqQSGN+LzkLbwY20AKAMC9fSXBt9pzIiKUHWHat/qf5Hp28bzGwnh00yZKAURlG644RELB+UQWf8Qzmw/cs9cXoAmQuG7xA4j3iJJ/DqeOeHLxBmuxN1Z2wfJW3otBZLj+87dKxAOp2z8irUchuFTJkLMQfhitfokiZ3bAw3mZY1xrMBxRn06wMCNWce+ATQCQ2Cgy5zAEdJRXELp4yANZNeIh3vqRfae0AbXEYWyG6NfdsvI5Cw05ToGdJPcVTFeXiGyM25pjtcWzTLG3MWxxWXRRlMRUy5Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvKVDl7CjMVMeyoFiE+jCGn0ReI2xatCUrOPglhq8LM=;
 b=kW2UdJy8ehzEPF/hyDsWJ5ZmXho88iE7ZUN5OHnhzR9hWfgfOVFsf9AsQIwpNBr0+D+xgI2gIGibPuX6gDCZjOfjuDPsfnE68DFfeVaMuHzXj10DFCbAhcSkbG0SszEiSYNJB/wzRLuH7eCh7G0qf5CuCteK/VB5FiaEMDTxn5Q=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5081.eurprd08.prod.outlook.com (10.255.19.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Tue, 6 Aug 2019 09:05:55 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2136.010; Tue, 6 Aug 2019
 09:05:55 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: Re: [PATCH V4 03/11] arm64: kasan: Switch to using KASAN_SHADOW_OFFSET
Thread-Topic: [PATCH V4 03/11] arm64: kasan: Switch to using
 KASAN_SHADOW_OFFSET
Thread-Index: AQHVRinKicp2pQ7ZAEiPwYnAuatRWqbsy8eAgAEUMYA=
Date: Tue, 6 Aug 2019 09:05:55 +0000
Message-ID: <20190806090552.GA7593@capper-ampere.manchester.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-4-steve.capper@arm.com>
 <20190805163720.GF4175@arrakis.emea.arm.com>
In-Reply-To: <20190805163720.GF4175@arrakis.emea.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0466.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a2::22) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 8221fef8-0ad0-4171-4282-08d71a4d4e66
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5081; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5081:|HE1PR0801MB1852:
X-Microsoft-Antispam-PRVS: <HE1PR0801MB18523448BA779CEE665D750881D50@HE1PR0801MB1852.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 0121F24F22
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(39860400002)(376002)(346002)(52314003)(189003)(199004)(1076003)(2906002)(5660300002)(6636002)(44832011)(256004)(66446008)(66556008)(64756008)(11346002)(66476007)(446003)(66946007)(81166006)(99286004)(81156014)(68736007)(386003)(71190400001)(476003)(7736002)(4326008)(102836004)(6506007)(486006)(71200400001)(8676002)(305945005)(52116002)(76176011)(86362001)(478600001)(53936002)(54906003)(6116002)(3846002)(58126008)(316002)(186003)(229853002)(8936002)(66066001)(33656002)(14454004)(6862004)(26005)(6486002)(25786009)(6436002)(6512007)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5081;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: NNWT2worI45/OaBq/xXT/Gmmirxtq/rgQqiAa4tjBg60U2LN29jc5oTLhXVQEZlnrsuTzGZ+XZSW2jFD9DnYdaksoAvR9r4LYGewUccNmAt1QBVwMAXjwP3W1l0hyiGLu4xrAhRVfI/vqspgtTzV7SgUP8nEVEjJWWwgNs/jxjMWrl3iFhGG0fvfVCWFSI5QgmYvTiAiYSaO0f1DBCmjBC3wElaHTY1NHdcOLq4ULe/4crQwNEOM7nlVCZlL7Z527p2Gennq3X02D/2YWhAjnIX8d+VFck8+Wbr8YCHZXZlkivXcCzg3gyemLE+FHpxVqU50o2/D/rMEYzgSJGoo2GznB/LQlCQAMdx/cL2pP7JVXMOxmkcBhv6+z1kgLX16YgI2nY7nAuwbWEOZmltDhwbFodoaxuAjlkouAtWF6kw=
Content-ID: <2E6BEE0F1D281E4691E6F5E51F4A2F18@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5081
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT046.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(39860400002)(2980300002)(199004)(189003)(52314003)(97756001)(46406003)(229853002)(76130400001)(6486002)(86362001)(33656002)(6246003)(8936002)(6512007)(81166006)(81156014)(8746002)(6636002)(11346002)(8676002)(126002)(66066001)(476003)(26826003)(47776003)(446003)(63370400001)(26005)(336012)(186003)(478600001)(63350400001)(22756006)(102836004)(305945005)(76176011)(14454004)(70206006)(6116002)(7736002)(386003)(5660300002)(25786009)(3846002)(6506007)(316002)(70586007)(4326008)(99286004)(23726003)(50466002)(486006)(1076003)(2906002)(6862004)(58126008)(54906003)(356004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1852;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: c9265413-cdb4-4b9d-645b-08d71a4d49ea
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:HE1PR0801MB1852; 
NoDisclaimer: True
X-Forefront-PRVS: 0121F24F22
X-Microsoft-Antispam-Message-Info: hEngMIPZnYm9En9FWwgS5O4ZUEi4eODtpaNvaYpdpnrGqVDZ8mzgkaFlQPJm9U+GLGiZ+D4GbeytVHT5WbAZLhGoSxEVC8hg0n/PzZgKZw+vz0T/3oG4LSwhQ9WVryokhyqksJP9RpVb0TkatLBrojGd9Gj22CjY9FQ/+KRig14zSVZRSWqPk1MJMHKBswqnEWJFMIAodt7ogIa0189OAsSQyZ5JgByVvAOUY/EMebXrP/KTZFQ7ST0DTjJ56L0irbTMhY/PX+VLFMj4VzX7s150yc3E2gYkfhi8jHZ9uIXeSbQDFfXlFjckCCL2Rj63IopY0pJXkiyy0FcNKW4ESnd2ebTqOZpfuzu1sFIDRaTxI6yzDMT+rrrOS5sVvgkQgwqpsXoFEPENmvx6odPQRyKo2kNxltBbOAGiVwRsB0w=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2019 09:06:02.5792 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8221fef8-0ad0-4171-4282-08d71a4d4e66
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1852
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_020608_653147_8830F348 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "maz@kernel.org" <maz@kernel.org>, "bhsharma@redhat.com" <bhsharma@redhat.com>,
 nd <nd@arm.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 05:37:21PM +0100, Catalin Marinas wrote:
> On Mon, Jul 29, 2019 at 05:21:09PM +0100, Steve Capper wrote:
> > diff --git a/Documentation/arm64/kasan-offsets.sh b/Documentation/arm64/kasan-offsets.sh
> > new file mode 100644
> > index 000000000000..2b7a021db363
> > --- /dev/null
> > +++ b/Documentation/arm64/kasan-offsets.sh
> > @@ -0,0 +1,27 @@
> > +#!/bin/sh
> > +
> > +# Print out the KASAN_SHADOW_OFFSETS required to place the KASAN SHADOW
> > +# start address at the mid-point of the kernel VA space
> > +
> > +print_kasan_offset () {
> > +	printf "%02d\t" $1
> > +	printf "0x%08x00000000\n" $(( (0xffffffff & (-1 << ($1 - 1 - 32))) \
> > +			+ (1 << ($1 - 32 - $2)) \
> > +			- (1 << (64 - 32 - $2)) ))
> > +}
> > +
> > +echo KASAN_SHADOW_SCALE_SHIFT = 3
> > +printf "VABITS\tKASAN_SHADOW_OFFSET\n"
> > +print_kasan_offset 48 3
> > +print_kasan_offset 47 3
> > +print_kasan_offset 42 3
> > +print_kasan_offset 39 3
> > +print_kasan_offset 36 3
> > +echo
> > +echo KASAN_SHADOW_SCALE_SHIFT = 4
> > +printf "VABITS\tKASAN_SHADOW_OFFSET\n"
> > +print_kasan_offset 48 4
> > +print_kasan_offset 47 4
> > +print_kasan_offset 42 4
> > +print_kasan_offset 39 4
> > +print_kasan_offset 36 4
> 
> Even better if this generated the Kconfig entry directly ;). Anyway,
> it's fine as it is.

:-)

> 
> 
> > diff --git a/arch/arm64/mm/kasan_init.c b/arch/arm64/mm/kasan_init.c
> > index 05edfe9b02e4..9e68e3d12956 100644
> > --- a/arch/arm64/mm/kasan_init.c
> > +++ b/arch/arm64/mm/kasan_init.c
> > @@ -154,8 +154,6 @@ static void __init kasan_pgd_populate(unsigned long addr, unsigned long end,
> >  /* The early shadow maps everything to a single page of zeroes */
> >  asmlinkage void __init kasan_early_init(void)
> >  {
> > -	BUILD_BUG_ON(KASAN_SHADOW_OFFSET !=
> > -		KASAN_SHADOW_END - (1UL << (64 - KASAN_SHADOW_SCALE_SHIFT)));
> 
> Can we not still keep a BUILD_BUG_ON() for KASAN_SHADOW_OFFSET around,
> even if it does the same calculation as the script?
>

Yeah sure, I'll retain this. The only reason I removed it was because I
thought that it was redundant.

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
