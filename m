Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE6292279
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2g+A2SCoQ85N8IDbOODn5MkS0jAEUGf1eHnSml61AaA=; b=UFgfYF2bKX9PBw
	seVyxVHJQi+8R0Kxw+c+6Ws41E85PhUFQiaFJgOZmXHBscl9gW+5e9xSc/nRNfR/nNAMUMF6JPvSF
	j7O+QZFm1YFO+7ssUz8Ew7MtA23T2L3bzoQSR/yMD2zTA/uNxvp3lcp0X13Pahf0DTlLMGIY8/XzU
	QY4eXR4S/U8IkxZn9hyJbzPfVcEIP6oQ0UVroMqlcz2Aqe8E8itR+SFfe2vvrYxbphtRRkfGg9oSg
	6lAa4cy48Un9MizIOBY5I1UiJQEF7o8FIDFyjaU414pEoHm8NTWJF4b7CYklLZBzK07Z35w3Ve56F
	Axc+px30cX7yvG0qNwow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfwm-0004AN-NU; Mon, 19 Aug 2019 11:35:36 +0000
Received: from mail-eopbgr770043.outbound.protection.outlook.com
 ([40.107.77.43] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfwf-0004A5-S3
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:35:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GGJfBOmtC7Z/vFhZhvpla7h4onVnrShExDunL/E7qz9fbHsSmMoj10wjZF8cv+ySpZI9jbdCMkCqon5Hkwr7fL5icAlgdaKhk746Zq4WR970fPhPJEIPd7dZwHs6HeuK/3FMzkpVEAJcAr2t7wkOS/o+G7f8H9sU1MXFGWwnd6meobxPEhFgxdoLryllWsrAVqP+pBUyerrZnEQZsO1a8vOnXmhLPSRYvVs3as95PM8rbCPDjjhQX9hSHGEA/QAFCMbWYl+w7vHStSLTRbTpd3niuM0Lbe0xLq8CE26gT4yQSjlF4JlObWM4c30alR4uEdIsoM2E8JyEWu05X3sQfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7JbyKdtNZqv9yjzLrTcjbpQLJyia6NyDOhKaTO8cMnI=;
 b=dhQ+HNyMcxLKKXuhrZEL0jDb+11j4yafnKABJxeN58NVtpyjRjWwnEKJi8Ho7nd48kCGQsbluyhZSz6p5q9qcg8Tuq6X4QBecMF/TPsxk2cNxwoqOwNEtwrkJIkPrJOkJOUsML9qylogRXe/H2J89qDv8GJEnD7Yt4sBACCXrLWGUM4aCeul1a9Zq49qb2fXdPgPX7ttMMk061QEeZjVNC9Oc4BfZE2rAE1PyBA3Y8HJHsOwolUlopNiyzY9u45yCTjz+nPq8ufyGvlO0rRsQlX28TOFXEZ3HWgMNT3sELUsYuC1moFnXp/k3nxMxCt15j/Qj7ql3fGQ+yYyzknYDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7JbyKdtNZqv9yjzLrTcjbpQLJyia6NyDOhKaTO8cMnI=;
 b=Mmt7EJATpMv+kV0mngJe4TgOP+7tp8UJhsjT6C6n9pxGgrGUANiCF/3zI0Ms0xKcoudpKQFiypk4ZZHmFAn6mi/Iaqcd/hw8fDIDkqtAhdjhpfYL4OWnQrR4QkmbD/nsrQI4fmFLKhutGjl1+/VVUrrbmegoa5OCx/yp5oIXOyk=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4838.namprd03.prod.outlook.com (20.179.93.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Mon, 19 Aug 2019 11:35:27 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Mon, 19 Aug 2019
 11:35:27 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, Masami
 Hiramatsu <mhiramat@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>, "Naveen N. Rao"
 <naveen.n.rao@linux.ibm.com>, Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH 0/4] arm64: KPROBES_ON_FTRACE
Thread-Topic: [PATCH 0/4] arm64: KPROBES_ON_FTRACE
Thread-Index: AQHVVoIyGL65+CBfE0+6kLLVriVa9w==
Date: Mon, 19 Aug 2019 11:35:27 +0000
Message-ID: <20190819192422.5ed79702@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY1PR01CA0135.jpnprd01.prod.outlook.com
 (2603:1096:402:1::11) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 05825207-6d93-44d5-e074-08d7249954c7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4838; 
x-ms-traffictypediagnostic: BYAPR03MB4838:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR03MB483819608B3728D7CEDCAB62EDA80@BYAPR03MB4838.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(396003)(376002)(346002)(366004)(189003)(199004)(316002)(50226002)(7416002)(52116002)(99286004)(6486002)(478600001)(2906002)(66066001)(966005)(71200400001)(54906003)(86362001)(14454004)(3846002)(5660300002)(71190400001)(110136005)(4744005)(8936002)(6436002)(66946007)(305945005)(81156014)(66446008)(64756008)(81166006)(66556008)(66476007)(8676002)(6116002)(7736002)(186003)(102836004)(1076003)(26005)(6512007)(9686003)(53936002)(486006)(6506007)(386003)(476003)(6306002)(256004)(25786009)(4326008)(921003)(1121003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4838;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zg6FCPvuIwFNo9vuVFyb5l9pQStiOEsSDynFSnptMlF7ncRFj072T28zTEKwxniDgMIl0HWak4oK714Q0mJG7beYprKhWDVNiE6ymgBpdHGs0vfz8jEzSa0GBnWkR3dJc7oWKno1dLOR3e9OWZlNXA5GNDfA+j6IPZwfHt3j6jVkOx+A7L+OJTJ8FNCy5a80A/62f6lcfcdVu7IrXydERmkfbfHUJau1paH8xBLwHjJn6XW8/eGGxl0zKQCB/Q9BDay6y1WsanqUGpBiA6cwLbd1yKk8YZwM4agDHlRPcsl/e84VJ/1xPW4gFZEzUL6uo7caz5zto1mv27fKRcqRI4JhplH8DGVKe8Yg1E4PBq3UJ4gZCJxNhyZM5DCYGgna4aqP8SHi6Qvq3zEOKS8quHdGNNNDkB2gLcwRh0DDIIg=
x-ms-exchange-transport-forked: True
Content-ID: <FDF3CA35498220479DC562387B93860B@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05825207-6d93-44d5-e074-08d7249954c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 11:35:27.0274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PTzwaOTANhr7xVuqhe02pSkZWJeCP09hO/XVE335DV32OtdZ+n4jBXdQLn54nqQVobS/1AWzSM6ymk6TSeHN7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4838
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_043529_915099_ECE75CEA 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.43 listed in list.dnswl.org]
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
Cc: "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement KPROBES_ON_FTRACE for arm64.

Applied after FTRACE_WITH_REGS:
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-August/674404.html

Jisheng Zhang (4):
  kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
  kprobes/x86: use instruction_pointer and instruction_pointer_set
  kprobes: move kprobe_ftrace_handler() from x86 and make it weak
  arm64: implement KPROBES_ON_FTRACE

 arch/arm64/Kconfig                |  1 +
 arch/arm64/kernel/probes/Makefile |  1 +
 arch/arm64/kernel/probes/ftrace.c | 16 +++++++++++
 arch/x86/kernel/kprobes/ftrace.c  | 43 ----------------------------
 kernel/kprobes.c                  | 47 +++++++++++++++++++++++++++++++
 5 files changed, 65 insertions(+), 43 deletions(-)
 create mode 100644 arch/arm64/kernel/probes/ftrace.c

-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
