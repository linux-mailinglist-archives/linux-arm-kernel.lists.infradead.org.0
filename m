Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618CE1D8D72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 04:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ordvKOT/Nj/lnZIpWLX2FM1GqhiqoIPTk0FzTUhgEI=; b=uTo4pa5j6RPrD2
	3TvbugwzDzuq3RU9ABdCl7+g5J0/xTIxDs8A3s/jr6/+xKpI8xwtcTGlt9exR2euhUZggPjWXqW2B
	o1X2HWwLJtD9xa3EpZHjENYIfMNl4MBxUqC6oTdBurqBgE2UfksQKqCuaAxhktbkSK70OPZ4YB7uj
	tPmswhVdydRFOucOu27Nk2umUKtg3ndpz+zsOnZYhALnww3810oghSwi97AEHK6dvWXP9QtUSiGcK
	GH4737sGDm3Ej+YNaXdAJgjIe6D4V31Z4PTVk4Dm6qeugmtsc/xR2InTCsN1gKmfi0nGga49QQ9cp
	901ae9zPGIayAQ0liOLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jarZY-0007cU-DU; Tue, 19 May 2020 02:01:36 +0000
Received: from mail-eopbgr60049.outbound.protection.outlook.com ([40.107.6.49]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jarZP-0007bS-5g
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 02:01:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GE0BcQFelQy6mMJTzdV1XF1TrmTbOb0Oi1XinuwaEgasrQQskxYAVHl0Thb2RSjgYZ+1rfc4wx5KFhpDQg8FIxJcD3bonpHLz45XdDVzrGKr6tLIrapzCZup8H7XazazpT2Ci/T1xlh8IluYCUhhHKQoT1RFQ7VBp2bxdmjhurv0aH+RUuXp2kJhyCn1JQpSpFqpI1k0g+R15qqpTXIpDcd+Oz0oOPcKLtWh2JR4Pg8kfJG623FrAKwSiSpyLa7Pezz/uTcc6jQHIkR9FoGMyVYNv+gWFmc5EH87ZiS8qPzXJHTMZf/8uzeV9oN4IYpYRJfd9+DI87QBQxU/MG/3Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FdV8M/+9nJ/DKyTSl51mD5TjbrmlmYR5xJ6D3RV8Y8Q=;
 b=KoZoddfXH1HjtESDmtl78VHjxdEx0GG/l9B/YbocY/Br30yKcb4ICms7zWiuXRYpxfaO9s59e4U2bMGShBR1KFMwXBwp7lafVkVE31cotYwDqWQHBx0jdkQRQHokjZxwZwcXE496rlIuEsL8sgpjgCNIQkzaB2FZq/0y6nCQNit/yzO72M+oTqGI1w3+3V7ewiFbNCVJvsDRVcCvL69zNvOyeaQN9+uqihhrcIEktG4RaEYbraIRd6SeySUZjGVKud8mT0uz3zZAi6MAK6wj9x7QZx6K6wJrnbVovyTpBz193+RmnkGEpHPWPMA29RfUCaqWB5Zbmv6n80t3Lc7xng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FdV8M/+9nJ/DKyTSl51mD5TjbrmlmYR5xJ6D3RV8Y8Q=;
 b=FZYkIz2obkLaHx+7L4SCMWqTZRm3BzGL1rJRiSCLWniUeLL96YejG5kD2qAhrXb0j2UCM18BgeD8DY6bsaDsPrFJy2EFSMqLsz+aSp/xp4TR4O89NexyrCDy9+yp7dVbEuAMxLDD875zk6R8I4aXYFHCvwqwdhnoACTrSo0u3pk=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4822.eurprd04.prod.outlook.com (2603:10a6:20b:a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Tue, 19 May
 2020 02:01:24 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 02:01:24 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Frank Li <frank.li@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2] dt-bindings: clock: Convert i.MX7D clock to json-schema
Thread-Topic: [PATCH V2] dt-bindings: clock: Convert i.MX7D clock to
 json-schema
Thread-Index: AQHWLSVUC1m6aDt3DEWO3yA5A/5NBKiup4HQ
Date: Tue, 19 May 2020 02:01:24 +0000
Message-ID: <AM6PR04MB4966B101D3E0A0820FAD4CDC80B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589813554-20929-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589813554-20929-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0e7eeda6-bf0d-4eae-43d5-08d7fb9888b5
x-ms-traffictypediagnostic: AM6PR04MB4822:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4822F6E9775E7587D51146BF80B90@AM6PR04MB4822.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FjUQWykxSxxD4BO63L4bsiH992A3L0t47NXbtnBc/NHPECRRl/5vXL+BYQBLFh6y5zy78w8Gyu8h76+/JlSRPGEYMbnkidjvQk707IQRJMr6MJwuPPvtBL3ldCAmf0PzsdBIxJNaCpyPkFHJtMZsLgFRPXiDo6x1ov9L7SPDsag5MbbV9b8YLABvHKXKycjpE2maRAJ3I9LKT2AnIJ+7Fatlcwa4iCjkfY6wOhBEvfUtNxYv59lRVXbq/FNDmYKjKhISxsDKZBo4cy/Opg6G6voLGn+oKpqSyCgnz6sz7Tfztf2bWjE1r3/dLhrpqVxVf4j0f+qbCqoEeOsFQzAEl2FTrKTjh9QbgoICqWTw6XpHCMHVyslmk6nQUoZFj/ZIdE4DPF1HZKxwfZC2m+HS+VPu9Qxrcl4kj/toyKtJkt8O/hoKCZxC0dwgH9JDPir+W0OgAzoAgae632Tbtpd4J1FbYpRLP6eJd1HZAdn9FsI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(136003)(39860400002)(376002)(396003)(186003)(26005)(44832011)(8936002)(2906002)(33656002)(6506007)(7416002)(110136005)(7696005)(71200400001)(478600001)(66946007)(66476007)(66556008)(64756008)(66446008)(316002)(4326008)(86362001)(5660300002)(76116006)(52536014)(55016002)(9686003)(8676002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 2Bvjewa6TUqibkfpwpZEIzZLYDEO/A4kixukXmCGbVTj3hULkwXia5EdrT02R09codQo5tbwD2PV6Bs/DvZkk6qkNZJAHZcjHKXQbN1S9K9TdLmNtSvmewRwznjgjEeq2hlak8SkZDxgI7eMktdFnn+iAbCl8ZRvD5X/XzqUzCJxEMIDwGY7bMZjdIeKa2OLaspqDVWs9UmkXSoQknRb+LVgb8oBTBwjpm3O7+yEklgbNOo6gebncosL8zq6kfmtilqud3IXrsR1UKacNGXdbBSSyVahEP5uZ+lxcUh7cXPrskUcT9JhLA1Ff7bn/PjomZenCtWRL+pZ5iDnR9JR94i4jbz9y6raqM7zrGYl7+wZEaGGmk5OOLigEMu8tVazSgBThet0ziHf3jSOCddAng7Yqmd2gtGZLTcC73uU3rQp8Hf9grWqQ8Y7o2qfqjkZyz3XRZLdPHd5+MLNOdLogJt7vUFM1Q7+E4ap5E5pxdtF+I+BU7BK5vVxtGORvkhf
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e7eeda6-bf0d-4eae-43d5-08d7fb9888b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 02:01:24.2586 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8S96C7WHvDEMNp4Ofhkf1CWkAco82ksxPPLgJ04PYIL5GVtpUxcp2QK9E8/Jrbc8jVLUVjBakTFpOEQaIfCOEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4822
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_190127_229787_8EB86F68 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.49 listed in wl.mailspike.net]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Monday, May 18, 2020 10:53 PM
> 
> Convert the i.MX7D clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- Update maintainer's e-mail address.
> ---
>  .../devicetree/bindings/clock/imx7d-clock.txt      | 13 -----
>  .../devicetree/bindings/clock/imx7d-clock.yaml     | 64
> ++++++++++++++++++++++
>  2 files changed, 64 insertions(+), 13 deletions(-)  delete mode 100644
> Documentation/devicetree/bindings/clock/imx7d-clock.txt
>  create mode 100644
> Documentation/devicetree/bindings/clock/imx7d-clock.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx7d-clock.txt
> b/Documentation/devicetree/bindings/clock/imx7d-clock.txt
> deleted file mode 100644
> index 9d3026d..0000000
> --- a/Documentation/devicetree/bindings/clock/imx7d-clock.txt
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -* Clock bindings for Freescale i.MX7 Dual
> -
> -Required properties:
> -- compatible: Should be "fsl,imx7d-ccm"
> -- reg: Address and length of the register set
> -- #clock-cells: Should be <1>
> -- clocks: list of clock specifiers, must contain an entry for each required
> -  entry in clock-names
> -- clock-names: should include entries "ckil", "osc"
> -
> -The clock consumer should specify the desired clock by having the clock -ID in
> its "clocks" phandle cell.  See include/dt-bindings/clock/imx7d-clock.h
> -for the full list of i.MX7 Dual clock IDs.
> diff --git a/Documentation/devicetree/bindings/clock/imx7d-clock.yaml
> b/Documentation/devicetree/bindings/clock/imx7d-clock.yaml
> new file mode 100644
> index 0000000..8cd0573
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx7d-clock.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> +---
> +
> +title: Clock bindings for Freescale i.MX7 Dual
> +
> +maintainers:
> +  - Frank Li <Frank.Li@nxp.com>
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +description: |
> +  The clock consumer should specify the desired clock by having the
> +clock
> +  ID in its "clocks" phandle cell. See
> +include/dt-bindings/clock/imx7d-clock.h
> +  for the full list of i.MX7 Dual clock IDs.
> +
> +properties:
> +  compatible:
> +    const: fsl,imx7d-ccm
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: CCM interrupt request 1
> +      - description: CCM interrupt request 2

Do we have a more specific description from RM?
Otherwise, I'm fine with this patch.

> +    maxItems: 2
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  clocks:
> +    items:
> +      - description: 32k osc
> +      - description: 24m osc
> +
> +  clock-names:
> +    items:
> +      - const: ckil
> +      - const: osc
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - '#clock-cells'
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    clock-controller@30380000 {
> +        compatible = "fsl,imx7d-ccm";
> +        reg = <0x30380000 0x10000>;
> +        interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
> +        #clock-cells = <1>;
> +        clocks = <&ckil>, <&osc>;
> +        clock-names = "ckil", "osc";
> +    };
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
