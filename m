Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D78F5D4D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 18:52:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DuDXwKt+2sgZnlaM3Ns2fq1MDFhYc3t8cED5wJ55hs=; b=ADxCfDFTooVAuF
	Y7BA3TgSBHoqr2XGjCWiIh6jhduIXs7O7xNjYZvYLdQXYa0dhPUIqlfy/3RAddMbrImp3Y8paA5Db
	XOl84vViBtmKuMgoR+0KVqp6a7+Xgrghhb8MD0UkDSXdMq014h55u9Mwl1O1rf/vEiuyJGVTRl8KG
	K6YDjfbJRZt0eYQ+22uv69hCa/ZoYy0Ms1Wt83X70Tn2FlBGKlQx8xb2rrigQKR5L/mthKz2rcFng
	zIxQ+69xibu445TZnXZF1/owSTFKIV1T/HmbeOUQr5fXS8M8NB37TqaCBPBqB+0vEphZT3ndwe+Gh
	4fF5ot6pY05x2T9ftFnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiM1A-0000XV-Mz; Tue, 02 Jul 2019 16:52:32 +0000
Received: from mail-eopbgr700102.outbound.protection.outlook.com
 ([40.107.70.102] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiM0S-0008Th-Er
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 16:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZtEYUOtGSv8f55cEudsoytvYsi3P9/+3yLDVgwYgZcs=;
 b=kQajZsCCu627at//1Vl0nNGCdpAVH8s8NDK9RctwWSCihhj85+2J3wlvFPQiDY0mthGtt1rK/JOQQzRuRwnHE2kf92qGlogvwygwv/N6U4FDQEoWVlOvxZjhSCQD5hQQMGyYYW9JmWREOH5S9WqPZNG8OXB7RBXU+H9up8KeuT8=
Received: from DM5PR0102MB3383.prod.exchangelabs.com (52.132.128.150) by
 DM5PR0102MB3512.prod.exchangelabs.com (52.132.130.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 2 Jul 2019 16:51:46 +0000
Received: from DM5PR0102MB3383.prod.exchangelabs.com
 ([fe80::2560:7ba6:c491:dcce]) by DM5PR0102MB3383.prod.exchangelabs.com
 ([fe80::2560:7ba6:c491:dcce%7]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 16:51:46 +0000
From: Tyler Baicar OS <baicar@os.amperecomputing.com>
To: Open Source Submission <patches@amperecomputing.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-acpi@vger.kernel.org"
 <linux-acpi@vger.kernel.org>, "linux-edac@vger.kernel.org"
 <linux-edac@vger.kernel.org>, "james.morse@arm.com" <james.morse@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>, "sudeep.holla@arm.com"
 <sudeep.holla@arm.com>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "lenb@kernel.org" <lenb@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "tony.luck@intel.com" <tony.luck@intel.com>,
 "bp@alien8.de" <bp@alien8.de>, "Matteo.Carlini@arm.com"
 <Matteo.Carlini@arm.com>, "Andrew.Murray@arm.com" <Andrew.Murray@arm.com>
Subject: [PATCH RFC 2/4] arm64: mm: Add RAS extension system register check to
 SEA handling
Thread-Topic: [PATCH RFC 2/4] arm64: mm: Add RAS extension system register
 check to SEA handling
Thread-Index: AQHVMPZvV84yhcAYOk+DNBn1Cdw2Cw==
Date: Tue, 2 Jul 2019 16:51:46 +0000
Message-ID: <1562086280-5351-3-git-send-email-baicar@os.amperecomputing.com>
References: <1562086280-5351-1-git-send-email-baicar@os.amperecomputing.com>
In-Reply-To: <1562086280-5351-1-git-send-email-baicar@os.amperecomputing.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR16CA0040.namprd16.prod.outlook.com
 (2603:10b6:910:60::27) To DM5PR0102MB3383.prod.exchangelabs.com
 (2603:10b6:4:9f::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=baicar@os.amperecomputing.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [4.28.12.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5997e82f-6f75-43cc-f515-08d6ff0d90bd
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR0102MB3512; 
x-ms-traffictypediagnostic: DM5PR0102MB3512:
x-microsoft-antispam-prvs: <DM5PR0102MB3512CA876431E1BFF3389F3EE3F80@DM5PR0102MB3512.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39850400004)(396003)(366004)(376002)(346002)(199004)(189003)(66066001)(7736002)(4326008)(305945005)(5660300002)(4720700003)(50226002)(2501003)(68736007)(8936002)(71200400001)(316002)(478600001)(110136005)(71190400001)(25786009)(8676002)(81156014)(81166006)(52116002)(446003)(76176011)(476003)(2616005)(7416002)(102836004)(2906002)(6506007)(386003)(11346002)(6116002)(26005)(66556008)(64756008)(14454004)(66476007)(73956011)(99286004)(66946007)(4744005)(86362001)(186003)(256004)(3846002)(66446008)(6512007)(107886003)(6486002)(53936002)(2201001)(486006)(6436002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR0102MB3512;
 H:DM5PR0102MB3383.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jraWrkV5mUw3bMoAHsqlIUmw1SmGq4rtEse1ISYiFMtBMB7vpMZ3JUxCztDEhSytq7Qxkfg+Rj+3OCqehRAEQ2dcDU3l52M+Bt8XKB/+LJbeqSC3yH/GgaWBMGqdXJhI7P2yQ8yjr5LooZdAW9Tghv2e1NOemBLmMyCQyVuqIW0UA51dQDR7sdYUVFdqB/koQD08aFM8ADTIrh0umliVH1Xf7rFiVS2+CaFa6uqBfVsPGyjSlICdGbyTha0kaoycFAc6lQTkWQPKxT2cXyndZ8DsFkJqgpaldWX49lnv039JEnJHERXdkDGrO8ioH9oaHLRa5GEgOO2jHrCOJHy6EIwCVBxSEvUHu8STuNDpNjkHj8zUeKVW1Sg7eMnHoFE7cmc3pyur0kVZ//A3TjcNqi5hyb2G5rM0apEfMq+KOfo=
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5997e82f-6f75-43cc-f515-08d6ff0d90bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 16:51:46.4130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Baicar@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0102MB3512
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_095148_618927_11EE493A 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.102 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tyler Baicar OS <baicar@os.amperecomputing.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On systems that support the ARM RAS extension, synchronous external
abort syndrome information could be captured in the core's RAS extension
system registers. So, when handling SEAs check the RAS system registers
for error syndrome information.

Signed-off-by: Tyler Baicar <baicar@os.amperecomputing.com>
---
 arch/arm64/mm/fault.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 2d11501..76b42ca 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -37,6 +37,7 @@
 #include <asm/pgtable.h>
 #include <asm/tlbflush.h>
 #include <asm/traps.h>
+#include <asm/ras.h>
 
 struct fault_info {
 	int	(*fn)(unsigned long addr, unsigned int esr,
@@ -632,6 +633,8 @@ static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 
 	inf = esr_to_fault_info(esr);
 
+	arch_arm_ras_report_error();
+
 	/*
 	 * Return value ignored as we rely on signal merging.
 	 * Future patches will make this more robust.
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
