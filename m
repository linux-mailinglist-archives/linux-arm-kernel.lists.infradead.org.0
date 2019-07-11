Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3816622F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 01:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CfT1RDho6a2pRLynGmTCKWiJiODRB5nQhoI5NNdahnI=; b=t87a3ISbTLLm9H
	ZuJJfqPn4ESH+yVfnvuYK1+Gl5+rALkKvfkQdetJ2lgt0dAvRELcEtE9ql2TZYSxYImRIXsKs8hKt
	zQ2VABZxa+z3AgoS6nlFmtIOdcfFZvgi+I6XyxvbE7zoxME1stECFQl7bR81lk10Dbh4yTCe/EcPZ
	s0SeRn/qpZWQUPGzrNuJgjWv2wBMwNLfYrA8hFC6+BuP+PJkdQVzcw7A7uhDctVuCaXxNCVDR1dYY
	y5aoRvfjqc5rxpI6tV8YZCOUHU7eP8BebAzbM5vGq+oc8z/I8rUf4F4ckLRsyTBApIXsMPc3VKRAg
	cRsHCAPyJ4g5aX+JT8Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hliRz-0003DE-Os; Thu, 11 Jul 2019 23:26:07 +0000
Received: from mail-eopbgr740098.outbound.protection.outlook.com
 ([40.107.74.98] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hliRj-0003Bx-Ls
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 23:25:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ts6L8iLdOURp8b9hazYgG2uO0Xw6IDj8MpvvOFuz4kKBismBdl9r0KTooSN4anHm/eBPGsAnOdJ56JdDCseXvTP5Av8bj4BkYQtRqjks4zt3SLYl1rdXLqkoMfrxKicwo2QFlKOVpOBwlotIqVQ1dXur84D3gfkP3dTNwJZiPZjk3/FBrc7+ZPH8+qrE6hP23NBn2M/mDk2LgorSbNQbKZgxaP+ebMFK2PfmJywIJA47227WckZxtXQNcbCuK7G6k89lHp6CGYmfqJX8LZ9De4EUXG0Zj3PGh7FFormcYfOSkjMuqEecxVKwyDaP6+Ppb++thXzeyAxkZkr9b1jhNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xULxKrwm/DZUk8Kcvcen9hZoezlHQR4cyK84iGsY8ZY=;
 b=hqRlh6qKsH4+CajtYrm7ZHmJwnM/SPVgYw0tVK0YwaDt+Mx8e/ZZNmG027PnNnqZoJQpDaTTqrOrsqqPyonEAez/OQ+CDBmWvFdShfJtj/tDRviwdj1qBb6lpYCHmuAM7QXTEBvBATZLCzLMwZ2Avjwx7JcNykT/AoJT7q++LjOOhpD/Flf90G047hjXizWlql5yuMz2YFF0PAc7mKviML7F6K/iDOUx5cykmD2OsKvJOwZPtn87ayzv+zV4OPjhifNNEFGgWbn2BhOMjydVwiKiQpNHENWXPmXiG90bm4+5D7b8qtvQDmVrbbiUAH+CSq/ZxJfYMagKrb0ogfbHkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=os.amperecomputing.com;dmarc=pass action=none
 header.from=os.amperecomputing.com;dkim=pass
 header.d=os.amperecomputing.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xULxKrwm/DZUk8Kcvcen9hZoezlHQR4cyK84iGsY8ZY=;
 b=ZTvaGg4yvmBsUMWLWTgr/fJWYWY5FDRZXzMIodPPFSejtCyuJVM538sQU7Pes1yrn5i9QbVxDWZmPfudPuh/jrZOr4ZKPfhJ3qwmKu7AqCJ7ILxklZEO86dBZrr4FR0mC4ZO9BbFguRKO36lxkmfNuoXrx/jVhD1KqPmJqxV3ZI=
Received: from BYAPR01MB4085.prod.exchangelabs.com (52.135.237.22) by
 BYAPR01MB5557.prod.exchangelabs.com (20.179.88.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Thu, 11 Jul 2019 23:25:44 +0000
Received: from BYAPR01MB4085.prod.exchangelabs.com
 ([fe80::9dbb:1b4c:bace:ef80]) by BYAPR01MB4085.prod.exchangelabs.com
 ([fe80::9dbb:1b4c:bace:ef80%7]) with mapi id 15.20.2052.020; Thu, 11 Jul 2019
 23:25:44 +0000
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
Subject: [PATCH v2 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default
 for NUMA
Thread-Topic: [PATCH v2 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Thread-Index: AQHVOD/24o0J5njgPEqkosNO5sbs8Q==
Date: Thu, 11 Jul 2019 23:25:44 +0000
Message-ID: <1562887528-5896-1-git-send-email-Hoan@os.amperecomputing.com>
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
x-ms-office365-filtering-correlation-id: 35488193-dd56-4657-ba35-08d706571887
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR01MB5557; 
x-ms-traffictypediagnostic: BYAPR01MB5557:
x-microsoft-antispam-prvs: <BYAPR01MB5557DB615599B0BCAFAAF8C8F1F30@BYAPR01MB5557.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(39840400004)(136003)(396003)(366004)(189003)(199004)(52116002)(66476007)(66556008)(66946007)(64756008)(66446008)(14454004)(5660300002)(1511001)(6506007)(386003)(71190400001)(71200400001)(6436002)(53936002)(66066001)(102836004)(25786009)(68736007)(6512007)(86362001)(3846002)(14444005)(2616005)(186003)(81166006)(26005)(2906002)(478600001)(4326008)(6486002)(7736002)(305945005)(54906003)(8936002)(110136005)(7416002)(6116002)(99286004)(476003)(316002)(8676002)(107886003)(81156014)(486006)(256004)(50226002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR01MB5557;
 H:BYAPR01MB4085.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LaK2A6JxGVhN9BP+NPmg4P7C+zX5H8qaEDrDEH1OTjGQyXaBI5hT6402K1LX9xPmNoq5oazMmY5arw0GLdnB8GENa/z7AO8Fs7GZtGflMJ4K0wNWFA+m0N0Mz3nNlsTCTmI7tEHP/Lt4+fjddSbZqgAAB9tWq9DpoCpY37T9KsWkEjIECCTtd0s9UQbEi6LvJL5mDutuWokU8Dqx2ATzmqbVFkAGuPjikJIfg/waU+JNVOjIrJS4u+qv3sZGOEZj8wDk1k+y81I6mT56n1mFVvGPwPz5y1CngGy1IBplFtE5Or4yI/J+qkstT0b147auTth+wsUDMPHhdxTnqGw8qnOuBqTJLkWoROmKArfnOr6ICga33jlPOOyiOcsxABVWVCkKVVATxbPp2vHVAeBoa0pIKIea2AicjYztHzcutgQ=
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35488193-dd56-4657-ba35-08d706571887
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 23:25:44.3751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hoan@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB5557
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_162551_778857_6690FB18 
X-CRM114-Status: GOOD (  10.79  )
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

In NUMA layout which nodes have memory ranges that span across other nodes,
the mm driver can detect the memory node id incorrectly.

For example, with layout below
Node 0 address: 0000 xxxx 0000 xxxx
Node 1 address: xxxx 1111 xxxx 1111

Note:
 - Memory from low to high
 - 0/1: Node id
 - x: Invalid memory of a node

When mm probes the memory map, without CONFIG_NODES_SPAN_OTHER_NODES
config, mm only checks the memory validity but not the node id.
Because of that, Node 1 also detects the memory from node 0 as below
when it scans from the start address to the end address of node 1.

Node 0 address: 0000 xxxx xxxx xxxx
Node 1 address: xxxx 1111 1111 1111

This layout could occur on any architecture. This patch enables
CONFIG_NODES_SPAN_OTHER_NODES by default for NUMA to fix this issue.

V2:
 * Revise the patch description

Hoan Tran (5):
  mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default for NUMA
  powerpc: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
  x86: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
  sparc: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
  s390: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES

 arch/powerpc/Kconfig | 9 ---------
 arch/s390/Kconfig    | 8 --------
 arch/sparc/Kconfig   | 9 ---------
 arch/x86/Kconfig     | 9 ---------
 mm/page_alloc.c      | 2 +-
 5 files changed, 1 insertion(+), 36 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
