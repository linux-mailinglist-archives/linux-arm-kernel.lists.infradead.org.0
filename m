Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDE2955C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aMBvuhqHGgyyKowQqLeU0NfadM44jF26L9UF8EYGDug=; b=PAQLnJ/El05Nrp
	uD4o7liXWVBO9bY8NPL5BEnh9Uwnqkbn6zu1rrt9EiyAVnpagt3ysg6VFlTDO/RKK7/epZgCXb8E9
	yucTU5nAf+v92Oj5RM4FqnnOnZGSUXFQwn3FJoWebddM6tgBhPXbLnk4H+Or8Bi6taZc7QKqaLFIs
	bkFhhMCMITNJD6lsyD40YwvKhSfdmPpVrlPNEdQSutHGmE+LxwFQxIw9PN/l/ajBYNgT3XKkgrAKC
	gxChP9mR0kvxNh9hb0bxOklnhyi7AS/ctr4j+LkMLblPqhGNeDQ3mXmU6PQU+Z/LG0tnvPqLDDC7S
	hKG+XUiftsZ5d5eFUi7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzvAg-0001Dq-QV; Tue, 20 Aug 2019 03:50:59 +0000
Received: from mail-eopbgr680074.outbound.protection.outlook.com
 ([40.107.68.74] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzvAV-0001Cd-4M
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:50:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQL9S2IYEhS+TQXnVnrfBtWoJR643hv5QezJ3bFzrXSHgSPTSyPFwbZEbLVd7SnCqk4uQk9gEpTHTFuaZW+iRFEwBOqxOMNlTQDi/lFiHoHN9RKOGdSg6QnES+AlWNw3n8iq51609jLlQKwVRXoLp6uNkuQcGgzaReFtYwr0AoM99LyiS8jP44RizXTwXoLoXYeyhQS/xpI4uKgAW//mvYIf/6x83+P+onjrlwoS0hRcj6JhkKKM56bWNeZlYiGC/mFbhcxnWeXBPSTP5Sj9AorxcgP+w8nk5XFRbSYoI6Rsl1ek1q1R1PDxPU7LLIzZNVnxbQWvOujBSq8+ICgRoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BT/Bolt1eD0ad391f9vMuirjzeqsmwQro1oTVCG9zfY=;
 b=kQhg2vS+eB/mSExoWAied+dspAEbwk+zaVKrjlFarbyPxFuRvb0XRJwWHnBAyfH61PUALuo4J8czrUwvmuT/Md1nCOfdtEtUiRoGCLAWj/jS34d7i7fYAGhn5zS85Ma50JHYXXjQisMpXxzoXb+QTadp4pXM474A08fBG1oTcE+YowL4B+iTPhQH3rutw6eq0YzJK8LoQBcOhA9xuaWH7ycbhYDXpHB2PeHHz+eJT9wak1TC+JyQqQcaZaJ9BjFAetxul5rQpbtNRFGm0GkWl7Zjy3T+08mU9CbKbBk7DNloP49OUWQC5uyCsmMZa/gVfNkR8bQOLOmi32Y9aEXwvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BT/Bolt1eD0ad391f9vMuirjzeqsmwQro1oTVCG9zfY=;
 b=onsAvQ3KRrKEi2MBOuHHBUgIwjdLBoc1K8bFEZ4G8EiJtmEXQ42sawJuWZBZsIS8vtAxpID4JldKAjfhHBMPw2bUjhq1xEKqBJqdKoThJQ+G3KNm5PAGPVzXQPDaORV4ExLNQt8icMLI0FwNRtEs7yjvWWvtdFrK2mvSekpAhu8=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4373.namprd03.prod.outlook.com (20.178.48.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 03:50:43 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Tue, 20 Aug 2019
 03:50:43 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet
 <corbet@lwn.net>, Will Deacon <will@kernel.org>, Thomas Gleixner
 <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
 <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, "x86@kernel.org"
 <x86@kernel.org>, "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Anil S
 Keshavamurthy <anil.s.keshavamurthy@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Masami Hiramatsu <mhiramat@kernel.org>
Subject: [PATCH v2 0/3] arm64: KPROBES_ON_FTRACE
Thread-Topic: [PATCH v2 0/3] arm64: KPROBES_ON_FTRACE
Thread-Index: AQHVVwpwV+h0FsWU/0egxpRGPuo38A==
Date: Tue, 20 Aug 2019 03:50:42 +0000
Message-ID: <20190820113928.1971900c@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR01CA0085.jpnprd01.prod.outlook.com
 (2603:1096:404:2c::25) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7cad8a21-29f0-4c17-7c10-08d7252192f2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4373; 
x-ms-traffictypediagnostic: BYAPR03MB4373:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR03MB437326A6D02449CD0656E687EDAB0@BYAPR03MB4373.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(366004)(39860400002)(346002)(376002)(199004)(189003)(316002)(6506007)(102836004)(966005)(25786009)(6486002)(8676002)(2501003)(486006)(476003)(71190400001)(71200400001)(305945005)(6116002)(3846002)(7736002)(186003)(1076003)(386003)(86362001)(26005)(7416002)(52116002)(110136005)(54906003)(81166006)(14454004)(6306002)(9686003)(5660300002)(66946007)(256004)(8936002)(66446008)(64756008)(81156014)(53936002)(66556008)(14444005)(99286004)(66476007)(66066001)(478600001)(4326008)(2906002)(50226002)(6512007)(6436002)(921003)(1121003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4373;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: u01VlxGd3t6NF2hd4khno/EYL8S7gfo2ZKkqUdyJ9FTZgqXV0m4P7kksTgy3Zu2wSDull8R72aCzjzifZIf144x/UPHyDVMs8jggk94z1tOaNkhRnSwu7VkU01s38fxyP4jfoGfRHUQBmmomOcQhLTdJ8DnwC0J5do9ZoeH8mLsdgAXFkW2l2yrVhghqTxhkZbwj7eu+syyU/e70CI/sLtQOpc1TEP4rniGdYXJ9IGzbs+rscnINfpXRLAbJPYGXJlKndy+c+aAHHDAOEomqgA50JUS4xFm8JuEqC+8mpi8gUqcnDCdgYU7seVM1j9klfPbAwhai34+SI4dMhQ4YrW/9Z3Q9xsTk5eUfGlHxy+TJpQShggRarquazfMWaXUSBeQz5LoToMPzRZNStsXW4Lxonm4vHhrc7Hz0vh6CHo8=
x-ms-exchange-transport-forked: True
Content-ID: <0C886B6B54FCDA4BB1F6AAA1F63460EC@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cad8a21-29f0-4c17-7c10-08d7252192f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 03:50:42.9645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kAtQoR6natp2qXSa/Sos8p++x3QudfIBm9GyaBMe555grmEeW4PaAWP9OUWMAfz7GYbKBLR8T0rOFSDugxNGsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4373
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_205047_230003_5E3E9E0A 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
eliminates the need for a trap, as well as the need to emulate or
single-step instructions.

Applied after arm64 FTRACE_WITH_REGS:
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-August/674404.html

Changes since v1:
  - make the kprobes/x86: use instruction_pointer and instruction_pointer_set
    as patch1
  - add Masami's ACK to patch1
  - add some description about KPROBES_ON_FTRACE and why we need it on
    arm64
  - correct the log before the patch
  - remove the consolidation patch, make it as TODO
  - only adjust kprobe's addr when KPROBE_FLAG_FTRACE is set
  - if KPROBES_ON_FTRACE, ftrace_call_adjust() the kprobe's addr before
    calling ftrace_location()
  - update the kprobes-on-ftrace/arch-support.txt in doc

Jisheng Zhang (3):
  kprobes/x86: use instruction_pointer and instruction_pointer_set
  kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
  arm64: implement KPROBES_ON_FTRACE

 .../debug/kprobes-on-ftrace/arch-support.txt  |  2 +-
 arch/arm64/Kconfig                            |  1 +
 arch/arm64/kernel/probes/Makefile             |  1 +
 arch/arm64/kernel/probes/ftrace.c             | 60 +++++++++++++++++++
 arch/x86/kernel/kprobes/ftrace.c              |  9 +--
 kernel/kprobes.c                              | 10 +++-
 6 files changed, 75 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm64/kernel/probes/ftrace.c

-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
