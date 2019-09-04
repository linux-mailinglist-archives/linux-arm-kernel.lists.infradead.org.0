Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0026A8531
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mUKnZZE764/T2ParrITgmUNGgYQ58tuGV7UcmxPph7s=; b=Ne1Uct+i5lNx2q
	jxnAsde2eVynkjFO8bqnmuAOZCCQ4xY7MjtqFlPDYIfkiLD7Wb1PiPwed4nuGnenwqXM26CA5x7/c
	YNIukZ/zPX97OGhlzMyHb7BWKLoah/9nP0gYYkbTleQ6JQ/3rOVnfVWVLbHU67SpPuHphk4fpcHiI
	mvW/gglh6f8xD8RIRWGvBfoYOwnhUvU6Uv5ger0IcBbMFLQ51SXDiKVSPHKIC9Pqsb76Wd+P3zTmb
	S+j0gSNunp0pxHwruZXv5ivQtz2T0TZaVBY28PCxAWNnextKlIO6k/XABcvYmYEn7mUmDyC17df5F
	mIX3SnOxk/BZzkYnDzVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5VyF-0007Nw-CY; Wed, 04 Sep 2019 14:09:15 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5VqF-0005Vg-Hq
 for linux-arm-kernel@bombadil.infradead.org; Wed, 04 Sep 2019 14:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jbV0KiQXzhkjTQ9Cz5SKCJoDIfgb95NPUpA5Zl8XTIo=; b=uEBonjDgzVeCFUNron+5fmu8Ek
 kriep/JhK1PaS68PQ7SZaYiPbbbkj5Wu62NpxORNjvqk0TkRDnHPmsSIYLw8Z41kOdaSJm/k2iFA9
 Cxx9ebnxku24rydfVAyuSfRHArKepD6zeGlueWU8MJsw2CT9pvVhp/XveGN8we4XOtwimi+KTZp+T
 sdDxdFSce+PBahGtEyqQkv9MC1uJ1WTsSkWr/3eoPWaH0CVNVzoHJzAokkjSyI3LJFH+SvWsTESm/
 JSA0IlOjpvyJOE0bIpyW4zKOf8j91+daGouRElnx9arMaKyHrn2Q5eUAXBKx+yMYZqWm+txB1UnFY
 d430v7Mg==;
Received: from mail-co1nam03on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe48::62f]
 helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5VqB-0006EO-70
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 14:00:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cop01YPNsNA8eNV5hmjiVKS8sVpMvW7dvKBRnGmQxdUdMkyfWxijvwSk/P3lce9zU+fefkq89mErNjqBXiIf0deN8rs2AZlOQIW5915fIqEq54YEK7qxFCvBuvIX0z9HRucWve5775s0p4mV3rldWCvD1r0hqm2SJ4qonEjv1vqRlCMlB9HJM5nNGgnMvv0B8WdEGyx8L5JPp2m3ml1yVCxI+QJnY3+aFBlopwdMnyStBE/52VMev9HaEFgtjYFf5Ey57FkPuYPRblTTHf3CdmMGIwSiKDuPdR75BiBPi2rdbfLxUpCFNq0/1OgTWRs5O47Ox6GE3umtw287KvPfug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jbV0KiQXzhkjTQ9Cz5SKCJoDIfgb95NPUpA5Zl8XTIo=;
 b=apKRykCEi/UnhXKcg6yhgvMhlYuDpETIxVw7uqNZM2PBYMFEWGS+sArRg8KAwYhRYb3tn+IsI4o7xNI1lwuX0U+eTUmZTunf/REpZ5htM9u48S/cbL/6grf8Ktj3tstunFra/Oa5VdIKBv/dUw7sZUfC9nRJNocU5nXzkeYaz2Rq1bP8HojV97BFc8S/UVAFMvznuV+2OXTGKuT6I9yzPXBbQ/VxYKbumKmuZYPMoNj+s2tYE3ICsNtHiBmKQoe7GSvEvMBo/CzYqpEDOWNAioTEHgB2e9yd+sQ6W+yZkKqxUlhh9G47E6hFlejpb9XVQhtNJFb76m2QV7jO5HeitQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.100) smtp.rcpttodomain=gmail.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jbV0KiQXzhkjTQ9Cz5SKCJoDIfgb95NPUpA5Zl8XTIo=;
 b=DWoGDVP0uYDek1T0ETF5SEHPQXFYgPiygTjhpm/WWZbCkacXRA3l7b9San2Q68TVcauh5LqAuZi9o6ez1hElluIHFgEhvq/vJU3wgq/9f6vxBnnWPp3fMOTMZJ+2a6/gBqjGaafL95JVQEMuh/yuUkEB907eKW8zwBNvo0itO3Q=
