Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C6280157
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 21:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FxUZfzSueC1IZRxkB7/krFsiiuuMTbgIumxHO1fNn7I=; b=Ah2nZSgRSWlMVR
	jcma37AqfDcP9xeaTY9uSKVcma9RczQ/xu/D+TeGGGNp2y4bIHWmeH/MWws8mkdmNLXF523DsBOyz
	B/dZovFPE9+db2Te1OrOvQdc4BvRZmZwHdgclhwijRIbOs3ls0+rQyaHfuCX2g5v8mL1l7Fxr2s+L
	bWXXwm7FmYO/K0AWY1V3YN7WCoVC94JtVNh8cFJ9cK3xymauaC4VC09E5H6tfB3buMCGSzXkmpyem
	1rGksAtK/nFbZcOPWBpFDTKaK2OujFR4yJ2c2PdOEVshNN9ZVpBqn73qjbhTHb1wrdODmIhRMXBVS
	0UPqfZLq851FFNTyaxoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htdY3-0006BY-8q; Fri, 02 Aug 2019 19:49:07 +0000
Received: from mail-eopbgr40075.outbound.protection.outlook.com ([40.107.4.75]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htdWW-0004sU-4n
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 19:47:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cfjry86hYoeqyu0dcaehoYO0oM8aKAM8hmL1GIx8yWPZlNVfnwAKdkW80cdg/7pUYKPI6o3I9Gt2tonYJevh+3R0y9fmwxgmzELF36WgYCWlbgDI5Ha50yvdHVnhF0i0XyeD4sGqLe6j5GVFSFl7EeYAY2Odi5Xi4Z8iOrWcnCid97LLwMkIP/z8GsE3PVfxkgObVtgkbJPKGjmlPvheJNKpfGAUkckuXoV7Bd9T17yh7WPZl6bqwstlQDc+ek2q8q5uUQjSK6+Ss35O/aQOCX1a0U4OqGGKzmrzq/+XXTFI7EKxX6zve4m+kvhHoOkA3sAY37jdTFWFWAYPVmLYMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=egAmLLcYxNc+vNg4VL0BrjM1fDO0l7UPG3LF2prGCGY=;
 b=YAl5z4uUcOK6IZStWx1Xh/IbZbO7WFoy9a5tkYivJvbK+pJLoLUkgL8pFLosKfpjSbUJfVMSdw2mhJB4htrfxHVyFvdhVt7+us3UQWBm3suikjrlB0d6qOWrcU8pZLIs3T590+tACwUpb3ZMKseonGT6CSWuIjq8+HcY2iJN6pcYviUPbuGuOM7RY8dSWepu29GWCt9Bc5oflAE2Jjeby/hdyNb5I3Z0hjPr5JqM0KC+f/RP+R0iyNtgvJrg64KccAD0qIm8ksHzA07Wcor0p+qEgnOho2RIkRonnhUbvP35kKNYglMMfYDGn23vrXqcCUqjPr8G7Af855ys/U/9rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=egAmLLcYxNc+vNg4VL0BrjM1fDO0l7UPG3LF2prGCGY=;
 b=Ebwwa5TdLeuExBXi3kWz9jeXPxdQiG7MGFE9bPKLoF9TQsBSzOnlqvJx+/BDT1AHsuCG/oPKxAoyiEUWw6CWkkDuqO0RdUzuJbDG79NgJBxU7Xo8jeKsq9zqKld3TuQ0PFKxTnHC0a3sZaQYrPZVHJOmfrpt3XsbP1UwKjG3kic=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB2829.eurprd04.prod.outlook.com (10.175.26.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Fri, 2 Aug 2019 19:47:25 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 19:47:25 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH 6/6] arm64: defconfig: Enable configs for S32V234
Thread-Topic: [PATCH 6/6] arm64: defconfig: Enable configs for S32V234
Thread-Index: AQHVSWsb/yQRxZpYOkehuDu46fPO7Q==
Date: Fri, 2 Aug 2019 19:47:25 +0000
Message-ID: <20190802194702.30249-7-stefan-gabriel.mirea@nxp.com>
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM6PR04CA0051.eurprd04.prod.outlook.com
 (2603:10a6:20b:f0::28) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a505ba7-8748-4128-a196-08d717823df9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2829; 
x-ms-traffictypediagnostic: VI1PR0402MB2829:
x-microsoft-antispam-prvs: <VI1PR0402MB2829224DABD18116520CC6BEDFD90@VI1PR0402MB2829.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(376002)(39860400002)(366004)(189003)(199004)(68736007)(446003)(8676002)(6486002)(54906003)(110136005)(3846002)(305945005)(4744005)(7416002)(1076003)(6116002)(66066001)(2906002)(2201001)(316002)(256004)(36756003)(6636002)(486006)(102836004)(14454004)(71200400001)(53936002)(26005)(66476007)(11346002)(81166006)(71190400001)(186003)(76176011)(66946007)(2616005)(64756008)(8936002)(66446008)(66556008)(99286004)(4326008)(386003)(6506007)(5660300002)(2501003)(52116002)(81156014)(50226002)(25786009)(476003)(478600001)(86362001)(7736002)(6512007)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2829;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FL8pWv/qH15hbCfrjKWf6Td2G1D3hUPtBMW8HFoF6ATlaskQYg4OmmC3HLY7XoQ9nwTUov5k0IkKPCETbIuO3Q9/75fTrPJCEkWgPgtlMv494+dFLJ3wtQtmLRvhlsdP20aCS1bBjaJzTb//9M8moeotJ+8gCklKemcAgMHEBwqcqsCkDJBYOthustR9duCDqOWzftv33QmcTP3Nwvs5NVFlcqCX5ibZfX5y2njYlFtWWwboVjfOBgRm+aw6+Tgem8LvoxXwOZcDHr5k2AcIvCALG3IOiB6e7UC1/eM4ThT6/ZkPTGv1nT4wI6UJt/31yuy5AySECD+OOq3z+mZ8iEXl7bS3U5i/BLOxJDn8JPeCoqrM66kEk+D77aA9ChkSLl/6lzwWUkTMyLfur6rniaDv8yCxj6Xq9g5iUur7l6c=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a505ba7-8748-4128-a196-08d717823df9
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 19:47:25.1490 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stefan-gabriel.mirea@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2829
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_124732_222235_3C52AD54 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.75 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mihaela Martinas <Mihaela.Martinas@freescale.com>

Enable support for the S32V234 SoC, including the previously added UART
driver.

Signed-off-by: Mihaela Martinas <Mihaela.Martinas@freescale.com>
Signed-off-by: Adrian.Nitu <adrian.nitu@freescale.com>
Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e58ef02880c..bb5aa95a8455 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -48,6 +48,7 @@ CONFIG_ARCH_MXC=y
 CONFIG_ARCH_QCOM=y
 CONFIG_ARCH_RENESAS=y
 CONFIG_ARCH_ROCKCHIP=y
+CONFIG_ARCH_S32=y
 CONFIG_ARCH_SEATTLE=y
 CONFIG_ARCH_STRATIX10=y
 CONFIG_ARCH_SYNQUACER=y
@@ -347,6 +348,8 @@ CONFIG_SERIAL_XILINX_PS_UART=y
 CONFIG_SERIAL_XILINX_PS_UART_CONSOLE=y
 CONFIG_SERIAL_FSL_LPUART=y
 CONFIG_SERIAL_FSL_LPUART_CONSOLE=y
+CONFIG_SERIAL_FSL_LINFLEXUART=y
+CONFIG_SERIAL_FSL_LINFLEXUART_CONSOLE=y
 CONFIG_SERIAL_MVEBU_UART=y
 CONFIG_SERIAL_DEV_BUS=y
 CONFIG_VIRTIO_CONSOLE=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
