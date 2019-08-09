Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0DA87E40
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEoyopAEWkVToZs0AWoZcxtpvkMh2WNrwAEKcMRDWLE=; b=cGOZfpCuP/cMnp
	HMgJmD2pKmiXcXvGoKVmAAqV6v0PKFhMIru7/HNeYarW8Ul/QqWUhH+j6YXmGUHvAKKVVqiReyVEM
	kZ1Iu5SXtH5Pidq8c4/hYFjeZMoK3jHIXn6VfYxzvtm2bOMGF73lPvsQsFGb6awDG5P6S+wiRon0x
	UpjIUPH9xWcyQjUrTh5HcYHV93Yv7+LxBzQMur+sxZq9TIJPaVobOblKeIDlLcGpf5eZUSeT4VuoO
	l2qLpz5xsgPLVl5Jau8e40vj7ivz8TibdHYS8p5RBqeQ4s2+/KWn1OGgfFJyOG46x68JTNA5KDGyk
	8xhpSeBfBGA4uuLOa4cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw70C-0004KU-AZ; Fri, 09 Aug 2019 15:40:24 +0000
Received: from mail-eopbgr10123.outbound.protection.outlook.com
 ([40.107.1.123] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw700-0004K3-Nn
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:40:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hUQlXhGZrfSuCTUfAR2MCeePhC5QlarfMN13JyqQ8m8cnxLdukoAidEdtUaxh/5ppWVRaPkqfVHjXMvvAeuIGrdIDNXPBhvYmByP0JWuGsuOa1HPhGwECkfRq/1R293+RFz8V2DXYmRAekJhEVXGNmwn+S6GL8BRk5J7Sky19TYRX1r1BDnxePKGMQM0X56U6YaPFn3bcdi7uAw4JSXVdPTRMN8srnfvltzPr5JFQhXpFPRNzQhSKoJfaVPuVRDlikEhCJXj4ZdxKrBZGpdwklBDsMHrhuXU+s8cpxbxmotLkd5QOXWuB9lg++9WaNfreOvDiUTVnI6hH+DhdX3T5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EPUQ8HA6jGSFgKI1iFnaN3afWG286FuCNGftbgFJk9o=;
 b=Cwki9pBlWmXPE7jLh3/tvOpFE7SZLCfbqN6OJTMNsvOCpcohVa3ROAqJNHzMajs5rxd6os94KOVWEWPDX809CXXabIhuM/9CBPjxGNXwHpWMK/dqeufVWiG3XiIa1ieiShDDU3H794QqB/o0PwAAdlmyaaeCjEXG7pynZuE8VFIwqY3UaQwJM5T5ak80WnoRcAGWhZE4Re0aOmU1CkSs618rQfVGfqvciCnstqQx8feQ8O6FXNx3pcQ9eWq4qkgZN+a3MqekTXuWEldYR2IMW61gc52ztd1wSVAoNAxUmDI/o7NjppmuPyWPE6xgNIVY5wFaa0QsgjigX6CdIrMFwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EPUQ8HA6jGSFgKI1iFnaN3afWG286FuCNGftbgFJk9o=;
 b=mSFDMEi6iznQhmQFzZQKhRyQ6AxE80BXNf0N5Y3yXHpRVN4eGpPaH9bpysIqoelTJvuYmp1IIkb5xf1JNZwEDzX2Ki3hZQEBbOdOz8zfRxZDpz8c91dy9yIcXCLF81hZNf2Lk3yjN9rlNkzGk/uRGMxm1UuuBN16Hg1CEtBwglw=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB4909.eurprd05.prod.outlook.com (20.177.51.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Fri, 9 Aug 2019 15:40:10 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 15:40:10 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 15/21] ARM: dts: imx6ull-colibri: reduce v_batt current
 in power off
Thread-Topic: [PATCH v3 15/21] ARM: dts: imx6ull-colibri: reduce v_batt
 current in power off
Thread-Index: AQHVTPnUAnr1vxWSd0S4SXGdXkHUnaby93+A
Date: Fri, 9 Aug 2019 15:40:09 +0000
Message-ID: <b1d05badaf2bfbb09f67be76ccc5a98105222c9f.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-16-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-16-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 684cfe21-de6d-4b13-cd6d-08d71cdfdc92
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB4909; 
x-ms-traffictypediagnostic: VI1PR05MB4909:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB4909D561B59D4A5B9D55B6A6FBD60@VI1PR05MB4909.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(346002)(396003)(376002)(39850400004)(199004)(189003)(186003)(256004)(6506007)(446003)(11346002)(102836004)(6116002)(46003)(76176011)(2616005)(118296001)(478600001)(476003)(44832011)(71200400001)(71190400001)(66446008)(8936002)(66476007)(66556008)(486006)(66946007)(64756008)(2906002)(91956017)(76116006)(2501003)(25786009)(4326008)(53936002)(6512007)(86362001)(2201001)(305945005)(99286004)(7736002)(14454004)(7416002)(6436002)(36756003)(6486002)(5660300002)(110136005)(316002)(6246003)(54906003)(229853002)(8676002)(81166006)(81156014)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4909;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lf4YF1WdsApaIECShPBqqnErqz1ztq9XCTZU9ylNEmMSgyo/z6BOVal59TQNGS4OwcpI99ATj32SLPpFpyvQ4JZbipBsp8/AhkoH0eUnuKlqAGy5wwNw9v6ftMdNfh41V6YkFqioZn4rgRK8OTsHVTwbnfbsJsU35lWAWE2PcNqrAIVlEf/l7SqiVPG7HRzrA8HuIH1gYkGJYuwWrkDXBO1IPlIjFgciKwH57hTBkZM5BmcsNwQhcW1FdjdHW1BvijYwlAfCQlFCYhsoP4Q7EhlTKp8/540TvdPjA2bVB4EPi8CPFiegDr/YYMzZoRKJCgAf+JmieSAm5BeUiVGMN+pRQdHVv7dcEyZ1axeq6fSWlwBEU1cDiwTDsNhaZqn34OSkXUHkuAliyni0dPTh7rEmyOjWLSKPCPkCbWkSYY4=
Content-ID: <9B0DAF92E0C01F4F8AD2F603DABAA167@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 684cfe21-de6d-4b13-cd6d-08d71cdfdc92
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 15:40:09.8558 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p77Tpy0oLmSXZoNOn2N6lzR2rHqhXg90jyisO+xpzMnS6iooUvlxiSCjhrXmeRLMiBOadVZu1A82jNCYIU5Yv4jX9PqJLFbgG6mY1VgAXmw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4909
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_084012_781342_B8B0A47E 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.123 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> From: Max Krummenacher <max.krummenacher@toradex.com>
> 
> Reduce the current drawn from VCC_BATT when the main power on the 3V3
> pins to the module are switched off.
> 
> This switches off SoC internal pull resistors which are provided on
> the
> module for TAMPER7 and TAMPER9 SoC pin and switches on a pull down
> instead of a pullup for the USBC_DET module pin (TAMPER2).
> 
> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx6ull-colibri.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> index 1019ce69a242..1f112ec55e5c 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> @@ -533,19 +533,19 @@
>  
>  	pinctrl_snvs_ad7879_int: snvs-ad7879-int-grp { /* TOUCH
> Interrupt */
>  		fsl,pins = <
> -			MX6ULL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x1b0
> b0
> +			MX6ULL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x100
> b0
>  		>;
>  	};
>  
>  	pinctrl_snvs_reg_sd: snvs-reg-sd-grp {
>  		fsl,pins = <
> -			MX6ULL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x400
> 1b8b0
> +			MX6ULL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x400
> 100b0
>  		>;
>  	};
>  
>  	pinctrl_snvs_usbc_det: snvs-usbc-det-grp {
>  		fsl,pins = <
> -			MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x1b0
> b0
> +			MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x130
> b0
>  		>;
>  	};
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
