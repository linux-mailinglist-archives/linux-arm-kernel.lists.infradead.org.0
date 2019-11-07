Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87934F28FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A3R0Ag+u9m0Yh+3I+cdQqoXapnVBIQoNOB4PbyEtxYY=; b=OQ27XPxOebupZj
	bH7yie43S2oKqGvgfqKOp0+Be85dCvYHNriSLjGnt2hybTztumGTwc253sQ7AzwSanpLxF1C44LY/
	qGrkSR3bRDdbcrW9bu0wM3DMjsYXVs7ZPwDrfjxDoJHOLKjTi+GEQVHNGG6ehNXyEbkn7whUqLXIn
	GmfXcLE/xtgf1KPd6y+SjwUQcguGG2oQZ+8UIe8qaQ46aH6QjAOeVES3qSH9xwjUxwT8zG8HdwV/N
	z+kkrz6MgKWD+q0wwxkepRj0btJlUFYZNhOf9RHeCuETI8ZojlvzURBlEJ9QQhwBlR2/e3YOPCsaH
	PEnlMjwFAhkFvy5/42CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSd3D-0007wX-Ug; Thu, 07 Nov 2019 08:21:55 +0000
Received: from mail-eopbgr790040.outbound.protection.outlook.com
 ([40.107.79.40] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSd36-0007vk-K8
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:21:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nb5m3Zljd22tmtXjNLlboss3HLkfaS/GRpBzKFRRkodzt+1pzxmMi1xrw1GdXhdhfuYPghC/rL/aLQt+9ko3uGP05/9mrCrcCbvd4GZSK5ji54Gkil1hBWq+dBe5w0kc4iVNpB7DuOjsHvn2mIobS5V3wyfHq2CRSAjZOaSn0nnpeS9oErCMGtTvy5kOGUWOjP8MJHvyZx218AXrGeiTB60fggHytZeXHZwK0FjNf/BQ/3pOqmY/yKNrWepAMvGpFRuSVU03yOVfRZdg0wK9HbHn3zntuEWbNKueEklMja/p4s7SVLroJ9qiUkWjCO+Dww0E1RWEYIMvR+d1nAcomg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C8Ts2d8pHRDLT0IACX/DY/FykRL/kw6c8+nK82VL1xo=;
 b=Ez+i/azMC18RldXSgwBTZ0c3gdjGbrSg9hfssNvhHta6ox6tuALvdv1De6QJE/TYkeAqtQ1j0U73KvfI1+8/XjV0UwZ0QFOTgH3Lxu0SKBvA7ov50aNXz7MV6K/AkbM7KO7dfoLCr83IgE353lVkuiJs+Y0nn9R6tMxTjZziuOf5BXL7uCnNFKYQnXKnBSUcjfocPY2TtQ/fRGgdgtvAh14DRli+6wkkXh/SNd1TojoD4seStqKKwt0x/SjGOS/8fUIjZ6c9logxumNqaLWsCGSo5Jln4uA3Zp61TfBkJ2TGsfxpEUP8DzNlZac12pNBHF0DfvQsZovPL4UE64H2+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C8Ts2d8pHRDLT0IACX/DY/FykRL/kw6c8+nK82VL1xo=;
 b=N/fe8xy7yeMqYLSD9LyS2Sj8ejGYEVeJkYm9w+HaOGd62WUtipW+hYr7Ee863heJvx7MoJIcMG4rEb1aHxjOaDg+Fq+ytYx5q5hfqlzxrm7LvFJ5YhSQJQUDgKYmZmuGBumUpgtJKOc6LZ5QravCwBrbw9sf5Nmfm/25KsiQ3jA=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.93.213) by
 BYAPR03MB4711.namprd03.prod.outlook.com (20.179.94.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Thu, 7 Nov 2019 08:21:42 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a8f6:f5d6:f438:ec61]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a8f6:f5d6:f438:ec61%3]) with mapi id 15.20.2408.024; Thu, 7 Nov 2019
 08:21:42 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH RESEND v3] ARM: ftrace: remove mcount(),ftrace_caller_old()
 and  ftrace_call_old()
