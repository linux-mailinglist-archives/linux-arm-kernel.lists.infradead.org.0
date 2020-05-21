Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20451DCA7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 11:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQym2yHmJjy3eZMnY6VuXHJCyP8aIIdnKQZwhx2PB9k=; b=Mb5HNNc1JvLeTQ
	KeUBuY/8opauVSCyO9DtUEfJuD4XAG1PvflVr84GBEevCbcLo0kqnX57LEdk0Yg8nDfLgJh9gZcrk
	C2MJQUuCGL5axht+SUd5nNUhlPnGPSelFCYItnuyxn+ju0HwBbnT6pmYX5O4Z1HttHX7yp3d3ri1N
	Vp4JI+cGVi/yzpIxB5mKbdc+gt8rZkxDT8Z7GjgTRtmypeKoG18W+AkNrW2HEewX7upazgvTtvGsh
	LYP+GDweMdoJY+BXR+VqQ1uPAWAWhNaVevS217OVZuibwSJ8sVc0LY1xONnINgybo4+5APcfBXWiO
	/YEje4Ly1vkgwnvpewxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhtH-0004Yj-NS; Thu, 21 May 2020 09:53:27 +0000
Received: from mail-eopbgr30078.outbound.protection.outlook.com ([40.107.3.78]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbht8-0004YJ-AI
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 09:53:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=elJWv9W9SXN9FOfDIB5vqiUxNtWHs3XS6T7LPBzxp0c=;
 b=nvXFhvJvCvzKfT+NHNP6T68no3VP6ZloWcrV+pOSuwA7aZL+KYXv//94EPLgYPw77JMRkN14gKVM1QCFsuQDyQqqoXw9zmmytFF4TdS8n2d2WlZODgOKoLSGPGkm96lRYi76ihCnf828WfSsA+ranKJx5Ggo9f26xNrBFGtqY5Q=
Received: from AM6P195CA0090.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:86::31)
 by VI1PR0801MB1678.eurprd08.prod.outlook.com (2603:10a6:800:51::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 09:53:13 +0000
Received: from VE1EUR03FT059.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:86:cafe::a6) by AM6P195CA0090.outlook.office365.com
 (2603:10a6:209:86::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Thu, 21 May 2020 09:53:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT059.mail.protection.outlook.com (10.152.19.60) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Thu, 21 May 2020 09:53:13 +0000
Received: ("Tessian outbound 14e212f6ce41:v57");
 Thu, 21 May 2020 09:53:13 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 81e833b47f1966e9
X-CR-MTA-TID: 64aa7808
Received: from 79fd790d7951.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 4D8A41B5-0FC9-4C71-A37F-DBA688D2E89D.1; 
 Thu, 21 May 2020 09:53:07 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 79fd790d7951.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 21 May 2020 09:53:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PIzmoCVjmJbgE5VbacUh7j3rdPHeIrHTNDmKieO3Ryi8ZLdc35JO3/FC7HMHZW8l2XsghUTXwxcRiqeLXVeXJl+2rRlR/TT/usbNUFze8MzRZBsOVdK99BBDwtRhQlrYATZNnyom6ZTTU9nHdOa7iGH1FJTGpkWPk3sqA6ccHg2Nb/klF/MtTLcHARkGg3c7JDLkhcy1PttxjL+7pNR0t30GHj9A5TNE5fMe3i6NhZYtRKbFNdh2smf+M1mu+/68afLyGRZi38Boj9uNhpIZMJLBqFojRZEm+gPETeV+Opa5aZ36DzMycGv9kU99ZcuVemebptbIx1cxJNx3NU7qqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=elJWv9W9SXN9FOfDIB5vqiUxNtWHs3XS6T7LPBzxp0c=;
 b=H3S4ZYKqE0aRZTo3xu/eFBLnlBUm0Xr7aT4pZroxHwcnDUKzq963GhwpZsV7zlShYr8vzUONm4nolv4ZgIiEF/oxCgPkT4dFUfcfcnkDtsrZ/u99L5j/Eae2m2YzpDzSlqaNAi89azHMOcJ1nUc+5MsIjt8tjWvgtoQ/AebcLYGUQnFRSwK063lgOS/38K8WSedBTU5ENTDIiFN/eO6EU+sZ97YmHLLIUzlMPKREFKvlPGRSnWdcx4/ZkzCnUHut4kcq+e4H6Vwu339wggZ8K4IbwrbvWsyLmRG2qXvFDlo0ob5Pt3ySkO9E4TgvDry+tLjPACNZH+6pN0kfAizQoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=elJWv9W9SXN9FOfDIB5vqiUxNtWHs3XS6T7LPBzxp0c=;
 b=nvXFhvJvCvzKfT+NHNP6T68no3VP6ZloWcrV+pOSuwA7aZL+KYXv//94EPLgYPw77JMRkN14gKVM1QCFsuQDyQqqoXw9zmmytFF4TdS8n2d2WlZODgOKoLSGPGkm96lRYi76ihCnf828WfSsA+ranKJx5Ggo9f26xNrBFGtqY5Q=
Received: from DB8PR08MB5259.eurprd08.prod.outlook.com (2603:10a6:10:bf::13)
 by DB7SPR01MB0021.eurprd08.prod.outlook.com (2603:10a6:10:54::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.24; Thu, 21 May
 2020 09:53:06 +0000
Received: from DB8PR08MB5259.eurprd08.prod.outlook.com
 ([fe80::2007:5b72:7c24:6aa6]) by DB8PR08MB5259.eurprd08.prod.outlook.com
 ([fe80::2007:5b72:7c24:6aa6%4]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 09:53:06 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 0/2] arm64 sigreturn unwinding fixes
Thread-Topic: [PATCH v3 0/2] arm64 sigreturn unwinding fixes
Thread-Index: AQHWLs/q+xvcbV1xb0SmC4b7uP/0L6iyTaAA
Date: Thu, 21 May 2020 09:53:06 +0000
Message-ID: <6FA38993-9FB1-4935-BB44-B3F42BC8C6CD@arm.com>
References: <20200520175539.28464-1-will@kernel.org>
In-Reply-To: <20200520175539.28464-1-will@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
Authentication-Results-Original: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
x-originating-ip: [2001:4c4c:1b20:6f00:58f8:a998:501e:41d9]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8640ab05-073d-40f9-56b9-08d7fd6cc6f6
x-ms-traffictypediagnostic: DB7SPR01MB0021:|VI1PR0801MB1678:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB1678A5A289118F6A6590CA1BECB70@VI1PR0801MB1678.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:1388;OLM:1388;
x-forefront-prvs: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: nrlD+ZrGm5GX9R8pLmBt33f8CzdM4Nfpwc7XTl8tWU1fJ0pQr4DZ8MgVcdjFQRWkY/yhq+Jlv8oBfpIfvu3lfsU78FKSU2wLRuaaqIItoR67AfMaV1gYDldrBojzKaySVBKnUvbg8MWq8gl8J1QMvAuyeXmn7n6kwQRPzH7JK/6sUIrPJcPN3qWKd84aVdNvf5hLKyy7JHd4eiR5NKoa2EvX1R5rwFANK4YNzPRlR9STaNEqkkAWkZ3Chc4JnVIsyVi6pBfYL1wrm56p8Xtt/GkogL9Ufa8u2gfNeoXPFarIJwhpt59ghvzNzD2MxaRf9brF0RJRkYeIa/kv6wcjZv+5uOqL961UcDqBl5kFtJjXd7Di3Mt3PuiVDsCkJv1NMf2Nt2rtfZnWbQZ++RheOA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DB8PR08MB5259.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(346002)(396003)(136003)(39860400002)(366004)(6486002)(33656002)(8936002)(86362001)(54906003)(316002)(6506007)(53546011)(8676002)(186003)(5660300002)(6512007)(91956017)(6916009)(36756003)(2616005)(4326008)(966005)(64756008)(76116006)(66946007)(2906002)(66476007)(66556008)(478600001)(71200400001)(66446008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: xrZDZUm6gaauaB03VKTH8WaSKLZfj+ACvR452V9rfVMlrot8oWjwBj8gNjpx3iBF0IxCHfaKU5iGcw++Wh0byg1CwqQRESEVfIg0L7v569JooaUCZaN31DAlbuAXcsQnGZJeD8jZCpmndcjKCZZxENr2eCp1H9eF1mUFWGwdHAXIas/xiiZmz1i9o4tB3L7gJdCJQxpTqmp9qVBnU3LPyWciNTnrEjA3aW7Btm+M1j1vfcReuf9SC2JiAbtOHp4Bo/99MITySM/twXCZRiYKx2N6+44UWWQdq39mPD5PUbLZ2S3GXNC9ZIoKLyugQWD0SWqnBzfWz8yMqGYmNQZ6kHAJ1GmL9ZiSH4XUZuajX7c+t+Ng1YY//yQgfkZJa5BCi7XWphaz+TP3/kB+pAIEJ2kNYptSFqEtnQaM/HFCh4V7xITyDmLga5mYyFuWM3XaGbWpK4MzYtmVVixi9kZ7tbefyCPIXQfRBfHI5td5LUdqp2/aPsQqvEnNTbWwDhHxWcn6zFOuNOfP7stUdna1wlevhCefsaQ9ogQlzPQAEp/jtNTTjLOTZZ00ryL8DdQi
Content-ID: <1BCD75C526F1394085674F3EB70EFD21@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7SPR01MB0021
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT059.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(346002)(136003)(376002)(39860400002)(46966005)(478600001)(2616005)(6512007)(6486002)(966005)(26005)(186003)(53546011)(33656002)(6506007)(86362001)(70206006)(8676002)(82310400002)(70586007)(54906003)(5660300002)(36756003)(4326008)(81166007)(356005)(336012)(82740400003)(2906002)(36906005)(8936002)(47076004)(6862004)(107886003)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 03a34fcb-c2c8-4b59-5cdf-08d7fd6cc31c
X-Forefront-PRVS: 041032FF37
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SxFz7Bf0PKijy1XlLZRxJzPyXunarKHxDBjDMwR0GF5G4q1ew3Suecm5Nl7ge7Rki+vSdGqIINqLG7rcvZ6yvBcUN/7oxJGwo9HLbf7BIFFw6c1w8aNkaiek0G/AQnLnKd3h7bH3ZD6qlqScBn2npcS5am+MLHaMYhvG+kBksjsjkZLnD0UzVoUaPX9ZOQrKwwr9bH+tXmUmQhwnQscaFW8mLCB3YKg77iyaBvdCd9vo02aNgNojBCbSXAWutM8eJ1fklnMwrPxd/D4Eg6ZJOxyleRKiXne6u5hjPm7Y/6iSY5FZYcTZV5MnJITs5P0LY+JG0fjZ1aC23i1+YQxm7pGRk+80ntYeW/aYZ00Ckg9Rg2Gl/oDt1dIezXqvY7txkYVCuTdnVXKkJPs5UfMwJCZUH8kJVVTdNq9jvRwwT33y9Ejr/dxNTpUJvvzMYq/7uKVXmQJtPgBLnYnuHLuNHrHZvS4fbI2wDzO+FpvmbD4=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 09:53:13.1543 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8640ab05-073d-40f9-56b9-08d7fd6cc6f6
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_025318_430074_24E8678F 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.78 listed in wl.mailspike.net]
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
Cc: Tamas Zsoldos <Tamas.Zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 "kernel-team@android.com" <kernel-team@android.com>,
 Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Works okay, LGTM.

Thanks for the patch.

Cheers,
Daniel

> On 20 May 2020, at 19:55, Will Deacon <will@kernel.org> wrote:
> 
> Hi folks,
> 
> Here is v3 of my attempt at fixing the vdso sigreturn code for unwinders.
> Previous versions are available here:
> 
>  v1: https://lore.kernel.org/r/20200519121818.14511-1-will@kernel.org
>  v2: https://lore.kernel.org/r/20200519162821.16857-1-will@kernel.org
> 
> Changes since v2 include:
> 
>  * Fix the .cfi directives to identify the link register correctly
>  * Even more comments
> 
> Daniel, please can you give this a spin with the LLVM unwinder? It should work
> this time.
> 
> Cheers,
> 
> Will
> 
> Cc: Dave Martin <dave.martin@arm.com>
> Cc: Tamas Zsoldos <tamas.zsoldos@arm.com> 
> Cc: Daniel Kiss <daniel.kiss@arm.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: <kernel-team@android.com>
> 
> --->8
> 
> Will Deacon (2):
>  arm64: vdso: Don't prefix sigreturn trampoline with a BTI C
>    instruction
>  arm64: vdso: Fix CFI directives in sigreturn trampoline
> 
> arch/arm64/include/asm/linkage.h     |  6 ++--
> arch/arm64/kernel/vdso/sigreturn.S   | 51 ++++++++++++++++++++++++----
> arch/arm64/kernel/vdso32/sigreturn.S | 19 ++++++-----
> 3 files changed, 58 insertions(+), 18 deletions(-)
> 
> -- 
> 2.26.2.761.g0e0b3e54be-goog
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
