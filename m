Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66FE8D69B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rc9yur2jQYjvmKg84VTEQecx2hW/LGo2CBrBC9fzWJY=; b=imDox//8JFaz1B
	j37YZEup0vWo0PuHrNalI6g2aLWW638Kir56DysF/NvdHHfz7ZPZmWHlOpR57684MG5XQnWIbGHfh
	Wks/mLOJKv6hwaP/gcePDL8QNphYOhf9LgCgxpjJZc5nlpX3K5BVaAU866R38SoMYIyLlqRdVo4VY
	pRCH+6vHKpMo3C6Rvo5CQa/clF4UuM6Axe3J6sx/WV77WgaS2CopQjJXUO58ZZ0PykIdM4tldQfSD
	PG7EUQH0A7NEQoi0aZD0PgjBJDjd+JKH6Nlgg8N+HG3I4QQf4OwKAztBYzmAgkSZUSTYaPu29of9u
	6mGkWlmFBCf6h0DL3b/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxudB-0000tD-KR; Wed, 14 Aug 2019 14:52:05 +0000
Received: from mail-eopbgr00041.outbound.protection.outlook.com ([40.107.0.41]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxucs-0000fn-Nm
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:51:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=um20CfsORHLRXIuNSUEEwzAMUDuIEC2Yot6fsuqfCTA=;
 b=0YcOiYHoGl2wmkDfdeMgeq04qD40gLClJyn9bDaUADqEtv9v3aoMuWnCzbTx1V3PebArUpRJG994gfs40fB7cGhAKQaNfORs4ID/1AZP90vks1tQNKhdLksmRoaexYlmX4vQxSl1oJt0NDAT00/+Dta2vpuOjJqJ6NQu0KoKGeU=
Received: from DB6PR0801CA0043.eurprd08.prod.outlook.com (2603:10a6:4:2b::11)
 by VI1PR0801MB1853.eurprd08.prod.outlook.com (2603:10a6:800:5a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.13; Wed, 14 Aug
 2019 14:51:42 +0000
Received: from DB5EUR03FT031.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::204) by DB6PR0801CA0043.outlook.office365.com
 (2603:10a6:4:2b::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.13 via Frontend
 Transport; Wed, 14 Aug 2019 14:51:42 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT031.mail.protection.outlook.com (10.152.20.142) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.18 via Frontend Transport; Wed, 14 Aug 2019 14:51:41 +0000
Received: ("Tessian outbound 40a263b748b4:v26");
 Wed, 14 Aug 2019 14:51:41 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 4d8056d28a65e8a7
X-CR-MTA-TID: 64aa7808
Received: from 08461fe34580.2 (cr-mta-lb-1.cr-mta-net [104.47.5.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 6D818700-CA63-46C6-9592-4BB7754206E7.1; 
 Wed, 14 Aug 2019 14:51:36 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2057.outbound.protection.outlook.com [104.47.5.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 08461fe34580.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 14 Aug 2019 14:51:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GPDgs+MWhaVdERlHxctWm2YhmvyNddtmU1zTSOTjGkDXecJF5PJ0eyaVwxy/uITYqplfmnIqWDbnK6F2f43EZgKJfLYorPO3pEiMkg66VPm4KydjIp47VYQ4ws2sbxRh2zMNbju4mMUn4KEKo3sWPPB3pCmPOTcNMzl7mBH4D3DD9BpmQQfSnVEOPPcRLpnsBoJpDyj07SiuMDhkmxs0jfYGGFNC2uCx0Cuos8PJeWfCl3WMoCn+e1EWvyq2E4218eHRuEme1HN2blxD2MM4dA7tywKLlaOu51z1t0WkVfiyxJHCm4b7fikxCVbFzC11fKf+TnTq/C1KXDQgonLkqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=um20CfsORHLRXIuNSUEEwzAMUDuIEC2Yot6fsuqfCTA=;
 b=CsYSJh+UA+vNJcpXr4bfR7zqYqqlN0/dwXmOgz/ZvOMAqeGRCADA5MasNDijQQkFX7LBZ+Ch65EolDWKBLtf4oEZoxP7eA330+M22iJwoPzxwpcEpjucuv20qeW2vUVu9jH/ydQrLoqHIFSgbv6x9BNrW9qwDnceMgEL57OEy86neN2//9/etTyTtxhpubOYxfH4zNhTkbJrX37CItLa9LvoOKYxIa3JQ8C/1HzmwD8NG6wdU2uSxkW/FYqqisNq54GUEx3KVP1f9rk+M3lHjDieE5f5Pd5uSRhUiSJyW9Wnp4SNvlzsTxaqJFcIoasaIO9MSMAS7VBrVE928TcoRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=um20CfsORHLRXIuNSUEEwzAMUDuIEC2Yot6fsuqfCTA=;
 b=0YcOiYHoGl2wmkDfdeMgeq04qD40gLClJyn9bDaUADqEtv9v3aoMuWnCzbTx1V3PebArUpRJG994gfs40fB7cGhAKQaNfORs4ID/1AZP90vks1tQNKhdLksmRoaexYlmX4vQxSl1oJt0NDAT00/+Dta2vpuOjJqJ6NQu0KoKGeU=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5481.eurprd08.prod.outlook.com (52.133.240.201) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Wed, 14 Aug 2019 14:51:34 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 14:51:34 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH 1/2] arm64: memory: fix flipped VA space fallout
Thread-Topic: [PATCH 1/2] arm64: memory: fix flipped VA space fallout
Thread-Index: AQHVUqRLu54G1fiH9EapCFsua65twab6uj0A
Date: Wed, 14 Aug 2019 14:51:34 +0000
Message-ID: <20190814145131.GB3646@capper-ampere.manchester.arm.com>
References: <20190814132848.24295-1-mark.rutland@arm.com>
 <20190814132848.24295-2-mark.rutland@arm.com>
In-Reply-To: <20190814132848.24295-2-mark.rutland@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0437.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::17) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 288e4d82-9921-4cb8-dc4d-08d720c6eb1a
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5481; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5481:|VI1PR0801MB1853:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB1853D98AE7C5E49462D7CB2981AD0@VI1PR0801MB1853.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 01294F875B
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(346002)(136003)(39860400002)(199004)(189003)(3846002)(446003)(25786009)(86362001)(476003)(6512007)(7736002)(14454004)(316002)(11346002)(229853002)(6246003)(8936002)(6862004)(5660300002)(26005)(66066001)(53936002)(256004)(2906002)(54906003)(58126008)(478600001)(6636002)(386003)(6506007)(71190400001)(81166006)(102836004)(186003)(66476007)(64756008)(71200400001)(44832011)(4326008)(6436002)(66946007)(81156014)(99286004)(8676002)(76176011)(6486002)(52116002)(1076003)(6116002)(66556008)(305945005)(33656002)(486006)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5481;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: mp5yt3t1l7cXIVBk7x9ewmqp0A42YmZoX3T3CaLn489ysINRZYpJ579Tly5g1Mlv+/3ZaIPQ2zGPaAYBY04itjLd7HAP/W0mCb/c5Ak0Y/u5xcf74acbehl/SyPsubT2CyUAWRyskdk6b8CpSIWvi8uDBoCw6RJRZ+0BW2roDekvZtJulDMc5m/Fo+9LLFBBre358Xdmx8PjXtwkSWBfcdP1pg8OAjev++WITxlNFv1GiLUemH1tXG1pesadlX9Jhhn5KFYtZK+n7QfFpvhH0FXA/8/EQbBa3NjPqSxaQ8UMwsl6g8LX6x0r5yxvigV9DPdTuJxB/muEGbfbbssDY5Hsfv/Eka4ozmOkPTPuv5XW8Lo7SgWNN7uAsBF5nk5vEwNK3G+1DkPGU6nIHxolwhg38IpRCozP5B0qdiReIcQ=
Content-ID: <7BE883C183AF374D9ED11E557BE5DA12@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5481
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT031.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(396003)(376002)(2980300002)(199004)(189003)(6246003)(76176011)(102836004)(14454004)(6862004)(5660300002)(6512007)(3846002)(23726003)(81166006)(229853002)(81156014)(6116002)(86362001)(8936002)(336012)(6636002)(25786009)(76130400001)(2906002)(8676002)(26826003)(46406003)(126002)(476003)(11346002)(446003)(8746002)(97756001)(99286004)(478600001)(316002)(47776003)(33656002)(22756006)(70206006)(4326008)(70586007)(186003)(66066001)(58126008)(63370400001)(63350400001)(1076003)(486006)(54906003)(386003)(6506007)(356004)(26005)(305945005)(50466002)(7736002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1853;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 7ac0fdc7-1d45-4b88-af87-08d720c6e680
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0801MB1853; 
NoDisclaimer: True
X-Forefront-PRVS: 01294F875B
X-Microsoft-Antispam-Message-Info: ptEelvaYVT5O00BKwL3eG33Cr2qMo8uN0F1YHsV4QdNbS5pUxaoLZ4l2vWNoIDfNPBlut4qEfCZo1vKmj1lVNp0ogfYW2zy4UfIYOLgxMEJi76ICqp9jSMdb3XHywhE2fqaXCSd1JQvb5r+egi5klMPzkw1EdPetlbjJ+9Md3umExH+fcr2wrrn/gf5xzFJjcAJI0fYP+RRcpwBW7J034kKrOWqlFC7arcUJk6iqgtZP69uwZmkYHTiRRuQXdIDOWr5jkg66DWh1+QnwTB3UZvyOD/iiGRwKYKhf5GHVYWJ61pn4T7cF2fHYIUcltircdKFRS584tOlHqCZvp086NwwvBDtLlcppmdDR/BImJga/Qfj2pSaY4+i/AuPVELsCeYB3aku0dc27hGQEF86E6GFInnb0kT4rz1VNP/hchN8=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 14:51:41.5703 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 288e4d82-9921-4cb8-dc4d-08d720c6eb1a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1853
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_075146_995793_F65E51E9 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <Catalin.Marinas@arm.com>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 02:28:47PM +0100, Mark Rutland wrote:
> VA_START used to be the start of the TTBR1 address space, but now it's a
> point midway though. In a couple of places we still use VA_START to get
> the start of the TTBR1 address space, so let's fix these up to use
> PAGE_OFFSET instead.
> 
> Fixes: 14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Steve Capper <steve.capper@arm.com>
> Cc: Will Deacon <will@kernel.org>

Reviewed-by: Steve Capper <steve.capper@arm.com>

> ---
>  arch/arm64/mm/dump.c  | 2 +-
>  arch/arm64/mm/fault.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
> index 6ec75305828e..8e10b4ba215a 100644
> --- a/arch/arm64/mm/dump.c
> +++ b/arch/arm64/mm/dump.c
> @@ -400,7 +400,7 @@ void ptdump_check_wx(void)
>  		.check_wx = true,
>  	};
>  
> -	walk_pgd(&st, &init_mm, VA_START);
> +	walk_pgd(&st, &init_mm, PAGE_OFFSET);
>  	note_page(&st, 0, 0, 0);
>  	if (st.wx_pages || st.uxn_pages)
>  		pr_warn("Checked W+X mappings: FAILED, %lu W+X pages found, %lu non-UXN pages found\n",
> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index 75eff57bd9ef..bb4e4f3fffd8 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -109,7 +109,7 @@ static inline bool is_ttbr0_addr(unsigned long addr)
>  static inline bool is_ttbr1_addr(unsigned long addr)
>  {
>  	/* TTBR1 addresses may have a tag if KASAN_SW_TAGS is in use */
> -	return arch_kasan_reset_tag(addr) >= VA_START;
> +	return arch_kasan_reset_tag(addr) >= PAGE_OFFSET;
>  }
>  
>  /*
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
