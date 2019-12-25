Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2AA12A706
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 10:43:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9wYweAq6SYPhR15TLKKZa/w2B2+Qis1OIjgmoUHQSQ=; b=RQLPQzAgohKqSu
	S/QTXckPwNCH+tM1MQVKK33ZzzqjCFT5vEJQLtYrrPVajUFNnJvjCXb6hQ80WoYKbid04lPlITMCZ
	FXYThayz/ffgAa9MIBPp42XDllhiPZBOv4GsggR1IA11+JO4nmu6i5+5qaPrVWAnkH2SHc8hXbCUX
	4V+NIOPAQLyNcV1GEf5SiDe8TnflKcaoCnGNA4orWuSu3QPwqwPNkLzzuThyzxUWYUarvXhP1et09
	1taHQe2+GDh6Y80sTmbrUaNxv9TAcrOWJnA3eTXGs/gE/c5EPNRRfXqN5Poz5h3NXKEjXJpsxHiQ+
	i+MJENsfXJzCU8N8rW5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik3C5-0002q5-4p; Wed, 25 Dec 2019 09:43:05 +0000
Received: from mail-co1nam11on2063.outbound.protection.outlook.com
 ([40.107.220.63] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik3Bv-0002pl-UP
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 09:42:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c+qbiN+U6x2ytoBoM74oVZn7czVVgVbJncBfXa0oHpWOZP2gxc4Nn/NYH35BaEyqhmDgx4yK7yYKLOaIbMtTskKFfgC5F+4aLje8t74nHAXdzHrgTXSJoupbB/KQz+Dht8bIw42n45QHUVYQzeqbG6GCoX2dP0QktHF9qc3Mkb5QtVSNRXuxzqY/qUJ94gTVm/DWeQnoYy7PodPASChODX27bI3yS2lWs4+cMBzlwafoSSt9VJapZMt0g9RK7BIeOQcLOzU3H7eJAu15coZOr67BLscDMRqytL1p7pwZ9KJjMxPC77r3e/1cesh7YdVC02W0igtJbwHtL/EwovwgBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ICoQ2OQzX55MiUgYN1zoHHYBWdV5Zm3IcBDHqsGI63o=;
 b=FIDy7ENF/EVFeab3xWPFWjxN/Mos86MEnezHAN7KExSG2O7gsAjUxADKiqUx0yzC5eG0Qa1kqvQnBPoPB3m3E/GHua7BLJOiCe/4tWmPPLc/xVwe44m6ji5RDVRnTy4nh+ddrdGAwRigI5T1kvXbNVaiS2JuzwfiRgH5rDCI4ZcRwTsVIoaG63JJvOYUNrUtFIw9K8N0yohQ2ChyL3HtwfUxsRqn6RA5BTyH3Gijcul2SnGP1zT7J61PA5Ut1kRIAtH475TIQOHsEg4HszvE5S8u5IarRTqOBtQ2Yx/eH1QP26XW800RfSQY+NA2322aI+7eSfL4483b/krbD3S23g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ICoQ2OQzX55MiUgYN1zoHHYBWdV5Zm3IcBDHqsGI63o=;
 b=kINL7k5BQWvh8Owf6Hj+e4qLgij9GXjbKD5IV96jL9pQCPaX0VSWu9BLMJa1D+5+EsVlWSYpyRswWfmpa4CEj3uEO2tCLTB5FGIs7ZQYzrNePl2QU1SfBruMduOQVIGKhdHhyBQ1XBwS+Ock08WkxFE+UpzZDOxOzd0GFzBymqA=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.93.213) by
 BYAPR03MB4213.namprd03.prod.outlook.com (20.177.185.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Wed, 25 Dec 2019 09:42:52 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a%6]) with mapi id 15.20.2559.017; Wed, 25 Dec 2019
 09:42:52 +0000
Received: from xhacker.debian (124.74.246.114) by
 TY2PR02CA0041.apcprd02.prod.outlook.com (2603:1096:404:a6::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Wed, 25 Dec 2019 09:42:49 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Anil S Keshavamurthy
 <anil.s.keshavamurthy@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Masami Hiramatsu <mhiramat@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH v7 2/3] ftrace: introduce FTRACE_IP_EXTENSION
