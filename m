Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2813D832FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=9KN9eneAyKU3f7a+h1TkCbhFNyyRkQx/j2Z69MGxRYs=; b=hOZSeMTyVqV4wj
	4dfj+iGKVFRFk6Evd/bZQTu9oIQVx2tL7lysXW75AiR8WNLyYj3ZwekfNzTy7nE7ruLqtu9Ci2kC4
	1R8DFICo8Q7z5yUGz1660XBQbBELjdWEoJTN6S1Lmg4+ogybrW0gBuKgNBAdz65KXs9h1vmnPiiTC
	VriPeVDGuCWbzUaYpA4/ZhQ7AAeFMsYhGnnQM4/NX9GP1TDzqLq5rNK5IsSV/kM9CFjVuMX36PMTf
	pqvk5+zv07d34FvUkezznbxIUUltHCeB9Axbf98h3StcOoIB3+E6MWG3IFhkSnBG3r83ZrmqB/WwD
	6+Yjwej1X8a6fAkeVjkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzil-0007VB-A2; Tue, 06 Aug 2019 13:41:47 +0000
Received: from mail-am5eur02on062d.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::62d]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzia-0007Ui-4V
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:41:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oeFRc8pbb6wrxESlytG2MIthVZNF9tb/KB/CjwFQI9bm1ObsmesQpJSVGcAlHP+SXHSbZjebgvqtdEae8xTVhgtxDZIJ4WdWwzW0F4OSK6V4wOPlou7ZjbVVNeh05ExIPdPmdbI/xxr3Fkh0AkVYKX2YkmI76H5srI3R0OBzySN09B5csEVROZhKKqqctr/PduBQ3XoC70meMapVHlgTH2HRYB77JkdWVyPEyGdR9UZrd3CBNJ1lXY9qqB1yLnxmNfiRbF0Dn18V8lbnTL8c+jUKiPPN9wzFWOBvGaJM2TlU3NLlydnmTglm3Ux5ZQgNl67Tolh5QcyxHGOlMqNhYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hf90RamkDUOldTROmtPkbhDEjn+D2DFBKQ7JHdsKDoc=;
 b=NEz4ZsfQmwt5j3DEwPLe9KX9xi7cXm6VZ0hJrps+OGgEzs3GKFtJtzhII0JZrw+uAmj1wciaHxBGG0RlC/7vNwsVogveusrjHVvZNrom7BBF5dxSk6GOakMSCl7L6/N/kQyu1p7NME+sScBGlpNTaJyYqy+1+k9c1Z6sNXae8lcdlVJfOH/2glW6pPNs2g+2qf4qmeNI2nqjq7PpjvhFqt/kugPQ2EEkHoAJmlsvhWwt2uSZuGf7SyJFjaawAyfa9U1P6fq4nU5axHTPsVqWiZ2F4pAGL3SUBqGhj50cv0d7sd4Y0lDsgEp9fXd5rfmYErnNX4FROUhLSBj5vglNFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hf90RamkDUOldTROmtPkbhDEjn+D2DFBKQ7JHdsKDoc=;
 b=cD5Y7RpddeY8FYRdXmSooheWcRE5SIBIuPAnnoWpYQDykAIGle9Rt/AfZrgtLIFZ3l3m2A3MyKsee7FnRvCHxvrwD10XKBGsPp6oyGw8Y2O+Geoz71X0YRZsvj3xXuSVebAZm11IUcocstm/arYkSc+vT0+EZiJ9du5s9rZrfEc=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5630.eurprd04.prod.outlook.com (20.178.125.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14; Tue, 6 Aug 2019 13:41:32 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::41:43ca:bf4c:7b99]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::41:43ca:bf4c:7b99%3]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 13:41:32 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>, Georgi
 Djakov <georgi.djakov@linaro.org>
Subject: Re: [RFC PATCH 09/11] devfreq: exynos-bus: Add interconnect
 functionality to exynos-bus
