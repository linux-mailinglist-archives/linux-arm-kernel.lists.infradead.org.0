Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED4AB345E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 07:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zai5QS8DsLk2KFV6g+mBxjMAjxpQcvWG+KElgJ8qg3Q=; b=QWPOY9kcgsHDiZ
	pmJrGQppeNlxXEoSg/VBq7rLuLkIONPMi7zvs5RqC1Y6y6lvpaMTotyYNxgmLI8q/Mv6N7X/4HvD8
	SyK5tKiRgmGtxxDSDeGa4CEDQWfgDRebOVbVB7CLotM/yerS/d6/AMF9GamY3Pl5ErXp85nj7RhEJ
	Y1gNPN+NVbx7ZOzDtRpC2BOUAaYAIae7qwNTJbtu6131d0/G/Ql/HWDwhFJioVnYJiIKoEkSlVxGG
	baDa3O134H7VC6Gu7DhSzu8mvQPQkwwaLE02S7FTzrowpKCCxgJCpFWxeey1vmx/kFNYnyVBtkJeA
	yyZKMtgl5LqTsVwvkmKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9jWG-0002SV-D7; Mon, 16 Sep 2019 05:25:48 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9jW3-0002S4-LO
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 05:25:37 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: KBfFGIlALabv4qfwfkaB5yC/h03uV8Wz9aQ0MMVjItL75SGqzKiuzxGlnIExqQkyCb3JUESe5S
 exaKua68ivA/d5bS1Vy7wy2kNz1ZySJA+LcYIjsp3wOazF2oL7WCWHYkaKzfHnOstHv5Lu/ZN2
 2BwjsTm/Vfe7juIPcVIiwIn46e8CHcZqgWEvp/m6Pdv1bhNKjoNL3u/PRdt+G9XqaVrpJBGkrb
 PcHJEx7sTBQC3a7iaHVEh6YtMH0zF0FfgjMpeoPv8WoT5o/WDFNLK648XR4hG8wQZpeNlx5ccd
 5EM=
X-IronPort-AV: E=Sophos;i="5.64,510,1559545200"; d="scan'208";a="48028771"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Sep 2019 22:25:32 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 15 Sep 2019 22:25:32 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 15 Sep 2019 22:25:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aQH4LbVRW+NrLGUXIsF0agCDcvD/Xp6Tlg3F2SMQKHKUwttAuo10KdiB35lwZBZmBRjZXXB8PTZ+yI5IWxaza0wqNNcPJfD3VS9zDbN2YwyyGTEWgoLk6nOkmPzmyhxs4gqroOtgC+39Gmwc8KY0rFiG7pIvrbKd4B6ZqLfinkt5aga0axg9sj2RV8Ln7m9Q0RS8RkgT2aUGtbP817TD/ZNQ7ULNd2J5F5IwxegndSAtreaBffWMCgEtwejKDkgltIyVcI6zpn1Zpchu+sRtrv25ctT77BRbA3WrY6S12nRlLNraHnJP7gB9PG8JggcMqAIE6wuXs5RljIpTLN6PvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3MSopSpDgzlP3YnuUymHPqZgtkQIrgno9ZyrhtIpbQM=;
 b=mXG7/HBU+SYf6QXR2zJrmXhVcLI8UlS6D3fA9Htyw0S1IMkbhmF3W1FOHlYvSFmGZB0HFbEQkchnuxRRugXJqpt6+B14r1s/r/Qjt8dyl0nOV+qMXh4ylGzd4o8HIlsc6BG8w0zmwkA3Ba4INO/iVLwMryQBa3iSClTKJkcfKTke9z0fMFCmYHYrax7c0T/TRiY/kWNIcHd4/vAxQH6w+NKOhbdzJh+AhIMF9A4/rzBSY6TXu4Ds9onB84BY8mTZjscjzaw0Gv47TNjpWCgoVCcbll7PR6MiEKiMMnqwVNYjqwcuBIuTig9z65ByIHWUmr/f7XE/PHlPyj3wJykEnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3MSopSpDgzlP3YnuUymHPqZgtkQIrgno9ZyrhtIpbQM=;
 b=LhanfsmwVnp+y82Foa+Ty5YLxCDpjglcxLwR2OJFn+GOCy+54vhI6X0VMNpQn8rAg1N/4Ts4a6xcSs7PF732cbrtArIHHPrtciIciSe3oG25WdjuYooQBvJrECqQ28X1ahwd0QyXmgZ6vEBnZ683QhjbSqTXd+Oxu9IeAiVNrGw=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1342.namprd11.prod.outlook.com (10.169.231.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.20; Mon, 16 Sep 2019 05:25:30 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::e1f5:745f:84b4:7c7c]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::e1f5:745f:84b4:7c7c%12]) with mapi id 15.20.2263.023; Mon, 16 Sep
 2019 05:25:30 +0000
From: <Claudiu.Beznea@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/2] clk: at91: select parent if main oscillator or bypass
 is enabled
Thread-Topic: [PATCH 2/2] clk: at91: select parent if main oscillator or
 bypass is enabled
