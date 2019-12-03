Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4721610F463
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 02:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opiQI0cXG/UxMY9S9iwP4EY22GsFr92zK3B//kzHB5s=; b=XXeh/6HF41JtW6
	ZQiRDGWzNYZoDmgRAmVPS8k97oQBHa/vAhvLQ73HqVNjoxzexFQXIgXFcTBHygi9wvHkzLkr2kWiy
	7XWAUvoLpkQ00WHWZYEYWsONPqpZoyxHPAMJ6kJw0OFXrSbHVzRnyxOvBClwXP9TDrjynHACsLl4e
	Y+B/ZYp7xrHc2FXYRv0PDEzXx8AoDPf8B8rzoVA3NNPTfZTULE2TpZwW6CYOgywJougRTVAjBTxBV
	fTL0JyOo4I1YP+xJK9rROajBBydU2H9Bddm+GF+u9gCSMUcHD3p/obpQqQrCK4pEzJ/0a8yWLnBN+
	geo0dqUNkCh18LIB6XOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibwhA-0003aJ-Uy; Tue, 03 Dec 2019 01:09:40 +0000
Received: from mail-db5eur01on0605.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::605]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibwh1-0003ZA-6n
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 01:09:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W2NM4Q18+U6ML2fosbviXuV3I1kbw7Z8sMeLt1zepMRhjpQTEYYGpKEvIfVfIWufzF5ynx9vVi5DopnWDAQbZ/c34kEuciQQfXbDvmyEyQ4qJD8LLbNm04QarUPJ6yVCsgAbiZw+hKyLq9ghzquct1odOTjm1OISDOXqYgnBdC68u5Gooes7EVshjVqTYoobtDzmdY9G3fEkf8hb+ihl7W71W5HR9WpIlcYzrEenyeRAHi3hct3T6fgGBTrsiEuZMSVPpOzW3Yxbf9rDq7+36yNuaOQzqoQIEDkSJqN8vmnoO5NBMa6c4YoCIgAA+f140T6KqeTEBz8cEpCVNC2Zrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UlrGPbDjwjYFh5ed9OfJpmuV7eFiBxF2mk9g1RpC4o0=;
 b=WJRl4s8jfvgdBFCn+EIgw5XsGfBY216R3U9hW6kZRLTPBkGQyH18orv57wcl+vG0Ww6mAffW7EGWoVYWBYEZQV7GflgQ5uTxeTHppdiihPieefSnpYyCvdC0wpS6IgIOW7fnj04q4X7H7U4mSaU+87uHq2no/sMZ4g/9Wu1j7oJHOtWGyQfbYdNytmXLRyP7kc6tk0ig5jeZGt+LQlc86eLCjpwXI5YayCvr7AL9ZE0a5JNWt1y8IXPsmkwMy616lGMQ+8cGyk+w3dh3xpOX8Ny7szFhzdg9e61rbpnmABbVJynNEQt8ExZh6mkaQ8eM/Z6SaisYU9UBRd0gwwsLtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UlrGPbDjwjYFh5ed9OfJpmuV7eFiBxF2mk9g1RpC4o0=;
 b=qEZL/Jq6tGAFhKJB/i2VGz9Vg//IKn1T8APBoBiYIh6UFezb7fJjX6DULblceEm31C79IuR3WQHZSN9ssODqJSkAG8Xdna2+4iy+LrgsD4qfT9s07WuiCd2PsBM1YuM9yhhX9MaFabDWbYugD15O31TZBkxCG9Re5nF3diP2KP4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3660.eurprd04.prod.outlook.com (52.134.70.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Tue, 3 Dec 2019 01:09:22 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::b8dd:75d4:49ea:6360]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::b8dd:75d4:49ea:6360%5]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 01:09:22 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] ARM: dts: imx7ulp: Add cpu clock-frequency property