Thread-Topic: [RFC PATCH 09/11] devfreq: exynos-bus: Add interconnect
 functionality to exynos-bus
Thread-Index: AQHVQVEYOnL6Nj5GnEmKqTrzyDUrnA==
Date: Tue, 6 Aug 2019 13:41:31 +0000
Message-ID: <VI1PR04MB5055BED59960B4F4147479AEEED50@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b@eucas1p2.samsung.com>
 <20190723122016.30279-10-a.swigon@partner.samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 490e8f33-3627-4316-34e6-08d71a73cab3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5630; 
x-ms-traffictypediagnostic: VI1PR04MB5630:
x-microsoft-antispam-prvs: <VI1PR04MB563066A91E2B0B54C1995EBCEED50@VI1PR04MB5630.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(366004)(346002)(136003)(376002)(396003)(39860400002)(189003)(199004)(53546011)(9686003)(55016002)(6246003)(99286004)(76176011)(7736002)(229853002)(446003)(478600001)(102836004)(7416002)(5660300002)(256004)(14444005)(53936002)(2906002)(54906003)(4326008)(86362001)(71190400001)(476003)(6506007)(68736007)(8936002)(26005)(66556008)(66476007)(66446008)(74316002)(52536014)(81156014)(81166006)(91956017)(6436002)(8676002)(66946007)(486006)(44832011)(64756008)(110136005)(25786009)(71200400001)(14454004)(305945005)(66574012)(316002)(186003)(66066001)(76116006)(33656002)(3846002)(6116002)(7696005)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5630;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: h9q5IIVjAVOY3hzHPZmt9AdcmIRHfFQCRzPOdR4w65PBZI7g0rOAon5Jkdk7+NtEF1AE/tfgE7S+HynoZg2/bB2u42u2OYYUne4Htqhr9QVmkLixOt7XO/fVqb9ZYDSDnXh4j+m0gCd7pJPtosUnp4ABb4ImspLc6HeJ2MWRoPHJhCveIkBNPsF/Ukei1ZyFlqOzGHDaRp2uGKbyHY84JAoNr+KZbBOPkkuehV9gS3JIXgQu+xtc/QITEC3PZd61llFdRYIVOZwERhEMucH2Zle2Owk02Y52rR1r+oj4SLXv+rpvplMlSYrAPE76mcgexDUdyT1nSOQaIQd/hGTQJv6hnNI91kVx6ukdvXDW9Px2FLdgKRjKTTgztWoXR/LlcpvkJcVCJJqN4P/8Fj5nIXGFzt7Zb0f4e+plVfRt+KU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 490e8f33-3627-4316-34e6-08d71a73cab3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 13:41:31.9578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5630
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_064136_267540_B473CA21 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "sw0312.kim@samsung.com" <sw0312.kim@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "inki.dae@samsung.com" <inki.dae@samsung.com>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "georgi.djakov@linaro.org" <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23.07.2019 15:21, Artur =A6wigo=F1 wrote:

> +static int exynos_bus_icc_aggregate(struct icc_node *node, u32 avg_bw,
> +				    u32 peak_bw, u32 *agg_avg, u32 *agg_peak)
> +{
> +	*agg_peak =3D *agg_avg =3D peak_bw;
> +
> +	return 0;
> +}

The only current provider aggregates "avg" with "sum" and "peak" with =

"max", any particular reason to do something different? This function =

doesn't even really do aggregation, if there is a second request for "0" =

then the first request is lost.

I didn't find any docs but my interpretation of avg/peak is that "avg" =

is for constant traffic like a display or VPU pushing pixels and "peak" =

is for variable traffic like networking. I assume devices which make =

"peak" requests are aggregated with max because they're not expected to =

all max-out together.

In PATCH 11 you're making a bandwidth request based on resolution, that =

traffic is constant and guaranteed to happend while the display is on so =

it would make sense to request it as an "avg" and aggregate it with "sum".

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
