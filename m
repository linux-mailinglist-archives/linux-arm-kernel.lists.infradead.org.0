Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE7583A55
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 22:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJTiS5JEAttJTR98HJ6UnBpU4AuEHfNPpsf50HfUlGk=; b=jiIxzPflVt0I2U
	Edtj/VVXW66ELaNyzh3z7MU8Yhb5Kdjz83g9shLIz90EZlaWWwxNJd5/eYqnzefRkp4FUuInPj90j
	2NjAY5KH21vXaj7PiPdOmheROcd1AuVeZWinluWuQ+S2ARjgoEBjVfPK4La93OpjLHD8r0jNPtpFV
	5kLc8qr5CiQ0Xqa7eip3RjTGLv7qO5OohjwVEVECmSfYrKinCS7LKN3xFHGuhQ/La/s3lSykd5Aci
	yjrNceUYGgEkTP09pqEGR46UWvoTJ6tUmO/PWcFD4MNSag0ucdt2fkJxhHlx4e/htyKdHoJB7KgCs
	Nas8LRzPwWbU+nE0yc9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv69T-0008AR-DR; Tue, 06 Aug 2019 20:33:47 +0000
Received: from mail-eopbgr820111.outbound.protection.outlook.com
 ([40.107.82.111] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv673-0005kG-6Y
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 20:31:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nAc7t8kncGOA2Nvyw1SIppDWdTbZRSVnSeqzuSkY2qWLXjU2u8aTy2PKSI+nA/ynCCQcQgZGw/KBKJy35o7v0MIEjUDSeBRRzQ6TkmHfzpaTbn27gtCO3KGFpvuQDAHzAv3AfdS9aCXqidcMGNtsmz2r6eialuZBBGEfoHrfI5zNIHTHDPnVTX0X5XXUv1NOYuPvZOZKbYKGLew0LDy2AN49KoEVerzquL1pWhmDSeLsPyGWM6sw0NMIiLCgHtTL8QsikLhOR3ydR2y2Z7nkhvo0lWAYkKBsivpoY/CKWxkUNYhhTTC20Y5L3UJLgWj507qivt5iYVHWjWiUl43usQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kksfFcm3GBFsZkms/2CzgqzxYkQ6KvCxhAIvLS/Bzo0=;
 b=VbaWGXhlsLl2Boy61bpkMw7kUxoZ3R0KAZyf6QKKx21dePL+f/U6NtcklIfMvJxcZdhP1fL2JL9V8OPP1tAfT1Fd+rdYyD3nEq2MBvxsZkOnChGaOqct+BROCLzrRuyFujniRRQpuX1pKwif1Wi7ytkIO5SZ8vP4dVkHubpuuiriuuV8YYdBIn1itg8CvMUqkAGlmjgbMJjRVYvysbtG3Tlx7pd9ml8CRa5G+B9qEsFz94oLBcQk0zRj1PqSdSpF4vl7j9uMb6hLEhRRvHFLKGS+mq2c+e30jXAK9lHdZ0ept43Dhhder8Sg80aZJ0E7lEZk93uHw7UGHDwjSf1OXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kksfFcm3GBFsZkms/2CzgqzxYkQ6KvCxhAIvLS/Bzo0=;
 b=eVTPAmRoFhJDZPLWmKpzlmCCHE6JfGf7G4//Uulk9nlvGga8tkwgp+5j3f1Rx/livn88o8EzYsvNEhINcFlRf29zG3DPh5z/Ucg6wtcAtiYJRwNXiNY0xbk12IEWEz7HMlr6/qszGEeLFc83FqlahGL7UqwI6rdIXZYT/DUkKfY=
Received: from BYAPR21MB1335.namprd21.prod.outlook.com (20.179.60.209) by
 BYAPR21MB1255.namprd21.prod.outlook.com (20.179.57.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.9; Tue, 6 Aug 2019 20:31:13 +0000
Received: from BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301]) by BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301%9]) with mapi id 15.20.2157.001; Tue, 6 Aug 2019
 20:31:13 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "devel@linuxdriverproject.org"
 <devel@linuxdriverproject.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, KY Srinivasan <kys@microsoft.com>
