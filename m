Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6478F955C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TjLNuUcXJGusELCGwhPnlqJZ2cePdAP8PWMkDrY6PDk=; b=bz5Xptp6TtXePH
	oEqdU8SOOUr5FrhzkOdWhkPc153fm+/lkvxoUytrtUuT8ViaSP6MD9vAPcew5w+hdoS8IDkxNMBTV
	d9lVDCTYS+SEgxHW1Z45nrmOEb5GiPnRm6YeNdR7KgzW33D3q9mmmQtog4rHri537OIcbJojCrMlf
	AXQKk1/LWgpEd6RdWMd3pcJc9c/3Gi/VIi69JLkTW8PvzJOLLf44Ct0XhMPoZiHl6PF0ZT5AdgtRF
	MCYjM2xotxdbhWjgHhHS6DI7DCvx35biMrmCHzTzQfboche9Uzrr+qL34EHfBTjMAw4VKh8OtqbBC
	nETBk6ZESlXH1gwTtJsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzvDM-0001jz-O9; Tue, 20 Aug 2019 03:53:44 +0000
Received: from mail-eopbgr710056.outbound.protection.outlook.com
 ([40.107.71.56] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzvDB-0001je-2W
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:53:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F7q68aOII07dbCPVlZDbWL/VA4WV1ZTem58jonRUwqBzHS6aArLR2z3ojB65Gr42V8jz5c7K57GjHQ1hU9OzvGNFdcmaGWobDRYPoOAjVVC+107PCj+5OFk52e7LNxpiYcc3bFUM71C+uHlGuAFQY4/6R609FGytneVCm3evn/CWemhT10GptLSBHSefj+hyZrcCFZCsRtvzB3kI1PsOEVyVC6eYE8A+PTRcSn6W/20R0WqazfuqF78jItRknEZBP303fKbBIiycOMK095IeZUWqSB68HhOp3WKYwLWUHltz57Nm4zACJjicW0CvHALJh3XjYDKvyV58004Ran1rFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M6liWGvIujiyKQMbDLvytJ2ECSW3hXjgw7Be6M5leWU=;
 b=JEC0j0jBv5Fvy8EjBUTePLjBwbl6oepnpYpRk0tFoNXQ2QIzP7D9w4AygVLjLjBn1WCh8vcScKLZY0AQGwhwNldgp/JSs7DjGawkoy9y/V4Um3DMDhpN3EH1VcD/IHAQU2jyDpMtk5dgYNqEFA73C6Zz26U3ByQB3AfW/1fNpUuUUMIXYOCltCne4zE/Ljq8Rs9yhc0XxNByB07FXl8DDDaEDKYJPVCgMJ+Drc7eSEjcLjWelOcEz5tPZHTNN/pkjG+uGKSuoHmwZ80CPgKycObYumWfoqBRZvuUCbqUP0yF2oTzvxJ/bRXGD4aYWQ4ZmtmNPnMoXwbDvtyvMhe/4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M6liWGvIujiyKQMbDLvytJ2ECSW3hXjgw7Be6M5leWU=;
 b=QaRLnHirbl599QEXr+mhGFW92RpiC3VmmFS76kctwTGFkyBquo5No4uLBhmQinsRWuHkSNHp2GLWPu37Cgay/MIRFETF8brueVBRgueDV5KHmm3Wk/kIquT9n9SZeULo5W1MxXIkTcZV8LCsC2i9WIZ+tcV1dINllIXucvCsCco=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4870.namprd03.prod.outlook.com (20.179.93.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Tue, 20 Aug 2019 03:53:31 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Tue, 20 Aug 2019
 03:53:31 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet
 <corbet@lwn.net>, Will Deacon <will@kernel.org>, Thomas Gleixner
 <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
 <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, "x86@kernel.org"
 <x86@kernel.org>, "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Anil S
 Keshavamurthy <anil.s.keshavamurthy@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Masami Hiramatsu <mhiramat@kernel.org>
Subject: [PATCH v2 2/3] kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
Thread-Topic: [PATCH v2 2/3] kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
Thread-Index: AQHVVwrVXMrB52r5zEm7ypsroIKAaw==
Date: Tue, 20 Aug 2019 03:53:31 +0000
Message-ID: <20190820114224.0c8963c4@xhacker.debian>
References: <20190820113928.1971900c@xhacker.debian>
In-Reply-To: <20190820113928.1971900c@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY1PR01CA0180.jpnprd01.prod.outlook.com (2603:1096:402::32)
 To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 736b347f-b974-409b-2ee0-08d72521f77c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4870; 
x-ms-traffictypediagnostic: BYAPR03MB4870:
x-microsoft-antispam-prvs: <BYAPR03MB48704C345D8BCC1042ACCAF5EDAB0@BYAPR03MB4870.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(136003)(346002)(39860400002)(376002)(366004)(396003)(189003)(199004)(6116002)(6486002)(3846002)(53936002)(76176011)(2906002)(6436002)(86362001)(1076003)(64756008)(71190400001)(6512007)(110136005)(9686003)(6506007)(71200400001)(54906003)(66066001)(5660300002)(4326008)(14454004)(316002)(52116002)(66556008)(476003)(7736002)(99286004)(446003)(2501003)(486006)(386003)(8676002)(81166006)(66946007)(256004)(478600001)(50226002)(102836004)(8936002)(26005)(305945005)(66446008)(66476007)(7416002)(186003)(11346002)(25786009)(81156014)(921003)(39210200001)(1121003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4870;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jCr85pMSBpZf/iiTBNOAhYnJ5xFbTKe8X4xtmJrxBD1sszI8fCBxWBiAAZX9NObyVHX+0xGGFib9crGswXfiAyEZap4+Qu6pIhDxPfj3DJZqVLRXBlWdJF7e44bp7C47xf705mr5vrPAtB7g9b4RNUc0RCZFENiZsBMTtfxdLsCYQab2+04ApIhLbHSaHl+VR77t10kDwbOTH98GZzJAhAHxceZimhePqoMUbaOtLc5NdKHNhxNt4pzVaTUywHXLxFxNuq6zPav10heXZVs8okBbQ74ogUlEqhtU3U0ijRx0jB0DkghlpPiZg2MLxJKl6zPV4B8ZbqcHnMmL9ok89/SjIgMGd7hNEuz3IvCWCz0yj1Cey5ykRdFwCKKPbwABmImQOCewNI+6xYv2etadp0BEEK0vrgUK/9mJkJNG8+A=
x-ms-exchange-transport-forked: True
Content-ID: <CBA4773DF0ABEF45A1A321C6C29F817F@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 736b347f-b974-409b-2ee0-08d72521f77c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 03:53:31.5622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DVcKL1qaCY64uLm1mYUqT7Zuz8nHg1XeXtugrzuWZIjXzbRfk1okiEyjk1Mmgnk+ZT7yxJtG433sq+cGKgSicg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4870
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_205333_117258_46748CD5 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.56 listed in list.dnswl.org]
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

For KPROBES_ON_FTRACE case, we need to adjust the kprobe's addr
correspondingly.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
 kernel/kprobes.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/kernel/kprobes.c b/kernel/kprobes.c
index 9873fc627d61..3fd2f68644da 100644
--- a/kernel/kprobes.c
+++ b/kernel/kprobes.c
@@ -1484,15 +1484,19 @@ static inline int check_kprobe_rereg(struct kprobe *p)
 
 int __weak arch_check_ftrace_location(struct kprobe *p)
 {
-	unsigned long ftrace_addr;
+	unsigned long ftrace_addr, addr = (unsigned long)p->addr;
 
-	ftrace_addr = ftrace_location((unsigned long)p->addr);
+#ifdef CONFIG_KPROBES_ON_FTRACE
+	addr = ftrace_call_adjust(addr);
+#endif
+	ftrace_addr = ftrace_location(addr);
 	if (ftrace_addr) {
 #ifdef CONFIG_KPROBES_ON_FTRACE
 		/* Given address is not on the instruction boundary */
-		if ((unsigned long)p->addr != ftrace_addr)
+		if (addr != ftrace_addr)
 			return -EILSEQ;
 		p->flags |= KPROBE_FLAG_FTRACE;
+		p->addr = (kprobe_opcode_t *)addr;
 #else	/* !CONFIG_KPROBES_ON_FTRACE */
 		return -EINVAL;
 #endif
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
