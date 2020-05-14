Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C4B1D266D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cEmL5JCybm1FJ3XbMg1BVTqTtNX7vJY/DMGsg/EIWI=; b=EoD+vHB+t5I2Hs
	Ttz+WXwbLIgFiamtmfkW5dWu0Zyq8iHIG7C9wyV/v9I6/YuCXmWrJxfD+vLmi4SwEcaxbjnA7Qy/D
	JV+AqgMYO0RfSmLOFL8OQps1N3sd8uq8M0ZihoKSj4sb0NBCwEU1PSL8hGOer8kMFfl5H+ZnZMDW8
	nmSGRqoFhtFvVMXtTiQhPpE1X+DzgNHkLTfkU/ne40kccZ0ngZzmVN2/fBQKsY1xnmE9nmqFjJ6rS
	NRXCvQAK8byGEirGg6tp62uvctuqIaxFl06D33uJffE6qt8RK1+fGyVPh/VVl9ExUzI95VdzESBH1
	YwbkSQXggafYnhXuIErQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ64N-0006L2-Hk; Thu, 14 May 2020 05:06:07 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61b-0001hB-IQ
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432595; x=1620968595;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QamDy4OWnmGDBETtKnaYfVVxvdp1Hscj7dmQmNvd8fw=;
 b=DKsROce+q9sm0JFSlFve3RF5hMaB8qOFRiMiNIz+Yvv3Ef3Z6KkvJbj5
 kKUNUIrAUn2eEmC1B7mva7/xAxu0i4NN5USTi4SqO+cTRmZG7iYBQOKcd
 IHx8Nubc1sBA9eGwm1vqW9MIPizCHxIRevvXrytHsx+W0j4ABWTAhqOfb
 c79nXogpmuApvJfOOdnXAJs0vshTcwHo/49Qgmcq90MwNmuaQyaPWOAfd
 jFumZGoQJf5YPaOVDqxosrhGO7TrqGzcrbdm2cbN366YeU0dOdn5DXj3f
 CjFrwtSe9sBG/Vv8PZhUrH8+lVDxCBFN2SfJQYC+1+qReo5RxoaXe4J2O A==;
IronPort-SDR: GSxveSHu2ZNUnYtj6J5rk37ZgOFP1VAr3aMURanOX9RGViOFMjZafKbkF/n6ESFo4ksbRauuT7
 0FJDwwcf+lYuugWVtKRJIpBQBkRx1Ua445H6DXaL6NuQQXLq0yqsof7P+is6fvrIJHnBgo0rMM
 NcCvRaomwonpuoFoQwD+jYqZJh78YmF1ac56lfByrYt+rDRFvPR8fNegXjG63C0eqY2M2TLLxI
 YxDlwYdXQM5OdVak5FTWaChjx0M6izW/jdGXncdfS9jBc3/9WzzczvxpDM963dWx82++QvgQZh
 oKI=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="75847109"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:15 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:14 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 13 May 2020 22:03:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nFqFmmFaDePyFXt3bdx23ovYMX7glL2fGZo2GpfoD8ka8d1ufPlgXfLtG8OoggeivfuD7sg8uEOvEqjUyvjTrKYid8LcxsOs+bCdw2/QpgQk/ACwa5NzppxzUObqCRuJ4nr+l52W/8gt8VC4/gi3qcdYFCwQKjqUeq4t2Dh73Rhpz0kon4kzqhBIZoqRmF6luqwbLZbBwVYUGHGoc94ndPx2NCMJVSFtCNdhQjgQ8omNelE4FxaFFiPTn90fDJa5KDT68dSa8zcMiTwnY99qJUXG8mdnZr/V2XIEoPY16Ri6Fn+swR7YDobcSv30K9PmXZovZ/6LuFRPL4g8jFEwWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IUdoc5A82z4/N8WcEz0MkkqG1tCjekoVIngNSQ+hHBY=;
 b=ieJ+SwKEj60OuBvH+3g2LjIjt6qsAhid+8UL3watU+nztl5kXIRjrIMIJ6Z7At9rqBeBeZrXGqJEjzxveSkKa4heBb55BWxoxzWQMetGqLsRVvU5dUPWXGpRZV1AEaYgkGjyfxEhIQxILPX34gxh0HH5f/lvYcw+2q6WNNPgSWbZMcjzSmYdXhHxjTagPwXMdB6LEtiGzadNE4i+taPZLLbjqBBVs8NbLb0vp10yVBzx2J0WeQ6VUXt79uSCeg2cYQ7qY/99EF2N1zbtpjNuYPd4P3bcShwQgo7mbepooWvsT6BwTjKhCDXLFt9lwlV9FhVGcuqFM11AdEuRblN3ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IUdoc5A82z4/N8WcEz0MkkqG1tCjekoVIngNSQ+hHBY=;
 b=JcWJjtcd8hvZgHF7YjDdlVPtPYnRTzPOgwfo7LF3S8weaBR0BIOGjWCVjOwmwac9K4gDEmWE3lcEYAFpXEZAvmpDVbk/LKjNr0FZ/DN7RU4eIFnliIuauJa5cNkh4hHvYM3IELBkxSZlUe1ZhkOlQZWZJ3mYRzvfMlYlT9Q2qoo=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4483.namprd11.prod.outlook.com (2603:10b6:a03:1bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Thu, 14 May
 2020 05:03:13 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:13 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 10/16] ARM: dts: at91: sama5d2: Add DMA bindings for the flx1
 I2C function