Thread-Topic: [PATCH RESEND v3] ARM: ftrace: remove
 mcount(),ftrace_caller_old() and  ftrace_call_old()
Thread-Index: AQHVlURih9isV5S0iUaVIqdw6yr7Aw==
Date: Thu, 7 Nov 2019 08:21:42 +0000
Message-ID: <20191107160840.7bd821dc@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR01CA0162.jpnprd01.prod.outlook.com
 (2603:1096:404:7e::30) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:139::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c50b14fd-81cb-4cd1-9ebb-08d7635b8535
x-ms-traffictypediagnostic: BYAPR03MB4711:
x-microsoft-antispam-prvs: <BYAPR03MB471190299CAD4CDD7F477F97ED780@BYAPR03MB4711.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(396003)(376002)(39850400004)(199004)(189003)(4326008)(8936002)(66476007)(256004)(86362001)(66066001)(66446008)(64756008)(66556008)(81166006)(5660300002)(66946007)(305945005)(7736002)(1076003)(6116002)(14454004)(2906002)(8676002)(3846002)(81156014)(50226002)(102836004)(25786009)(54906003)(52116002)(71200400001)(71190400001)(6506007)(186003)(386003)(99286004)(26005)(478600001)(486006)(476003)(110136005)(316002)(6436002)(9686003)(6486002)(6512007)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4711;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rwE6uvJnadQhfygeQAKGhH3/IQ5ku2ppobxV36FBIFECmbAxctNv3+aPdq37f49/9X4FI1zRZ2lG0tMlWvHJ5eBDng8MmIBjwvuJz4HLTSc2fkWHjjTxOKaI0uhv5nmYuyZGHwBOKreTEFfMZ5+pU0QSz3SpbUQIN6ztoXfjE4jvF0lqAULwByXbpF7NE8MExoqQFg+scRvYM6Q+y6xxy4DJK4matntcegTCDRz19f8QVoNzt6m4QpgL+9kzUiLSKV1Mli0tMZgeH12E0Oq84apliuCWyOGGzbGeJX5o6/yZIxBIaNv+mvkGSDp9DkAAjSm+OKzOfRrJo0aKy3xjjHPbOPz645AQrtjNY2J7F5j9G6wy3AtWSn8SPgWzXaEjrPAmHhgA6w2xJj0UJe9GkP++xrrvS54aU+tXBDE9fRCBjGpd51UOXZCwNoIYXzzt
x-ms-exchange-transport-forked: True
Content-ID: <B95173C301D7DD48A4B341BCE1200C8F@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c50b14fd-81cb-4cd1-9ebb-08d7635b8535
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 08:21:42.7010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S9AKEZR2ayLyrgYiZ6Ihw0UqLv/Rgk+SXTXRLd/Xjpm+0Tw0NWgqXsRyBx/2IkPn2YUO60paAk8w1hploCjRKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4711
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_002148_731211_50792596 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.40 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit d3c61619568c ("ARM: 8788/1: ftrace: remove old mcount support")
removed the old mcount support, but forget to remove these three
declarations. This patch removes them.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---

Changes since v2:
  - really remove mcount() declaration too. I made a mistake when sending out v2

Changes since v1:
  - remove mcount() declaration too

 arch/arm/include/asm/ftrace.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/include/asm/ftrace.h b/arch/arm/include/asm/ftrace.h
index 18b0197f2384..48ec1d0337da 100644
--- a/arch/arm/include/asm/ftrace.h
+++ b/arch/arm/include/asm/ftrace.h
@@ -11,7 +11,6 @@
 #define MCOUNT_INSN_SIZE	4 /* sizeof mcount call */
 
 #ifndef __ASSEMBLY__
-extern void mcount(void);
 extern void __gnu_mcount_nc(void);
 
 #ifdef CONFIG_DYNAMIC_FTRACE
@@ -23,9 +22,6 @@ static inline unsigned long ftrace_call_adjust(unsigned long addr)
 	/* With Thumb-2, the recorded addresses have the lsb set */
 	return addr & ~1;
 }
-
-extern void ftrace_caller_old(void);
-extern void ftrace_call_old(void);
 #endif
 
 #endif
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
