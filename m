Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBC78A106
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BFgsC6DeSXZAAub0AzU3ioH6VvT0Q7tHlzT5iSiT18=; b=hqxSqAheyQnKwr
	/VJOFwpa+zwjckvwGhsvSbHOTgiN5mejGxXAiEjkTsH61wtDoVsqcK+BjhfANhO180ShkzZOO92Ru
	tdUISkb4uvJBY1D3ZsiRPhlfK9190ges2SP4totCpcfcXC91jN0i3Isf0++MaZT56JjZbDVJKrxdc
	GCf8IKBARu6yhP8l0xzl4psakeSlHYYxDijzHq5Pp79/Hl0MQhYhS0RpUq9FGOStJVXk3niq8dqOe
	jM178CeI/amg7Dp0hvpA9/vDvBo/eEc7bDk4ZkgtslufxiB02hMsO2o9sPZruOLqMivVLDLcbluvq
	iTl7K88TwnYg0CnpMFsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBIq-0007jJ-No; Mon, 12 Aug 2019 14:28:04 +0000
Received: from mail-eopbgr150123.outbound.protection.outlook.com
 ([40.107.15.123] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBCp-0001rJ-Nl
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:21:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mvOqJi2Foz/bCe5OtGvaZ1qobUYHT/pJcKNtND2LUAD/t7wKXpQbS1i1M5AkQBm++n/xNxzUlUAv6oCgSVd0kfJzhXESnt2VET5+r88ayDlcFG8LmKr8hXChMbxMsjU4K5/gp09Dq2IqgoGZLTrbuZO8LSBqHVGspVs1nI8nHjzVouWt+5gy62v8+7fttvcqaVToArayQA8oTlZcZ941/mUitECl0x6VZGF1N7Acrphat3nfTsOffPcu/gf3TAmqWE6+BtO/VydzPbsFxX/5LJqmf3pnnFqWzwfrdMWy2rFloxQa05tnB/21gG8RBfPBAgBSVi73XsT02hDILfPvuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UYIogbjt7vqmDpSvr3tTKvgiY96KypHfQDcxZK88520=;
 b=ADZRyXnl2ord+76doy23lMadgwU5LQ+jwwF/2sWwpIIp0hkxjOVz6xKEjgzgTGSYrcV7fx5cgyb8KfPfMQECHlB9UoZI0n3qTlL2ubwpGaBne0TWjLA+//6PMUEY9/F/Akj1kWoDGHtBKCY2xd9qSM6eEc/Ef7sj6Rg/xKfKpYF7UzbY55NkFTT3y6YO1K29HBqixD+bEOUlpsWldQnGm6+h+QlO+w03UE5QyP303X+GtjFYpVD0ZiZxWqvHlXI5k8xEtn8Cv19fJ1lz0H8s9ZVOka8qs2cjq8+ivjgBASIrOBbjyd85Jr06CUsfdNcZdllCu5hZGfzZ4TMPcrd5Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UYIogbjt7vqmDpSvr3tTKvgiY96KypHfQDcxZK88520=;
 b=OkSHvk3M7ZftLL0YfKFQ8myAhoSi8QN+1abiHj2wbx43P/1wzThkQYatRjXY9l2NJzJn2CkKpPC5GN1wlYlm1Xe9QQrt9ygGix1rEGmRA7UjReB1o4QBBc7+LlSIXRLVhTnjy6C+vEiA0cPzdM1Ejwk6bIzQ0dSENDkxXlgRDPc=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2942.eurprd05.prod.outlook.com (10.175.26.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.21; Mon, 12 Aug 2019 14:21:43 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 14:21:43 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 18/21] ARM: dts: imx6ull-colibri: Add general wakeup key
 used on Colibri
Thread-Topic: [PATCH v4 18/21] ARM: dts: imx6ull-colibri: Add general wakeup
 key used on Colibri
Thread-Index: AQHVURlDOpA22Elc00+cs8VUx0ImaA==
Date: Mon, 12 Aug 2019 14:21:43 +0000
Message-ID: <20190812142105.1995-19-philippe.schenker@toradex.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0055.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a49099b8-3ba5-4ee2-606e-08d71f306637
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2942; 
x-ms-traffictypediagnostic: VI1PR0502MB2942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB2942DD91F27E6A030D962817F4D30@VI1PR0502MB2942.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(39850400004)(346002)(366004)(396003)(199004)(189003)(5660300002)(54906003)(110136005)(316002)(478600001)(6486002)(86362001)(2201001)(66066001)(53936002)(6116002)(1076003)(3846002)(2906002)(4326008)(25786009)(66446008)(64756008)(66556008)(66946007)(66476007)(4744005)(6436002)(8676002)(11346002)(476003)(2616005)(446003)(256004)(81166006)(81156014)(2501003)(44832011)(6512007)(486006)(50226002)(71200400001)(71190400001)(7416002)(8936002)(36756003)(52116002)(7736002)(305945005)(99286004)(102836004)(386003)(14454004)(76176011)(186003)(6506007)(26005)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2942;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: beISZ5cZL6t8tD0OFMK/b42o9xapMrmlakIFvqv4d05TVUtzILXRvYL63lZJi778mHlPnu8l6rSVFlhGduWcCX2x9ot8FlUMKpjZV1T0xKveIFNFhziU9YLWtegSGi7NCUDgOyipNJZiir17BHnIQqAUQUf9Hevd/0JiBX040Qbq9pBqockkzgw4dDpwPXLJydoFeGEGw5AZbj5EsfQcwpqJhPdgq9yEb+lSuikMXeww37SqmIzxET1H+yfn6KGBTUqngQkJDPMrx90qqYm/eZ03TLEoY4zZCwncawXSjdV5tuLy9XA8erBrYRIgn7fEFCWwsGEFcUzeNi0sTLg98NEwUzNOE95Pf0eq8kOOyHZrLwTMI6IHmOEm0kIukLitYEorXBmBMkUtUWHUpsyHJqC003kQuZgUnmrAW4hTbRc=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a49099b8-3ba5-4ee2-606e-08d71f306637
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 14:21:43.1819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VeaDuSNPVg/5gutxLeRq4EmdCEUOtkI+l2NGfomkt3zyLEpVh/GhaNG+sNZLTvaFP29uM43f+6O9aEIjO3n8OOCO5yAVtfDmKL2A+0F5DM4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_072153_551885_7653E693 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the possibility to wake the module with an external signal
as defined in the Colibri standard

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v4:
- Add Marcel Ziswiler's Ack

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
index b6147c76d159..a78849fd2afa 100644
--- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
@@ -8,6 +8,20 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_snvs_gpiokeys>;
+
+		power {
+			label = "Wake-Up";
+			gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_WAKEUP>;
+			debounce-interval = <10>;
+			wakeup-source;
+		};
+	};
+
 	/* fixed crystal dedicated to mcp2515 */
 	clk16m: clk16m {
 		compatible = "fixed-clock";
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
