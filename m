Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C38DF282A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 08:40:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1tEnHKqleurUu+ZrI8Y/zLPzZ0hN0RyR90EwdSL2pQ=; b=oU8vYvQ+EikiO5
	Fkp6UQaAN3LW7NrDiJ5Cz0AsGXSTaVtJWWFlYZjaUhaydJX7GUdgSRXAjbw7AFbByIKEbltXK3Tyo
	vEyC2rGf+iBt9vwWhqt32ys/dZ4WcczpjYspY9y0ozyUoo9vmPS9jWdr68tApBjHXVBpZ0RVY/4ly
	NxfAGBxHevB7w72YHMI6skN0xoTKnszVQPoW+3sI2ZINW9rCjnF2+Fs7pU9tstz2jeJnFqp3BV3Y+
	RvgL/him8rgGoZ4U4ttfg/rcD1oFNvu51bVJpwQEDQima/ADl6AYqPyYePZXTGY0warEz+8k/VBxJ
	nVibyxR+5/2pf8dy36dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iScOZ-0007Mn-8X; Thu, 07 Nov 2019 07:39:55 +0000
Received: from mail-eopbgr1400110.outbound.protection.outlook.com
 ([40.107.140.110] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iScOQ-0007Kg-0e
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 07:39:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b1Xi5RQa6K1naqDQOcvwFmuPRS4TRU8iY/pREqS0lrmjOiLgDGH80isJLnvAQY/Fxi9nFxBZdOi4ccvidIW9oPqwBSFVisbV3k1fFG4LlxWCyTECgUFQFrF1m1hQqtM5rRAjtoE/QIhgjZu3LWiYe7ZLbJo8ElKCniIbRfinoR0NBW4FdZNW0fCRraUCDNHi224jE/DROrwPgxy0fabUVuBYGpfO6W4Na4ofhkveLtyJ1iTDthWPgGCjAga19yLIvxthpHqbIkEvumOmyjPLzlRsVsBDL+eDPkHL2/uRfZaYGtJ/+VwJjJQLG6oIjfC6r7+ZxeacAELgu66Go3QSFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=czWyYTWZRhB+7KG+3GZVGdw8cuqOHqhRFrrCf2B5qKI=;
 b=L7/jowipYdAzs/6Nbl3nOARs0DTQCSdN97M2eIRTsjNn8Smv3Jx/k2wZKDJkl0rmohBkTZl7Ph34BI1Rwn4sfXVGk4TrA8BgBjxEymHSg7g55WI3EtJpV3414S5OnEwMhpPxAjrrJTYrkO6bJwWzPxte2Kus/mbu5jWKC0NKNH0RIv+cxUZQqsR16lhTLP0MJLQoJuaphVT7lg6OQcPO3AC/ekwquPkr15AqtW0gRfpKdll3XaATu5lwX6URzKgFkRa7yVcq8YWV8WtcbI0J+hP96IPt6E46R05WTHQDC/hu0HXcbJ2qpvMkf7uhC+IVeZcLQnYfujVIeYhr0Gq/mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=czWyYTWZRhB+7KG+3GZVGdw8cuqOHqhRFrrCf2B5qKI=;
 b=go59pu7jmLbHi4vtsgh0ltm4uLRrrBJ5xluMIuemm2BOgUPQmmbHTLOh8w3Lq9vVoaWy5Qfho7VtZVaLa4eB0LidXhkLpC66YNkERy91UrrnHsU5dmSyF6xXREC59uia8DKj9xyThF0js6W+a+iETetgj2+rP/Bs/VPnnA4Uqc8=
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com (52.134.242.17) by
 OSBPR01MB4168.jpnprd01.prod.outlook.com (20.178.5.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Thu, 7 Nov 2019 07:39:37 +0000
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::c9e7:5418:764e:69e3]) by OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::c9e7:5418:764e:69e3%3]) with mapi id 15.20.2408.024; Thu, 7 Nov 2019
 07:39:36 +0000
From: Biju Das <biju.das@bp.renesas.com>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus
 Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Marek
 Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda
 <yoshihiro.shimoda.uh@renesas.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>
Subject: RE: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree
 bindings
Thread-Topic: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree
 bindings
