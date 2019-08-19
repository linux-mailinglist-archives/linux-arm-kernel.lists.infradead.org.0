Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E83D9224B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oq6lLq7tQ2/X68la1jJYAMOzWsKxSecWy0xrtyZWA40=; b=KFyRBZ2oElVX42
	1ufzepR+4DwDLTv/60KbaxaTEa2dScF2DGeUOQyOccYMOgbo9bAjtk0WppJPw+OziCTSSqLFbbBkW
	G79cEDCRgL4oQ3tJRWFKpZwZ8MmjR4h6VTFuBmYU0aOJvwjWWh+XTfUKQnTgkGqY8eC215/EYqE4Z
	kJANoFX4OnNk3r9y1lKmpr+QomYmJza7OxbTpHV03psxJPO/sLRlHg47X8ufUVXkFhq7WbWXWLUsP
	ft5YdSmdW7+mUDAjKtC7ytfRbXH4zpaKfEHm2oXQokStHttpQO9vXXezfxjLRilHIp8qyicAcsrXX
	IM8Mcm8y1Gk8LeeD9WmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfp7-0007nC-1k; Mon, 19 Aug 2019 11:27:41 +0000
Received: from mail-eopbgr740071.outbound.protection.outlook.com
 ([40.107.74.71] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfow-0007mW-5x
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:27:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VcU2B5kV1eDaAbnXy84vHUYkLqx1ojvMnzhLT51QL8Z3Xjz7Z/c742kAk256sEuBapMnEs8HySsYvihKv9aODBs6gsVpFG1/F+QDd185ftzFH7Ssk/KLAm9WUmJvDhpIG+DznPC2QJZawGtKmTir9+woX2XVFkQu2zgsYZJXXM+WyChNcBhlMzoilf6cbuoB8Ka477L366WOyvSWrQzatHgvIVkTuTErmvHaE7AZ8X+coS+RBOWjxzRc8x48AtZcdBS/RddpHAvNe3pK0Azak7YZiBqfNnDzFfVuTrssbz1pOXLYrncHZt9r3JEIXq956QurZ5MdBSqFaiPOhb1IOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pEz8IdK1P2luteFer3XGeDqlOrXVURwKfk2ULhBt1b4=;
 b=C6jimNoGhurHhZfKD7hdKav4ysBWQ0pU6na08oCLVkOA39LdzuI+q05dVsmAVARlJE0wdYqsrSd/MIF48idF5ZTuMAqMflRAuahIszW1424Ge4i770ez8Va6nNidY+gVbs7lYOF4q9aE/HFqzaxFdYwE88amlJv2iNV9JvAyOM4Heq3wkVoBb/gRtRv6wlEpoCRAOIEoNRbnPwId1EYxaOFareS8TmHmey8uCoE8mLI3niKsGWx9ZO9JsBiqro2ruWEwq5nKYwk8pr6LsbYlCKrfGjCjloVusMuoSL2Kt6nLjrgWu2Ahyl13bOhd5tpAUFeGog2bm/J6lGKHAosp7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pEz8IdK1P2luteFer3XGeDqlOrXVURwKfk2ULhBt1b4=;
 b=PcOZpFhuBpf/EAreduyee4j7An9IVN6LwGZqDx710lT5pjfLn8hQlDi3HWgX5YmOFgmx0pUR+yHtKUb/d4hokDhBw38mrfs0Pt4c98EkEzXzHE8GJ5KCm3thsNcHn9kYgO6/35gRCB9mI4d9j7qUo+V+sbbST/F7YX//rOn0xPo=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3528.namprd03.prod.outlook.com (52.135.213.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Mon, 19 Aug 2019 11:27:28 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Mon, 19 Aug 2019
 11:27:28 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/3] ftrace: introdue ftrace_call_init
Thread-Topic: [PATCH 1/3] ftrace: introdue ftrace_call_init
Thread-Index: AQHVVoEVwhJ6aER5rUqFs9/8RPsn7A==
Date: Mon, 19 Aug 2019 11:27:28 +0000
Message-ID: <20190819191622.57050fdf@xhacker.debian>
References: <20190819191530.0f47b9b1@xhacker.debian>
In-Reply-To: <20190819191530.0f47b9b1@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYCPR01CA0098.jpnprd01.prod.outlook.com
 (2603:1096:405:4::14) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9c6fb15-3290-4c27-6da9-08d72498374d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB3528; 
