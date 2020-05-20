Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FABC1DADA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2S3eiYESyQsfj6uOH3JjRNtaB+5T2VQiddteTtQn5I=; b=ZlIhdpd+2zDKEX
	Z8j6bscWhmxagQFLq+VYk8C2BxVBc/06BDQ4BAAod3WCYxYBYOSMQrJWmRnJMXQQBmzHBftg4bTxB
	wQa0PeyjhjIFTO/tD7ki+mjSlfxXZvGjVjLbpsP2zGUOQvnUFX5t8iPP3gJJFe5YWfemXL5Qi2lLA
	+ialKdIk1widKsUiqLp9MDwaSVL1ZyM1YZI7rhGyJSvNSVr94bra2wxPCq8xPDoyP2IbczTKfs4r7
	5AJHqAMy/tnCpx0PnXIrYxWZnVdAT8Xbl2sXP5TGoPYaUWHfyabOa/CBYgvyCTiH6qhbwsHohASEG
	0x8vRv9JNPNM4NSgrcBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKDi-00010Q-DL; Wed, 20 May 2020 08:36:58 +0000
Received: from mail-eopbgr80082.outbound.protection.outlook.com ([40.107.8.82]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKDX-0000xc-P4
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:36:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ws/K1Mgy2TX5V7i9ckSCSCxHeixYiRo6r8zW/0HhFHU=;
 b=y7/pMyAB52ojAH4b39cu4LiwBOvDMsGSZMhyI9B7JoSWw76KyuTTwse8CWYV1xeiS/ssVFhDERdWY5ThM9fF+PZ74WrysNRWTVzNYJjCE9E2E5v33yOAE6g4D4lUt6YIkN2sGgJow/s64ZEL8tIZf/piKDNdyXNFErDnarcUBo8=
Received: from AM6PR02CA0026.eurprd02.prod.outlook.com (2603:10a6:20b:6e::39)
 by VI1PR08MB3824.eurprd08.prod.outlook.com (2603:10a6:803:bf::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Wed, 20 May
 2020 08:36:41 +0000
Received: from AM5EUR03FT050.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:6e:cafe::27) by AM6PR02CA0026.outlook.office365.com
 (2603:10a6:20b:6e::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24 via Frontend
 Transport; Wed, 20 May 2020 08:36:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT050.mail.protection.outlook.com (10.152.17.47) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Wed, 20 May 2020 08:36:41 +0000
Received: ("Tessian outbound 952576a3272a:v57");
 Wed, 20 May 2020 08:36:41 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9fc3f7b4ebb99852
X-CR-MTA-TID: 64aa7808
Received: from d2f73aaaa061.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 0F56CA48-5342-42C3-83A4-1CE18979C012.1; 
 Wed, 20 May 2020 08:36:35 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d2f73aaaa061.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 20 May 2020 08:36:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b3lMYYpXzGEj4NytLk/OgoxnA8EqYPE5giL1BmSDhHAlq8enl0Wc7sOT7SMG+R+8RLNk95r9ZuT/YNEsF8GgMWf74OvNfPxujL1oWfixlROZNqqBCJcT6bIVrnUSKfw9hESzBk7vlr885VzZJULM6Im9zJyNHMcBNFLrQUZzTZNWPmedavW4vWGwhFBeotOEw/eWLNKXMlttZJs2WbXZE+nLBOMP+Uf87RgEihq0K7gzF6I66c6IpLl4TQdrYXMLx9kOkXwxFObmzIC6RNhsBZ2HDT3eHl094yNDq2xaSLkgiMI/hGP/My4I5Z6X6/AR2Bw7hrnj9MYq6ZxmBp9MEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ws/K1Mgy2TX5V7i9ckSCSCxHeixYiRo6r8zW/0HhFHU=;
 b=Z34hHWDVj7dVRB+sRvXaPZY2Gz56/ddzzhEnpL+sKSNgEoGi2bPFAnFKpmSft3yK94FuUy31xJ20uVUXrnv3+ixzyyIMdnIakLQ/9L6dXR5IbkIrO4qHIL7KVP3kmMVDOBG/Dx3TAC3AamtRsTA4/Lx6avAcncKeFjjIjjQEKfcVBfKg4fAHZD+xQMlT0ECBvGvhU3J3uRlD5G/RULqkHkNWzDL81A33IEdNezfnvy9aDddHdSIQwi1CS1LF1OqHlZrlkeHWOVn7yPz1rSgmfqLFOFZtV1H6lp+MuXOzj2h/r+FFw2cM9bfXuNmCs3ulVnlMTBgbkOepw62LFh8M5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ws/K1Mgy2TX5V7i9ckSCSCxHeixYiRo6r8zW/0HhFHU=;
 b=y7/pMyAB52ojAH4b39cu4LiwBOvDMsGSZMhyI9B7JoSWw76KyuTTwse8CWYV1xeiS/ssVFhDERdWY5ThM9fF+PZ74WrysNRWTVzNYJjCE9E2E5v33yOAE6g4D4lUt6YIkN2sGgJow/s64ZEL8tIZf/piKDNdyXNFErDnarcUBo8=
Authentication-Results-Original: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=arm.com;
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com (2603:10a6:209:4c::23)
 by AM6PR08MB3975.eurprd08.prod.outlook.com (2603:10a6:20b:a7::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Wed, 20 May
 2020 08:36:34 +0000
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862]) by AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862%7]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 08:36:34 +0000
Date: Wed, 20 May 2020 09:36:32 +0100
From: Szabolcs Nagy <szabolcs.nagy@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] ARM: pass -msoft-float to gcc earlier
Message-ID: <20200520083631.GJ27289@arm.com>
References: <20200519220923.1601303-1-arnd@arndb.de>
 <CAKwvOdmH6bMJHzxSs2mVN=P5BBYjYrDs13-oq-Qq+S4ykHSYvA@mail.gmail.com>
 <CAKwvOd=EphyUWNOZ59FkrfDvDwHHU2yrXW+KML-w_6mHowK=QA@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAKwvOd=EphyUWNOZ59FkrfDvDwHHU2yrXW+KML-w_6mHowK=QA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: CWLP265CA0333.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:401:57::33) To AM6PR08MB3047.eurprd08.prod.outlook.com
 (2603:10a6:209:4c::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from arm.com (217.140.106.55) by
 CWLP265CA0333.GBRP265.PROD.OUTLOOK.COM (2603:10a6:401:57::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.25 via Frontend Transport; Wed, 20 May 2020 08:36:33 +0000
X-Originating-IP: [217.140.106.55]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e4f74931-6fd4-46cf-ccaa-08d7fc98eb8a
X-MS-TrafficTypeDiagnostic: AM6PR08MB3975:|VI1PR08MB3824:
X-Microsoft-Antispam-PRVS: <VI1PR08MB3824C58BC3E886946AF8628AEDB60@VI1PR08MB3824.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;OLM:8882;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: K6HCjQj5CZzSICNtK2171Mmpz/2IwckVcbso9x6OFHAIxqkrCl6/8Q4bUqDWgJIGi8G0KejCkAUay8aYiHY6qOkfXz8Zk2d/sc9ACmtl3LRZzDGt+pKKTvylPUL2htybbBBebJHmvCzR0i5HUGrWP01QxRWvmx4aqE3hb+lP5+U6vv14UkDOql8j5IQsf0kxyqt4zaQA5qb3HDt8+LlDnnLW2Q3XB3+paOGqk3+8TO6XAuX5L7w1ZD9IQlIeX8F4rK6QWFRec8OuO3HFKPJQPySFH/33pBkF7ArAt16AVzrjMrPRevpV4YorzItkZu8Y7yvXq5DbHQqdMyJPzBobBZlp1HSiOYCPG6XXzI3WCe2ZmgUUpXTdTkT76659eurn4fVFXnhGdEqI7/wC1vS7fw==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB3047.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(396003)(366004)(346002)(376002)(39860400002)(5660300002)(478600001)(8886007)(36756003)(6916009)(33656002)(966005)(1076003)(8936002)(53546011)(52116002)(4326008)(7696005)(8676002)(66946007)(66476007)(54906003)(2616005)(186003)(956004)(55016002)(16526019)(316002)(44832011)(2906002)(86362001)(26005)(66556008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: LAzsBcNpp/hqeZteQRqTD5BXFoaleYX0fMwf8WzOXpm+4aDfjWhgNJaRvHLO0bnFL3u00sLxUtMEQ4H+U427RJOePTKF8rlMoApLAd/NEzMsFsAM3ZodqJI1jmhE56NIM6akE9yqXsJXPv01My10ppbTM3k/mael9HdOWJDOGZa1yjTJM1PCqVDc9pRncWImn2RV348TzQnn1PUMApFaT4s5kKTsGpyx885aATo454NWwR5t4OnIxV5su8onRiyp1+qwVSamAZN6mReZALmyMJ2ZNtExCIelSHRjHTq1QA59WH2NMgW9Y7vnu2uD7WPlgrLGS7fssCVJtRS32bheSYoy5Tr6GJwgoy2owOjc2aROoORH3vua77Nw0bgWUjcYuF81sDXbK/rADRXRxKqpmLzvk+wgZIISsWrCN/vPgF7vtbhIcBIH1JQpWH2jmKRER71FMl1nuZ6gHUXiiT9EN8wtj/bBYUhUbM5xDB9iPH+EPup2h2YZZUiSoVpQIvnW
X-MS-Exchange-Transport-Forked: True
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3975
Original-Authentication-Results: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT050.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(39860400002)(346002)(136003)(376002)(46966005)(478600001)(7696005)(55016002)(966005)(44832011)(16526019)(186003)(8676002)(26005)(1076003)(2616005)(70206006)(53546011)(956004)(33656002)(86362001)(5660300002)(8936002)(316002)(70586007)(36756003)(81166007)(4326008)(356005)(8886007)(82310400002)(336012)(2906002)(82740400003)(6862004)(47076004)(36906005)(54906003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 6c1bda35-88a2-442d-53cd-08d7fc98e720
X-Forefront-PRVS: 04097B7F7F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K42vTz03PVsg3XZGriQC1YvSbooy7ln4Ii3jfReIRjlWmfF86CJ+0Akmf7q+d+FxIW7F+0v/gdKmK1ABHKLbc5ydfZLDl/gBmipPJxLffZDhLmqliFhszcIZm87ZsEpyOouH+P0SLxddwYxf99oRs0Q/n5e8P3ALJbIss+KKjC/MBf+yRPSbdvvdMzpU3bYP+pkbRDZViFsd8SMieb21mGSrT4a0obQEzYCqxx7EjXzfK5fc0PGHnB804ky4ZDcW45bfyncpK2d6TeS4BcIX6IxFXoK4FNPuIgvgJK90Y3Gw3AzgaSABkSrX+Z88UYR1VixCYUjQNOc6q5OCS4u9YNl3gE0AXIRHcbnTmYdysO1eq7I1xLikSxL6bb89CZVw9CBEfVLfXpYwDkdT64v1qbUxyc+5VjbOcyjFcPSYGFhbXanD7ZXWtDB/nFchVQnAp9YXi0qEJD5dr420MMp75K4F1nTnG7iEwLxHAn6eqZc=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 08:36:41.2445 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e4f74931-6fd4-46cf-ccaa-08d7fc98eb8a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3824
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_013647_879797_C6F61544 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.82 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, nd@arm.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 05/19/2020 17:38, Nick Desaulniers wrote:
> sorry, hit tab/enter too soon...
> 
> On Tue, May 19, 2020 at 5:37 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, May 19, 2020 at 3:09 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > Szabolcs Nagy ran into a kernel build failure with a custom gcc
> > > toochain that sets -mfpu=auto -mfloat-abi=hard:
> > >
> > >  /tmp/ccmNdcdf.s:1898: Error: selected processor does not support `cpsid i' in ARM mode
> > >
> > > The problem is that $(call cc-option, -march=armv7-a) fails before the
> > > kernel overrides the gcc options to also pass -msoft-float.
> >
> > The call to `$(call cc-option, -march=armv7-a) is th
> 
> The call to `$(call cc-option, -march=armv7-a) is the one that fails or...?

the flag -march=armv7-a is invalid if the float abi
is hard and no fpu is specified (since gcc-8).

either an fpu should be specified or -march=armv7-a+fp
(my toolchain was configured with the latter and it does
not work if the kernel overrides it with -march=armv7-a)

because of this cc-option failure the kernel goes on to
pass nonsense flags everywhere (-march=armv5t) and some
compilation eventually fails with an asm error.

> > >
> > > Move the option to the beginning the Makefile, before we call
> >
> > beginning of the
> >
> > > cc-option for the first time.
> > >
> > > Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
> > > Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=87302
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > Moving this looks harmless enough, though it's not clear to me how the
> > failure you're describing would occur.  I don't see calls to as-instr
> > in arch/arm/Makefile.  Which object is being built before -msoft-float
> > is being set?
> 
> ... ^
> 
> >
> > > ---
> > >  arch/arm/Makefile | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > > index 7d5cd0f85461..e428ea6eb0fa 100644
> > > --- a/arch/arm/Makefile
> > > +++ b/arch/arm/Makefile
> > > @@ -16,6 +16,8 @@ LDFLAGS_vmlinux       += --be8
> > >  KBUILD_LDFLAGS_MODULE  += --be8
> > >  endif
> > >
> > > +KBUILD_CFLAGS  += -msoft-float
> > > +
> > >  ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
> > >  KBUILD_LDS_MODULE      += $(srctree)/arch/arm/kernel/module.lds
> > >  endif
> > > @@ -135,7 +137,7 @@ AFLAGS_ISA  :=$(CFLAGS_ISA)
> > >  endif
> > >
> > >  # Need -Uarm for gcc < 3.x
> > > -KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
> > > +KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -Uarm
> > >  KBUILD_AFLAGS  +=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
> > >
> > >  CHECKFLAGS     += -D__arm__
> > > --
> > > 2.26.2
> > >
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
