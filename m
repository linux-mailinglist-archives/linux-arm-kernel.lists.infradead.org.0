Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB9397667
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 11:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FoxtDz6PfGgXeQu8kHIgJWj5cIT9q/+hwH7QLzYC5AY=; b=BOdWtsSW3EtBoL
	ruT0rnt+LzbbkhZTJfqdiPny25WTIbllciMcCXTb1pFGz3z9XAgdP6Pl/yXY8mE8uz1f2gsLCfCGe
	HCi1ergCOzn4PCHlZtlbQ7JZg4/H86ofNuDpOFGj3L8pKsobEB1u8PXOkxNUMC2T8uziwFnKckjSF
	8RaWaIzbLqjO78/piOvOmnY8V1zbOPn7xZcp9aCSWJ0yrZ2AILt53xIsODRi0MvfW+eEq4+ByiZKh
	bjODwrrFYhvjIbxM53i1ne23F7i5Q2kOyIREH6sYxpYRyeO2qOVW+tcejk3YCtTmNaMwakZ+hqIgI
	JGqmZPzIUCTBkqJs6WPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0NF4-0008C3-Bf; Wed, 21 Aug 2019 09:49:22 +0000
Received: from mail-cys01nam02on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe45::62f]
 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NEm-0008BM-1i
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 09:49:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mh/dV0iePQ+4k5/tUS/5aZaz+t2EEtdDYNWjZaEHIZ03qQi9zd9PbqglOctBnrNLbfYb6NbI+AEH0/IeNDQZqIuecnOdByV1DHeN7S6fEUppt+Qli1C9Op082xlpmObgKDnYEMj+us/NNK0koL/X++Uc/8FWPV3JXPUzYwxhcy5fIPEmwvfpXpvynXZQCy/O/VCzy0jNE4cwQ66moemAudOlfvJjJvRHTDAM6BN9PxFyPpRWS7kbKS8IsW63e+fpAmJK1U0OGUVCVSi7k3SvxrcZrL8sN7HepeXIJVcmkRKKxfKSbq7mNtNrJHT1Ze4jOznbcqid9DluErjPKZE76A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1gtHIjLItw7G5pBGRFD5QEmfvn5Iv+YxcTnHtjRBUkg=;
 b=WUQcj2PTomgtx6ygSOGdGBD5e3F1EGgoZef3YC/WWvkgna28Xdtqx14BQct1s/sGOmyGP5EAZLjOGxgS4lbUHGbpq6XHQzo+g/G5eec6QFfVpTe5c3TkegBKfEex1LN1fI8W9ltqALa6dNDP6uzhGkMqZMdmGJo1DwsuMr7hj/num+6Yo7lOJqNEg30nxuEre2YX+EP+KdpPI11lkrCd6U+ZBL7IFEPdtfV2upnPSxA3boBM8vgxQFfHYLs9vdSSxeS3x5G4Bmc0kNm7HBHBfodiMdzggO8RZMXl/KNz+n6yUlSu1OFr88kbPQs6Ia1RCl8LEOex4If/biAb31JikA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1gtHIjLItw7G5pBGRFD5QEmfvn5Iv+YxcTnHtjRBUkg=;
 b=IKZ9Igu8DDLhmYjEPz0uLT7eq4LiS+yC1yfzgZNTbxTop2W3hpXmz88c8t76Q5RcTOhfOQcz4H5m2Y5BrQ98+jEUTAlYnK/TScCDGltTOAkS9X2shx3DxMUsAKx0n0uQ8wbMyEIzF8xpAQYEpknwE4SjvkkhbQcS49xxGMVi7a4=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4216.namprd03.prod.outlook.com (20.177.185.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 09:49:01 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Wed, 21 Aug 2019
 09:49:01 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: ftrace: remove ftrace_caller_old() and ftrace_call_old()
Thread-Topic: [PATCH] ARM: ftrace: remove ftrace_caller_old() and
 ftrace_call_old()
Thread-Index: AQHVWAWpTPa2leot7U6qZ7id2aGviw==
Date: Wed, 21 Aug 2019 09:49:01 +0000
Message-ID: <20190821173753.7b404335@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY1PR01CA0172.jpnprd01.prod.outlook.com (2603:1096:402::24)
 To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54eb0223-d198-4e86-7967-08d7261ccb8a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4216; 
x-ms-traffictypediagnostic: BYAPR03MB4216:
x-microsoft-antispam-prvs: <BYAPR03MB421687E670A034524E7EC7DAEDAA0@BYAPR03MB4216.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(396003)(39860400002)(366004)(376002)(346002)(136003)(199004)(189003)(476003)(86362001)(71190400001)(99286004)(71200400001)(26005)(66946007)(64756008)(66556008)(52116002)(486006)(256004)(186003)(4326008)(102836004)(8676002)(66446008)(81166006)(8936002)(81156014)(50226002)(386003)(6506007)(66476007)(25786009)(54906003)(110136005)(316002)(3846002)(6116002)(4744005)(2906002)(6436002)(5660300002)(305945005)(1076003)(53936002)(66066001)(14454004)(6512007)(9686003)(7736002)(6486002)(478600001)(39210200001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4216;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IVaJ++UcfauEfpZo+Vci1daT1PbmRMVEt8zmDRQGT9nmq3GXdq1R7o+/RcsRCzgMchYgG0ppLmoz82twiS8MOoJF3Ah6auFRhR7AKTSJmYgyB0/g/I8EvnkDxQQkQIq6UQUrwWUUpxLdxAJErPv7jENXppeNaddgMqmV/LPx7+iF2NfiaFgODSBSZ2EcmURv4vzxVYNDUDEFHL2rRfbhN/ye9/Tg22J1SGv6KYXW2jeImaAImiFF82g/eGbQII9/pBBGlvSXkc5nd6/LX6aveZCGoGY+LEFyCzYJ6zWwS0BeoQOIn2B4oz27Hdo9zJ3oFyzHho90jjYNRGG1bS4KkgrcbIt5TuhRmj6e/EhY1x7rpasdjNjDGtAoT6XXmVV3/QPya4ypVGNjr1MYs+lTcNsMJTObwckMcpE7iJxqvv8=
x-ms-exchange-transport-forked: True
Content-ID: <0E319A5BA08B47438458B421F446FBD3@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54eb0223-d198-4e86-7967-08d7261ccb8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 09:49:01.7451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0/dTjsvvD07jeTu4OKdEAVyszBLJDaehc7wTJk8e7K+iV84xiY6EgCFs9Fi4u1Bgp7oAAa0LeM2GpzomIOwQnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_024904_155147_532F4216 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
removed the old mcount support, but forget to remove these two
declarations. Remove them to clean up.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
 arch/arm/include/asm/ftrace.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/include/asm/ftrace.h b/arch/arm/include/asm/ftrace.h
index 18b0197f2384..f67596427971 100644
--- a/arch/arm/include/asm/ftrace.h
+++ b/arch/arm/include/asm/ftrace.h
@@ -23,9 +23,6 @@ static inline unsigned long ftrace_call_adjust(unsigned long addr)
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
