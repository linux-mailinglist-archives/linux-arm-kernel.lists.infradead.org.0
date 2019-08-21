Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A524B96F2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsKlNbp8mT/UOskZccS0fJlEU5M9giQuUMHG124kSTs=; b=iFnCM/9XEehHF5
	+eOPV+1T78/ExnBE16gnnJIMSmzzPjaUqjFqg2F+4+C83iMyQmZF5XdXE/chH2jlV9M0XZsoGD9ep
	HowKQcYq89FSYCMCQZXVFPDDlmzqKBIgVFEzVmqdhaZ0x+E6wuvnC5sIAlMR3R15Kki3RR99Ehzys
	qwK1LUXWq0tlYLWkAzdv2i6t26Ifn3RFy5gZB3CoFdV1TEiv64q5TjTQ7y/OGeajzBENALi46gTq4
	9jEuWHEF404EuH/ytXvJWiNeyLvpLWxan2F/1voA7P0NIDM4ZrQqsg4nOx2NexvsuxaL8v5QBpUGj
	RrLtL7xqmsD4yiurr5Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0FxN-0000vl-4d; Wed, 21 Aug 2019 02:02:37 +0000
Received: from mail-bn3nam01on061c.outbound.protection.outlook.com
 ([2a01:111:f400:fe41::61c]
 helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0FxE-0000ub-6n
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:02:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BQ9936GfR4Vxh4KuakPfq/JPKrr7o/AbUxo+SdG63eYjDG6o0WNFG7cGdzsZNhfmy4i3d1gVED66neOtZnClolb0igePKHVh/UXJp7knSfoAjM3omNt/6uRq2Wywmbck7uSEB5uHmyLlqGCDs4bZWsDbn3rvQdh/s2qzfMtVL+gbmhqF+v0yFLq6+VYIPe43zNB36q6D9IYYizg+13y5yaQ2H8SOcBo0+UUJx3YOKEf9IYd7C3SO0GHwhq15Sf/pY4U8jJP6cqLRgr2UrCMY+kBpp/++QNCGakNn0o+6xF2YrdkC5UZzbhgX/mluhSWAuGaJTLJbdXbpeRSYxle4mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hUuMHjoe75rqWTnQaVQatauchNyXq7Z+RK96qIFK5Io=;
 b=FDu+wwZBrjMHH2lISFucuqHo/Iup3IrNrza3Hl3DZwQgpDuxOH9FYMkcpMTKU4xucAUoVAv+NnQu0OjqvZnz82xdbvIjaXjpMgC+Yw4hhf1aT1kqhZ0fjCaV2wxZXJMpAo/mGpC/dwooESDNzgm8iBAFyGFBT0GtdYHpt9CQZnsTnGzIh/QlJqqU084oKCpCNdjBy9/KocrFV8p6yvOhSB046LpPMw4U7f4gx25YyW1pwASNFUZrpbCL/KUeEbw4Dx4cXA1n5/Pr7vaMrS2ii6D1jCSx2jEdi41D+cUbF1cx2ZyjrSvRzJz4D37vL8CrolFJ7QmDPEHEl9WntLLBMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hUuMHjoe75rqWTnQaVQatauchNyXq7Z+RK96qIFK5Io=;
 b=Y++f/hypMiLNY8Mc3nRnA95quJq6oAOkwhKJ3YCWoatn3RNtUraDJMPKWfQcX7I69g/onfQlqsz+tbZ7qVwuBe8fM05yqiSIKTek6xDUOIrgDrkWNViQmNjPCwXeFtstOlvHOuSEsA84cf9n2tTU/rlqegVwL8CYWt+BVUPqFs4=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4885.namprd03.prod.outlook.com (20.179.94.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 21 Aug 2019 02:02:24 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Wed, 21 Aug 2019
 02:02:23 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v2 1/3] kprobes/x86: use instruction_pointer and
 instruction_pointer_set
Thread-Topic: [PATCH v2 1/3] kprobes/x86: use instruction_pointer and
 instruction_pointer_set
Thread-Index: AQHVVwqiEXrXfYjUc0SG3b0/wT6us6cDu4YAgACFhgD//8UhAIAA0YuA
Date: Wed, 21 Aug 2019 02:02:23 +0000
Message-ID: <20190821095109.34c8a47f@xhacker.debian>
References: <20190820113928.1971900c@xhacker.debian>
 <20190820114109.4624d56b@xhacker.debian>
 <alpine.DEB.2.21.1908201050370.2223@nanos.tec.linutronix.de>
 <20190820165152.20275268@xhacker.debian>
 <20190820132110.GP2332@hirez.programming.kicks-ass.net>
In-Reply-To: <20190820132110.GP2332@hirez.programming.kicks-ass.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR03CA0007.apcprd03.prod.outlook.com
 (2603:1096:404:14::19) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a617a94-17ba-449a-3b57-08d725db9b5a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR03MB4885; 
x-ms-traffictypediagnostic: BYAPR03MB4885:
x-microsoft-antispam-prvs: <BYAPR03MB488506EC9DE9722D8A069701EDAA0@BYAPR03MB4885.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(366004)(346002)(376002)(39860400002)(189003)(199004)(316002)(76176011)(6916009)(6246003)(8936002)(2906002)(86362001)(26005)(50226002)(81156014)(81166006)(52116002)(99286004)(8676002)(6116002)(9686003)(53936002)(66476007)(229853002)(6512007)(66556008)(64756008)(6486002)(3846002)(66446008)(66946007)(6436002)(14454004)(25786009)(4326008)(54906003)(478600001)(386003)(7416002)(71190400001)(71200400001)(256004)(305945005)(7736002)(66066001)(11346002)(186003)(102836004)(6506007)(446003)(476003)(486006)(4744005)(1076003)(5660300002)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4885;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: shHB0z3Lt1+J1Ki7s8ZOpHzcAyXBvr8/NFz/HzIhP5L/GEypbQo8nQvq655e/o4DqQtVdzKqxn/l8VsKQZLSM/cAPcHmr4ORSE7XAvL43Wvp9kA2Ho0zSF7CmTkns8lw6cZppXUpcM/6b5gFSYHjjjw7zOQ5rNA3pNpbgKwlRygKQwUdtHswgzD9G6IKchJab/MtxvVS6/CAIfaaH8cdoAjG5nEpZY90U0NJwj1xdvF4VXXeTB0bCCHAg/ErwBtWGLCG8FDrn8CEUbBmX9MFkKGTfSGSlVb83pBuJa7ql/xiIwztBXLUOrhtJVvThaggThldQitDDGclonePbeHnk7gzkYUkTEy8tUIyvVJQui6a+Ytc0GIXLtj4SQ9ox2bleBKHQ3aTFGmumd5MHyqDinnuYBSA9bbHb10Vw0RZOYY=
x-ms-exchange-transport-forked: True
Content-ID: <4C07A4FB8806CE458AFD476C7948DA7B@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a617a94-17ba-449a-3b57-08d725db9b5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 02:02:23.2990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DB9R5wdkeldXDg4VeETorIOfE5CXxsTkOiMIMFEBsF+Xrh9e7kQQUNpcehD0zQgNjJPGvShpX3Xm0PF5zf3uaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4885
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_190228_310748_549CF92E 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe41:0:0:0:61c listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Masami Hiramatsu <mhiramat@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On Tue, 20 Aug 2019 15:21:10 +0200 Peter Zijlstra wrote:

> 
> 
> On Tue, Aug 20, 2019 at 09:02:59AM +0000, Jisheng Zhang wrote:
> > In v2, actually, the arm64 version's kprobe_ftrace_handler() is the same
> > as x86's, the only difference is comment, e.g
> >
> > /* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
> >
> > while in arm64
> >
> > /* Kprobe handler expects regs->pc = ip + 1 as breakpoint hit */  
> 
> What's weird; I thought ARM has fixed sized instructions and they are
> all 4 bytes? So how does a single byte offset make sense for ARM?

I believe the "+1" here means + one kprobe_opcode_t.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
