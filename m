Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4026916143D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 15:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EXNS4+HwEBfsq6Tx/Xh5JHNG3GSs9NeanSU5Da5gbwU=; b=NMzQnaFjRmREVI
	kARcwK69yrYOPHESOLkeTAcEhD/dUcNPwv2a5SQCfPHS/1Bl5vRdIq9pVNd7fv1Hmhp7szmlyV24B
	ncmWxh39jZJCShRYtuvFs4mWW2jscNBZCyyWHTLirCJpJOvjFCJ/dRgjk0ooDaHAkf6Fyic+Dkm9S
	vOYcQB9WXJktfUkF17stexMi32ygdEG+SsDEnEq50XQf7xAFVLwEUBi+SrAnTa1NaanEo39wFZjGJ
	5Y186331DAcxEu9D41g8jObfoSMiGtHdBxrP4qaFoiehyura1dRHBYCVk5OSa8b9VF8pBvbizG07I
	fLrsZh2XQmOBIKZSq66Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3h7d-0001EK-OU; Mon, 17 Feb 2020 14:11:41 +0000
Received: from mail-db8eur05on2098.outbound.protection.outlook.com
 ([40.107.20.98] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3h7T-00018K-2S
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:11:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BaVFQsY0nm9Vhla8BxpG5u7N/eGaBj3G1zMLRLA6wuTe58YydIaKptQV10NghoueVAXSRLxYL5/KOqDHAQm/PNSIVoUkTMbKl7ILPeGib/7LRxZF6BuYQ65loWFnuBf9V30Vih2LUMriY7PewIt/XncU29pqtqim2DOJXw/48vWmhMuyVD6SD6VUHdEsHEh9cLolXRaefgTxQEVia5wRprwm/YWusyavMkmMN299lVDpbQdeLVYNnkMN79Lp5G/WBsPjtq9cxGeFdFeriYA7vv3j41H/RZbrNFMCgoYq9FCnyS3xmY5k/VIVDJIDRuI2+uFtojkkLB9YoGC5S0gGKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S6RkTmL9V8WPB09dSZQUGN6xPiOI+Hxp3oEU+9OHFEc=;
 b=d8WG+Jy+nr4inYvDZAZu1fXc5fL1TlZxNKxR4hFMGJDOVEc542KqZ6jTbAAAF5UeIz3+C5S6XZWRP++jBixAMrnS9Vfa1ThCQIERpIFH8Q+i8cG5KNCE3R4iiN9iHZ8/fX0e2TMXTTVCTH8TzUSDhFGH40OLlnrfE2eonMpSWgVhG9+nbCJmF4DrwE2HNOLVwBGO3oSrEyQXFehgq8PFBQrF4sODI90WeHCi40er6H9QMtcyIAMM7DGZZSm2N8rTzAIHmTA+9JLkmzB5UfxSDj8YpnQeWgRVtEPNRiWXWIhRwZGxRJ6/lv6o5kpOYU7fAnnH1yIQSWpxweD+FLYqFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nokia.com; dmarc=pass action=none header.from=nokia.com;
 dkim=pass header.d=nokia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
 s=selector1-nokia-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S6RkTmL9V8WPB09dSZQUGN6xPiOI+Hxp3oEU+9OHFEc=;
 b=Fq8B6I1Cp8QJjTc4KeHx/ZT7Kqv2SYkffDoHlxcC+anto34sXVDYek9l59pk799NUPKrWL7vSDZfxI5o0pIbjSyy8EvTwn2nMB+PzZJfsAstzUGytBI5QlwYcuDvhU0n+zs5bzUxH4obCqdSg5Pe0lIWmbHreSDdZQ6IWtvJ1xk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=alexander.sverdlin@nokia.com; 
Received: from VI1PR07MB5040.eurprd07.prod.outlook.com (20.177.203.20) by
 VI1PR07MB5056.eurprd07.prod.outlook.com (20.177.203.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.12; Mon, 17 Feb 2020 14:11:25 +0000
Received: from VI1PR07MB5040.eurprd07.prod.outlook.com
 ([fe80::20c4:7ce8:f735:316e]) by VI1PR07MB5040.eurprd07.prod.outlook.com
 ([fe80::20c4:7ce8:f735:316e%2]) with mapi id 15.20.2750.010; Mon, 17 Feb 2020
 14:11:25 +0000
From: Alexander X Sverdlin <alexander.sverdlin@nokia.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 0/2] ARM: Implement MODULE_PLT support in FTRACE
Date: Mon, 17 Feb 2020 15:09:53 +0100
Message-Id: <20200217140955.211661-1-alexander.sverdlin@nokia.com>
X-Mailer: git-send-email 2.24.0
X-ClientProxiedBy: HE1P191CA0004.EURP191.PROD.OUTLOOK.COM (2603:10a6:3:cf::14)
 To VI1PR07MB5040.eurprd07.prod.outlook.com
 (2603:10a6:803:9c::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ulegcpsvdell.emea.nsn-net.net (131.228.32.181) by
 HE1P191CA0004.EURP191.PROD.OUTLOOK.COM (2603:10a6:3:cf::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24 via Frontend Transport; Mon, 17 Feb 2020 14:11:24 +0000
X-Mailer: git-send-email 2.24.0
X-Originating-IP: [131.228.32.181]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b578094f-3a00-413a-7a45-08d7b3b345d2
X-MS-TrafficTypeDiagnostic: VI1PR07MB5056:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR07MB5056BB2478051C9FB4CE487088160@VI1PR07MB5056.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 0316567485
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(376002)(366004)(346002)(39860400002)(189003)(199004)(26005)(6506007)(6666004)(4326008)(86362001)(2616005)(6916009)(52116002)(1076003)(956004)(478600001)(54906003)(186003)(6486002)(8936002)(8676002)(2906002)(81166006)(66946007)(81156014)(66476007)(5660300002)(66556008)(6512007)(36756003)(16526019)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR07MB5056;
 H:VI1PR07MB5040.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nokia.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: by3/StbbxTRe4HZTcTi6x3dTfq/idS3oLppoBF9Zuzjw5ek4S9YjVxhWO19XZheh1h+U6GY4B9gAHZx2HSqaIyZWXjnElo70zZ4411ZQq/RJVT2l6hz10aZfc09+YgAewnrf6k5lLdPKkU1+yxy4/3t240XTrkJJ+S91eEQbRk0lXC1qAZ9rt9ZMJCcgOGBtu+DLnouEnw0F9y7Q+vuxIsBxdm6R3wPQq1KgxwgC+GntlNQkfiSvc3HUuTKYyASVQVctFNJDlnUxTGWhda1GoGxaaB57TVSix3zA44otjcSoxSvyfKYslCAfe4BP/FOUtamvykpOnqnrJ7vW4Eq0ecR3tNoq7nNvw8XARF4daNXa5khAWse0TN8jJEisaiCJKWgjNxHnpyGeRRe5Oh94l4c99/EPIK2/Qju2rTNS79PlKTOe6nQwjTyXaL/EidGL
X-MS-Exchange-AntiSpam-MessageData: WX4c2aGAGYNwgFQpbXvLeuV9Mx7regCJPsGhYolAzB42/vHICud04RVcYJBr66hc9teIpJbtthcp8Ka5WmXMJulzgIWazw0lA3IRDz6c3ngl8tL5mQzjRrTytAu2Ye6kRhF3Zc8xhta0ahgG8mEoSA==
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b578094f-3a00-413a-7a45-08d7b3b345d2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2020 14:11:24.9363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: orVTNqvlkWV4Rz9e2irU6UEnk6JLHdL4Ui4ciofgGK8V4h3bOY+IKinxLWP+mO+8UJDRHP0zyyN4/CdmXEv2IXiGiOzq8XT4MpeZwF2AuaU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB5056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_061131_142269_1F869A90 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [131.228.32.181 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.98 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>,
 Alexander Sverdlin <alexander.sverdlin@nokia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexander Sverdlin <alexander.sverdlin@nokia.com>

FTRACE's function tracer currently doesn't always work on ARM with
MODULE_PLT option enabled. If the module is loaded too far, FTRACE's
code modifier cannot cope with introduced veneers and turns the
function tracer off globally.

ARM64 already has a solution for the problem, refer to the following
patches:

arm64: ftrace: emit ftrace-mod.o contents through code
arm64: module-plts: factor out PLT generation code for ftrace
arm64: ftrace: fix !CONFIG_ARM64_MODULE_PLTS kernels
arm64: ftrace: fix building without CONFIG_MODULES
arm64: ftrace: add support for far branches to dynamic ftrace
arm64: ftrace: don't validate branch via PLT in ftrace_make_nop()

But the presented ARM variant has just a half of the footprint in terms of
the changed LoCs. It also retains the code validation-before-modification
instead of switching it off.

Changelog:
v6:
* rebased
v5:
* BUILD_BUG_ON() ensures fixed_plts[] always fits one PLT block
* use "for" loop instead of "while"
* scripts/recordmcount is filtering reloc types
v4:
* Fixed build without CONFIG_FUNCTION_TRACER
* Reorganized pre-allocated PLTs handling in get_module_plt(),
  now compiler eliminates the whole FTRACE-related handling code
  if ARRAY_SIZE(fixed_plts) == 0
v3:
* Only extend struct dyn_arch_ftrace when ARM_MODULE_PLTS is enabled
v2:
* As suggested by Steven Rostedt, refrain from tree-wide API modification,
  save module pointer in struct dyn_arch_ftrace instead (PowerPC way)

Alexander Sverdlin (2):
  ARM: PLT: Move struct plt_entries definition to header
  ARM: ftrace: Add MODULE_PLTS support

 arch/arm/include/asm/ftrace.h |  3 +++
 arch/arm/include/asm/module.h | 10 +++++++++
 arch/arm/kernel/ftrace.c      | 46 ++++++++++++++++++++++++++++++++++++++--
 arch/arm/kernel/module-plts.c | 49 +++++++++++++++++++++++++++++++++----------
 4 files changed, 95 insertions(+), 13 deletions(-)

-- 
2.4.6


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
