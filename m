Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE822424B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=3YPx82vyrcw2KwIKRgaw1tbRySoca6Jvbwm5H5gV3I0=; b=UHVEDt8oXtMXt3
	0M7AHBncCcGWE+PrOewgl/nZcx1n+qFb5Ih6TGaQhyjftiTw4Q5zfbcdZ4OSQLii5LPBIUEAsxnyh
	NRil00eDxZS93MDV3RFZvwo1Iw4wODlfmFu/i5MknWl7+K/iLWBDEHI+r6c44N/krzAi8JzuzuGiE
	Z38qQ8TROUVPw8TLxmmjdEPXeC2ovSjUvcfRk5e/BHMglnttyPz4+Ij1DXT/oAceijLwcbRzDa6BI
	C1GVs2+lCx3a3ScYY6QazlYbfa8E1yetyGR4N9vtHgpuD3YexwPJCERdgokqksEhrQnwTCZiJ/S/J
	FQdFqBe3YIF2V3XbQt2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1kv-0005QT-7e; Wed, 12 Jun 2019 11:49:29 +0000
Received: from mail-eopbgr30068.outbound.protection.outlook.com ([40.107.3.68]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1gz-00012V-8I
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:45:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jTGv+xX4LM3gIAgfgklMFQRdQrCyRfepe2LtoLcwn10=;
 b=VXwy9h0aJ8IQ5+l8RJIWDbJDMUvbadL6M4qHwr37YCLQOC7zAOVSWOP+ttixFfs2toP30t499aenkyWZg4PTCeCGuoyfqlTwpXQVRIkOKVrE/4niPufzdORCf7yL68BnMSdfOhD0JwRPYYUJhMCbuJcp8hTEzH2XXpeHjBW03ks=
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB3615.eurprd04.prod.outlook.com (52.134.7.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Wed, 12 Jun 2019 11:45:18 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::ccaf:f4a1:704a:e745]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::ccaf:f4a1:704a:e745%4]) with mapi id 15.20.1987.012; Wed, 12 Jun 2019
 11:45:18 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] ARM: dts: imx7ulp: add crypto support
Thread-Topic: [PATCH] ARM: dts: imx7ulp: add crypto support
Thread-Index: AQHVHD5HxT1VnrKm20mxf/1ryD4CPA==
Date: Wed, 12 Jun 2019 11:45:18 +0000
Message-ID: <VI1PR0402MB3485A573518D60A573BA55C298EC0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
References: <20190606080255.25504-1-horia.geanta@nxp.com>
 <20190612103926.GE11086@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29aeb5b6-26bc-4d3f-d758-08d6ef2b7152
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3615; 
x-ms-traffictypediagnostic: VI1PR0402MB3615:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR0402MB361523311C68FD2707C44CEB98EC0@VI1PR0402MB3615.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(366004)(136003)(39860400002)(199004)(189003)(5660300002)(14454004)(478600001)(66476007)(8936002)(4326008)(66556008)(81166006)(966005)(8676002)(66946007)(81156014)(9686003)(2906002)(55016002)(71190400001)(76116006)(6116002)(305945005)(6436002)(3846002)(53936002)(86362001)(26005)(25786009)(66446008)(73956011)(6306002)(186003)(6916009)(6246003)(7736002)(52536014)(102836004)(14444005)(7696005)(476003)(446003)(68736007)(71200400001)(33656002)(44832011)(64756008)(486006)(53546011)(54906003)(99286004)(256004)(229853002)(66066001)(74316002)(6506007)(76176011)(316002)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3615;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: N6JF9H3tcPI6lNnadyCcfvFpql5wVS+TjQXIWCw/rnZ1Qg0t8EbyhoawVfzb9TXdPUITfWr9b6vmT0josa/AFsoYWwZ6kX3bGjUOgYv8o01ILstK/yOcyN3LLC5L6ldLe+IgSpcxH/627I+8iXoWHlyhtADoKvjFSXvMvEDiQn3Bs8+JRcpnhlFuu21BqzeZO0ri1VMktKj9KFUWtuHjC6FkkCL5i6TcegpSH/Ve8sG/KzfIZfqk6RJQmnrcypOO0O2jPZ6qH/SoNVXikTPKbJjytsOfE5bYPymgvtE9PGhURPT4pnOA7pxB9Sv6USUgeDEGaXeA8BsHFL/OLWa+4tV3qIYNX0eClNRZb9c6/VMtStHOoPxf4D7WzlYF1iCHOzwcTFRRuyhIuGYQkNp3FYdqgIhLXXlV+IhKad7b01A=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29aeb5b6-26bc-4d3f-d758-08d6ef2b7152
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 11:45:18.1981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: horia.geanta@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044525_337399_FD2591AE 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.68 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Iuliana Prodan <iuliana.prodan@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/12/2019 1:40 PM, Shawn Guo wrote:
> On Thu, Jun 06, 2019 at 11:02:55AM +0300, Horia Geant=E3 wrote:
>> From: Iuliana Prodan <iuliana.prodan@nxp.com>
>>
>> Add crypto node in device tree for CAAM support.
>>
>> Noteworthy is that on 7ulp the interrupt line is shared
>> between the two job rings.
>>
>> Signed-off-by: Iuliana Prodan <iuliana.prodan@nxp.com>
>> Signed-off-by: Franck LENORMAND <franck.lenormand@nxp.com>
>> Signed-off-by: Horia Geant=E3 <horia.geanta@nxp.com>
>> ---
>>
>> I've just realized that this patch should be merged through the crypto t=
ree,
>> else bisectability could be affected due to cryptodev-2.6
>> commit 385cfc84a5a8 ("crypto: caam - disable some clock checks for iMX7U=
LP")
>> ( https://patchwork.kernel.org/patch/10970017/ )
>> which should come first.
> =

> I'm not sure I follow it.  This is a new device added to imx7ulp DT.
> It's never worked before on imx7ulp.  How would it affect git bisect?
> =

Driver corresponding to this device (drivers/crypto/caam) has to be updated
before adding the node in DT.
Is there any guarantee wrt. merge order of the crypto and DT trees?

Thanks,
Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
