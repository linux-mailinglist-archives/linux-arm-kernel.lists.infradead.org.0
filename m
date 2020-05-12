Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 878B01CEB28
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 05:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=peW9i+iGxyuCNwLkDta/anEUsiekMQGPzj5z9GFmyTs=; b=b6NCcvfKvkAFmh
	D/twThPe7ptbX7vytz/3FY9bK43gnyz35i+Emmw1wxPkgCFJWVEUwCZGZOlk9FZqVkzEqL8SnhmM2
	FplBWQ5Zpe9OLoYalHJttSlzfrSmizK68DN9yJkY2JJw9cIc3MveX7kCG5VxU0+iPl4QKdi5fK7C1
	Sa9MdK0TYJCDTThYvE1BM8LBdU18lKeCAXQXQJnEhW/Uw9bikJiB2I/TwOamAw6PZ+ZzLRRAi9POn
	8vbGzpUGCslEwpGnomwayDxApa6eFvkgwmDoyfdeKegvI1Fz1/kp/OvxU3l6P1UydBE1ug9CKSew5
	QPL0id559GYt+AaWOrKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYLJC-0003yF-6z; Tue, 12 May 2020 03:10:18 +0000
Received: from mail-am6eur05on2053.outbound.protection.outlook.com
 ([40.107.22.53] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYLJ4-00031X-4S
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 03:10:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TQwuItf7emexGXD8LiDVj6mB8dbYAF+3YCh+SkAsulBS9ztQBqIFpJfiplkIPQg/2+ihn80sBez629gT+w65oo5Ku3am0/2BXJSymj7xHYu3fI0lClfkgRGXgYUcpyoI4xRc6pYBt3chfL+1m4IvfAQ0zl92WSCfk69FTr+zgEVfZVGeUq7YEVMYeqqD0Oint+PzmkKbQAGj8x9vkzA7qgoHCsZBa2enlkZ8KUPc22JtxieNcNZv0cX7VplL0nAVknjWoeLmelsDMfNnyxyDFvxfkJ03bpIIepwtMaoPQg3F/Yr9bdanlfcBfmKAybhx63ZrIMytxZwWDrGrKVHX7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rg9bwGU3JBNOHTKy77KQDb4gOB8YYktivDJntGkAlv4=;
 b=HCL8th9QMFAlIL8NgpNIc1LWhlcO1EkNFp0+VA8DFNVU27YOGrOssmlAvN9qhamllFDEvfa91BAX8Zor6hnl1+9nyLakYyQpTAWvASlZ85HLKLUl/HVhVlzs5wwee56q4ZhYttILnjZrlXxE0Jvf90oUz2Q90k4vTnbKubRVwPAU52PudToXU/93A1Y9yp3fLXEBgGqRHDSReNQyWSq6VP484nYRpPVXmvXfXs7OKxejnsCPqOoYM7LeAZEVEUtOQR317wPE14TKvaf6pjMwNNzAnIH51FQoam4GciHp7WCb9r4HcnmcJHkhj4l3lG0RaTwe4yqLF5JRHohkkCHkTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rg9bwGU3JBNOHTKy77KQDb4gOB8YYktivDJntGkAlv4=;
 b=XoKFrLtqRQ9vkh6/koWbOCzp5nrPUSMo4FF74JoSVVrzf0LW4U8zZsExCJfBoNRD3t+vXG2sRVIgcivqqujs1UQ0CEi7b3m8NbD3HDej52tkswHOXhfQqqjH/Mqrp1ASxIBkb+s8HBt6y/89KZxHLfiLLi+YWOTwo0PsphRLY04=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5958.eurprd04.prod.outlook.com (2603:10a6:20b:97::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27; Tue, 12 May
 2020 03:10:07 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 03:10:07 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Rob Herring <robh@kernel.org>, Anson Huang <anson.huang@nxp.com>
Subject: RE: [PATCH V2 2/2] dt-bindings: watchdog: Convert i.MX7ULP to
 json-schema
Thread-Topic: [PATCH V2 2/2] dt-bindings: watchdog: Convert i.MX7ULP to
 json-schema
Thread-Index: AQHWEr+TVK93diGub0mNz8SI49iFZqiCj5eAgCFdqyA=
Date: Tue, 12 May 2020 03:10:07 +0000
Message-ID: <AM6PR04MB4966CC101E5D2F8B3CE6E3A880BE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1586911211-1141-1-git-send-email-Anson.Huang@nxp.com>
 <1586911211-1141-2-git-send-email-Anson.Huang@nxp.com>
 <20200420212751.GA7615@bogus>
In-Reply-To: <20200420212751.GA7615@bogus>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 34398e90-3911-4ebe-d973-08d7f621f94b
x-ms-traffictypediagnostic: AM6PR04MB5958:|AM6PR04MB5958:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5958205F879ACA2004C3BF3380BE0@AM6PR04MB5958.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B3oKi1Oc6Z8f1VwgdgLyYxn7ZHPZwu9QAcJ3dp/dj1bbhwlIRmk8zsFV6VgVvtacuQYg0kdQTtDCebOLQxyNcy2FWYB0jFCq8OCrRNwp3rbUnZtsAQ3bagTcro0eqZoJnDBeufLKADwIzd8/oTocOEBw918HdM3OeOTYHLpdAm+8oT1KZtg4Yf05n+803md3MkifaPz46+mzOhlnI9hcULfEgDwgr5S35OPeVt6522jlSylGHoBELsoO2m6/jxbKw0eaRmKnZg9inC1XVO3xWnWGdUrar1SxlUfBcYn1InUpgqY+XP1qzgRudmNMwNB8mX0hUfKeVE603g4xVg4Hxe/G4lf11OshlJSi3ZpJf8wxpS+GvoA5Pcc8qkSeHvHZsVu36qhN59E+7lTU4JvhdMQoByYrjRACt4AknR1dau9jSdhyqC4oGqcNNMpkUTEq13Kd1mq2qduEIFIAAyMtjUklDcnPgn/XgZ1+R2Noks0XrYD3wHljkb03aK1XOQfLXQAAvOQO0HeboSYgmNbHHg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(396003)(366004)(376002)(136003)(33430700001)(33656002)(26005)(33440700001)(110136005)(7416002)(54906003)(478600001)(186003)(2906002)(316002)(44832011)(6506007)(66556008)(66446008)(8676002)(5660300002)(66946007)(8936002)(86362001)(76116006)(6636002)(52536014)(9686003)(4326008)(7696005)(71200400001)(66476007)(64756008)(55016002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: VmfuBhId2plaHUVOSFKntwSpK8rxYBmUHXoYSsApvY/1/t77geF0vb316pKgmpeuJqXD8ewrQtdN5fBbb5mS2SqPPPGDexmz9kWmmQaBrMmjQ8i//1jZlIVNkZsIMhVqBtGGQECvbMfx55IqSwv4/rRTcTijh/wXCBeWCI2S5a7IsjJyw2CPFAsryJ3tnbdkcVSo7wiVFsRQSHRdmrwcA9EW0X/EYtTkJaxs7jdyiv89E+xmG2Gkn7H8SOM9trowqnJQCX0Zgb3PLi1dN+d8vBa1+za1IbP6zQiLQJsymVHLLdAxdcaQLI+rxijimQR5ifzvjgrwR6vmJl7CyTjAHm1qE8JPeufaEWh5BaQg2+sV5vxhiRCm8dgP/EFco7g2PXMbqAkBrmS19g5AyisqDXvOK6BbR18I3RXXQU3evga8sk+p2YPlnHQOReHxCIi+FyO7zonZc894ijKT2nH1cXO7E4YkjR4TZpCPztPPOKK3wLsTLl3igr7yCmA2a3PE
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34398e90-3911-4ebe-d973-08d7f621f94b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 03:10:07.2486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NzbmRILln0Ye7UgopOyWrauAdY69/EULYXBmlkHvvMWN8wke5hrA3GxNf26kvzr9YaTRr575kW+Yaifmh6zjOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5958
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_201010_197207_6BC39075 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> From: Rob Herring <robh@kernel.org>
> Sent: Tuesday, April 21, 2020 5:28 AM

[...]

> > +  timeout-sec:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: |
> > +      Contains the watchdog timeout in seconds.
> 
> This already has a definition in watchdog.yaml, just need:
> 
> timeout-sec: true
> 

A bit interested what's the difference if not specifying it as we already have a reference
to "watchdog.yaml#".

+allOf:
+  - $ref: "watchdog.yaml#"

I saw some mmc vendor yaml bindings seemed did not specifying the 'true' for the properties
referenced from the parent "mmc-controller.yaml".

Would you help clarify a bit?

Regards
Aisheng

> > +
> > +required:
> > +  - compatible
> > +  - interrupts
> > +  - reg
> > +  - clocks
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/clock/imx7ulp-clock.h>
> > +
> > +    wdog1: watchdog@403d0000 {
> > +        compatible = "fsl,imx7ulp-wdt";
> > +        reg = <0x403d0000 0x10000>;
> > +        interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> > +        clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
> > +        assigned-clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
> > +        assigned-clocks-parents = <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>;
> > +        timeout-sec = <40>;
> > +    };
> > +
> > +...
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