Thread-Topic: [PATCH v7 2/3] ftrace: introduce FTRACE_IP_EXTENSION
Thread-Index: AQHVuwet+NDQHpTM7km5hPNb6KsFRg==
Date: Wed, 25 Dec 2019 09:42:52 +0000
Message-ID: <20191225172836.7f381759@xhacker.debian>
References: <20191225172625.69811b3e@xhacker.debian>
In-Reply-To: <20191225172625.69811b3e@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY2PR02CA0041.apcprd02.prod.outlook.com
 (2603:1096:404:a6::29) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:139::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 52e3ef56-3cf4-4e14-aca6-08d7891ecf9d
x-ms-traffictypediagnostic: BYAPR03MB4213:
x-microsoft-antispam-prvs: <BYAPR03MB421349DEEFF9F910F9801E95ED280@BYAPR03MB4213.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02622CEF0A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(366004)(346002)(136003)(396003)(376002)(189003)(199004)(9686003)(1076003)(5660300002)(86362001)(55016002)(6666004)(66476007)(956004)(66946007)(66556008)(64756008)(81156014)(8936002)(81166006)(8676002)(66446008)(16526019)(71200400001)(2906002)(26005)(186003)(52116002)(7696005)(7416002)(6506007)(4326008)(316002)(54906003)(110136005)(478600001)(921003)(1121003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4213;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pHCMS+N4PedcKcydfeW5MFMk1UmdhAJjCx/K23t2O4aU16724KD2DebaOiFaSmjEyHA+jlia9kIw3xXnM2dbMM4ZFIp+PTskcqPs79B3i6lwJUyiQqW4C0CtekcU49RaElJ9IOWy4vuOfeJX3WMHm7HvnG4PiNxsy01cccJKc4ezorhsH+JzbTm1znX40jUWBFMZ4SCZ61vgpmV0OK4zeVf88o8QST+lXPh2SEAq1fAYawHUclGbVOv/oFChv1Le/5KfsvlxhqEMHtiyLzOktyy7HO/dcAi1ZSfCIU300ZJTsBCO3emmfbjuDv6EMvi2wqS+rOhzXTsreR2H4pDBz0rq1b4AzjhNEfwb+asUb12ei+c+F6/RO4ASswuEJuVBUo9+16Yirh5DecvxUudU6iFpbuwXPChO+GZDPHDFAUGQX36hgZmkSxr3X4nGI4sMm1IhneXSiG4OlWYvn5RcPBPXAAWpsiCyb5TaLMmozP4kOL//pRz16wU8AkDCkWnVB7Bzsv2yqepvBKMVph7QNsH71Q629dWsbZvQFarwb2E=
x-ms-exchange-transport-forked: True
Content-ID: <E24EC6778D25A341AA2105525F1DAF73@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52e3ef56-3cf4-4e14-aca6-08d7891ecf9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Dec 2019 09:42:52.4104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b9rqria0Z1RJA/m9TirY3m17kvTfqUv/AqWB4gCaw5Z2h03CtmGW7OcG9wmOtj3+8AnYfLfCBoSRc3Axr6A5uA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_014255_977829_CD973D86 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.63 listed in list.dnswl.org]
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

On some architectures, the DYNAMIC_FTRACE_WITH_REGS is implemented by
gcc's -fpatchable-function-entry option. Take arm64 for example, arm64
makes use of GCC -fpatchable-function-entry=2 option to insert two
nops. When the function is traced, the first nop will be modified to
the LR saver, then the second nop to "bl <ftrace-entry>". we need to
update ftrace_location() to recognise these two instructions  as being
part of ftrace. To do this, we introduce FTRACE_IP_EXTENSION to let
ftrace_location search IP, IP + FTRACE_IP_EXTENSION range.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
---
 include/linux/ftrace.h | 4 ++++
 kernel/trace/ftrace.c  | 2 +-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
index 7247d35c3d16..05a03b2a2f39 100644
--- a/include/linux/ftrace.h
+++ b/include/linux/ftrace.h
@@ -20,6 +20,10 @@
 
 #include <asm/ftrace.h>
 
+#ifndef FTRACE_IP_EXTENSION
+#define  FTRACE_IP_EXTENSION 0
+#endif
+
 /*
  * If the arch supports passing the variable contents of
  * function_trace_op as the third parameter back from the
diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
index 74439ab5c2b6..a8cfea502369 100644
--- a/kernel/trace/ftrace.c
+++ b/kernel/trace/ftrace.c
@@ -1590,7 +1590,7 @@ unsigned long ftrace_location_range(unsigned long start, unsigned long end)
  */
 unsigned long ftrace_location(unsigned long ip)
 {
-	return ftrace_location_range(ip, ip);
+	return ftrace_location_range(ip, ip + FTRACE_IP_EXTENSION);
 }
 
 /**
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
