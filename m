Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A65B345B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 07:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+8v8JhtkiQcWNrAGuKfx3gJSMHgydD9Bam9yatW/TI=; b=opevBAg1fMffQR
	nF/YlYDLxPRq8rYlrAZVmW+87hNLDo1EVGcO947YCog4iU/0dy+gyVvZWBNLHBQvnR3DMUJn9cOxv
	KpDeiJHbdu4/munQ8IzXUkrp2p0DeVz7NXflKWxaqElG7Qy10XxPi3wkND6Y3jdfFeqdvpf8dNcBS
	Q2GsoVwgzPgedDnxvOxulXwxqkRzImnTgXg56v8zwuKFG9selYtZVRCD2wxzTFupH/Mwwt6sm0Ut1
	JdtF8gxgOL6bd2CDX8e5J2jiLvlvPk05CBbf29I38GANW31ai3jIlEWrENxDdANOIj2K0LJbAf8qQ
	t6BCA9N/RfOW3nuzQusQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9jVD-0000ua-LY; Mon, 16 Sep 2019 05:24:43 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9jUz-0000u8-HP
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 05:24:30 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: BnymlStO8PNY3tEAQ4e3RhjdLlE371dbe/Tesb0GmViG54GEwuSSGP1LQ99nOufeYVXlGwWhbf
 kL9Y/xCWUExIlYvAfYjK7CnpHcts99iiPB5NH+3QE5f8CDnJx1LXLZAoH98oxhEaM6mTq7Ov0N
 LA3pZdmUQLK9jOlgrLimFEltrzIDcpuBu8dvY1FVDvVHDurtl/Eik1h5ofd6nQDJxelkblNinG
 zBDapYprKvPcEArfVjgr3n9I40CPkY2zNSqleVbNK+yhH1RfA/yr8ko+g9yvNsvBPOfbTEZk2y
 StE=
X-IronPort-AV: E=Sophos;i="5.64,510,1559545200"; d="scan'208";a="49004222"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Sep 2019 22:24:25 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 15 Sep 2019 22:24:25 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 15 Sep 2019 22:24:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CNSaJbWdB7Xorj6VDOf7j4VcsFHjS3PPvmJ8LFT5dy8gXGMGw5wGW3iIxxrjT54XumrJu0ascFiM09Eln5f/nUxZIW2yS/G+e2+TWDlpY8+T4ENLVScuzbdLB81kGU45ZKmWvlWlDMsB5TJnZ0yD3NiEOJFzaH41l+lPI8B7cn+Btk5Hd0l/JabttzSzdKSyW8QWGdDXbPau0G/hNxo3BiPy303ZtbX3TQ1gbFui/pdtVlrbfOadQ6YYzPk5L+rHaiH1cxvKV6MAs6gHQDUkZl9faLCEbgswdaubA+yoOBsdpPI1pIo9crUC5pXEe7M85Y91GYDnJN6xQ9f2OFbLrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7OlcAHUdPrAzip2kcTLG82tAJKFyoXOSXrb49nKiQQo=;
 b=c24LVcGbpSGimRlllN9BpQ8Gci0xrk239wO2GSsyg1n/cQLuShq1IJq3dS+VwShBv07J8ne8abtyawywVFlCOYzrKTDqN7rFz05oj9TPoat0YBTbseVyZSslHNril8dSZcNx5ID1o/n81h1dt1k1EMT5lRTaLBARyqdJl9QU3SNU6RFNWVEbwRp1ZgkOporhxRqLTSsK+K2JzmtIit810yeLiAVF6mBLi4okLL2YDaOXBz1q+EvhPsqcTRt17FgtPRk1YEcI795GV9R3JHlFkHuLW56kkFIZsQYkqj60A60h2o55OSeu54uhB8eE28Vv77lXpg6bVBqbzw40cSyaew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7OlcAHUdPrAzip2kcTLG82tAJKFyoXOSXrb49nKiQQo=;
 b=p9Q0UxIF+SJ/cxpnmOqk9toLKqwZrkcOCUlU0B5EpacTkzP2ZVLdPtlkUftjfm3fVDdnGgDaNTc8DSQXgmmplG7s2TMNOYLabaCDOoHkteSq5KnuKAi1/t3FpWtV+Nc2X4QpGXzoRubIgYHObfONSncYTPvFGa8GJBn3dxMVQcE=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1342.namprd11.prod.outlook.com (10.169.231.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.20; Mon, 16 Sep 2019 05:24:24 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::e1f5:745f:84b4:7c7c]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::e1f5:745f:84b4:7c7c%12]) with mapi id 15.20.2263.023; Mon, 16 Sep
 2019 05:24:24 +0000