Subject: [PATCH v4 8/8] Drivers: hv: Enable Hyper-V code to be built on ARM64
Thread-Topic: [PATCH v4 8/8] Drivers: hv: Enable Hyper-V code to be built on
 ARM64
Thread-Index: AQHVTJXj8v6XQum5DEe1djG7y0U7wg==
Date: Tue, 6 Aug 2019 20:31:13 +0000
Message-ID: <1565122133-9086-9-git-send-email-mikelley@microsoft.com>
References: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR01CA0030.prod.exchangelabs.com (2603:10b6:300:101::16)
 To BYAPR21MB1335.namprd21.prod.outlook.com
 (2603:10b6:a03:115::17)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [131.107.174.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c453a1ff-561f-4dfa-d7ba-08d71aad0637
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR21MB1255; 
x-ms-traffictypediagnostic: BYAPR21MB1255:|BYAPR21MB1255:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BYAPR21MB1255DC528C15734B31A92298D7D50@BYAPR21MB1255.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(189003)(199004)(71200400001)(102836004)(71190400001)(386003)(6636002)(6512007)(66446008)(7416002)(10090500001)(6506007)(10290500003)(66946007)(316002)(50226002)(110136005)(14454004)(4326008)(6116002)(1511001)(52116002)(64756008)(99286004)(2501003)(4744005)(2201001)(25786009)(68736007)(476003)(11346002)(446003)(86362001)(8936002)(3846002)(14444005)(486006)(6486002)(256004)(8676002)(54906003)(76176011)(26005)(4720700003)(186003)(7736002)(81166006)(81156014)(2616005)(66066001)(66476007)(22452003)(5660300002)(2906002)(53936002)(305945005)(478600001)(6436002)(36756003)(66556008)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1255;
 H:BYAPR21MB1335.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +WDWPP+NTP/4pti+i5drAz9nT/q8NkoE9503eYu5m4zGbmi+BzeYP4SRIftOMUSyDtZKbSBfdsYIA1qlj8JANqUxaljmOxUyJw0+IpH8F5vFosEVtDuthBffUYfeKdHWPFv57T19RsgUPDfmOAlwyU/I0Pac83V8vmFqM6CrU7uuZnvPVRadMeu2Yp7UC76QtcwUI+ImKswimBUar/T3u4CcXPj11jp9WxXakQ5WUvu4VKxqEjlyfrv+mGD1KogopryogWqld/wCLiqi0JEWAxYVoEyextjaRP6X4Q3PlWwe5q+1bXGpn0Ndv0OK3yR3xMzD0BfJL0CsSc4ZnOIJXFcpjuT5allHYuXBmXXb4OYfcNSh/vDq8NTfFgkDVzrRDXefV4iAD/9SFOOWwZsxM3+VuVQ8ItRAqWLP6cGs8ZA=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c453a1ff-561f-4dfa-d7ba-08d71aad0637
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 20:31:13.3565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cQ0R+KiVYV+6SGp9gZLytL7vYfJ/rteM3114ZgPMBKb75JP8fxS2Pip//r+OdbMIQt0D7H7C4aLYXx/youMe9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR21MB1255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_133117_397868_04045C13 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.111 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Update drivers/hv/Kconfig so CONFIG_HYPERV and CONFIG_HYPERV_TSCPAGE
can be selected on ARM64, causing the Hyper-V specific code to be built.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 drivers/hv/Kconfig | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/hv/Kconfig b/drivers/hv/Kconfig
index 9a59957..6f8808f 100644
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
@@ -15,7 +16,7 @@ config HYPERV_TIMER
 	def_bool HYPERV
 
 config HYPERV_TSCPAGE
-       def_bool HYPERV && X86_64
+       def_bool HYPERV && (X86_64 || ARM64)
 
 config HYPERV_UTILS
 	tristate "Microsoft Hyper-V Utilities driver"
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
