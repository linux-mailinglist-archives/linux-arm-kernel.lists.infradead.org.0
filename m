Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CD91D8E06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 05:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ORuENz1wDB91GtbSgrVRw2oMr2+1aRq0U9VW5XGHTQ=; b=IWT1oxTgQVrowK
	mD/cfMKzexOhQQMThdzfl7m0S44s+aD68+l+Th3gVYivVf/6iaqUtvND3vP6XKUCGTgm+j2ff3FpR
	p5PKWAE5rbXZw0rxsES9o3Mm4LprxKv/dcMnFmJqdrjBd0dNsRp1ZfTmn3/jblob/FyoMBQwv6ndj
	th0cXfH0j6zI1bs2vb3k13l7YCy0hdMER0IxkJ+9IJLuuTvMQvF64xiIoOcijuKoafg2fqPTSF8/E
	yzYQUhMPA2FM1vQEwMnQXGwh87V+wzKev6bRZ6R6ueCcqnHw59pyExg7n5THlQc8HtYaG8vGcRDVd
	11hZesLOkMqv/RF00cnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jasXb-0004wg-K3; Tue, 19 May 2020 03:03:39 +0000
Received: from mail-db8eur05on2046.outbound.protection.outlook.com
 ([40.107.20.46] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jasXQ-0004wI-Ni
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 03:03:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OiZ+iW66KTyrORxq+ZAGvAkWgXAXD4wRqGLVH5NWd12MEgNZzkz3keE2EbBP7Z7UoF0mdn2RixpwK+PNQu4dMJuI4xB3CQAfjBRExTgwJCk2O61jYmvlLrCCk4PAH3e2SUSMw08++/LGssk0tJceyMdHL/gYECNzxv6TVw7mjytzWW0l7hjDuGSIs7F/VJE/J5Tj4A8fesGgIV3WR5aBk2wijRHORbqhr6XF3L3AHdfwg6SyDx83KL88hHd7zzjYuyjwJMryFXKXOhb9HFPcRF04UxHi1XY6WR7e/BUfcHjsUKFmP3FwNl7yvx35ABb/kZuuOUANbbp2vOvwU16sOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JnjKNkUplrZwqV9WxWqlbyGb3v0XZ/jB2sNZ0Lsu/s0=;
 b=J82mIg/3FHXZuZ1/yaeg+9gnEqwUfzVoLnu9SRtOx0ezvfztPF7O6XukW5paclfeDZyVcpnNYw1tlCSIWs2bobJrBVNaSs2Ao/njE2TF/tZlJiPAFAO5wVoGtTFM2xnFaFwgcqLpj71dg/HM8/HHT6uOBFhKRi+2esAJ1ymwgWc1E0TNfpYOrxN49X7bjqy1C/wlEXGB4dszs2fG3XdIdFXIH8EnTXoGQK6pMh6QTJNo1eMTAG8hmkDkm+ayPf9UTko0rYeXGFPU0OqK4pchXDP7AGlLdoOjdRY5XU3XNV2K67EV802/931r2HyEYFEDqPtzLyqPEy09iWMrvgkY3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JnjKNkUplrZwqV9WxWqlbyGb3v0XZ/jB2sNZ0Lsu/s0=;
 b=kVHJ56VdyqB9ST5ZTlHWtGkk950mThqfmJWNIjjl8sI6CUba1L0k1qk0YB/GZQQCvtKd5JqU+5/e8vSjrFxmaiVcLx+Nf73SVVaP1GPzrkG6PEP+7uHZ3cSV1hcc54VqBgOrlgnW8QY5UpLM0sqT/vHJRio4DKtCN3kM2FBX3uc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3820.eurprd04.prod.outlook.com (2603:10a6:8:3::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.31; Tue, 19 May
 2020 03:03:26 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 03:03:26 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Jacky Bai <ping.bai@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 1/3] dt-bindings: timer: Convert i.MX GPT to json-schema
Thread-Topic: [PATCH 1/3] dt-bindings: timer: Convert i.MX GPT to json-schema
Thread-Index: AQHWLSSm+hmARz7RGkeECubw76HaxaiutRGAgAAEUQA=
Date: Tue, 19 May 2020 03:03:26 +0000
Message-ID: <DB3PR0402MB3916A243DDB5BDE55AFA0577F5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589813260-20036-1-git-send-email-Anson.Huang@nxp.com>
 <1589813260-20036-2-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49669345E21DC28009C486E680B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49669345E21DC28009C486E680B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 42dc37b5-3f86-4025-243e-08d7fba13343
x-ms-traffictypediagnostic: DB3PR0402MB3820:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3820CFAF88D66F80F5022A54F5B90@DB3PR0402MB3820.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hXpSFVN3uGiAhYhXM2HGNr/8VJf92zmewNja6nlqTeYcT10FC2q4R9SGh4k96S3azhvClQL9U4YJyncXf7s6DUqhFDiGYvCBCm8WinDWtoR8TeZLa0x6LGCrElmofjecUcCscxhUWZu1DNXtkhKdGdFVZN1qckmhGNdA3Z9vhy84IdBa1/o595RV99Qjg6OytdyAa+ytSwQxzYW8165CmgW2IcCZpnoB8OC6J0R12pMS8OVprIFideJQX8HF5BRZ2NVhna031kMRUW2unINbEM1J82i/MPcaQz8kVmK01qv0GwpNi25wvve+y/91AMMGZC+OY+kB9ZoiITK+fvWYI1Ty8TuUpp9liySut2YhzJItOC0O76mDi7QBBTTnUSZbFPEZlv3YkmBjIVZGlbodATrLYK2pOIeUwYwNQueF7Al1h9tBj7ecZqH9hwJvj3ZXouqPz+l8ZHa7nENwXYDI0GpctsmmD3k/kmmu7wslPGU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(366004)(346002)(136003)(376002)(6506007)(71200400001)(66946007)(26005)(66556008)(44832011)(5660300002)(76116006)(66476007)(52536014)(8676002)(64756008)(66446008)(2906002)(86362001)(186003)(7696005)(110136005)(316002)(33656002)(8936002)(4326008)(7416002)(55016002)(9686003)(478600001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: DjVMpsWW9nObyzYET0r3goVLc4cfqiRiBK5ZlJo/6Dosk5PBk+xcn1fwTtji/FViYXYJLPGeIvP6HXveXefSusXG5PjDRPOJDbhIYZazVS31TF2zVr6BIlrGm4DxTO2AsnDK7YBL3mNOlcYoJSskB0cIXFzg00ldQIBjFnQw/V0Q05/jcTmq5tqrsAnbt0WNi+wARhPim/8/fjxO9ygDeQomVihfe1XcPStVaZef8+nIns3baeGyTwGFaQCZ1sCGfdI1jvWfdKF2Lu1qOudhkPNJzAo23cn6T9ZIcyeatnLU/Kve9Rr4WTKlQVLEDSFe9Hh7jCCGmuiUVKeHLVYvEb/mR5Qhr2iojhP2e6FensILyZAAbFzXMV2y9WDKxM0NbCEGrREx1Y4XZdl7eVA96vSsIOKLtNl8gaPT216OI30HfcFDlRJVlXs974cgmuFJi/O3MbckIWZC0UBKztPrIpl/tz3tZorIZCO6861Y1N11WDTVRKxZqcBQa1UK3utE
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42dc37b5-3f86-4025-243e-08d7fba13343
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 03:03:26.1790 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +pYNsqYoD8QFLcf2ZhI0uzeLK7BKoRF3AB36CIMAhCADFDRonoKHpI/Bz8iVRrebRiaJO/JjAsQvMwfmK6ElsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3820
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_200328_772355_120E22F7 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.46 listed in wl.mailspike.net]
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



> Subject: RE: [PATCH 1/3] dt-bindings: timer: Convert i.MX GPT to json-schema
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Monday, May 18, 2020 10:48 PM
> >
> > Convert the i.MX GPT binding to DT schema format using json-schema.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  .../devicetree/bindings/timer/fsl,imxgpt.txt       |  45 ---------
> >  .../devicetree/bindings/timer/fsl,imxgpt.yaml      | 109
> > +++++++++++++++++++++
> >  2 files changed, 109 insertions(+), 45 deletions(-)  delete mode
> > 100644 Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> > b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> > deleted file mode 100644
> > index 5d8fd5b..0000000
> > --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> > +++ /dev/null
> > @@ -1,45 +0,0 @@
> > -Freescale i.MX General Purpose Timer (GPT)
> > -
> > -Required properties:
> > -
> > -- compatible : should be one of following:
> > -  for i.MX1:
> > -  - "fsl,imx1-gpt";
> > -  for i.MX21:
> > -  - "fsl,imx21-gpt";
> > -  for i.MX27:
> > -  - "fsl,imx27-gpt", "fsl,imx21-gpt";
> > -  for i.MX31:
> > -  - "fsl,imx31-gpt";
> > -  for i.MX25:
> > -  - "fsl,imx25-gpt", "fsl,imx31-gpt";
> > -  for i.MX50:
> > -  - "fsl,imx50-gpt", "fsl,imx31-gpt";
> > -  for i.MX51:
> > -  - "fsl,imx51-gpt", "fsl,imx31-gpt";
> > -  for i.MX53:
> > -  - "fsl,imx53-gpt", "fsl,imx31-gpt";
> > -  for i.MX6Q:
> > -  - "fsl,imx6q-gpt", "fsl,imx31-gpt";
> > -  for i.MX6DL:
> > -  - "fsl,imx6dl-gpt";
> > -  for i.MX6SL:
> > -  - "fsl,imx6sl-gpt", "fsl,imx6dl-gpt";
> > -  for i.MX6SX:
> > -  - "fsl,imx6sx-gpt", "fsl,imx6dl-gpt";
> > -- reg : specifies base physical address and size of the registers.
> > -- interrupts : should be the gpt interrupt.
> > -- clocks : the clocks provided by the SoC to drive the timer, must contain
> > -           an entry for each entry in clock-names.
> > -- clock-names : must include "ipg" entry first, then "per" entry.
> > -
> > -Example:
> > -
> > -gpt1: timer@10003000 {
> > -	compatible = "fsl,imx27-gpt", "fsl,imx21-gpt";
> > -	reg = <0x10003000 0x1000>;
> > -	interrupts = <26>;
> > -	clocks = <&clks IMX27_CLK_GPT1_IPG_GATE>,
> > -		 <&clks IMX27_CLK_PER1_GATE>;
> > -	clock-names = "ipg", "per";
> > -};
> > diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> > b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> > new file mode 100644
> > index 0000000..5c7186b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> > @@ -0,0 +1,109 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > +---
> > +
> > +title: Freescale i.MX General Purpose Timer (GPT)
> > +
> > +maintainers:
> > +  - Sascha Hauer <s.hauer@pengutronix.de>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - description: on i.MX1 the following compatible must be
> > +specified
> 
> Such a description seems not necessary in order to make the doc more clean

You meant the description is NOT necessary for those simple compatible string platforms or for
all platforms, I feel like having the description is more clear for users.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
