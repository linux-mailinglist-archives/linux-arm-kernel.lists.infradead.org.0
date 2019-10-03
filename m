Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3374CAED4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 21:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gf9eYWGxlfkcxV2cPqmb19pJcPtS+Z688333+FNRHZE=; b=gRvpms9poEmDVN
	+LbQL1naeKalxfmEIG7FPrq4wu/R9mfS1/44dQU2eWZpVxzSavu5akjhlqXaw/6PZ3ULAqvt+FuCc
	A6D+h1yi8PsIdjLzkZjOnNg7vwxq1JqdMr2H1h7TOi7Zej8RjiIGyZ/wmoqYqf5nVumhDTgo27SWj
	30pgqra8mN/RzTAqAEbAJCSL1Sx4tMGz0PwAHuEFsa/thH7BNln6XsJfHdQ/RQ7aDiGZkYScVh9/c
	FrhOAKu6hFCn1bxJ1XyWHXqratlFBUcWlL/2uOnnqCyuSkUHGVk2YwdDmqxM/xkDgrBGYxkLPs5st
	jQjjGvQCqqedK2eOb86A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6R3-0003g8-4x; Thu, 03 Oct 2019 19:06:45 +0000
Received: from mail-bl2nam02on071a.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::71a]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6O7-0008S3-LM
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 19:03:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j81Ldsdnms+WvFzN0qRIV1pG1IbGzT32eHy6P7tTaK7bcKtNaMEHObLXwfoUoqB54y9Y6S0GE/DfwpyoLFQpEhMpjFhbDSBSd27K9DYd+pJoS7TSe+RL37ghRjOSYHio8eBBS22rXOBXX0pQZn77zj4vNBqB6IvEbAtk5eJOke286JI1Tz1/XkLP7ojAUmydE2R1UPF6IZbRDILAtQ5H9l4OCmtaL+MTN167nb3KGRllYbBwBhK2YtuWXfoi36kzdjQVUgF8ImPfpCAOXdZQkecw3PpOVnKvGV2s6QEfPGTYl3tBnOon7Ep4shn34fWB7Z4i8C/8RjHTTre3m1v4Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tQZowe6V/h3z1DqYtMVcUESXf2m7PuJSRNu9hK6woIs=;
 b=BO4M4v2UjJK+B4CeTDGWyNbEs+NB0DDAdNiPQ2qRyTr2a2zT8UJPkoMAiI8INHnPxJyVsYOUEvXayWi4FnTA4tPgeCZeaWBt15AhMWysPiZ8uQIeeIp/CXSc95VHXprjIjLljxY0nIMln+RPf6WyFGCJtpOPCP0AuIrilGZcC/1aOLsBpUoxYl7JzSS/gkGdbYx+FcTOyrgCJHcV2HdoctZKRmkKJenhZ5WjLgOfjALHhBRZ96v7I62ZeXCSNzFpP47aRmDBwpU4bPJxZunynqRgtidxVN4Q73dAzRm9/LpuonEglXeHHKI+fFQNfNeBI57NzpjgqLYFHrEV+9SCig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tQZowe6V/h3z1DqYtMVcUESXf2m7PuJSRNu9hK6woIs=;
 b=j4W+IQGFAOTNOFxXpITkIz+30ASaR7jcQwjRQJa5ETgM1GcvtqVCRMjGNjVg/VNgMeMtpMmnccJ2Po6i1B48PEaqY3hNAB+Rkqlww1+/VJyuNKX2PCnCXUymBXV+6fiIzc9DIkBO63zJXwdGF6GzbS3YulrR7290Ip8X0Q8x40k=
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com (52.132.114.24) by
 SN6PR2101MB1102.namprd21.prod.outlook.com (52.132.115.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.7; Thu, 3 Oct 2019 19:03:27 +0000
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62]) by SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62%5]) with mapi id 15.20.2327.004; Thu, 3 Oct 2019
 19:03:27 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will@kernel.org" <will@kernel.org>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "maz@kernel.org" <maz@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "devel@linuxdriverproject.org"
 <devel@linuxdriverproject.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, KY Srinivasan <kys@microsoft.com>