Thread-Index: AQHVlNmPWeEtWINgRU2UgJ1FcD7vaKd/UtRw
Date: Thu, 7 Nov 2019 07:39:36 +0000
Message-ID: <OSBPR01MB210380ACAF35B2FE94F1589EB8780@OSBPR01MB2103.jpnprd01.prod.outlook.com>
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biju.das@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d441c6ad-ff2f-4f54-7892-08d76355a3ee
x-ms-traffictypediagnostic: OSBPR01MB4168:|OSBPR01MB4168:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB4168045039ACA05E435DA265B8780@OSBPR01MB4168.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39860400002)(366004)(396003)(136003)(346002)(189003)(199004)(51914003)(5660300002)(2501003)(9686003)(7416002)(478600001)(6116002)(256004)(74316002)(7736002)(305945005)(2906002)(25786009)(86362001)(99286004)(476003)(6436002)(52536014)(446003)(11346002)(76176011)(4326008)(6246003)(44832011)(7696005)(8676002)(316002)(81156014)(81166006)(107886003)(8936002)(71190400001)(66446008)(3846002)(64756008)(66066001)(66556008)(14454004)(486006)(54906003)(71200400001)(110136005)(186003)(6506007)(26005)(229853002)(102836004)(66476007)(76116006)(66946007)(55016002)(33656002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB4168;
 H:OSBPR01MB2103.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lebl50PFmlsMtNf488sLqvXnXvm6ZAqyoIfDGlnvBoj3lRfS+2hFXz2bhHkA7hwkUqVIzvzqM4aAne+GLOLWcHtYcD2JXvuR4E6EdmG8XkzTOr7IH4V0NVzdQ/3VzTOKkQOdj7Q+yiVhWdmkyKx6eNMwQi5NUHkvC5Gv98T5JBLjJSv18xQAc7GbWPPUo8yHad8eFJcSBgDjdV4ffbRqCvPgPHVbCU/AtAyjIBQOk+IOWhjPfQPnvynhn3qvmGbwXusy2WmBjcU3P8B1qACBNoV7WpNi4Pid/48wTUKSChrGGh9vdJA8LB4XFK2sGdTzMyXPcWJ7Z7VVToJB6LwnzFO1EhjaDzsrImPrwaGndm8wJqUQwHVwTg3BBV+j9luF0EEh+WA6E8HDJ+5oi9MAhVnCcH0pOb0q3ZnEn1C8/qLzaztQGNiKYh7Wv8scDxEo
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d441c6ad-ff2f-4f54-7892-08d76355a3ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 07:39:36.5851 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /Me6ift2cE3Zis41oSNSeijNz0oYl/ZkXs92eCJLai1pMF+5H+zWQYJyvM2YwMrV7OsAXFerI1SNrbXaEDr+cA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_233946_062421_ACEBF6B0 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.110 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

Thanks for the patch

> Subject: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree bindings
> 
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> This patch adds the bindings for the R-Car PCIe endpoint driver.
> 
> Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../devicetree/bindings/pci/rcar-pci-ep.txt   | 43 +++++++++++++++++++
>  1 file changed, 43 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> 
> diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> new file mode 100644
> index 000000000000..b8c8616ca007
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> @@ -0,0 +1,43 @@
> +* Renesas R-Car PCIe Endpoint Controller DT description
> +
> +Required properties:
> +	    "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
> +	    "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> +				     RZ/G2 compatible device.
> +
> +	    When compatible with the generic version, nodes must list the
> +	    SoC-specific version corresponding to the platform first
> +	    followed by the generic version.
> +
> +- reg: Five register ranges as listed in the reg-names property
> +- reg-names: Must include the following names
> +	- "apb-base"
> +	- "memory0"
> +	- "memory1"
> +	- "memory2"
> +	- "memory3"
> +- resets: Must contain phandles to PCIe-related reset lines exposed by IP
> block
> +- clocks: from common clock binding: clock specifiers for the PCIe controller
> +	 clock.
> +- clock-names: from common clock binding: should be "pcie".
> +
> +Optional Property:
> +- max-functions: Maximum number of functions that can be configured
> (default 1).
> +
> +Example:
> +
> +SoC-specific DT Entry:
> +
> +	pcie_ep: pcie_ep@fe000000 {
> +		compatible = "renesas,pcie-r8a7791", "renesas,pcie-rcar-
> gen2";

I believe it is currently tested on RZ/G2E. so please use the same.

Cheers,
Biju

> +		reg = <0 0xfe000000 0 0x80000>,
> +			<0x0 0xfe100000 0 0x100000>,
> +			<0x0 0xfe200000 0 0x200000>,
> +			<0x0 0x30000000 0 0x8000000>,
> +			<0x0 0x38000000 0 0x8000000>;
> +		reg-names = "apb-base", "memory0", "memory1",
> "memory2", "memory3";
> +		clocks = <&cpg CPG_MOD 319>;
> +		clock-names = "pcie";
> +		power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> +		resets = <&cpg 319>;
> +	};
> --
> 2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
