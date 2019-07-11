Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC6266237
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 01:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6w+OjhvDcc/7dxM87nkJzp/m2pvjIFHmbJpegV+3u0=; b=WFY7sOqIXAqf1Z
	JixkL8VlrXIaVBXrf6LYlOjL01Ze02RE5/q1KZL/OGDvC3xCHNGp7Q5ylpTvf3/x2EPVE1JvKnoDJ
	+238FlhsMgJCAlswlE+snntUszbDJq5buGNndpEjaZvIPNLBuKADVBZI8LGhhJpSqHQj+uNTHqK47
	K96lqnDexX0iMenkpbS5xOAugAspSnwjvB2mFkpKziGJ+qJaRnWSFLhT7TuhOVXy/8EBDh2XTwkT7
	ailv2sjoPLBVsDENQ5sLGgN+mx8m+ii+q5352Yva5X68E/07WNwK/eDJLoE0BU9gQdmwctz/jYmQq
	3+EgNyz/k8EDacCGm/Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hliTZ-0004Td-FF; Thu, 11 Jul 2019 23:27:45 +0000
Received: from mail-eopbgr740098.outbound.protection.outlook.com
 ([40.107.74.98] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hliRs-0003Bx-EL
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 23:26:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IjzKzilVToEhzIAI5is0DdsC4vgYNMB0Wj5MmC6ubWwqo7xyuW5Yq1IBU4TdXHO48I/oIXa7RUmQuwZSZRIoZtyUJGjjNV9QWGMMu7diFbTxS5876h8lW26ICF4H+Dq0LjtOdyncx/YPxx6jDUBuSoAuHFrgPsA9wicUFi9DuloY8MPYWmF1fjCfFebn9FxV/Ktz/8yCIHWTYPody6Wpz8yCkn4If4awSoTRzHYEHPvIsSkNeihVd44tQP6GW6TLy2ylgmopskzim04OEneCR8dMCr/fiR86evyZsmfOhQQer+dR7M79RcrIlqvkjOsY3hdhmjgkKMOoHBZzO59L/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yt5BUf8uBdI0zBKA0tmArK7CJjsxGHX3sXRCl8E7/Uo=;
 b=R4tFND1NM4rop1hBP66km/bpX5akbjarYsmgHZneKxX+vekCLftwiR1u7GxZsrqitzGDC9J9nhJIKNifTddGLNmact7Yf6I5KguWUUD2GAaXJEZPs+hZZMZ6Uw1Oyq6iGMV2j9j2wNf7QY1bFE5GK9XbXKpB+CQlKrJ+qN+xrkJMdgwI4SeF4fVkCGs/DIFrGRSH4gIOSwWzF2Sdyp5YowSgO7mTspU76WXRyEMWrZRMfKC+Y+wECbAV+Sqow5Vslvna1WJ86Kn2CdacB2QJ9MF2AKv3ZKFXKkzm/K5Vf9bACPXo+/1CvwP9CT9ajpARyVokJUvL64jQr1cu/Lv6BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=os.amperecomputing.com;dmarc=pass action=none
 header.from=os.amperecomputing.com;dkim=pass
 header.d=os.amperecomputing.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yt5BUf8uBdI0zBKA0tmArK7CJjsxGHX3sXRCl8E7/Uo=;
 b=F1KsBtXVLMSi1zMKdRSaLfSyHDwqJkQi+wtKfH0kbEU4LixQ39NYs78lY2c+AEESNP9BZCu2DZ+/xSvKUH0dfd+TcTQ5cgSiT4L32E/XWJmfae6SxQYgav2CQhityuWQENyIoiJgtrpkoAPlTXcjdTu9zBHwZoylgbVgJTJWWXw=
Received: from BYAPR01MB4085.prod.exchangelabs.com (52.135.237.22) by
 BYAPR01MB5557.prod.exchangelabs.com (20.179.88.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Thu, 11 Jul 2019 23:25:56 +0000
Received: from BYAPR01MB4085.prod.exchangelabs.com
 ([fe80::9dbb:1b4c:bace:ef80]) by BYAPR01MB4085.prod.exchangelabs.com
 ([fe80::9dbb:1b4c:bace:ef80%7]) with mapi id 15.20.2052.020; Thu, 11 Jul 2019
 23:25:56 +0000
From: Hoan Tran OS <hoan@os.amperecomputing.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, Andrew Morton <akpm@linux-foundation.org>, Michal
 Hocko <mhocko@suse.com>, Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador
 <osalvador@suse.de>, Pavel Tatashin <pavel.tatashin@microsoft.com>, Mike
 Rapoport <rppt@linux.ibm.com>, Alexander Duyck
 <alexander.h.duyck@linux.intel.com>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Michael
 Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>, Ingo
 Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin"
 <hpa@zytor.com>, "David S . Miller" <davem@davemloft.net>, Heiko Carstens
 <heiko.carstens@de.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Christian
 Borntraeger <borntraeger@de.ibm.com>
Subject: [PATCH v2 5/5] s390: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
Thread-Topic: [PATCH v2 5/5] s390: Kconfig: Remove
 CONFIG_NODES_SPAN_OTHER_NODES
Thread-Index: AQHVOD/9mGRS/XlnZESkAFQmCjkqtw==
Date: Thu, 11 Jul 2019 23:25:56 +0000
Message-ID: <1562887528-5896-6-git-send-email-Hoan@os.amperecomputing.com>
References: <1562887528-5896-1-git-send-email-Hoan@os.amperecomputing.com>
In-Reply-To: <1562887528-5896-1-git-send-email-Hoan@os.amperecomputing.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR19CA0045.namprd19.prod.outlook.com
 (2603:10b6:903:103::31) To BYAPR01MB4085.prod.exchangelabs.com
 (2603:10b6:a03:56::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [4.28.12.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd1a597e-2e44-4157-c4a8-08d706571fc9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR01MB5557; 
x-ms-traffictypediagnostic: BYAPR01MB5557:
x-microsoft-antispam-prvs: <BYAPR01MB5557B45CBF88F8B331D5CFF2F1F30@BYAPR01MB5557.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(1496009)(346002)(376002)(136003)(39850400004)(396003)(366004)(189003)(199004)(52116002)(66476007)(66556008)(66946007)(64756008)(66446008)(14454004)(5660300002)(1511001)(6506007)(386003)(71190400001)(71200400001)(6436002)(53936002)(66066001)(4744005)(102836004)(25786009)(68736007)(6512007)(86362001)(3846002)(11346002)(2616005)(186003)(81166006)(26005)(2906002)(446003)(478600001)(4326008)(76176011)(6486002)(7736002)(305945005)(54906003)(8936002)(110136005)(7416002)(6116002)(99286004)(476003)(316002)(8676002)(107886003)(81156014)(486006)(256004)(50226002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR01MB5557;
 H:BYAPR01MB4085.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ef+hznBXN4myNBzMO+crFklQrkxl3woJDcHEtEGbtkSTBtF+FhbMuzXn0YWK9JzlERYgQ1oWA5mukf+CM4Nf23+mMlM05cpBYrM2if/e1uE/ntUxwqQ/awrcr2FlshYZIQWDolmpLqBzoxDcFPEXiIeg0M3mlqlXaLPtGXn+IvqaLdvbg/iMyiPa2DZjkGRvcJ1ifKZHfiVTssO4oLIhNbK9CR9HJNEC3Rk3AtfWLRE+aMyUvol2NyVIVj1IQlXc27+vPavojbgNzWs5nshmirt3G3gOn2tZ0YfphazGi5INi0R9CJHu7Si7ZsXqNP3ur7XuskxxiDLSqNbJ0jd/2rMrC6iqCBhknF3Kye0rkkbarElU1uyWfMAg7Ah0QJX0YlAnhKetdJzg3bJRv+2WUHA22MFseloe345Oi/oAN00=
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd1a597e-2e44-4157-c4a8-08d706571fc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 23:25:56.4780 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hoan@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB5557
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_162600_527894_D407301F 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.98 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Hoan Tran OS <hoan@os.amperecomputing.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 Open Source Submission <patches@amperecomputing.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove CONFIG_NODES_SPAN_OTHER_NODES as it's enabled
by default with NUMA.

Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
---
 arch/s390/Kconfig | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/s390/Kconfig b/arch/s390/Kconfig
index 109243f..788a8e9 100644
--- a/arch/s390/Kconfig
+++ b/arch/s390/Kconfig
@@ -438,14 +438,6 @@ config HOTPLUG_CPU
 	  can be controlled through /sys/devices/system/cpu/cpu#.
 	  Say N if you want to disable CPU hotplug.
 
-# Some NUMA nodes have memory ranges that span
-# other nodes.	Even though a pfn is valid and
-# between a node's start and end pfns, it may not
-# reside on that node.	See memmap_init_zone()
-# for details. <- They meant memory holes!
-config NODES_SPAN_OTHER_NODES
-	def_bool NUMA
-
 config NUMA
 	bool "NUMA support"
 	depends on SMP && SCHED_TOPOLOGY
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
