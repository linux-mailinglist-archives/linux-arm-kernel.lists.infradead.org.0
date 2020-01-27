Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6110914A39C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 13:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsMhh+vcfU/NJ+rx2547KTDU5KKQsgG+H3hRb6S+TzE=; b=mA8SBQBhY+1B2h
	HphmzKbWAh08ywEXtUmT+iAGH9K27ci0Xe0NxDYuBwFYbhn+nMZOilL04xV2zcS5EVx4v7KmuwpaN
	SAmbOGljEcxvKps/ebopo0mc5NnvhJCC3ysrYkH8mrgwdhFjof+FiaWuBVnuwBdS/MdmS2iVoHa9X
	7CBMQuVYhThOqvkeUd2k0iRpHi0eLrKaljQQwYN4Pvt6CUvGSI63E4sKumc4hFEWexuu5trxB8prj
	Sk/U6xmp8yiI27ZN1Umz+KCQGhkqSgp6+UsNYP9ap6UU5j+EhL65u3ue79LW3d0bbH6dBlPvX9gfz
	4NMPhchw6hbwYmeB0a5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw3JE-0000u1-JH; Mon, 27 Jan 2020 12:16:04 +0000
Received: from mail-am6eur05on2052.outbound.protection.outlook.com
 ([40.107.22.52] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3J4-0000tV-Lx
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 12:15:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kEn7KwgrhpAjn2DVb1uSa+SFenEcLgFpBioZZ0ANJTM=;
 b=aNw0RHz6fJxv33Pj7q2QC0RZSxjCGRh0yxtb05rwpJGTYBeYoVajZ9VZmFJsfTQC+8RSVbtHAO/41HeRiDI+uRR780OUeN/dTQxS/LqOW4bk6RxG74SCN0RZefoc+H/7B0uOvG69WaDDtt/nPZNVbYJw5Cu+chvinlKaoeYodo4=
Received: from VI1PR0801CA0072.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::16) by VI1PR08MB3727.eurprd08.prod.outlook.com
 (2603:10a6:803:b7::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.22; Mon, 27 Jan
 2020 12:15:49 +0000
Received: from AM5EUR03FT012.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::201) by VI1PR0801CA0072.outlook.office365.com
 (2603:10a6:800:7d::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.22 via Frontend
 Transport; Mon, 27 Jan 2020 12:15:49 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT012.mail.protection.outlook.com (10.152.16.161) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.18 via Frontend Transport; Mon, 27 Jan 2020 12:15:48 +0000
Received: ("Tessian outbound e09e55c05044:v40");
 Mon, 27 Jan 2020 12:15:48 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 96f9cfec0e6cfcde
X-CR-MTA-TID: 64aa7808
Received: from 036538fc9136.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 AC3292EC-ABBB-4ED3-92C4-CDE241D38293.1; 
 Mon, 27 Jan 2020 12:15:43 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 036538fc9136.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 27 Jan 2020 12:15:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I5rLqdpmPR3QZvakwAV+pn0wUbr7gZarfSQpILlJgZPDY3hIjG2ykl07v5ud6gJeA6I2ZDVMx6cuHXiah+t0+u5F2n6ScnVvaPDEeh2gwYGFcdh/Kimx1CyrDFI321qQ+oOipPB7YiAXXEsZY7gr8mJlEnYFDqLkPOvdEh+huST9lK/GJSh/tBLzcultW6hGpNcd60ls0cJOH7IRp9ftLumoU3IY3ukfonfFtYDySUJ0Cfh3S3cYfwITjMYKXFi9+tNEuVTiweVesG4OKby11vfSnbtLBEhQ/AJN3oJPxEs6wf1Z/BnrcjoQN7QfqUPC3gBRqPzC6axz4XUowLjmow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kEn7KwgrhpAjn2DVb1uSa+SFenEcLgFpBioZZ0ANJTM=;
 b=IkCIWzOQ1Ey78+3YsvAegv6qqhZpWLMBTk/uNaAVPSxBpWyVXb6b/SjAJklOpSeUSy8DozWx9yn+zr9VoePESdOnGxaQW1cBABxbpyHW09ScSrlmdAW9T9wbBteQiyzSSDiHaqZkVya2N4Ugo1gD/9izxsFKkkxjqyEgHlsu94zORKSBMcdq57npA518en0or4G3fL8siQWuPf8FWyEzK/wPVgvnVe7SoNLefCIO36yfUJQIGVibB0nusK6B79Ls5bnZk7EbtGvh9wBEWl5lBo46KuePn277Hui1cZItEU997teDMmBX4+XYCKIp3qNLwpVK2CMG2rWwVBSFJlczIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kEn7KwgrhpAjn2DVb1uSa+SFenEcLgFpBioZZ0ANJTM=;
 b=aNw0RHz6fJxv33Pj7q2QC0RZSxjCGRh0yxtb05rwpJGTYBeYoVajZ9VZmFJsfTQC+8RSVbtHAO/41HeRiDI+uRR780OUeN/dTQxS/LqOW4bk6RxG74SCN0RZefoc+H/7B0uOvG69WaDDtt/nPZNVbYJw5Cu+chvinlKaoeYodo4=
Received: from VI1PR08MB3742.eurprd08.prod.outlook.com (20.178.80.208) by
 VI1PR08MB2942.eurprd08.prod.outlook.com (10.175.242.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Mon, 27 Jan 2020 12:15:41 +0000
Received: from VI1PR08MB3742.eurprd08.prod.outlook.com
 ([fe80::1026:acb4:de49:dca4]) by VI1PR08MB3742.eurprd08.prod.outlook.com
 ([fe80::1026:acb4:de49:dca4%7]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 12:15:41 +0000
Received: from lakrids.cambridge.arm.com (217.140.106.52) by
 LO2P265CA0393.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:f::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.20 via Frontend Transport; Mon, 27 Jan 2020 12:15:41 +0000
From: Mark Rutland <Mark.Rutland@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>
Subject: Re: [PATCH] arm64: Drop do_el0_ia_bp_hardening() & do_sp_pc_abort()
 declarations
Thread-Topic: [PATCH] arm64: Drop do_el0_ia_bp_hardening() & do_sp_pc_abort()
 declarations
Thread-Index: AQHV1PcvcHkaSOETYEOvXe44YCuKxaf+bQqA
Date: Mon, 27 Jan 2020 12:15:41 +0000
Message-ID: <20200127121538.GB5085@lakrids.cambridge.arm.com>
References: <1580118575-1705-1-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1580118575-1705-1-git-send-email-anshuman.khandual@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
x-originating-ip: [217.140.106.52]
x-clientproxiedby: LO2P265CA0393.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::21) To VI1PR08MB3742.eurprd08.prod.outlook.com
 (2603:10a6:803:c3::16)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Mark.Rutland@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: bc29b992-9983-4c65-c95e-08d7a322a4f3
X-MS-TrafficTypeDiagnostic: VI1PR08MB2942:|VI1PR08MB2942:|VI1PR08MB3727:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB3727264284E098E27CC2D60D840B0@VI1PR08MB3727.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:1388;OLM:10000;
x-forefront-prvs: 02951C14DC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(366004)(39860400002)(396003)(199004)(189003)(8676002)(66556008)(16526019)(81166006)(55016002)(5660300002)(66946007)(1076003)(26005)(478600001)(8936002)(64756008)(66476007)(186003)(316002)(66446008)(86362001)(6636002)(44832011)(52116002)(956004)(7696005)(54906003)(71200400001)(81156014)(33656002)(6862004)(4326008)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB2942;
 H:VI1PR08MB3742.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: UTDmTfj1/OlDlsMkgT2VvSczYze0EUzYprsnXL3QdmOZemm2VwZjpTYWCxZAcU0JvltpqZzdyeFZWoTMnLjCfix/aXAOpuYaNrUEm8OZKCj1nSfvdNcUFNubpRpYaTQgbxWiP6mR0LvE8zEQ92B3FN45XwVUfwmV7hKIjKk94fvQsNb4QOkDh/RjzGb1ZFefyCDTU2cwOmohZ0rQFcQUD3cq+dDBWnTWDVSpZMH/o0uDmpSs5ctieo9ssFZF3b86L5QnQ1GJYY4LYw9SMWlwICoVA7ugNH+/QO3wAQlmy3gyfhD7tNZH5sZKfC5B9MVtbnTeO0z020egVnqYO1FkxvrBrTniCr2LvAVxBAZS8JsnruohjDUKZIr8rM5XrYmB80ZDgZQlAOGypkkE74aPAjwl1ql9zBXikYB2+/F7bIazhPx28WhCkQIPB8RVd2QN
x-ms-exchange-antispam-messagedata: tqyDMF3nAmqNV65YOxTqsm/XmOxNvHDp1xsMQGyXDuymmygU38JBVlGP3shOjxRZ0ZunaBDg63Y8AxtFz0EJVYbvt347NCEThWzIy4PmGO7BN9QnzHeejCRVfnzYjEWjMaHgLgIvlTPxpr0SvuACuQ==
Content-ID: <0DDF90DBEFD9D741B4CFA1512E3EB4C1@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2942
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mark.Rutland@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT012.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(136003)(396003)(189003)(199004)(107886003)(5660300002)(54906003)(2906002)(6862004)(86362001)(7696005)(4326008)(55016002)(26826003)(33656002)(478600001)(81156014)(956004)(8676002)(81166006)(1076003)(8936002)(36906005)(16526019)(70586007)(70206006)(26005)(356004)(316002)(186003)(6636002)(336012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3727;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 404eb24c-f201-44de-e0d2-08d7a322a082
X-Forefront-PRVS: 02951C14DC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l/58PY22CMZ4I4e3x1dp4ujCx9W6DaPWSad/4ahPNzvuj07clxtrT8d5/HE4maUNNq08CRboWC9UdFE/5eOOJt2l++7//asP0iMwHe3XW/BcTt1te2+nC+LWMA5rED37u6F3NjpinhSk89e3sUlftcIdXI2l3SyXKe4bm14Y0fNUnTXFyq4nwTc4ztFn4REKTYSKKv5OaAQxJ5UpBaDPO8GBvjuCG2ucHZtcV7TLZXB+iZjsnaOqQmQ3rH+upeMaIyY9nGtQEoAnbviImDSNFg9+WK0w7B+XYbGILaaj++3x04rdigetFCKaHhRmCctZkrHm5qAmpVW/u2gQqQ879jgP7KxmzL5nWeGE//i36dQ3I2ws0dLrS5ikgJIOdodoQuiSXh48792My02OJ05myv2VOuSa1MozCE70YGEeYuGWq7fhbBqJVzy6X3rrz/3Z
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2020 12:15:48.7279 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bc29b992-9983-4c65-c95e-08d7a322a4f3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3727
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_041554_776286_037D9C68 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 James Morse <James.Morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 03:19:35PM +0530, Anshuman Khandual wrote:
> There is a redundant do_sp_pc_abort() declaration in exceptions.h which can
> be removed. Also do_el0_ia_bp_hardening() as been already been dropped with
> the commit bfe298745afc ("arm64: entry-common: don't touch daif before
> bp-hardening") and hence does not need a declaration any more. This should
> not introduce any functional change.
>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: James Morse <james.morse@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/include/asm/exception.h | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> index b87c6e276ab1..7a6e81ca23a8 100644
> --- a/arch/arm64/include/asm/exception.h
> +++ b/arch/arm64/include/asm/exception.h
> @@ -33,7 +33,6 @@ static inline u32 disr_to_esr(u64 disr)
>
>  asmlinkage void enter_from_user_mode(void);
>  void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
> -void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
>  void do_undefinstr(struct pt_regs *regs);
>  asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr);
>  void do_debug_exception(unsigned long addr_if_watchpoint, unsigned int esr,
> @@ -47,7 +46,4 @@ void bad_el0_sync(struct pt_regs *regs, int reason, unsigned int esr);
>  void do_cp15instr(unsigned int esr, struct pt_regs *regs);
>  void do_el0_svc(struct pt_regs *regs);
>  void do_el0_svc_compat(struct pt_regs *regs);
> -void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
> -    struct pt_regs *regs);
> -
>  #endif/* __ASM_EXCEPTION_H */
> --
> 2.20.1
>
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