x-ms-traffictypediagnostic: BYAPR03MB3528:
x-microsoft-antispam-prvs: <BYAPR03MB352803F65D299B97FDA2C602EDA80@BYAPR03MB3528.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(346002)(136003)(376002)(366004)(189003)(199004)(5660300002)(8936002)(50226002)(86362001)(81156014)(81166006)(71200400001)(71190400001)(25786009)(486006)(476003)(8676002)(11346002)(14444005)(446003)(66446008)(64756008)(66556008)(66476007)(66946007)(1076003)(6512007)(66066001)(9686003)(26005)(6486002)(305945005)(99286004)(186003)(102836004)(2906002)(52116002)(54906003)(53936002)(3846002)(6116002)(316002)(256004)(4326008)(76176011)(14454004)(6506007)(386003)(6436002)(7736002)(478600001)(110136005)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3528;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uOlTLWm4Z9VLib/KTEEqxeJFypMT9a1I2ZkwEtSDt2fpsST8b8Tu1+uVjbQPePc7IfQaQp3+19UXzucHcRCaKYhPZO3bT5sLuJ9OYdaCsr2Afsx64be/PdT0nHHR1o8v7ujn427ezzZyWn6c3NSE/bORa1iFb1sT3NzXpKVa8p7GhWJdYxFBicE6adhs0AI8ruTQlDzwelM337khOhJOYWPu6Nv0168XynyfCorvCcaAoaplNLsKEBXCAGyPXi3yO/VtrsBPnNm80/wGum55E1aCKdewwGiyZ2pJPxkOHlOrfIpBOnn7lF3T6/wY30rFrz2F21wZEr8W8fvZWSEv9EFijeBMtEjLPU0+WDn4JtDbUhE8IfHC39svij5Mo93BX+yK9VWzPZtej3E1mlnNhWlyaHlXupvk++xKPdAKYwU=
x-ms-exchange-transport-forked: True
Content-ID: <65D3633956CC7442B998474B06CF6B85@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9c6fb15-3290-4c27-6da9-08d72498374d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 11:27:28.1102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YptC0TCH7bmLao00rAzP769ogt5dQnz6ucWI9LnufRUuoYtvPdSDS0SGJ4H8HqMmjJDl4m7Q3c7pYrazejFdyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3528
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_042730_217240_4C1D0C47 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.71 listed in list.dnswl.org]
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
Cc: Torsten Duwe <duwe@suse.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On some arch, the FTRACE_WITH_REGS is implemented with gcc's
 -fpatchable-function-entry (=2), gcc adds 2 NOPs at the beginning
of each function, so this makes the MCOUNT_ADDR useless. In ftrace
common framework, MCOUNT_ADDR is mostly used to "init" the nop, so
let's introcude ftrace_call_init().

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
 include/linux/ftrace.h | 1 +
 kernel/trace/ftrace.c  | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
index 8a8cb3c401b2..8175ffb671f0 100644
--- a/include/linux/ftrace.h
+++ b/include/linux/ftrace.h
@@ -458,6 +458,7 @@ extern void ftrace_regs_caller(void);
 extern void ftrace_call(void);
 extern void ftrace_regs_call(void);
 extern void mcount_call(void);
+extern int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec);
 
 void ftrace_modify_all_code(int command);
 
diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
index eca34503f178..9df5a66a6811 100644
--- a/kernel/trace/ftrace.c
+++ b/kernel/trace/ftrace.c
@@ -2500,7 +2500,11 @@ ftrace_code_disable(struct module *mod, struct dyn_ftrace *rec)
 	if (unlikely(ftrace_disabled))
 		return 0;
 
+#ifdef MCOUNT_ADDR
 	ret = ftrace_make_nop(mod, rec, MCOUNT_ADDR);
+#else
+	ret = ftrace_call_init(mod, rec);
+#endif
 	if (ret) {
 		ftrace_bug_type = FTRACE_BUG_INIT;
 		ftrace_bug(ret, rec);
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
