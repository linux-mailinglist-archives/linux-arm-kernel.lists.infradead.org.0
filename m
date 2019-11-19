Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4266B102C56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 20:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KP1nx7s2qC4/IrTAYEzkFzfITPP5D7FKVodoWbgrjaA=; b=rpnsxzmFb8LoOx
	diujvVNUIBgLdl7yNwmnKsnHhheX0h8YOAP7Kxm2qZhTmMF7XJVmgXynjTuC9BlQDIcGm6o2+Qyza
	QxhJ3B8rJsAy8KnsyHC9rdwhQ2ntmfYGLtxmG+MxRQOt8YYGD3EvVcL3+Xmd+ZA0hwVo2xcM5F7uw
	LTkE4Iwc1rWpELS+j37qFpRtV2+IKmPYDN8qItU9R5pxxXoFnqTmuFshryIaXVL6IYBMudxnSFuMZ
	Tn6Zz7m4mc3nETGE3eBr5Y0csxNRUxVIB6rFOvz7VZlfrfgJtKS6y+/Whec3ZstKQSt01eHMNsbjh
	wsSX11bJFPaz+RliF1Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX8pc-0002sw-I6; Tue, 19 Nov 2019 19:06:32 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX8p3-0002Zv-Es
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 19:05:59 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAJJ5bPN026680; Tue, 19 Nov 2019 11:05:52 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=0AU9cEXKKMR5WcQ4Y2Rv6hi1hZDohvrLXr9wtR3RYpk=;
 b=NjiC+lBEtZUwPzfkVHEXZJWl4Ke6CFGnhjNSPsSLE/cBE2PjFfiBC5I3/rkUFaEXRC2O
 hhYFY95vwGUQQMOycJmKJnKS7DAOTrrHJvL1KnmZb6sw+gv/poXT5HirS2SrPejB9XLZ
 bezapt/ZmRa2IpPrKU1ePXHlLAX+JCi0Won3DOB+Dv0OrWT1O7mBNpAQ9e1rYVeN9SrR
 vClI6SZpNNGkCJRpfuerJg/j1JP6dt+SQW6hJ7QsLWF9yzn8SdghDjbzG3nbnUIz44sJ
 bQtO2NY+GmVQn/XWjBI16mk6Y9gWQkU6NbWAiw66bwpHan9A7Qa8E7QpjJv3d+FDJHgG pg== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2wc82vkfr9-8
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 19 Nov 2019 11:05:51 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 19 Nov
 2019 11:05:02 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.59) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 19 Nov 2019 11:05:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f9A9cxvK7qolrHxwfqFbwCrrT3KheoNBrCy7NjG7lOG2JM+qq3lwcKUezcoklal9zt5Jhw94qlE5Ux7uYATpll1UREBCt1oa4D2V8N4grJjmwQ9ra3HqjtFkIPHestjks0vAjPdjKk0qtf0rC7iSlFB9vDL1s4KL9ISgqSQCOofa61tcv83hQRUDHyYyGAV49wizemciiK/jiit6uVkQRgGpZ1X7BHN7Dwji/Ou3bqfIlHXA13l5sBmxvzJqK7P03us6M37umyEotb/D0KDoZYe3sbV5xBq4kW2HZAE6C7MZrrSH7SW8RYapEOKvATTfSm/F6b5pGtyMKwBeBr8Q1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0AU9cEXKKMR5WcQ4Y2Rv6hi1hZDohvrLXr9wtR3RYpk=;
 b=QGBWLq/054yP/93Zc3DDPWTkxizQ9pAY1SFkNIraBksDa9tBCK2tNjcChCH0ElRkZyjUekagHYuwazsKv32zI00/FfMKDUGsOCpC+lbOiwXQwHPBbPjaPTW0jt557aBy01GNwzFq0TaDT+MOp5PN8a02skSWwY3dzRkVJyxqcuK8RYsob+ErwP/OT4dBNE5ZnWpi1FcfAiDzjuLRHhb1ubtcySdIxh6AgjoPV9POJeLSIdvhfhVCzhKLd8BP4iXol8OCcIm3ppGVZGeGHeCIr/KxEww8mXw05aBRzOLPs1FTNiBKDjPeI3J+EBnHp3g9ZVWy0cVJtrPU4dxZQ9QcwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0AU9cEXKKMR5WcQ4Y2Rv6hi1hZDohvrLXr9wtR3RYpk=;
 b=uWjv6YNYQY9bVw2iLgUoTHEFi8I1+DtW2mstpIASUJTUBMJWLucCfXipK2nDBHo8vAc0IuMbMjPVtRaJSlAwqKcClh4EuzjAi1zfRGeH/NZPP+axZsn3/S4PTa2/c+acHaTbepQ/+FUlmf69ikKPVG+b8Ew7gKALp6f68e2CMcQ=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (10.255.237.10) by
 MN2PR18MB2685.namprd18.prod.outlook.com (20.179.82.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.29; Tue, 19 Nov 2019 19:05:01 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 19:05:01 +0000
From: Robert Richter <rrichter@marvell.com>
To: Arnd Bergmann <arnd@arndb.de>, arm soc <arm@kernel.org>
Subject: [PATCH v2 2/2] MAINTAINERS: Switch to Marvell addresses
Thread-Topic: [PATCH v2 2/2] MAINTAINERS: Switch to Marvell addresses
Thread-Index: AQHVnww+xorYfyhIz0+qcdanWvKejA==
Date: Tue, 19 Nov 2019 19:05:01 +0000
Message-ID: <20191119190436.17875-3-rrichter@marvell.com>
References: <20191119190436.17875-1-rrichter@marvell.com>
In-Reply-To: <20191119190436.17875-1-rrichter@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0701CA0044.eurprd07.prod.outlook.com
 (2603:10a6:3:9e::12) To MN2PR18MB3408.namprd18.prod.outlook.com
 (2603:10b6:208:165::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [31.208.96.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c25f6f4-af55-48cb-1cc8-08d76d2360ee
x-ms-traffictypediagnostic: MN2PR18MB2685:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR18MB2685CAE7617B4B53735E56A1D94C0@MN2PR18MB2685.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(396003)(346002)(39860400002)(366004)(376002)(136003)(189003)(199004)(256004)(54906003)(110136005)(316002)(2906002)(66476007)(3846002)(6116002)(4326008)(1076003)(64756008)(66446008)(14454004)(66946007)(5660300002)(99286004)(66066001)(478600001)(386003)(6506007)(86362001)(7736002)(305945005)(26005)(476003)(102836004)(186003)(446003)(486006)(2616005)(11346002)(66556008)(25786009)(36756003)(6512007)(6436002)(6306002)(50226002)(76176011)(8936002)(81166006)(81156014)(8676002)(52116002)(6486002)(71190400001)(71200400001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2685;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PiqA0d7V+P1cdP0HOhp+z1QqskC/Zmn8j0Tyvyhxqdx2R+p7Qoa/Jvx3XbNziN/k290X8s8r9cCZjAMZJkySdBzRVgWPPe7CwCMFxBYdi6V2QLAqq26ash+4Xi7xkCkM+QpUM86HBGDhYAltTe2x9x3UPNTeygmEFYv+Ec3TZUFrtHBHLPJBGjFtuvY6bI1hxOMpXOtjQLE10U58Ng4Yg1QopgKSmqZ1CLoUP9TS6qdDBCrR6hwaOz9fHMpbPdQYCfuBlgDNMCL5trYzAStRlQzNPyRQ0oviM3pJiNSziA90Um6oAhetZUR5ZB9AITfTotNkLbx0PzF/HcsAleRnghdsD1+6FHgF3rpqQOJNUeyT2M31DSum04p4+1/dybho6tYtVmQaq5WtLcVUgVKqrNQ1QInqp0lS8XOZNKIZ74kbA/2MeSd6IOS41Nolc/SkSF4naeAlLzEU9+tW1M2EB353OoxswGR/vodYqrXU64c=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c25f6f4-af55-48cb-1cc8-08d76d2360ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 19:05:01.5394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XF5axD6VPBwtuhKGNXGWNUAHajM0ayQ2ZP4LSPqUCz+TNdaUMEGwofSB26maTVqgZP8rCRwCyulE4yTGOwjoFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2685
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-19_06:2019-11-15,2019-11-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_110557_672749_BD5E5BF6 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, "soc@kernel.org" <soc@kernel.org>,
 George Cherian <gcherian@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Will Deacon <will@kernel.org>, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch all addresses from @cavium.com to @marvell.com.

On that occasion, switch also to my Marvell address for all my
Cavium/Marvell entries.

Cc: Sunil Goutham <sgoutham@marvell.com>
Cc: George Cherian <gcherian@marvell.com>
Cc: soc@kernel.org
Signed-off-by: Robert Richter <rrichter@marvell.com>
---
 MAINTAINERS | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2bef41729946..ef169130d925 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1547,8 +1547,8 @@ S:	Maintained
 F:	arch/arm/mach-cns3xxx/
 
 ARM/CAVIUM THUNDER NETWORK DRIVER
-M:	Sunil Goutham <sgoutham@cavium.com>
-M:	Robert Richter <rric@kernel.org>
+M:	Sunil Goutham <sgoutham@marvell.com>
+M:	Robert Richter <rrichter@marvell.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Supported
 F:	drivers/net/ethernet/cavium/thunder/
@@ -3706,7 +3706,7 @@ F:	drivers/net/wireless/ath/carl9170/
 
 CAVIUM I2C DRIVER
 M:	Robert Richter <rrichter@marvell.com>
-W:	http://www.cavium.com
+W:	http://www.marvell.com
 S:	Supported
 F:	drivers/i2c/busses/i2c-octeon*
 F:	drivers/i2c/busses/i2c-thunderx*
@@ -3716,25 +3716,25 @@ M:	Derek Chickles <dchickles@marvell.com>
 M:	Satanand Burla <sburla@marvell.com>
 M:	Felix Manlunas <fmanlunas@marvell.com>
 L:	netdev@vger.kernel.org
-W:	http://www.cavium.com
+W:	http://www.marvell.com
 S:	Supported
 F:	drivers/net/ethernet/cavium/liquidio/
 
 CAVIUM MMC DRIVER
 M:	Robert Richter <rrichter@marvell.com>
-W:	http://www.cavium.com
+W:	http://www.marvell.com
 S:	Supported
 F:	drivers/mmc/host/cavium*
 
 CAVIUM OCTEON-TX CRYPTO DRIVER
-M:	George Cherian <george.cherian@cavium.com>
+M:	George Cherian <gcherian@marvell.com>
 L:	linux-crypto@vger.kernel.org
-W:	http://www.cavium.com
+W:	http://www.marvell.com
 S:	Supported
 F:	drivers/crypto/cavium/cpt/
 
 CAVIUM THUNDERX2 ARM64 SOC
-M:	Robert Richter <rrichter@cavium.com>
+M:	Robert Richter <rrichter@marvell.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/cavium/thunder2-99xx*
@@ -17911,9 +17911,9 @@ S:	Supported
 F:	drivers/char/xillybus/
 
 XLP9XX I2C DRIVER
-M:	George Cherian <george.cherian@cavium.com>
+M:	George Cherian <gcherian@marvell.com>
 L:	linux-i2c@vger.kernel.org
-W:	http://www.cavium.com
+W:	http://www.marvell.com
 S:	Supported
 F:	Documentation/devicetree/bindings/i2c/i2c-xlp9xx.txt
 F:	drivers/i2c/busses/i2c-xlp9xx.c
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
