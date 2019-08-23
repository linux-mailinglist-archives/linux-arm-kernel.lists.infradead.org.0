Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CD09AD59
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A3R0Ag+u9m0Yh+3I+cdQqoXapnVBIQoNOB4PbyEtxYY=; b=qg6x0oJTiL1FNY
	+nfPDULAU+InDTHPmMpP3UrYkpIm1E8H4LPZq25TKaYoUy6VrHLP10PL4hkfv8YtFl8Vu7B8ump0u
	ncvdfWcozbAz3xpAVVMJf+5OvzUP4CLnN1ezvbS7WQISYy5qwkKmstgvHJCFgSCrAe/vvAotMJd6C
	wiiqBSiHxaGqj3UApZj1ZMocaiMaAGZevZILqgTgz54fj92vYrNPFK2FkEtPiNfYX/mwO6LLJNm8E
	shY59OadVnkeqhB8zXAkvZqOVA12J3vNxgt2cLu2Uew8w2SAXnFSQygg1Y2tPaFtOYL0kFNNTGLQD
	clFwXmAa7xtHsaI1uEQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16td-0005Af-VS; Fri, 23 Aug 2019 10:34:17 +0000
Received: from mail-eopbgr710048.outbound.protection.outlook.com
 ([40.107.71.48] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16tL-0004wb-TU
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:34:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D0V/MzHUSWjalarG1kXXr2foqK7VzN/IcctQTCoMnV30dkC2LIXeZ6PLpCDGcsM//JN0sta/U6oHSzq1BPeQsFW7LRmb3HBCG7Va1fxKFk9LbLmSftCba0gnI5bPAQxZwpxXVFzJnCebpkVzaNi/Py+J99juJ4aYcv1+eibC52C//fmIogYTenoGlsDVA6/zitIGsyx+7rbO3anXc8f+LOP/7f1QCz0HSkgRUnv1ns+TQaxkaJrDTlrH+CCD/zy6ja47WBFWwR2Vurpfw8MfHOXvfMTemCSGbCrYDV3YznrbDk4dNKwtqolSFbrowRW7aZREsNdhZcDmaxhqz5uDqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C8Ts2d8pHRDLT0IACX/DY/FykRL/kw6c8+nK82VL1xo=;
 b=nxuMw4melQuazbF276EHNAwM9LT5mKq7VGbhphpbtbcXbYBRVfNsUOavEvqyzTsVAULFAfxsxY8TjOJCRgHq2zpzM9wK0T7KVmrLEgVEAp4XOKbWWbJDy6U56/EwxJ21gPjZrEm+8w3dphidIpkvNzbuR2m8EJzPodSa+rxcX0LR6lUmUDsLlEzI9oZkOyVPGdXnkbzHdWo7Su/Au9JsfLm15SxsvNOCieF+jW4Z8tV90V96zSFaS8Qq4Bmm7TF+ghVy/rhqUof+xKtepcZn4sXPhpZvmXoNZGzRPj0x8CNLQLkOez1kD72WWuhSCGlxpm8fcneASVE5msn219ibLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C8Ts2d8pHRDLT0IACX/DY/FykRL/kw6c8+nK82VL1xo=;
 b=JBSSsVDMASUFpKUvJVe3yjOwkFGo3fR5gSmkpVNb3jjjt8och2GRiXj5qnrtf8001wlBq2JGmF93nkYA8VZTeq78zFy+0sPcZ9ZnuPvawl1XrTx12TIEb/TTStbGYP3RJECF1NJB4VVQt/IGtmrzH30so3tGUyyolYb5Dx/TtdA=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3640.namprd03.prod.outlook.com (52.135.213.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 23 Aug 2019 10:33:58 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b050:60f8:d275:e9f4]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b050:60f8:d275:e9f4%7]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 10:33:58 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH v3] ARM: ftrace: remove mcount(),ftrace_caller_old() and
 ftrace_call_old()
Thread-Topic: [PATCH v3] ARM: ftrace: remove mcount(), ftrace_caller_old() and
 ftrace_call_old()
Thread-Index: AQHVWZ5Fj072LJHyfUy3f20zWMoBCQ==
Date: Fri, 23 Aug 2019 10:33:58 +0000
Message-ID: <20190823182239.20f9a656@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY2PR06CA0038.apcprd06.prod.outlook.com
 (2603:1096:404:2e::26) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10047bab-65d4-49ce-83db-08d727b567b5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB3640; 
x-ms-traffictypediagnostic: BYAPR03MB3640:
x-microsoft-antispam-prvs: <BYAPR03MB364033969C5790D4A6033FB1EDA40@BYAPR03MB3640.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(39850400004)(346002)(366004)(199004)(189003)(102836004)(8676002)(305945005)(81156014)(81166006)(7736002)(478600001)(86362001)(53936002)(8936002)(14454004)(256004)(486006)(9686003)(6512007)(6116002)(25786009)(6436002)(71200400001)(71190400001)(3846002)(6486002)(2906002)(50226002)(4326008)(66946007)(66476007)(66556008)(64756008)(66446008)(26005)(476003)(186003)(54906003)(110136005)(5660300002)(1076003)(316002)(66066001)(99286004)(6506007)(386003)(52116002)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3640;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Sgkul4uLL5yZq8qBDzliD8yPFGW6UHlY/h71TJ9/sYcX15CIDfBrIwde8rgKhKZq6vysZ7/gpInYKKCy/KRP4sMUgRgMtEtCzXIri7TBzkkMh5aJNSj+VObtGBkh/vEYDITBClCk0vn/q9zccMu2rG0FQZLjNNSoeAURIlf4GaCBYeit0svklyrkthJXrie6rBl1nfxQVOEAvFr4x7eze7v1+SVI/iUtvKwQJHhCRlkEmVCqNvbiUG4vl4LPqWj0pYi/HRF78NwZI9XMPV8ePEAdKeQc7iFomTitIXwk0vryzlop+DuQ8CwgyoVqGAFg+Q6L8I4K38uNd8KzRcnjBol1UNwu2QvheF1gh9mXNGKWCus+x+a2rAEAamooesCnBRuL8hv9fJMPBoaHd4ds5rwloKgHxxEkp2B1fxgC1PI=
x-ms-exchange-transport-forked: True
Content-ID: <8999C4D5AEF51046A238F6BC3FC3D51A@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10047bab-65d4-49ce-83db-08d727b567b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 10:33:58.1335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MxEbxJw9uPY0RdAaAfba/rHOllKTCxS6LCp9uPwW1XSaduhvM4k2PuGbEoyBaD1wOHL6gM4MVs4tV+c1LxL2Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3640
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_033359_966312_05390580 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.48 listed in list.dnswl.org]
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
