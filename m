Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9873EC8942
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 15:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7z312wXA/ZXfsSEk5yS9PZlW8OEMFqs9Laf0zIfXw04=; b=qqVOou8hWLyErr
	mpPqD98Xk0uCqoN+9SGZMi5QWBHjSBG8kP6N9sgJ5EEM1lf36nbUXNiEuNMO48PdLi/siGI6o2HPu
	y8QgcrKhgXcygpUira/rrQyIzoFRdOEI9EPjheziICpBsz11jQB6Nc/Oz18tx1v600ZNBNIS+8Rjq
	EyRBILo09jMHV2MvW4w77/h8pWfKSqYRD0V37R0IDCnLqdf0RaUsi4/swi2uBzyZtsXvoeuKnrxSO
	/6JDKndlbXcJUaBr9wG1FcDz06v3h2zJ4W3PG4KSabwjg9g/ufwNYhfY+fmAn9VfK3b5kq/8qq3nm
	8ZiZwTOjMvrW36gRHeNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFeKc-0007kb-KO; Wed, 02 Oct 2019 13:06:14 +0000
Received: from mail-vi1eur04on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::602]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFeJJ-0005KX-PI
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 13:04:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R0VO+dE5keItSvoYa8jaTAFpT6oy92bKck6GNLU6Mb56vTkE/TPIi8/ozQNrnc9XanByg0p3jy0Pb5prgux9Z2CqwKSddhQbXGxANtZdz1oZfgx7TPtarLIKyJwTOr9m829cxwjovBdzENA3JRvPeBcATNXdxG5hX+b6F2vkxHLNr/oC5N5qpMNC6aoKjgsMPUxd6ndcWg4I97KiXUTUvHtbVRkJkXn0GtTSjst+oni2as3tNYHTyRva345TDsEkO5XDI8pGqyd+HksOTxjcnarXnJsevTWxJ0YbVlurWAYYC4/L1xMh6hOvUGPf3ETX/DcuRET+M7AOFnGvrMEaEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ehS3UndgXagzpEGqEcWAELDP6S0hrQKp/xr8x06uuPw=;
 b=J3Rop2Wh+g8PauF3xtjXaP38m8YojmMzf2GdQlig7hGCux4qvodRit2ZwN7UX43lcgcYaRmEOANU6djAqLWkHHvf1WkH9AMfmW8W+9O7h08FqsOivgG/s+g5uIGUzFZT8iNhf8v65K7+FKDEDbU5M+EkCkMRa7XmQnBeTEhz8xfOeCfglILH4BK+0mIyNuqnCXLfaBGS8OuJaPg0/uRtS+YMTi6jBXajRT0CRyuhOxZ3D4rCBe4TbecpUL7UvqSzwK+BXFKNpvPdyK4MS/MQ9/+yGWbvUULyGSfCMBFCZJyvxKMuU5NNN9IhBH/afzc0Uq21Whzh7XoOGHmHzxo1UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ehS3UndgXagzpEGqEcWAELDP6S0hrQKp/xr8x06uuPw=;
 b=JdSKrh8278foev69L1XU0WS5eE4xqVk6RYxjP+hS7fQ/2iLTZkZSKyHXbskR71TYWl/qeCtxUULbZu9ukO8Cf89V0TW/W5ZqKDxpeI90GcPd7P8h5i/oBnRC0hmqVkNqXvo1cg2LngbEhhS14dtbXk7IFCedP0CAouaTkQl6CEU=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3918.eurprd04.prod.outlook.com (52.134.17.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Wed, 2 Oct 2019 13:04:48 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::fd33:c447:3cab:c36]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::fd33:c447:3cab:c36%7]) with mapi id 15.20.2305.023; Wed, 2 Oct 2019
 13:04:48 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>
Subject: [PATCH v5 5/5] arm64: defconfig: Enable configs for S32V234
Thread-Topic: [PATCH v5 5/5] arm64: defconfig: Enable configs for S32V234
Thread-Index: AQHVeSH29CXEj60aakehEbe1lYsBFQ==
Date: Wed, 2 Oct 2019 13:04:46 +0000
Message-ID: <20191002130425.28905-6-stefan-gabriel.mirea@nxp.com>
References: <20191002130425.28905-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20191002130425.28905-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: PR0P264CA0194.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1f::14) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.240.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58e9b192-ccec-46e1-81d3-08d747391934
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR0402MB3918:|VI1PR0402MB3918:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3918D7C0FEC766F7D3286A62DF9C0@VI1PR0402MB3918.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(136003)(396003)(376002)(346002)(189003)(199004)(102836004)(2201001)(5660300002)(26005)(478600001)(76176011)(486006)(386003)(14454004)(50226002)(8676002)(8936002)(81156014)(305945005)(81166006)(6506007)(7736002)(7416002)(64756008)(6436002)(66556008)(66446008)(476003)(66066001)(2906002)(11346002)(2616005)(66476007)(6486002)(66946007)(25786009)(52116002)(2501003)(186003)(256004)(446003)(6512007)(6116002)(3846002)(36756003)(71190400001)(71200400001)(4744005)(4326008)(1076003)(86362001)(54906003)(99286004)(110136005)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3918;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MHSjtRb7FhMw7vTwUbEDpLXXl/NRHtlx60XhVmVRyBLDdWKgfpH0tSrdYvFoa9QNzpCpWWt4qX5/pUAZBr6DwEsG4HaGX/LGo479uxTZzFWMqfSHs80TsraYZGDBrXMTrtRIJdOtG0PyqA6xDPNAHBW79x+JlHe2x38uyMv8yglbbWySa9n3rFg1UhqUjqD+C2piQKdZZgLQ3811vLgiDtQ9RwKHl72F3FTPGlAXiO9AOjYWgYfhBMm6hC7tW7ildZA0upxv3A5XRz7Fce2xQyDMX9sOVszdeFOr69N91jZAGK9wW+xer3/MMeYLFzh3D973fvJLQ129iwnUmywZXyc+R2HJKVvkxhe+7BtkLRiqdGt1WnUblYHDj49h4b+OmxVlnqdpRs+kH5+SnzloX2jSlQ9bSl8d73ruA9DY2Yo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58e9b192-ccec-46e1-81d3-08d747391934
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 13:04:46.0122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yS4gFjWeaAgDuVAHKrmSWZR8GP2UYk+QXFPUn1Cn/X1illIIxH6DtJs+Fut1RBeHld0+bVnQ8bKM1BRxYHpLSiCIoIZGEWsOlM49BSEDUhw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3918
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_060453_853330_3D86B772 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:602 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
index 8e05c39eab08..aa59450557b8 100644
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
@@ -352,6 +353,8 @@ CONFIG_SERIAL_XILINX_PS_UART=y
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