Thread-Index: AQHVbE8nekIDDEFc/0+2SntUBMmG0A==
Date: Mon, 16 Sep 2019 05:25:30 +0000
Message-ID: <9bef0859-e4b0-1012-60f5-aa919d7fc888@microchip.com>
References: <1568042692-11784-1-git-send-email-eugen.hristev@microchip.com>
 <1568042692-11784-2-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1568042692-11784-2-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0254.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::21) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190916082520205
x-originating-ip: [86.120.236.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f9f6e96-9af3-4488-4707-08d73a664a12
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1342; 
x-ms-traffictypediagnostic: MWHPR11MB1342:
x-microsoft-antispam-prvs: <MWHPR11MB1342DADE8502C9F5E3E70607878C0@MWHPR11MB1342.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(136003)(346002)(376002)(366004)(199004)(189003)(53936002)(66066001)(31696002)(86362001)(81156014)(81166006)(256004)(14454004)(25786009)(316002)(5660300002)(31686004)(8936002)(478600001)(64756008)(446003)(11346002)(486006)(66556008)(66476007)(6246003)(66446008)(66946007)(2501003)(229853002)(52116002)(2906002)(476003)(2616005)(2351001)(6916009)(99286004)(386003)(6506007)(6512007)(3846002)(6116002)(53546011)(102836004)(7736002)(6436002)(5640700003)(71190400001)(186003)(6486002)(305945005)(26005)(71200400001)(76176011)(8676002)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1342;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Bi0BrUwPr4IchWgQEJ09noN62pIzbbH5JOLhfZokPNzKib//5vMo4N1fHXsNAQ5hmMhzI6Ff0brfFnLGTe+I3te4D53htq2s47MRD+WjLlun8xlHXDwOQEsvUdtwk5Q0U38ULfiEGedT1U/dSYpg31y+cj2VFlFs5eKwnJ3wZPQ+02I5sJBcM5gMtjq7SxlbKj/Sn8wOfO94lQ5JF1N72ahycVG95Oj+pS0i4csG73ctOVfTfTwOHE/KKWumthyFc9KK3R8jj1+OimjJZ/dKLCsC2MWOWaa75GUZaOOe2nbfyGW92/tM29b+6m4eSpsYKy4vylA4O9CGHGhDTPno/oefYPGy+wn+qrRK9DCx2OCb/syaIkAi2wBSLY3LrX5HEJlLpSZ0kIIE6S46WZw6HvsObFA4e38X7RRijj0XvRc=
x-ms-exchange-transport-forked: True
Content-ID: <5C44D3E67675FC4FBD675797F7D53D01@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f9f6e96-9af3-4488-4707-08d73a664a12
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 05:25:30.4409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H62Yh8VW8zQC4fTvxneMF8Ts07WpqxksANt5ePWXjAfhie7oR1GNdfgSFh/LL6Yg/9rzPcDuVfcZ6xk0ubtogKOB+siUFhLeTf2I3ASAZ4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1342
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_222535_736237_8611E4D6 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Selecting the right parent for the main clock is done using only
> main oscillator enabled bit.
> In case we have this oscillator bypassed by an external signal (no driving
> on the XOUT line), we still use external clock, but with BYPASS bit set.
> So, in this case we must select the same parent as before.
> Create a macro that will select the right parent considering both bits from
> the MOR register.
> Use this macro when looking for the right parent.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@microchip.com>

> ---
>  drivers/clk/at91/clk-main.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
> index ebe9b99..87083b3 100644
> --- a/drivers/clk/at91/clk-main.c
> +++ b/drivers/clk/at91/clk-main.c
> @@ -21,6 +21,10 @@
>  
>  #define MOR_KEY_MASK		(0xff << 16)
>  
> +#define clk_main_parent_select(s)	(((s) & \
> +					(AT91_PMC_MOSCEN | \
> +					AT91_PMC_OSCBYPASS)) ? 1 : 0)
> +
>  struct clk_main_osc {
>  	struct clk_hw hw;
>  	struct regmap *regmap;
> @@ -113,7 +117,7 @@ static int clk_main_osc_is_prepared(struct clk_hw *hw)
>  
>  	regmap_read(regmap, AT91_PMC_SR, &status);
>  
> -	return (status & AT91_PMC_MOSCS) && (tmp & AT91_PMC_MOSCEN);
> +	return (status & AT91_PMC_MOSCS) && clk_main_parent_select(tmp);
>  }
>  
>  static const struct clk_ops main_osc_ops = {
> @@ -450,7 +454,7 @@ static u8 clk_sam9x5_main_get_parent(struct clk_hw *hw)
>  
>  	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
>  
> -	return status & AT91_PMC_MOSCEN ? 1 : 0;
> +	return clk_main_parent_select(status);
>  }
>  
>  static const struct clk_ops sam9x5_main_ops = {
> @@ -492,7 +496,7 @@ at91_clk_register_sam9x5_main(struct regmap *regmap,
>  	clkmain->hw.init = &init;
>  	clkmain->regmap = regmap;
>  	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
> -	clkmain->parent = status & AT91_PMC_MOSCEN ? 1 : 0;
> +	clkmain->parent = clk_main_parent_select(status);
>  
>  	hw = &clkmain->hw;
>  	ret = clk_hw_register(NULL, &clkmain->hw);
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