Thread-Topic: [PATCH] ARM: dts: imx7ulp: Add cpu clock-frequency property
Thread-Index: AQHVk3uAArm3im3y4kKhOJwaQWTXG6enBzSAgAC9zfA=
Date: Tue, 3 Dec 2019 01:09:22 +0000
Message-ID: <DB3PR0402MB39164DF380E6B13558E758E7F5420@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1572918578-13544-1-git-send-email-Anson.Huang@nxp.com>
 <20191202134748.GB21897@dragon>
In-Reply-To: <20191202134748.GB21897@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 79df1204-19db-430c-aac6-08d7778d6e95
x-ms-traffictypediagnostic: DB3PR0402MB3660:|DB3PR0402MB3660:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3660EDEEEDDFB99E92853F7BF5420@DB3PR0402MB3660.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(396003)(366004)(346002)(189003)(199004)(6116002)(71190400001)(478600001)(66066001)(74316002)(9686003)(33656002)(54906003)(7696005)(44832011)(14444005)(229853002)(4326008)(6436002)(86362001)(186003)(446003)(316002)(7736002)(25786009)(11346002)(305945005)(6506007)(3846002)(256004)(76116006)(5660300002)(55016002)(76176011)(14454004)(99286004)(71200400001)(52536014)(26005)(66946007)(102836004)(66476007)(66556008)(64756008)(66446008)(8676002)(81156014)(81166006)(6246003)(2906002)(6916009)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3660;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sRRAga7zbonzYUQxKiiWXESrzRZV1IIydGzcAKawIA5jhEL8rNtZmiW6onMqTxi4EzPDPNTaSYT9ZVLsNabeIEhKe55WBizccAkdjLojltvWCLoaFbUENcaQLq0m6TM/PDr3tSEdKRiO80TLK3FvHv+qqedXyklQPVJKr9FQmpAdswiJqCVpZxARa/yy9qz4EYD1omoBZ+YzoFKlq9iZJOqejQUgPJA0jN4gGkUCEx4ZNSPA8YT01Y45NUpu7f7Jpap7hlu2pZ32mMK01VC1bTbCnKn9rUkhb11EM0yXqCL9gK2juLAX7Wa1F57j4bpG7VEBgnVO0U1phRyYtv2oJvqX+X2/xCCaqNBe5bMkj0dy3TVYvrqzTwgs+H3SLSqkq9dqVUytx/A9iT8O6m3xIm3YSq4F5iv3lblzL4M5PcZ9u/WRy7JfcTcqKIDkUojS
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79df1204-19db-430c-aac6-08d7778d6e95
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 01:09:22.5241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SplTI36hhO0rIzdawBBipOVfjZcihOII+HYoerTErWHVv5pjAhmAKkL+xtxmj8nxnwTbg9fdLr46hFKFbipo+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3660
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_170931_297619_7E368362 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:605 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.9 FORGED_SPF_HELO        No description available.
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Subject: Re: [PATCH] ARM: dts: imx7ulp: Add cpu clock-frequency property
> 
> On Tue, Nov 05, 2019 at 09:49:38AM +0800, Anson Huang wrote:
> > Add "clock-frequency" property to avoid below warning on i.MX7ULP:
> >
> > [    0.011762] /cpus/cpu@0 missing clock-frequency property
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  arch/arm/boot/dts/imx7ulp.dtsi | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm/boot/dts/imx7ulp.dtsi
> > b/arch/arm/boot/dts/imx7ulp.dtsi index d37a192..87b2237 100644
> > --- a/arch/arm/boot/dts/imx7ulp.dtsi
> > +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> > @@ -41,6 +41,7 @@
> >  			compatible = "arm,cortex-a7";
> >  			device_type = "cpu";
> >  			reg = <0>;
> > +			clock-frequency = <500210526>;
> 
> I cannot find the binding doc for this property.  What is the definition of it,
> the maximum frequency that the cpu could possibly run at?


The code is as below, maybe the property is missing from the beginning of this code,
this property should mean the current frequency of CPU running at I think:

arch/arm/kernel/topology.c

122                 rate = of_get_property(cn, "clock-frequency", &len);
123                 if (!rate || len != 4) {
124                         pr_err("%pOF missing clock-frequency property\n", cn);
125                         continue;
126                 }

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