From: <Claudiu.Beznea@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/2] clk: at91: fix update bit maps on CFG_MOR write
Thread-Topic: [PATCH 1/2] clk: at91: fix update bit maps on CFG_MOR write
Thread-Index: AQHVbE8A6+s4QT/+sES87Yu4zg0lxA==
Date: Mon, 16 Sep 2019 05:24:23 +0000
Message-ID: <f2a0f3ac-21b3-17d1-8677-2e55be18dfa5@microchip.com>
References: <1568042692-11784-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1568042692-11784-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR04CA0082.eurprd04.prod.outlook.com
 (2603:10a6:803:64::17) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190916082416203
x-originating-ip: [86.120.236.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b5ebdaa-ca41-4813-91ed-08d73a662273
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1342; 
x-ms-traffictypediagnostic: MWHPR11MB1342:
x-microsoft-antispam-prvs: <MWHPR11MB13422487B3AC4BE6B8D24DCA878C0@MWHPR11MB1342.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(136003)(346002)(376002)(366004)(199004)(189003)(53936002)(66066001)(31696002)(86362001)(81156014)(81166006)(256004)(14444005)(14454004)(25786009)(316002)(5660300002)(31686004)(4744005)(8936002)(478600001)(64756008)(446003)(11346002)(486006)(66556008)(66476007)(6246003)(66446008)(15650500001)(66946007)(2501003)(229853002)(52116002)(2906002)(476003)(2616005)(2351001)(6916009)(99286004)(386003)(6506007)(6512007)(3846002)(6116002)(53546011)(102836004)(7736002)(6436002)(5640700003)(71190400001)(186003)(6486002)(305945005)(26005)(71200400001)(76176011)(8676002)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1342;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XhhhNB201JPJkNwRCwv/NhZ8WaoF7gSIO34/6VTdBDo1z5mVpU4bdBENUypES6NdsbwLvkHhms4tt5+gTxBxmPbcgQeIl/udhovf1EYsIYPcYsxhHJbCNXBAgADLBoZ6KHWVuWZJ0QmXw8RaCWglXYZooVPmcUveqsdWCPw0IfHOgdNOYfE2S8R68e2pO+e1dBQoUNg8ZOMT7DVasFIRxx7T7//GOPQgoBE10fUsHhz9CAXsPWaWiMopsvN4zDWq+loazAS+QunKiTgyYYT6fpdlUWWsCdmNEF+91x2j4wQAyEoe5lmWFyfoUdn6ryCx5uKUWv93QpC1v+ynJCxFGw0armyOig1uSMzTa7xm68MncdISZmaE7f2EgD66CB8NebvHQqL/ui8fZwv01tZmG0XvG4jGiM9m8TX84IOw9to=
x-ms-exchange-transport-forked: True
Content-ID: <DC68A2DA85C0D74D8E0198827AD74309@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b5ebdaa-ca41-4813-91ed-08d73a662273
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 05:24:23.9447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tj6DKU564PRtS+P0AYQCnrrLUey/uM9+QZMpy4R4pR4qDwBdWZ8tdqwB6vDEHEuI+RiweoK3AhGsUwPcu+qk3jxxfFMz9IsKleRsStjasHU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1342
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_222429_614475_9AFC5BF0 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09.09.2019 18:30, Eugen.Hristev@microchip.com wrote:
> External E-Mail
> 
> 
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The regmap update bits call was not selecting the proper mask, considering
> the bits which was updating.
> Update the mask from call to also include OSCBYPASS.
> Removed MOSCEN which was not updated.
> 
> Fixes: 1bdf02326b71 ("clk: at91: make use of syscon/regmap internally")
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@microchip.com>

> ---
>  drivers/clk/at91/clk-main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
> index f607ee7..ebe9b99 100644
> --- a/drivers/clk/at91/clk-main.c
> +++ b/drivers/clk/at91/clk-main.c
> @@ -152,7 +152,7 @@ at91_clk_register_main_osc(struct regmap *regmap,
>  	if (bypass)
>  		regmap_update_bits(regmap,
>  				   AT91_CKGR_MOR, MOR_KEY_MASK |
> -				   AT91_PMC_MOSCEN,
> +				   AT91_PMC_OSCBYPASS,
>  				   AT91_PMC_OSCBYPASS | AT91_PMC_KEY);
>  
>  	hw = &osc->hw;
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
