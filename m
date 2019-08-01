Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7480A7E3CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 22:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p5etYHqBfjJ3CBpCF3WQt8ZaqeEda87N0/I/VvDL2Lk=; b=t1CK5Mq/k6Kcjp
	pt1ooGiKUzajmOVSW1iOTmiG/zjWO9QtgcJTbhvWNsm8SOk49+PPq7pBKDegXeoqadBKoz/X6WdKK
	ajYUju25/zCXEPDOcqiGzltSg0YcgZvzmNK4hA2pD+KNdu741r4cC03zPAsWjkqE1icjQXQBDW8f5
	i2JqABTkYcGxBo+IGfyf4Qb+JBTFJTZQ/mE8q9XUk3d1eEh+dizhjSMBrh4Hc1No/lvD+hRo8O7Vi
	IWT8V6M7pULr5PjoWsNrSFOer3/Ox2LRvKrk6sN6C2kRGqQIoHPJnjD2biHVPQ2BnarpVPz2Hqrrn
	Pz/xi39kvcyNhfyNrvKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHVb-0004HT-4R; Thu, 01 Aug 2019 20:17:07 +0000
Received: from mail-eopbgr60075.outbound.protection.outlook.com ([40.107.6.75]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHVS-0004EZ-Sm
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 20:17:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PFNUq0uMt8re0+5oGbRsonbNmCaUQAkZkdW++20Q3goVm2bQ0dgy5TT0pCNwCGMAUykwaVj6R1Mc3yx17UW4WfdcV7dOnDt0OYVIn1Pfq39wAnpdcl2+z2V5zgkXnqOH5cZzSegqGrCFMsZuUKmTBTzWgemlEBXhmBALQQZHIrD5zkCdD6EVEl6V2c98Ti7zVa8iTtdnuZcRQYTJaQ8Lf3lWNGlDRuGQjqUMxnEGud6Gyb26J++v52HOaLBQsT/QMjW5M+OyLk0EBzjmot3ZIstKmzTcEmkM5xDD1ttLpBPWvch072u4vKwmtarn23utw9U2h1yqVXkJplB3tFeAAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+c8eba/7+zK9KeiLM1wja1jJCEoM9hBau2vZcoh/bng=;
 b=TGSBf40xYfvXXQcH743eyT05Clpzbb4caYAP1Ic+YlvW3KrjIxavk2o5BK7XcvgNqRivkATqsq5GWTe6J0nwMAJfrcctd/m7OsSlgPLOYIJSBGYIowHOrsEg1WStQHcxVCTMssxkv0RFS4AsrJpcLnrVsGAy9jU+10aVGZIwyrIiIoS0DMmypIe6g7YkMpJqY1MZLevXSkqSN8Zr6pm8o/JOzPKo2ZAmOy1z2w/AfHcajrQFGGS9j2XbAjTorY4tjU9vXxF+vcKzXq0cB/lNN/CFfJRgL5eg2HCrVhP05clLnTQcvbT2N2ffoLaFUBJLKvcV5/fkBY4esJ3+7Gxf5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+c8eba/7+zK9KeiLM1wja1jJCEoM9hBau2vZcoh/bng=;
 b=BlFIny+XXagZiQ0j8l8EIZil7/1VzVmAfpTwmRMHPbSSP3OEee/xWtWK8n/hqAUmarFntQUxm+gLZK+a0KrdO49IjLHTK7O5u4csEzFNufV6HRogkN6nMtMjSljGsXxntBsWy1HqgwitPCKdYVFs86evX4zHBssPtgfxRHFt5Ww=
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com (20.179.233.20) by
 VE1PR04MB6656.eurprd04.prod.outlook.com (20.179.235.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Thu, 1 Aug 2019 20:16:51 +0000
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::8fc:e04c:fbb6:4f1f]) by VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::8fc:e04c:fbb6:4f1f%7]) with mapi id 15.20.2115.005; Thu, 1 Aug 2019
 20:16:51 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v3 0/7]  soc/fsl/qbman: Enable Kexec for DPAA1 devices
Thread-Topic: [PATCH v3 0/7]  soc/fsl/qbman: Enable Kexec for DPAA1 devices
Thread-Index: AQHVSKYODnCIih9n4EOgU6xobSGIUg==
Date: Thu, 1 Aug 2019 20:16:51 +0000
Message-ID: <1564690599-29713-1-git-send-email-roy.pledge@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: SN4PR0501CA0130.namprd05.prod.outlook.com
 (2603:10b6:803:42::47) To VE1PR04MB6463.eurprd04.prod.outlook.com
 (2603:10a6:803:11d::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=roy.pledge@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [72.142.119.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91705b0e-ca8f-4591-d3c3-08d716bd3060
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6656; 
x-ms-traffictypediagnostic: VE1PR04MB6656:
x-microsoft-antispam-prvs: <VE1PR04MB6656C71F920C32D1429D3B7686DE0@VE1PR04MB6656.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(366004)(199004)(189003)(386003)(6506007)(305945005)(7736002)(71200400001)(71190400001)(68736007)(14454004)(36756003)(54906003)(316002)(110136005)(6116002)(3846002)(486006)(186003)(66066001)(6436002)(256004)(26005)(2201001)(6636002)(3450700001)(44832011)(6486002)(102836004)(2906002)(14444005)(476003)(2616005)(50226002)(64756008)(66446008)(66476007)(25786009)(81166006)(66946007)(52116002)(5660300002)(478600001)(66556008)(8676002)(86362001)(81156014)(8936002)(99286004)(6512007)(4326008)(2501003)(53936002)(43066004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6656;
 H:VE1PR04MB6463.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C3h1bfOQuots1/tWB5YHjdBTOOMGutwnW45AsaNYyPXg+L9W5NAGlNchD6HJbPtSQnhKf5UyiBsONjuUsS3xSljHBYc2yPNdT+na5TR21ET89dDkqHjzBxp+Wjs2d4VEMS2+OVuK9mnS5D9W8vHXbHJrLapjavl0qUXOb10v3U1lTVb0u5rgG8rlB9Xwxnb3mX0HsfeUDemz9pPKoGeIBNSqFNf1z0mfgCsgQUVIjyFsXFmgvGwcofeOIchERMnXdXygdBxqfKDyLaYuaHuMRGndnCjE2jxcVn0i8/YsL52I3nLx3cE0o01/dfzjnDyJIrS7wsgvJeADazLRKXeHu2pZF/5c2SVGejDwJ5p5IfQ6y3PcAz467r1aXtkjWnCRDmvSXXGXTlBBNwiw5s02jDmnt2F0oiV2uQdWKllbFMo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91705b0e-ca8f-4591-d3c3-08d716bd3060
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 20:16:51.4615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roy.pledge@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_131658_932294_00E12778 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Roy Pledge <roy.pledge@nxp.com>, Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Madalin-cristian Bucur <madalin.bucur@nxp.com>
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
Changes since v2:
	- Expliciitly flush FQD memory from cache on PPC before unmapping

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
 drivers/soc/fsl/qbman/qman_ccsr.c   | 68 +++++++++++++++++++++++++++---
 drivers/soc/fsl/qbman/qman_portal.c | 18 +++++++-
 drivers/soc/fsl/qbman/qman_priv.h   |  8 ++++
 9 files changed, 255 insertions(+), 61 deletions(-)

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
