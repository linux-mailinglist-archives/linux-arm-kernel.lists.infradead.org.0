Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285715EDFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 22:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uIiridvAPmeGryygV/lzESLADH67pnc4BwxA7EF+cAI=; b=kA05/3RYXGkoXc
	u4J52+q5TpcSOLBcs87HvIai379/sWhcID/Tdtc/U/3RbRwHYmBUAHc72gIKN3UmulCqTyma6o1CB
	IC2QSQ4uk7VlEIayPvp/fU7M8BOtKM5bpvluspXCwnE5EKmyDGaKpjuNVczo/1iqWuKaCjVccTVuz
	Dg0oII9smGeK/3RuDF4Jvwq0upyiTbQLVS/ZKoCFehtjeJUQOIM0UEQErIn9DJRPfSfqBvBAcTVHN
	HINu6enhOQeVR7pfQqhwam8Zdy8bV3K9YTEQK9d+KSzN+0kBcwZhk4Zy5IqgsCYL3jyVE6FjTtSKi
	hDmjkjKjORgRGLnG43aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1himLv-0006LG-BX; Wed, 03 Jul 2019 20:59:43 +0000
Received: from mail-eopbgr80041.outbound.protection.outlook.com ([40.107.8.41]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1himLi-0006Jq-KT
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 20:59:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+LGnDyzf1Nf9qX67cl5Ry+Kwov3oatuWiMcH3vAM3o4=;
 b=eygtER5twLXpHb6oBDMihNF9QsBDIUO+9jaLnfkQCZLbtc1WXhcTqnGbZLyOccmCNZeY50l/mYSEJF5OUJXY2+egSilTQ2WrCt+LquDyd5h4V/8yUqH9ykw0d5AReNNDK1ba3CuSVePFarfdfC65CS41GQh0bPAbi2vdmdgkQIo=
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com (20.179.233.20) by
 VE1PR04MB6464.eurprd04.prod.outlook.com (20.179.233.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Wed, 3 Jul 2019 20:59:24 +0000
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::a5ca:7c9c:6b18:eb0a]) by VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::a5ca:7c9c:6b18:eb0a%6]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 20:59:24 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v2 0/7] soc/fsl/qbman: Enable Kexec for DPAA1 devices
Thread-Topic: [PATCH v2 0/7] soc/fsl/qbman: Enable Kexec for DPAA1 devices
Thread-Index: AQHVMeIxggwE/pgZKkC1gIn9RzIwTA==
Date: Wed, 3 Jul 2019 20:59:24 +0000
Message-ID: <1562187548-32261-1-git-send-email-roy.pledge@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: SN6PR15CA0005.namprd15.prod.outlook.com
 (2603:10b6:805:16::18) To VE1PR04MB6463.eurprd04.prod.outlook.com
 (2603:10a6:803:11d::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=roy.pledge@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [72.142.119.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b7775e0-3fb2-454b-2541-08d6fff95404
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6464; 
x-ms-traffictypediagnostic: VE1PR04MB6464:
x-microsoft-antispam-prvs: <VE1PR04MB64645D3910FBD5F6F5D4139E86FB0@VE1PR04MB6464.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(366004)(136003)(189003)(199004)(14454004)(2501003)(81156014)(81166006)(4326008)(478600001)(305945005)(8676002)(14444005)(2906002)(7736002)(50226002)(476003)(486006)(2616005)(25786009)(3450700001)(86362001)(2201001)(68736007)(44832011)(36756003)(66946007)(26005)(66476007)(66556008)(64756008)(73956011)(71200400001)(71190400001)(66066001)(53936002)(6116002)(52116002)(386003)(6506007)(66446008)(8936002)(256004)(102836004)(186003)(99286004)(6486002)(5660300002)(110136005)(316002)(3846002)(6436002)(43066004)(6512007)(6636002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6464;
 H:VE1PR04MB6463.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kEgrJ/76lvuSbcdISeEYNOGofK4u6rhLdtPFgo8ujbzETNSWb5+E8qa5rpY7rsSiIn+XrRpaSzGiAeGUbqm9KH6jRiLJJB6AYe2Cfe040dD22Au+brdMfBhTXTpm7oJWyVnYmqUaN+Jhr1b/vCH5fk7TxwHrxWRTJPLAVNnL0XtnGe0xWLAlICaYF1k8ct6Xxg03WYPKjX2BV6u5EO9bJBh/PjcWwe63WLppquDHROGpVNn/rQ3HSbP0dqFTEvaj38bG5qoRu152CfM14EMIuL1n0LMLz7Ekf4ei87ksXEyh4hCWV4brO7/9eVnQEVK6qFUfbIGblgyJ0lUrC6SVwAz7GE+x8gaXqQEsbZQBb5NpxNFXvXg3P7N/ZWjH13aAKVpmvQobXjSkbv4RYAp98qZOdDdNy8Q+7OKsDxb2ev4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b7775e0-3fb2-454b-2541-08d6fff95404
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 20:59:24.4689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roy.pledge@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_135930_725363_6482064D 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: Roy Pledge <roy.pledge@nxp.com>
Cc: Roy Pledge <roy.pledge@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most DPAA1 devices do not support a soft reset which is an issue if
Kexec starts a new kernel. This patch series allows Kexec to function
by detecting that the QBMan device was previously initialized.

The patches fix some issues with device cleanup as well as ensuring
that the location of the QBMan private memories has not changed
after the execution of the Kexec.

Changes since v1:
	- Removed a bug fix and sent it separately to ease backporting

Roy Pledge (7):
  soc/fsl/qbman: Rework QBMan private memory setup
  soc/fsl/qbman: Cleanup buffer pools if BMan was initialized prior to
    bootup
  soc/fsl/qbman: Cleanup QMan queues if device was already initialized
  soc/fsl/qbman: Fix drain_mr_fqni()
  soc/fsl/qbman: Disable interrupts during portal recovery
  soc/fsl/qbman: Fixup qman_shutdown_fq()
  soc/fsl/qbman: Update device tree with reserved memory

 drivers/soc/fsl/qbman/bman.c        | 17 ++++----
 drivers/soc/fsl/qbman/bman_ccsr.c   | 36 +++++++++++++++-
 drivers/soc/fsl/qbman/bman_portal.c | 18 +++++++-
 drivers/soc/fsl/qbman/bman_priv.h   |  5 +++
 drivers/soc/fsl/qbman/dpaa_sys.c    | 63 ++++++++++++++++------------
 drivers/soc/fsl/qbman/qman.c        | 83 +++++++++++++++++++++++++++++--------
 drivers/soc/fsl/qbman/qman_ccsr.c   | 59 +++++++++++++++++++++++---
 drivers/soc/fsl/qbman/qman_portal.c | 18 +++++++-
 drivers/soc/fsl/qbman/qman_priv.h   |  8 ++++
 9 files changed, 246 insertions(+), 61 deletions(-)

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
