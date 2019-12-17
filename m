Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01444122806
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 10:54:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=78xAec+JtzJszzWA+5vY0TOg6+KfdN7atP+/ngwsucQ=; b=GRHGbEtQbLJbCA
	RvJs5eEftBhBRB4T0n7FDbpK25HZpbTBK0lC/jnFD/jHBXNobhdar1oZFRi27WaWN68FGjzsQHmEG
	LTso+TRBsgagiRlpTftiYQ6KRZ/9rR25SDKsdMpRk5bVEu4J8d9PoERSw1KijmTMDlnqu3rZc5mkF
	qBYh566aP1v9MG/4LRxsJRkiyd6PARgnIZTKNUOx3JF2IH4AGrE1mwsthMskifSIFICNy0fUvXJpi
	LVxBFY9eNa9EXnUeQBtMGwEDAWtQiE8287LOyh1UrtCpL80rW3AyxGybxhFXZ4WuaVMrw47/Fslyu
	bW97juBnntyLz0iBPwcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih9Z2-0004vL-Je; Tue, 17 Dec 2019 09:54:48 +0000
Received: from mail-eopbgr140080.outbound.protection.outlook.com
 ([40.107.14.80] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih9Yl-0004hv-6G
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 09:54:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jxRN88eKkGqsiYbADeQ9pf3cLNRMqt8x7hSQXzgv383UHyfrG/qT8Jjgxo1oOSPkfCURf6v9MHm87VtvblePtN5fYE5HjluPo+mlySH5ioF+ANQzkZEmMxIup2VpjJW0akzpCi+UMoAQuZc/4VruA/nsbHJxD5dJvKFAfShanPMZn7dOAKhEe8z98u+x3KRfNX6Kt6/7fES7vRnbMoPVOe7+3LNJSsR8SzxsZjdlWGBKrpFf8nBlpg0RZ8fVhxTzxvrimBSeLZQJdo7/XZB6ILKY3u39q1vi3BTsGy5f9RVPNH9wfIq8Pzb/QeXLjvUCffQUAgJehEp10lIkGdG11g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T7tP4hbAl9bMy8r8GyhO+M72eEuQxmoQZBTo0iNRT40=;
 b=PNH7f1/aABKbJzMvyo6Vc3ivNTjMQcKS7m8ex6Mcp0jcTqkfeeSmCPL17hBSfflcXBPYkIymTlf0GTpbYfEK+0fUg7NohCaYx/1EPcd37AdNq1X1kWpWoecEOnDz2qHuSsv8RrLhQH7dYIFO+4/uyY7xBMNgkAOsXqg70kajNnyZCZwBCulb1YNFth0McNvyDy//uuNyeDnYToigF3EhZNMJLfU+nxvlZQtXKPDmdRu1/Dd1IzZMRqXemWmLLBNkagkcoMwkaddUg8coMgsOt/Wgrn83VRTOZfWNv6bMLqxQ2S/yBhHv89D84uOHqB5Nazw7I/HZyTiKXk+B3QMMBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T7tP4hbAl9bMy8r8GyhO+M72eEuQxmoQZBTo0iNRT40=;
 b=ZOws7pGjNVTyZYx0ejIfAu9gyMQG4a1Hx6LWQoP1qAgaAAOtgzIbjxsPZY08/27oPFbIOw8+EypXI3seWIHtdvrUsr2FJrxg5qeaAVXaliHbv04I8EvuQPEe0QMpbPRUV4bNznLXi/2BiTFRriFF6lMfvPWjPhzJbqn8Sdemg1w=
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB3888.eurprd04.prod.outlook.com (52.134.16.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Tue, 17 Dec 2019 09:54:27 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::64c8:fba:99e8:5ec4]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::64c8:fba:99e8:5ec4%6]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 09:54:27 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: Adam Ford <aford173@gmail.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH V2 2/3] arm64: dts: imx8mm: Add Crypto CAAM support
Thread-Topic: [PATCH V2 2/3] arm64: dts: imx8mm: Add Crypto CAAM support
Thread-Index: AQHVsct/+SP2Ww+o5k+GDgxV/pyqQQ==
Date: Tue, 17 Dec 2019 09:54:27 +0000
Message-ID: <VI1PR0402MB34858B13E8CA7570A70D87AB98500@VI1PR0402MB3485.eurprd04.prod.outlook.com>
References: <20191213153910.11235-1-aford173@gmail.com>
 <20191213153910.11235-2-aford173@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [94.69.234.123]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 27d5f69c-f660-4647-a301-08d782d71a9f
x-ms-traffictypediagnostic: VI1PR0402MB3888:|VI1PR0402MB3888:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3888284A871D9E0F91EC7F9598500@VI1PR0402MB3888.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(376002)(366004)(39860400002)(189003)(199004)(110136005)(54906003)(71200400001)(558084003)(76116006)(6506007)(316002)(2906002)(81166006)(81156014)(9686003)(7696005)(64756008)(66446008)(66476007)(66946007)(66556008)(52536014)(26005)(7416002)(186003)(44832011)(86362001)(5660300002)(91956017)(4326008)(33656002)(55016002)(8936002)(478600001)(53546011)(8676002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3888;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +c23WI0QZD/2PyYxYGb4zA6JZy7BJ5cUqJ3wiF4ZAWZtgGiHJpqk902V4sZrzq03Dbdw7AlwLsiaBDd5sPuRtFKm6CDwEY0ORTYBZ0GMB23GY2+r1Igd4+rr5sb8V3tzUyB5nmqh0+esy8qyhlnIKEKKx6WXSNh9zvtnm8K1EkjjE0B1TphrTPuvBj5nTLIXCWDtYLcFnSD+KWiBzL1HgZbiRq6xV+2ug5AUTT+4WD2jxq8UZtUEAirvH3RP7aR/zMBIggSn9vUERI+v1Udx1bUTOLS1vofNYFlYDcX3WebBntsR7NjtlAuwoNowdWAnMCr6Q1zJ9FTBziwfegOJ0EYRbjLN2vKkQ8CW/xgSv1ZWCHBqiyCWy/FYTWFgEbKC1OvONJ0CIvWASLiB5+w4RldNyZ613Z1sWlpDOw44viHZ5nMoYB7a5Vrw5ZV27r4RoWjlQdVtx5DWHR45WIzNK7ZYL8gHyJj/Z4wOTfnv5Cc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27d5f69c-f660-4647-a301-08d782d71a9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 09:54:27.1124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bpHhOkvxBpH70r/4OpI+afK29Rk583hQ4Jgr38M+95RIAZP5DGilH4BjWymS+RhJqS3xRZdz2IgBaePaTw68AA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3888
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_015431_259575_633AD960 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Will Deacon <will@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Fabio Estevam <festevam@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/13/2019 5:39 PM, Adam Ford wrote:
> The i.MX8M Mini supports the same crypto engine as what is in
> the i.MX8MQ, but it is not currently present in the device tree.
> =

> This patch places in into the device tree.
		    ^ it
> =

> Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Horia Geant=E3 <horia.geanta@nxp.com>

Thanks,
Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
