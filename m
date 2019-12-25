Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C348612A6FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 10:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iSKqKGWNptGeCAh1UuxA67QYkuAWAQq2Qljwif5MQL0=; b=TbVeXMkgVy386H
	/cbfE8fTiSw9b11hTA2MO3q084rAtZTr4ujkKfYE0j9EIKF3OodKjjpyp2ecruh+IPcUn7dDipGVL
	hAX5b/lPq1AYVUIYBjhBEVhjl8+el3Kaoy8qzY83cD9DcpIkq2EWO7LooWfbbXQCIjTMnnNOp4QBN
	gvUfuh+U6RLHRMFZ6rrOTUwOoii14QbzMaoRmG7yq/Cl79mxt78k86GD+fAL/zaG4tEudPwlbdqoz
	7+nHLXZyhDhCtqBTLVuRztTLmold7tYG1MlObD5CCZRqyJPbLplI90gXjAQL6AKJHajxlSZnYM62O
	7sO/CZTARn/wGvX0M9TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik39w-0002Fu-Tr; Wed, 25 Dec 2019 09:40:52 +0000
Received: from mail-eopbgr690049.outbound.protection.outlook.com
 ([40.107.69.49] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik39o-0002FY-Gj
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 09:40:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OJzGmrYH4L2G3PN0bsLIK7P29i1Q2cRm3GMmVDLHbxBS86V1NGmn5OWwPemBwoKISz+t5W3tHZ4uScAvMmh2DD/5eX/SQYpHR5dv/oIQF4FWGogcWrYDN+VulflzgiR1m1cX3bSHjNN/Q7rpEPQ15GQrDtrhl/2WZVgZKQuk4ThI6DfT6PZP1vCx5MBtPvxe67a6YJYziRacgnXAVfHH9/6M4nVfPisV2JEs2K089DOtD1RY0th/QBNM8jx5Pwg+wPZzBtWmJyoK5pcZgu61Yf5xQnJHT7V+BcXY5hGcTfG8KHfAWXt6uiXAX1/ndKEsvRagC/cAmis4pUtqaQQ/sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nxMzC/ahXjSjRcF1Y9j1UTF1frTWKZkQ0Di3kFj9YK0=;
 b=CzsTw2+L5CbUnkD3NsVayMd5oCmlllDo5gpb2Xc20Nz0DDNLqvpgF8QLBiMHznXWxMjizt6Rb4yI5W602vNYmMNaMfFikbfa8IE4A8iGfDFLuhB7QxVO9isJkZoyhtl8rWI1BqcAjh/AoHoYrwLWAQv+aCE2RVauVAqgvCfrX5t/La84O6/JYm6JJL5j0DqUe7vx11Ye4Pzgd4ZGrVwRFepgMEKOiEE2cCrbHGjrFhpn8YQ8NoodH4rhutW8K1brZ54vMkYAiYET1bFg5+K8x912YdrI7mVZEZs2yODgsSpVzhHCAQ8hT1mC16GpkSBMkrq0umrqKp8npdkSqYEgTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nxMzC/ahXjSjRcF1Y9j1UTF1frTWKZkQ0Di3kFj9YK0=;
 b=dtejEH8AdP/FPPmnlF6eJhqb/1g3+VpUukWl6YxfwfWrQBMvylq6Pkk9b2VNVFVmclnE9eCESSQSXj5VW50KFZVeroMHiAajpe0KdAn9tTl0Xvz7T6GqAWvfBJFv3F2jdTpMkoBNFXUiyuRgUlHdW3KY0wQ9adhN5vjJD8DEpu0=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.93.213) by
 BYAPR03MB4661.namprd03.prod.outlook.com (20.179.91.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Wed, 25 Dec 2019 09:40:40 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a%6]) with mapi id 15.20.2559.017; Wed, 25 Dec 2019
 09:40:40 +0000
Received: from xhacker.debian (124.74.246.114) by
 TY2PR01CA0057.jpnprd01.prod.outlook.com (2603:1096:404:10a::21) with
 Microsoft SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Wed, 25 Dec 2019 09:40:37 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Anil S Keshavamurthy
 <anil.s.keshavamurthy@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Masami Hiramatsu <mhiramat@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH v7 0/3] arm64: implement KPROBES_ON_FTRACE
Thread-Topic: [PATCH v7 0/3] arm64: implement KPROBES_ON_FTRACE
Thread-Index: AQHVuwdexs3Hej0+vkOjNJ2mcGRBOQ==
Date: Wed, 25 Dec 2019 09:40:40 +0000
Message-ID: <20191225172625.69811b3e@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY2PR01CA0057.jpnprd01.prod.outlook.com
 (2603:1096:404:10a::21) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:139::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa62e658-05fe-44d9-b0bd-08d7891e8115
