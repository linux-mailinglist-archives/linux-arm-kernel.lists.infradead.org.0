Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B98B76CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lo3Nx+FiwEWGS4uQrADZRV2OPOENEYGz7Vpb6ScAj1c=; b=c2tQihUA6vjscL
	BR7J2qh0AODRrCWLnFECokkZIUAyjfzC85hOdSEMDe1eP3C/azYYoPIEDDWV7q8aGh1Ee2j7StnQl
	5li8/1eODUKNglfZbXuncbzeidMwJCLhFi6wPMe7b/8PiKpVbtEOxtlnzpOr1r52FCWeWWQQLD4ng
	Cc5RS4FkHI3rxa9WFgSQjZ2k2G2udFhjqoi3lM8LcsUbsB6+mexYQfx+FQJZd0lOOrL2y20hjYi2c
	1zypwRpWhjnTmskOosoFRKPcRORGemMTvp1Vx9pep0n7IeazFUAEwKmc1PwlK4QJY2g4x2F0ylNob
	kO7cOb0zIaSimKXUoaLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAtBV-0007WW-3L; Thu, 19 Sep 2019 09:57:09 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtBH-0007Tt-6Q
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:56:56 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 13C5767B341;
 Thu, 19 Sep 2019 11:56:52 +0200 (CEST)
Received: from sntmail14r.snt-is.com (10.203.32.184) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 19 Sep
 2019 11:56:51 +0200
Received: from sntmail14r.snt-is.com ([fe80::c8f3:eae9:52c2:11a8]) by
 sntmail14r.snt-is.com ([fe80::c8f3:eae9:52c2:11a8%3]) with mapi id
 15.01.1713.004; Thu, 19 Sep 2019 11:56:51 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Anson Huang <Anson.Huang@nxp.com>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 "leonard.crestez@nxp.com" <leonard.crestez@nxp.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>, "ping.bai@nxp.com"
 <ping.bai@nxp.com>, "daniel.baluta@nxp.com" <daniel.baluta@nxp.com>,
 "jun.li@nxp.com" <jun.li@nxp.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>, "abel.vesa@nxp.com" <abel.vesa@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>, "angus@akkea.ca"
 <angus@akkea.ca>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Subject: Missing 'assigned-clocks' in usdhc node of i.MX8MQ/MM/MN dtsi?
Thread-Topic: Missing 'assigned-clocks' in usdhc node of i.MX8MQ/MM/MN dtsi?
Thread-Index: AQHVbtCPIpmeLD1Wgkq8yfUNmKVWtQ==
Date: Thu, 19 Sep 2019 09:56:51 +0000
Message-ID: <e6ce599e-597a-6f67-d5d1-5487f50c7d0d@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <000AF8B8BF44EA4F81E89ED1E2CF7D13@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 13C5767B341.A2528
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: abel.vesa@nxp.com, agx@sigxcpu.org,
 andrew.smirnov@gmail.com, angus@akkea.ca, anson.huang@nxp.com,
 ccaione@baylibre.com, daniel.baluta@nxp.com,
 daniel.lezcano@linaro.org, devicetree@vger.kernel.org,
 festevam@gmail.com, jun.li@nxp.com, kernel@pengutronix.de,
 l.stach@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, ping.bai@nxp.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_025655_576209_E1D47B76 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I wonder why imx8mq.dtsi, imx8mm.dtsi and imx8mn.dtsi have 
'assigned-clocks' and 'assigned-clock-rates' set for all usdhc nodes, 
except for usdhc2.

Is this on purpose? Is it a flaw?

Thanks,
Frieder

Extract from imx8mm.dtsi:

usdhc1: mmc@30b40000 {
	[...]
	assigned-clocks = <&clk IMX8MM_CLK_USDHC1>;
	assigned-clock-rates = <400000000>;
	[...]
};

usdhc2: mmc@30b50000 {
	compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";
	reg = <0x30b50000 0x10000>;
	interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
	clocks = <&clk IMX8MM_CLK_DUMMY>,
		 <&clk IMX8MM_CLK_NAND_USDHC_BUS>,
		 <&clk IMX8MM_CLK_USDHC2_ROOT>;
	clock-names = "ipg", "ahb", "per";
	fsl,tuning-start-tap = <20>;
	fsl,tuning-step= <2>;
	bus-width = <4>;
	status = "disabled";
};

usdhc3: mmc@30b60000 {
	[...]
	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
	assigned-clock-rates = <400000000>;
	[...]
};
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
