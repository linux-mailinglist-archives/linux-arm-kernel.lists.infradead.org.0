Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EEE1D70B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 08:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GpSoW6qqrT1QQIloJqWVT8aBYNR5uSmfz/in4xqrwM=; b=Hrl0caxZWVrxUg
	c0qAdl4Jeh8dQnnt7An4rPsujURNsiGQobXTbZ0ufsUyvukaMIPL6vJXGOwCXBmEBCvpRvj0alXjM
	wfLaV/yVC7UhJuhLU8k1ykuk+inGvtLTXeqFKpAEh8KFcQzP5yiTivTD1g7OW7aIbGcP5l43NMlhr
	Qfzxi5WyY+qJ0JuvPHcO1McMkfcNo5lzxvkqRNu85tUvUgr0VHr4AvmX5VhUjqsrZwiAqARmHhHME
	ldYr4GNVYkasIMQ8kn9+WyQ9vNLPALBLK9/1UzMnr9lWUxwqPEDvC8m9OrksKUUIzQkRA4j4h5GJq
	GNlL18bg5JtT1yvqpYAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaYvm-00066T-3s; Mon, 18 May 2020 06:07:18 +0000
Received: from mail-eopbgr80040.outbound.protection.outlook.com ([40.107.8.40]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaYve-00065h-EF
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 06:07:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R3UXY4lz7i8GAosW/ApyJn27AXVZVQqKs1O+sLdb3Fg+crMwvwHfxonC7HHOmk5xsBvfdVtxXcRyPB27OaEG96YN7FEg3F7v+t4kiVTKkdNz6MFPsu+huuPP9G06+k4+QB8horrCCzwbOOJ70JI/43KN6bO6yneI8CR9kVltGPFWF46a311R4krFRNRJ8bFJrARW8YLA25ePJUFeqW2GwJqzW5Q1/T0C39FfztWRPK/oefQSxKyiLJOUVAq4rBetBKanjuFCPFZkUTy+ja2vA02Yf+1dEJt0lVimuvYKRHvahjhTHlV1v3y4bpKJi/FP3FVl6A0uPXvngpnDgcYwsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ST0tZy0Y7rv0d8NxB+N3vkZm/udbm7FfXU8+17PmPg=;
 b=Fav430/KKfjsAsl2LTHVgf80HTI4+D8J8uie4SKJSuhRNKKYh6Q4KlP9pf/YpAWpSvQ8PoaUGmuWWCqrcj7QOmXif3B5Gx/XB+yiWdtR5koQyMCUIX3xaU9EGJZfmhe0xdmVQmVOZkl1TSalPPtebIA9nin0oIp9LD4Rln7JaTz+QaPgrjNg5kTkjiavAxQOUEbJ6y6DSYii1so6AL9OvN5fFjoh0Zu3yUM1FCJqw5bu4o4oZJPhy+X1tWvhwZczN1F3hzm4aSmV1Hjur4iVj+KUmmEBVYfDnmAlYLwpg3RzF1RT5GBqnJS8NY80+uj3X/zdPdlqXmSSYabCmuxO/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ST0tZy0Y7rv0d8NxB+N3vkZm/udbm7FfXU8+17PmPg=;
 b=EpyjcPUtZJ4lrV0ZbcM5esdVkF9/ATyJuQPIu1xv+hjLMm9AffHE1et4AF9dObl1yXHUBlt4XcsAuG8kmIdhDGw3JUIrLD4oWtfWCnN7cPUvH5NJ4sOgOE/IhyFyn+IyHo4ApJR+3/9CnXzsgka+SKeUJY30HWvjSEiRcQOHIlo=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6695.eurprd04.prod.outlook.com (2603:10a6:20b:d8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Mon, 18 May
 2020 06:07:06 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 06:07:06 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "linux-pwm@vger.kernel.org"
 <linux-pwm@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] dt-bindings: pwm: Convert mxs pwm to json-schema
Thread-Topic: [PATCH] dt-bindings: pwm: Convert mxs pwm to json-schema
Thread-Index: AQHWKeXny41UDiiW/0yEHY+vY7fj6qitPUuggAAaI4CAAAlg8A==
Date: Mon, 18 May 2020 06:07:06 +0000
Message-ID: <AM6PR04MB4966D0851412CE57C860B63C80B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589456470-2658-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966B92CFFA23DD77748C77680B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916B5980C0681BFF3C08FE5F5B80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916B5980C0681BFF3C08FE5F5B80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b331b911-28bc-4f9b-cf7a-08d7faf1b131
x-ms-traffictypediagnostic: AM6PR04MB6695:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB66959CA5D8DC1DE3B23BB28C80B80@AM6PR04MB6695.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jrXs1gPjk5TV0iMEeCHY6Cdi/aLbRiqbx+KPHcB/vi+DLIulF7yuqS8Cf5W3ZW9MmfNAiGgIGMMSL2VxsjRtCiWRPfc6gVxd5I6TLY3CmL3HOMnY6w/c62vvAfKK3Yph+yuYZr88QSxIMeuf8L/EP/ZGDJYW4lZ9q3SVGUQpUdLX0kFfc61ZqFdYHoi74UAMSDei9ko0Byhz9CPd1tnwP6zJNE4tDlHtB4FrWquog7cuk74c17ottf6ZZJwKNagqKxrqG2SYMVAoLvaTBBefuRZ4tsMUsyWRYXb9j4hKzb+6q6tSvjEuRyIkw1KijficqJ24n2TaNYuf98c8v5E9vdLJk5O7gBYm9gTV2THJo6eRUm9ZTNYdT2NVCTWpGszcIejYrZdBOTVMK4NKW+pSJ6vvnJBPxF4cPQAvfv048GhDoImAgw+JiteEbMsMRtIansbFzLkqTiVnDhwPMLStTbs9yIfeCsihpWy3Is9NSrQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(366004)(39860400002)(136003)(4744005)(55016002)(5660300002)(8936002)(4326008)(8676002)(478600001)(186003)(33656002)(9686003)(7416002)(2906002)(316002)(86362001)(110136005)(26005)(64756008)(7696005)(53546011)(66476007)(66946007)(66556008)(76116006)(66446008)(71200400001)(44832011)(6506007)(52536014)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: OWEyHn2laRt9Bf08PTNvL8QJkJiHql6pLIFZ+9mJb4M345UEZGs8dhgb4WB8aEC20svmGXSZJV81QU5C0VTD8DKsyVpMHOrZEwX54Aky2v7kKDbiGn7dsQeJfKdYIY50SNoHIlL8zwRXH92/lSeTYnZfkl9gxrKaud5icXCjVR/RLTh6fImrvhtOLL6m1u9xcsvTaMUfiTkaBUdR1WhK7rDdTGdWJE+Q8Q/jC82yDDOngqklgSTHjcAkf7F78D4AzW9o4oa8JrodZAS9jmAaL4mTDFUQNiMIFArZ69s6jyjo0Chbc+B8V2E4CvnbV+ANoM7JuOKVf8Ys9udWsEXi/kcUZiKBllTZ2RwIGj8cbl7iW+fhBVxbMRt+Qwm8BgH+CfmcpFr/R/5dD5tuUwyncYhyauOsCJEOFuwLqUaIqkBlpJZFi3HoZy7pCSc8/zONqZRkYBlPbDlVbfTq90JIwP8zpKlDPQSVc8vcpVr04aw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b331b911-28bc-4f9b-cf7a-08d7faf1b131
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 06:07:06.2149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HyTdADYB0dCnezrAH613pc1I7rwhgRcwMlWb8I5gQ4PePndHO5Ins2+MLbaZpTGWniUs375i6/FISezrn568Xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_230710_481249_A1E0616F 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.40 listed in wl.mailspike.net]
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

> From: Anson Huang <anson.huang@nxp.com>
> Sent: Monday, May 18, 2020 1:32 PM
> 
> > Subject: RE: [PATCH] dt-bindings: pwm: Convert mxs pwm to json-schema
> >
> > > +title: Freescale MXS PWM controller
> > > +
> > > +maintainers:
> > > +  - Shawn Guo <shawn.guo@linaro.org>
> > > +  - Anson Huang <anson.huang@nxp.com>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - fsl,imx23-pwm
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  "#pwm-cells":
> > > +    const: 3
> >
> > Seems you missed the reference to pwm.yaml.
> 
> It is because many pwm yaml files also has no "#pwm-cells" reference, so I am
> NOT sure if it is a MUST:
> 
> Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
> Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
> ...

I guess we'd better add it.
Let's wait for Rob's feedback.

Regards
Aisheng

> 
> Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
