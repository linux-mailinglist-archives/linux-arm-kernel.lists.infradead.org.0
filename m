Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CF150EB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h3tYbEeyAuDuEsBk+kML7KoJ7SvI9719nLPDwpD6yLo=; b=Ne2O1bK6D3ZkX4
	HzfumNly/wRItLgn9egbMHBrVED6mACahJQcmT77MAodvuNMz4Go2lygvDXo4yL4CVXEhIzBYy0dS
	+diK9Z+vEyWq2pzd53bTxUQQ+OwcqEVxpT+EY/oDjC19LGtZVaLNhJmj3wwzvlZWNkElWygnbW3VK
	lg1330UPAgSVuJNb+XIDOjvG2H0OQTzZfcaJWQRzLsUJns0F6PJ5LTRut3X/utrYbhaH9v4mKKd+x
	+CG0ubP+5FJWeRunJU+54PUWhl+lgTPMJaw9/7ClEaLKmWorZgH6soW5PznBZs8HJivOhtu4E6oQe
	/rasdvnIXWf+66BQQz0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQ7s-0001xz-4M; Mon, 24 Jun 2019 14:39:20 +0000
Received: from mail-eopbgr680131.outbound.protection.outlook.com
 ([40.107.68.131] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQ78-0001UV-6W
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:38:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amperemail.onmicrosoft.com; s=selector2-amperemail-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=88MwFkrLRW09sAI0A8nZ+7uIFYPFLZnkM+2+y68G3p4=;
 b=fZt+asrEt6KTqLMtERk30+GPJdPLcIjT/mTK+1qOWPGZsLO29hVJaAPXG4dguGxvjb+xhRsQJz3ysM790S06PVqATpes34BxZ7sPU3Oppi3ZDCXX0yoec6H5Uj4VZ7GboRwnSjssRDdXXSD7omtmTqw9qiHqo05BmShCQIAW+4U=
Received: from DM6PR01MB4090.prod.exchangelabs.com (20.176.104.151) by
 DM6PR01MB3929.prod.exchangelabs.com (20.176.66.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.13; Mon, 24 Jun 2019 14:38:29 +0000
Received: from DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::f0f2:16e1:1db7:ccb3]) by DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::f0f2:16e1:1db7:ccb3%7]) with mapi id 15.20.2008.017; Mon, 24 Jun 2019
 14:38:29 +0000
From: Hoan Tran OS <hoan@os.amperecomputing.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>
Subject: [PATCH] arm64: Kconfig: Enable NODES_SPAN_OTHER_NODES config for NUMA
Thread-Topic: [PATCH] arm64: Kconfig: Enable NODES_SPAN_OTHER_NODES config for
 NUMA
Thread-Index: AQHVKpp8SjYC130sVEibrXL3FC+ASw==
Date: Mon, 24 Jun 2019 14:38:28 +0000
Message-ID: <1561387098-23692-1-git-send-email-Hoan@os.amperecomputing.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR18CA0064.namprd18.prod.outlook.com
 (2603:10b6:903:13f::26) To DM6PR01MB4090.prod.exchangelabs.com
 (2603:10b6:5:2a::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [4.28.12.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5902007f-628d-46b4-3293-08d6f8b19e7a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR01MB3929; 
x-ms-traffictypediagnostic: DM6PR01MB3929:
x-microsoft-antispam-prvs: <DM6PR01MB392952282822042DF2CB1D3AF1E00@DM6PR01MB3929.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39840400004)(376002)(136003)(346002)(396003)(366004)(189003)(199004)(66446008)(68736007)(81156014)(6486002)(26005)(4326008)(186003)(256004)(6436002)(6506007)(486006)(386003)(102836004)(4744005)(71200400001)(71190400001)(305945005)(66556008)(64756008)(73956011)(99286004)(86362001)(2616005)(476003)(52116002)(25786009)(66946007)(2906002)(66066001)(7736002)(53936002)(81166006)(8936002)(107886003)(6512007)(110136005)(66476007)(316002)(50226002)(478600001)(5660300002)(14454004)(6116002)(3846002)(8676002)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR01MB3929;
 H:DM6PR01MB4090.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: i7A3tHJnWEj1++QD0H5pIvKApNpWhz/e9BS/mRVIoxRAplNFy3bga4sG/cNXrYVaaYWn3EvHh0uhd4mKRrqUORWp4YfkIDjAsmM1HiaCS2FvPMol5zeMs9qUb7mDHHSFhsiqYH5ZwkYym61QfJGMJJ50GnAw9t7NvfDaVwY/luEomjH8vIT5MsRErZeRKXATJcrvAIsux5eWoTZfS2VodvYd2F2XeUXvP3dIA7gPEF45vGvE5Hu/s7icgULTApPAeIJBgwEOZgsFxi38+jHpp0+gwt1LesB9LbC/hPWT8hiuu1jhL6rClb1D+9yA4CHkFl1+61LtKE0MKJgUjI5tSMh/oGsoPwj/L4tnKa2S0jm5YD+bgUrpTwWh42cDcey0Akp1dm/NsZOHz6fsrFDETOq0OqXQEHg7ubAq8aJ1QpU=
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5902007f-628d-46b4-3293-08d6f8b19e7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 14:38:29.1030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hoan@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB3929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_073834_325507_FC872472 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.131 listed in list.dnswl.org]
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
Cc: Open Source Review <OpenSourceReview@amperecomputing.com>,
 Hoan Tran OS <hoan@os.amperecomputing.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some NUMA nodes have memory ranges that span other nodes.
Even though a pfn is valid and between a node's start and end pfns,
it may not reside on that node.

This patch enables NODES_SPAN_OTHER_NODES config for NUMA to support
this type of NUMA layout.

Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
---
 arch/arm64/Kconfig | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 697ea05..21fc168 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -873,6 +873,13 @@ config NEED_PER_CPU_EMBED_FIRST_CHUNK
 config HOLES_IN_ZONE
 	def_bool y
 
+# Some NUMA nodes have memory ranges that span other nodes.
+# Even though a pfn is valid and between a node's start and end pfns,
+# it may not reside on that node.
+config NODES_SPAN_OTHER_NODES
+	def_bool y
+	depends on ACPI_NUMA
+
 source "kernel/Kconfig.hz"
 
 config ARCH_SUPPORTS_DEBUG_PAGEALLOC
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