x-ms-traffictypediagnostic: BYAPR03MB4661:
x-microsoft-antispam-prvs: <BYAPR03MB46613D1BC24CABBFBCFCB066ED280@BYAPR03MB4661.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02622CEF0A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39850400004)(396003)(376002)(346002)(136003)(54534003)(199004)(189003)(7416002)(5660300002)(2906002)(316002)(956004)(54906003)(110136005)(71200400001)(4326008)(1076003)(26005)(81166006)(81156014)(8936002)(55016002)(9686003)(6506007)(66556008)(66476007)(64756008)(66446008)(7696005)(66946007)(186003)(52116002)(86362001)(16526019)(6666004)(8676002)(478600001)(921003)(1121003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4661;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8+9kd4C7VPAPgaUc7aj8CWefYYO8lc+ob5PzHJQo1F4wAWXoLFTQUCm7sh36oWEg2RIg6c3FgV/h68Q4ZBnmdXy5M6bDqPu15W7KB28ndBZ5pFuC1dQW6FtJkPVGBw5LYvdI817kLJ9ehUkOKXgxQaX1QALO0LnqD9+lx1Qrqishii9kZ6lGDuygr474117aNwtABX52NruO2zTNVfZOrE5jnjbQjoCEkd7zYoUkfrui3JzXqTdRWLdIfCUTwgcPyvLz3IZV3hBoLV3purukGFxtLo/NoiM1dfIf5J4ujH09zG5ald/fXnmPJoMtqUPJYKUZS9Fl62SvDEFNXBi8uaFDJQY+UKFEfNagS/EykCfDqz/twJQDygafxVV50eafar9fmb+T1Uf+y1p9Lxm1QDOdYghoPssfzvt1QIggf9rAzQSeAAplRTjhheAF57TYTxwb/Unjb6SsPTAG6jYojBoSKSPRwt6ah7XuhClIk0SLDrXfiMXCttw2c8rSiozg880nTvWQKLVpfdLpfpPSiHUWwzsykekCSpvfk1UxeZdOolPMpj9/kzqueWe0eZ+C
x-ms-exchange-transport-forked: True
Content-ID: <133FCC14C8DCE04BA506F683D43426DE@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa62e658-05fe-44d9-b0bd-08d7891e8115
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Dec 2019 09:40:40.5110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nr7pk6zc4iTUkck8t3Wm+KPLD2eSs6NmwzVarAOFz62SSq5y1ooTpvtSYvKjsyyk2U9JE69jJ3rKm19m/Xd+nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_014044_559138_639C998A 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.69.49 listed in wl.mailspike.net]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as
it eliminates the need for a trap, as well as the need to emulate or
single-step instructions.

arm64 makes use of GCC -fpatchable-function-entry=2 option to insert
two nops. When the function is traced, the first nop will be modified
to the LR saver, then the second nop to "bl <ftrace-entry>". We need
to allow kprobe on any of these two instructions.

patch1 uses ftrace_location() when [dis]arming probes.
patch2 introduces FTRACE_IP_EXTENSION to let ftrace_location()
recognise these two instructions  as being part of ftrace
patch3 implement the KPROBES_ON_FTRACE for arm64

Changes since v6:
  - add patch1 and patch2
  - fix the automatic offset as pointed out by Masami

Changes since v5:
  - rebase v5.5-rc1
  - collect Acked-by and Reviewed-by tags

Changes since v4:
  - correct reg->pc: probed on foo, then pre_handler see foo+0x4, while
    post_handler see foo+0x8

Changes since v3:
  - move kprobe_lookup_name() and arch_kprobe_on_func_entry to ftrace.c since
    we only want to choose the ftrace entry for KPROBES_ON_FTRACE.
  - only choose ftrace entry if (addr && !offset)

Changes since v2:
  - remove patch1, make it a single cleanup patch
  - remove "This patch" in the change log
  - implement arm64's kprobe_lookup_name() and arch_kprobe_on_func_entry instead
    of patching the common kprobes code

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

Jisheng Zhang (2):
  ftrace: introduce FTRACE_IP_EXTENSION
  arm64: implement KPROBES_ON_FTRACE

Naveen N. Rao (1):
  kprobes/ftrace: Use ftrace_location() when [dis]arming probes

 .../debug/kprobes-on-ftrace/arch-support.txt  |  2 +-
 arch/arm64/Kconfig                            |  1 +
 arch/arm64/include/asm/ftrace.h               |  1 +
 arch/arm64/kernel/probes/Makefile             |  1 +
 arch/arm64/kernel/probes/ftrace.c             | 78 +++++++++++++++++++
 include/linux/ftrace.h                        |  4 +
 kernel/kprobes.c                              |  8 +-
 kernel/trace/ftrace.c                         |  2 +-
 8 files changed, 92 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/kernel/probes/ftrace.c

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