Thread-Topic: [PATCH 10/16] ARM: dts: at91: sama5d2: Add DMA bindings for the
 flx1 I2C function
Thread-Index: AQHWKaz4ykI3pcTezkS8vNPyyPejRA==
Date: Thu, 14 May 2020 05:03:13 +0000
Message-ID: <20200514050301.147442-11-tudor.ambarus@microchip.com>
References: <20200514050301.147442-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200514050301.147442-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8b57620c-c9bd-487d-c73f-08d7f7c41b24
x-ms-traffictypediagnostic: BY5PR11MB4483:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB44831CF840E9F964A84620FCF0BC0@BY5PR11MB4483.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /+1yZPbkPianGFpkX41VT8fogTmoLr/CzLSMRsngulwEaloqvOpNgQh2F4YkqHSrQ7hE/kRt1Nfj9zCGZab1D0wRXQyxYPZ5K9jMBUSSN24Q/qmdgwGBnUzTfP5zNtsvNa/PjcV2jXix1h/qKkKjtu8fDKq0AX/zdqTMSYgnN946LjEDwbNt3jcuumc01Wlom94aNwOZ4jsTytN6KW7qhlLwEzVxkpb4qmw73rJJcxmMSkhVomw+G747FS0fwXeohteisJpTIUzrLIXw41H4Jitwsqsttz6f+AnfAxKm8PZIKyIjK4KEFHjJ93TyYQ1w5xCgG/r1qbqPKU1Mh8SghmOlCyVwaj5Gta+ljPwbcklfFFsQurZAcl8U7YQQpMSHJFkxHTAwFljW7VWI1MFxnyjczaCCJP+dqHG50BPC4lcCjJYoB/dE4wfJ+xYtExtp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(346002)(396003)(136003)(39860400002)(6506007)(76116006)(6486002)(26005)(66446008)(8676002)(6512007)(86362001)(66946007)(2616005)(64756008)(8936002)(478600001)(66476007)(66556008)(186003)(1076003)(4326008)(2906002)(71200400001)(6636002)(54906003)(316002)(107886003)(5660300002)(36756003)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: G0jOGkrDCQ4H8JdGiIZD9dA/Gu/te6RgK6xIvHSghIfjf/X+Iby8ULEYCFvaHgnJ9QUlZfaU23I3PDNOE42CnI52yJWIDbduFc+bYq+gGIThpr0yf/Eiy/uyLD0WDxX6Kfigb8uOCAUigqWR/a78ichM+97ZifDrwUtX7zOs/U7h3vymHJZwC3pw5FwcfwLp5RWFwq9oBKfZ6CPPj1WEmyKjl+c+RiGj+qaNJkXVE1/6teFhkIdve3CSLjVVQqFx6Cptu/LFDiSo/O0nbblUXbUmrCff0f21HPlxQSuG4UDW0FqqjiGc9ivw2uOXZhBtEdaNT+XObH0pEBxGDL1FEBlk/4vPdqK73AlOkcIs3bZsBrPuFrQPRAY6IM9r1iBISmPNn1KjxWmpvQgKsm5IgWDUlQnNuPljhSU2pWGuCQxLpTIL8IdN9XOr8ERcqOS74WvPlI5GG4crLG9bNL3uLAnKeOflu2syKfT9A9CcKbRcmQUq6T6ZjVyW0QEg4sFb
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b57620c-c9bd-487d-c73f-08d7f7c41b24
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:13.5521 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D0ucuOWLz/CzMBNQDb66IgaVjRrQ1hTdcN/N8W5Yb0mgomgoDAc0MGl+vMk/zh76tfNgzhefa6N8DTJEgp513SzTBknsiP1bpn++UMPD7KI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4483
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220315_635550_A1C84194 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Spare boards of duplicating the DMA bindings. Describe the flx1
DMA bindings in the SoC dtsi. Users that don't want to use DMA
for their flexcom functions have to overwrite the flexcom DMA
bindings in their board device tree.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 1 -
 arch/arm/boot/dts/sama5d2.dtsi              | 9 +++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
index 1aa8b79d618b..0e159f879c15 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
@@ -127,7 +127,6 @@
 
 				i2c3: i2c@600 {
 					dmas = <0>, <0>;
-					dma-names = "tx", "rx";
 					i2c-analog-filter;
 					i2c-digital-filter;
 					i2c-digital-filter-width-ns = <35>;
diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 5a0162915ae7..855846c74a32 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -712,6 +712,15 @@
 					#address-cells = <1>;
 					#size-cells = <0>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 20>;
+					dmas = <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(13))>,
+					       <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(14))>;
+					dma-names = "tx", "rx";
 					atmel,fifo-size = <16>;
 					status = "disabled";
 				};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
