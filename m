Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4678D160F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:33:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7aZeWJocgM9BcmqjpYIwAJT/Wzy76MgXOy8Heh5evcs=; b=bORidS5e5apNpy
	AUCyJKV1dxaDIdEcUa/fwR+IaGnRW9fQrQd7P45qy8Qlr01BFnJFgglh/YypD64OO/RdaptiBTVUH
	2tLVJ2pmLdXr2xGAKpuOsziZsRXkXeHv4WJRMh4QxVUk3Ywvo1QrVv2ZxunECmk1ibEMU+yOAtgeF
	bXPqpgT4hoWBcybgQnM4N9Y55/LO6tzu5NxGFu8yBCed8oCtbG3vG2ac4j+/1nwjrJ/LhSpzBDeqi
	58Xa/J2UvFqc3ZzdCsFLypsZf8A5uTo+ezD2YfECjan1ELhB1PG/zA6DRBOhL4b9GvQ9W283zs8Jm
	4xkRcs2anWYwhSTSXQEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwTB-0004NH-5v; Tue, 07 May 2019 09:33:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwT2-0004KV-TZ
 for linux-arm-kernel@bombadil.infradead.org; Tue, 07 May 2019 09:32:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3g0lTa6I7/GKE2J/Te7pvuU1GY/Y0Di8Xu7jjSBYGMU=; b=wO8umpst7SEXvb6Rx5vC/ZICQN
 nAyshymb+6nmmcs0u32E5xmFd+qVFOpiPsX+3CVsas5mi2XBWaU5bC4xOfjSDOr+sjsERbQ3vh6uW
 DN6CZL8Zxke+OTqCOtKIGjkuQL1veDZEyxJgEgiQpYTGbOOtWhRK6U8iBC33s5O9CAv5g/n9Lq1g5
 5DcHwHaBPlZnKp3J0OdaVrdcPwZKIN3sJmhPjtA4coNgoT7j5hDa4p1XoweHFNOPzWKmZ95FIGx5o
 SO7lSjbxBJzxS3qyDFoclBUpcIaHLCY74mST1doMYq/jOovwj5pTxCoipXqY0/6HFbjiW3M/E5eAO
 nG8MSYWg==;
Received: from mail-eopbgr40083.outbound.protection.outlook.com ([40.107.4.83]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwEe-0007bv-Db
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3g0lTa6I7/GKE2J/Te7pvuU1GY/Y0Di8Xu7jjSBYGMU=;
 b=RqNlg4VNMA+1hb1dh9MERixqVtWvKHOl8oRwQe+3DLgD2WtOMUOAIP22o6VaRwEAc9d/j2NKAsfztWrDKH+iSltwotYE7tSbX/Hu43oixwfbhmhsdgQX4rJkGUXUfdtwN/sCPMTia1Kmfzlu3kgZHy1y8CX3yKZz+9HhtqGWTaw=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB5005.eurprd04.prod.outlook.com (20.177.49.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 09:17:03 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5d07:911b:18e1:1525]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5d07:911b:18e1:1525%4]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 09:17:03 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "broonie@kernel.org"
 <broonie@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: [PATCH v3 14/14] arm64: defconfig: Enable SDMA on i.mx8mq/8mm
Thread-Topic: [PATCH v3 14/14] arm64: defconfig: Enable SDMA on i.mx8mq/8mm
Thread-Index: AQHVBLWi1hGP8ym7IE6DRAuYEaIkBg==
Date: Tue, 7 May 2019 09:17:03 +0000
Message-ID: <1557249513-4903-15-git-send-email-yibin.gong@nxp.com>
References: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0088.apcprd04.prod.outlook.com
 (2603:1096:202:15::32) To VI1PR04MB4543.eurprd04.prod.outlook.com
 (2603:10a6:803:6d::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6a8b8a1-eddc-4f35-da05-08d6d2ccc45b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5005; 
x-ms-traffictypediagnostic: VI1PR04MB5005:
x-microsoft-antispam-prvs: <VI1PR04MB5005D5C93EF6F9CAE88E72CC89310@VI1PR04MB5005.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:949;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(376002)(346002)(366004)(136003)(39860400002)(396003)(199004)(189003)(386003)(6506007)(2501003)(36756003)(102836004)(6486002)(26005)(8676002)(4326008)(5660300002)(25786009)(68736007)(52116002)(76176011)(186003)(4744005)(2201001)(6512007)(53936002)(3846002)(71200400001)(66556008)(86362001)(66446008)(64756008)(476003)(66476007)(7416002)(305945005)(2906002)(11346002)(7736002)(66066001)(6116002)(99286004)(54906003)(256004)(14454004)(2616005)(73956011)(110136005)(6436002)(50226002)(8936002)(81156014)(81166006)(66946007)(316002)(71190400001)(486006)(478600001)(446003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5005;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tgC5dr4tj9vKWcRwWLIwMwIHhBhqHT9KzRlyu62NFv1REU2dnQXHt+g7fhjtivOm6DIzfQ9QJ6v4ayt1x4BAUSeBJ4/U35gpk8u3HT72WRmAGx9R39dqYalAnttnbS35caEHYFdP+BmIfpYu8XfMrc1L78aNgXc5bx7li4+H9NYDRN14kQWMtWDMk+LThn/c1vBCAtyrvWGg+wWOf7Q7A8uiwRTkDK0y4+vmOUnl7bxGKkFDx8tQqaFR3gPnB+1sz1qdBmXToFaLlwpxLDyOtDmpj8TEs4KyBff6KghXNRoe7UKKaBmByRdRTNAcPuXzHc1sbCNPKLXG7oYrunsODLaadNbXdYOuYxx7sNOdQhOcm2EmQC2sp6K7AspoqhP/vMRCaxmgn1sVY7yme4j0z9tPnwpRCaAY5qRYVilUZyo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6a8b8a1-eddc-4f35-da05-08d6d2ccc45b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 09:17:03.3452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_101804_560419_BC4BE089 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable SDMA support on i.mx8mq/8mm chips, including enabling
CONFIG_FW_LOADER_USER_HELPER/CONFIG_FW_LOADER_USER_HELPER_FALLBACK
for firmware loaded by udev.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 17daa97..7081817 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -203,6 +203,8 @@ CONFIG_NET_9P_VIRTIO=y
 CONFIG_UEVENT_HELPER_PATH="/sbin/hotplug"
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
+CONFIG_FW_LOADER_USER_HELPER=y
+CONFIG_FW_LOADER_USER_HELPER_FALLBACK=y
 CONFIG_DMA_CMA=y
 CONFIG_CMA_SIZE_MBYTES=32
 CONFIG_HISILICON_LPC=y
@@ -635,6 +637,7 @@ CONFIG_RTC_DRV_IMX_SC=m
 CONFIG_RTC_DRV_XGENE=y
 CONFIG_DMADEVICES=y
 CONFIG_DMA_BCM2835=m
+CONFIG_IMX_SDMA=y
 CONFIG_K3_DMA=y
 CONFIG_MV_XOR_V2=y
 CONFIG_PL330_DMA=y
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