Subject: [PATCH v5 8/8] Drivers: hv: Enable Hyper-V code to be built on ARM64
Thread-Topic: [PATCH v5 8/8] Drivers: hv: Enable Hyper-V code to be built on
 ARM64
Thread-Index: AQHVeh08eOd/te/qYEO1LtepLr1Yuw==
Date: Thu, 3 Oct 2019 19:03:27 +0000
Message-ID: <1570129355-16005-9-git-send-email-mikelley@microsoft.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR10CA0006.namprd10.prod.outlook.com (2603:10b6:301::16)
 To SN6PR2101MB1135.namprd21.prod.outlook.com
 (2603:10b6:805:4::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [131.107.159.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db6e86fd-823b-4cdd-954c-08d748345f39
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: SN6PR2101MB1102:|SN6PR2101MB1102:|SN6PR2101MB1102:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <SN6PR2101MB110278253EC8805B982A95A6D79F0@SN6PR2101MB1102.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(1496009)(39860400002)(396003)(136003)(366004)(376002)(346002)(199004)(189003)(486006)(102836004)(446003)(81156014)(5660300002)(64756008)(6512007)(66476007)(66556008)(4326008)(1511001)(66946007)(256004)(52116002)(6436002)(386003)(6116002)(305945005)(476003)(8676002)(99286004)(7416002)(11346002)(4720700003)(66446008)(2501003)(22452003)(6636002)(316002)(2616005)(66066001)(26005)(71200400001)(478600001)(76176011)(86362001)(54906003)(2201001)(36756003)(10090500001)(81166006)(71190400001)(8936002)(6486002)(186003)(4744005)(10290500003)(14454004)(25786009)(7736002)(6506007)(50226002)(3846002)(14444005)(110136005)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB1102;
 H:SN6PR2101MB1135.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NfKfGkCBGxqI/2uUqE69WcPNRkatTjOWKHx90QAT+cB0Q/1T5eLE51SWA3uW3mGZ8S7VIoUkD5bn0RHttcnOFkWUDI3H1FWVdL1jJ9IlhLo709XVFph4WdKzn3BH6buXp7kKOLS9kkba0sRoisxBdmuppXYDConjJWvdIYdfzDgTLJflN3U+n5aF4Xg8rf4BAAcAYCgJiQakLL2u/km4K4f4pzgcndyxR/nEVGr1E/nRSqjkoIJ/9YjxZqGH8XEUvgnoSTia3V6uOttsIrFagCTPMa7ywJDUKfj7DhYXLNa1B6eWC8zZzm5XRSysFrlaVpwERmPATqX3HlBpRjKqP1cErOD0vYmmNcjQQaxGHw0UkPacYGnTqKkzcEMqBm/Kzjs7h5tdqafVQbdJonGCvBx2N3roFIp5k8XNV5wHMus=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db6e86fd-823b-4cdd-954c-08d748345f39
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 19:03:27.1251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qKoKZHkh/hO1Z+Vw4/rGFcjJBr7eJSuFdjGc27rB93TpA+UVLfwMRndo368lODoQhAHV7o3F1P118icsuamDCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB1102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_120343_751352_BF65E397 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe46:0:0:0:71a listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sunil Muthuswamy <sunilmut@microsoft.com>,
 "boqun.feng" <boqun.feng@gmail.com>, Michael Kelley <mikelley@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update drivers/hv/Kconfig so CONFIG_HYPERV can be selected on
ARM64, causing the Hyper-V specific code to be built.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 drivers/hv/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/hv/Kconfig b/drivers/hv/Kconfig
index 79e5356..1113e49 100644
--- a/drivers/hv/Kconfig
+++ b/drivers/hv/Kconfig
@@ -4,7 +4,8 @@ menu "Microsoft Hyper-V guest support"
 
 config HYPERV
 	tristate "Microsoft Hyper-V client drivers"
-	depends on X86 && ACPI && X86_LOCAL_APIC && HYPERVISOR_GUEST
+	depends on ACPI && \
+			((X86 && X86_LOCAL_APIC && HYPERVISOR_GUEST) || ARM64)
 	select PARAVIRT
 	select X86_HV_CALLBACK_VECTOR
 	help
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