Received: from MWHPR02CA0037.namprd02.prod.outlook.com (2603:10b6:301:60::26)
 by SN6PR02MB5262.namprd02.prod.outlook.com (2603:10b6:805:70::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2199.21; Wed, 4 Sep
 2019 14:00:44 +0000
Received: from BL2NAM02FT064.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by MWHPR02CA0037.outlook.office365.com
 (2603:10b6:301:60::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2241.14 via Frontend
 Transport; Wed, 4 Sep 2019 14:00:44 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 BL2NAM02FT064.mail.protection.outlook.com (10.152.77.119) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2220.16
 via Frontend Transport; Wed, 4 Sep 2019 14:00:43 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:54097
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <harini.katakam@xilinx.com>)
 id 1i5Vpy-0000x0-K6; Wed, 04 Sep 2019 07:00:42 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <harini.katakam@xilinx.com>)
 id 1i5Vpt-0002TG-GD; Wed, 04 Sep 2019 07:00:37 -0700
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x84E0PXH024453; 
 Wed, 4 Sep 2019 07:00:26 -0700
Received: from [10.140.6.13] (helo=xhdharinik40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <harini.katakam@xilinx.com>)
 id 1i5Vph-0002Ac-3i; Wed, 04 Sep 2019 07:00:25 -0700
From: Harini Katakam <harini.katakam@xilinx.com>
To: andrew@lunn.ch, f.fainelli@gmail.com, hkallweit1@gmail.com,
 davem@davemloft.net
Subject: [PATCH v2 0/2] Fix GMII2RGMII private field
Date: Wed,  4 Sep 2019 19:30:19 +0530
Message-Id: <1567605621-6818-1-git-send-email-harini.katakam@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(396003)(376002)(136003)(2980300002)(199004)(189003)(186003)(26005)(70206006)(356004)(486006)(336012)(6666004)(126002)(70586007)(107886003)(2616005)(476003)(4326008)(426003)(51416003)(316002)(44832011)(48376002)(50466002)(305945005)(478600001)(47776003)(2906002)(9786002)(8676002)(81166006)(106002)(7696005)(81156014)(5660300002)(36386004)(50226002)(36756003)(4744005)(16586007)(8936002)(42866002)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5262; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; A:1; MX:1;
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0d153411-1981-44a9-ef12-08d731404735
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(4709080)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:SN6PR02MB5262; 
X-MS-TrafficTypeDiagnostic: SN6PR02MB5262:
X-Microsoft-Antispam-PRVS: <SN6PR02MB5262131CA2193EFD4852BF28C9B80@SN6PR02MB5262.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0150F3F97D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 4NOLcwE3N/OP+ldJTEN2k3ygoQe4DsY4E8ZovyV4P8C7ffbaGFh/87Nrmz2OuhDtRQQ17hwHgDkIyL81DdVF3Rmh952txvC2FiLtl2rpso3Z5L1K/pir/RiSUnz/6R73VYnVD3EiKhPt36t/PceN1XkP0hzqeQSxU52yEl3rWyAv/z7ye/c5Fc8XO3oGhBWWCt2zN7FnHdDdq0nfvWFFDQz+AmWoY3gIyuGrX8T2gBEuHTO0Uwdg64c5sZXvLIWTxVKKQpsFU/Vw7JCRT+YBENf6W7v9HzzVbPf4lgErV+AvFxxuKwbznQb4ruL4WhwWyPgzVMnEsUnkAQR8wrdHe4Bmsl9pvpJGFmpBd34AbCdsNi2KBte3jCvGF7JjOWs+R+DwTYdLN8hGaXyGYQfiKC4HJUtQREIhzsXoNXuP7Rw=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2019 14:00:43.6858 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d153411-1981-44a9-ef12-08d731404735
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5262
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe48:0:0:0:62f listed in]
 [list.dnswl.org]
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
Cc: netdev@vger.kernel.org, radhey.shyam.pandey@xilinx.com,
 michal.simek@xilinx.com, harinikatakamlinux@gmail.com,
 linux-kernel@vger.kernel.org, harini.katakam@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the usage of external phy's priv field by gmii2rgmii driver.

Based on net-next.

Harini Katakam (2):
  include: mdio: Add driver data helpers
  net: phy: gmii2rgmii: Dont use priv field in phy device

 drivers/net/phy/xilinx_gmii2rgmii.c |  4 ++--
 include/linux/mdio.h                | 11 +++++++++++
 2 files changed, 13 insertions(+), 2 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
