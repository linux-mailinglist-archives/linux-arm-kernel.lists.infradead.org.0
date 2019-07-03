Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A585E003
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:40:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIcVW9WEE2jLhRTIq3e6tksVIZdt/tDqWDoYOMptvvg=; b=B59axcuDxcbYcw
	aFd+o1fxlHNAUgzi6Rkwd3DrBcw+41NEtXkAkCkKvZxCXiAzDrBUG1TVbkfmC7H7XHF7rlZuPsz7x
	4eJL6odweS1gZgB7dr0dVsoAopeO0lbVREHWM6dudWC2ZspVkYFhPeBFf0ZmVeK9KP6FbCAAn3WDi
	IxrbZvsFq45uaUecHvgLfcZx/1154Q3gN30IhIUh4F5pubidjBtCGqE9wtADxhMcAM5yc9CfyG2s+
	Y9dEvGJ925f0xSKYcIgvWXwSJc4v7JxJw+dubq1Uzj3qB3OeiNGjfw12286UYYxXvVKq3EBdOgC3w
	6Iorv1C3CMZpbKHr+cSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaoL-0005SW-Mo; Wed, 03 Jul 2019 08:40:17 +0000
Received: from mail-eopbgr130045.outbound.protection.outlook.com
 ([40.107.13.45] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hianr-0005Hy-QR
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 08:39:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cd+p4P0v1GRtEzkV6iabRuDZ13tH30t1G14nZuNrOrw=;
 b=aUjYyKP8RTcgleOUccDt9sJYxx6Yk8gQXmrPA24fMxZuik9VZcv8z6/xpTYhPcqtSYod+4gsOWsoUWiOQmNX739sWWK7ik5aWS7ZrwBSmpz3hyp4rbUqIqQOAVA0LONDSlX3X7So5SSrBWRqhN5RYGW4a7TRWSglNL4AZ9U/nDI=
Received: from DB6PR0801CA0050.eurprd08.prod.outlook.com (2603:10a6:4:2b::18)
 by AM6PR08MB3960.eurprd08.prod.outlook.com (2603:10a6:20b:a2::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2032.20; Wed, 3 Jul
 2019 08:39:42 +0000
Received: from DB5EUR03FT009.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::203) by DB6PR0801CA0050.outlook.office365.com
 (2603:10a6:4:2b::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.18 via Frontend
 Transport; Wed, 3 Jul 2019 08:39:42 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT009.mail.protection.outlook.com (10.152.20.117) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2032.15 via Frontend Transport; Wed, 3 Jul 2019 08:39:40 +0000
Received: ("Tessian outbound 4988ae2fa87d:v23");
 Wed, 03 Jul 2019 08:39:38 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e203cded201446c7
X-CR-MTA-TID: 64aa7808
Received: from 9ddbd570a47e.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.5.50]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 43A4BA1C-E423-417C-8319-C6C164FB4C05.1; 
 Wed, 03 Jul 2019 08:39:33 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2050.outbound.protection.outlook.com [104.47.5.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 9ddbd570a47e.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 03 Jul 2019 08:39:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VPwtVfGL3BmrUzWTwhasGZPsCUTG1h1en9Ut8hRKxpQ=;
 b=KCRZj/0pPFaNkJtnOzrvJoMfjaxI16R2fN8fuquyyIl32pg0VoN9qiH7gRpf5aC5wFGdDuYJoYS2I/YkhNsaeA5Dwb9oFth8jwagwCm96pT6r1zF5iFoqdeWcbFmWw7yqsVmCL/QcmEa5Szzg+lzVf6rOojbfipo0Fwv9vybfak=
Received: from AM6PR08MB4504.eurprd08.prod.outlook.com (20.179.18.87) by
 AM6PR08MB3510.eurprd08.prod.outlook.com (20.177.114.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.18; Wed, 3 Jul 2019 08:39:31 +0000
Received: from AM6PR08MB4504.eurprd08.prod.outlook.com
 ([fe80::2cb5:e8f9:38fd:7f5b]) by AM6PR08MB4504.eurprd08.prod.outlook.com
 ([fe80::2cb5:e8f9:38fd:7f5b%3]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 08:39:31 +0000
From: Dave P Martin <Dave.Martin@arm.com>
To: Cristian Marussi <Cristian.Marussi@arm.com>
Subject: Re: [PATCH 03/13] kselftest: arm64: mangle_sp_misaligned
Thread-Topic: [PATCH 03/13] kselftest: arm64: mangle_sp_misaligned
Thread-Index: AQHVIdkqvNuM1VCtMUOFwCq2jCSYqaa3lRJhgAEc44A=
Date: Wed, 3 Jul 2019 08:39:31 +0000
Message-ID: <20190703083928.GX26585@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-4-cristian.marussi@arm.com>
 <20190621103518.GK2790@e103592.cambridge.arm.com>
 <68cc7940-4ee0-b06c-7bd3-b1fbfbc9e142@arm.com>
In-Reply-To: <68cc7940-4ee0-b06c-7bd3-b1fbfbc9e142@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.5.23 (2014-03-12)
x-originating-ip: [217.140.106.49]
x-clientproxiedby: LO2P265CA0411.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::15) To AM6PR08MB4504.eurprd08.prod.outlook.com
 (2603:10a6:20b:72::23)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Dave.Martin@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 17c651a4-3e1a-4ddf-c99f-08d6ff91fd4f
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR08MB3510; 
X-MS-TrafficTypeDiagnostic: AM6PR08MB3510:|AM6PR08MB3960:
X-Microsoft-Antispam-PRVS: <AM6PR08MB3960DC8559C4A6FA89D7055FFEFB0@AM6PR08MB3960.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 00872B689F
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(376002)(346002)(39860400002)(366004)(396003)(136003)(189003)(199004)(229853002)(6512007)(81156014)(33656002)(81166006)(6436002)(52116002)(305945005)(53546011)(71190400001)(386003)(6506007)(6636002)(14444005)(8936002)(7736002)(68736007)(4326008)(6486002)(64756008)(256004)(1076003)(99286004)(6862004)(26005)(25786009)(5660300002)(58126008)(54906003)(102836004)(316002)(76176011)(2906002)(14454004)(86362001)(53936002)(66476007)(66066001)(66556008)(186003)(478600001)(3846002)(6246003)(446003)(8676002)(66946007)(11346002)(66446008)(72206003)(486006)(6116002)(476003)(71200400001)(73956011)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3510;
 H:AM6PR08MB4504.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: lDpW9qyLPHVtOLG6WHRMMMgWJEZJoKOKzjnAzUHytuCBRvQe0tN2uoURvrGn0kPSY7wI4sUXNtZINuX/qY7R/JZJJ+N/lZiAV9ak1lbDITpfz6UbD/k+84VDuQovc/DcbsG3AY/1objsGRmt6xY/cmKUlSH9WfCwcpVzoQtkjG0OGmt5wohxn0H8Xxnbg8b8DZf1Ei4u2F9YgNSr+m6Mi0dRj17meTc/BAPiUeBTJk0ZzrEPg/6bs3DuppeKmJq0QySLV9ozGcfKR0SeCjjhY624r7RfKxUAtO//yMVD70/R5vG3GugsoFsDatPAbcyzlFBYemf2lyYzIAA725hti6rypuMIQqBgMm+sxhisXOEfHt0aJlEKgJroUoe8T63el1pq5d3zEelZnvaxISNyPAzNtfLW8fXe43+TdI6rpnM=
Content-ID: <6AFAF48C1561E846AC50332AB23C1345@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3510
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Dave.Martin@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT009.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(376002)(136003)(346002)(39860400002)(396003)(2980300002)(40434004)(199004)(189003)(26005)(14444005)(5024004)(186003)(5660300002)(1076003)(6862004)(14454004)(25786009)(47776003)(70206006)(66066001)(6506007)(70586007)(336012)(76176011)(6116002)(3846002)(86362001)(386003)(4326008)(53546011)(99286004)(76130400001)(6636002)(102836004)(316002)(58126008)(33656002)(305945005)(2906002)(6246003)(229853002)(8936002)(26826003)(107886003)(81156014)(8676002)(81166006)(6486002)(23726003)(54906003)(8746002)(486006)(126002)(97756001)(6512007)(50466002)(63370400001)(46406003)(7736002)(72206003)(22756006)(11346002)(478600001)(476003)(63350400001)(356004)(446003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3960;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 6a901f73-dc33-4720-b7fa-08d6ff91f7ce
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM6PR08MB3960; 
X-Forefront-PRVS: 00872B689F
X-Microsoft-Antispam-Message-Info: d62N8t+a90PZ2MSKLirhdCFeD5HJStFPxYZRcmx8hUWGd3Q3RJ4yKVnxxGNOIZOvf/DfbPgEb9xl7kVQ0+XUNbTGOQO1k+JjjLCueY+/tlZ5H8qsQbTuAxmZcOb+K3xdprUoH2iVPT2zYW/GFcj7dMzQ8MXk0P2EElSXn/KfCjbN6uhrFiOtdlX6xPNPBvJxDlPgTRVqDqLQT4DKG6ehc5P56/hYxQKw+OTERGwc02eZ1ljYzFdEFsN3091AAlbRSeOoKO9uyKthQH1hv88w8ykh8oxumto43OpcAXtgl9w/l2EbkhI+wMNkmHXZUr5LJjIEEY64SXfsfRl3i0VXb3SqiqDy918tvOSEmo+diof3R2A463CkEQVDyjRv3nzzp5k+N2pynL0Y44forrCzy24p5BVxFeiV3utHY10Cum0=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2019 08:39:40.4138 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 17c651a4-3e1a-4ddf-c99f-08d6ff91fd4f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_013947_907642_7B7173A8 
X-CRM114-Status: GOOD (  26.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.45 listed in list.dnswl.org]
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
Cc: "andreyknvl@google.com" <andreyknvl@google.com>,
 "shuah@kernel.org" <shuah@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 04:39:44PM +0100, Cristian Marussi wrote:
> Hi
>
> On 6/21/19 11:35 AM, Dave Martin wrote:
> > On Thu, Jun 13, 2019 at 12:13:25PM +0100, Cristian Marussi wrote:
> >> Added a simple mangle testcase which messes with the ucontext_t
> >> from within the sig_handler, trying to badly modify and misalign the SP.
> >> Expects SIGBUS on test PASS.
> >>
> >> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> >> ---
> >>   .../arm64/signal/testcases/.gitignore         |  1 +
> >>   .../signal/testcases/mangle_sp_misaligned.c   | 24 +++++++++++++++++++
> >>   2 files changed, 25 insertions(+)
> >>   create mode 100644 tools/testing/selftests/arm64/signal/testcases/.gitignore
> >>   create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c
> >>
> >> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> >> new file mode 100644
> >> index 000000000000..7f7414d241f2
> >> --- /dev/null
> >> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> >> @@ -0,0 +1 @@
> >> +mangle_sp_misaligned
> >> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c b/tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c
> >> new file mode 100644
> >> index 000000000000..41bd27312e54
> >> --- /dev/null
> >> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c
> >> @@ -0,0 +1,24 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +/* Copyright (C) 2019 ARM Limited */
> >> +
> >> +#include "test_signals_utils.h"
> >> +#include "testcases.h"
> >> +
> >> +static int mangle_misaligned_sp_run(struct tdescr *td, siginfo_t *si,
> >> +                              ucontext_t *uc)
> >> +{
> >> +  ASSERT_GOOD_CONTEXT(uc);
> >> +
> >> +  uc->uc_mcontext.sp += 3;
> >
> > What are we testing here?
> >
> > It is archietcturally permitted (if unusual) to have a misaligned sp in
> > userspace.
> >
> > So are we just getting a SIGBUS after the sigreturn, when the thread
> > tries to dereference sp?  If so, we aren't really testing anything about
> > sigreturn here -- I don't see any check in the kernel when restoring sp
> > in sigreturn.
> >
> > Even if there were no SIGBUS, the thread stack is now corrupt (due to
> > wrong sp), so the interrupted code is unlikely to continue running
> > successfully.
> >
> > Am I missing something?
> >
>
> The initial (flawed) attempt was to test the check in arm64 rt_sigreturn
> kernel code:
>
> if (regs->sp & 15)
>       goto badframe;
>
> BUT in fact such initial check happens at the start of rt_sigreturn
> syscall well before the regs are restored from the uc context in the
> sigframe which I mangled
>
> i.e.
> restore_sigframe() -->> __get_user_error(regs->sp...)
>
> ==>> uc.uc_mcontext.sp --> regs->sp
>
> happens AFTER the above regs->sp alignment check.
>
> So the check is performed on the effective SP value at the time of
> kernel entry of sigreturn NOT on the uc.uc_mcontext.sp MANGLED value, so
> this is not really a sigreturn related test at this point. (and hence
> the SIGBUS instead of the SEGV).
>
> So an option could be as you proposed in another similarly flawed test
> to mangle uc.uc_mcontext.sp to point to something unreasonable and in
> Kernel space (at least virtually)

I think a misaligned sp (i.e., the sp register, not uc_mcontext.sp) at
sigreturn, and an sp that points to unmapped or kernel address space
would be useful tests.

If those are already done elsewhere in the series, that's fine.

(There are many possible variations on this theme, but we have to stop
somewhere.)

Cheers
---Dave
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
