Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BACDBC748
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 13:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ySp71YGiflKN0Yh5KzLwK68FPC+Q35EPe5WcgJLXFE=; b=gzHgQ5iU3aaUX8
	JEScPv/tB40gE4mgeyfaCi4Wl4uPltaIZiuXbmpjShiRqMIDQLCrITO95epN3tkMxoAZbVHu6waQq
	dDuWsJjYn34B90awKW0Fm9KqsSPSn3JGA0YUbNeQoEPe3SCcm0XTJu76QP3Xfeotkjf0CaBxipni8
	UZ+xMKtxJmsBoscdSgL3A3vbuMiJqv9GqMRr4mM7bzpQKaK4JseLg7DTB4BgXtD00c/rnsEA735qo
	fzWqddMgQwSAtMBo047/JFd9NGc4nSnCTP2V/aqkhyOXPKdqC95hc6LJ6mAHkcDcaz6Za/9SWIjvF
	eI4m5BBXaWfP7eW3HFQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCjOX-00017m-Tl; Tue, 24 Sep 2019 11:54:14 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCjO2-000169-Dp
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 11:53:43 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: /1ZOBQ6ERgzdZ0NjuWpAauIB9IVKH3NcbpJryVpWl73yErqoS7rJDOL0ZBEUfh+cXHVhy6SUse
 HfSCV4dIjqNvDqIZ/uNPJ89XHAuIr4bkddf8LJgtZybcsv5tKL6DEg1SkTHL3b1cKWb+pYRTwE
 uhfX1tSmzwosYmFO5tpi5DJDGHDd9qLnWtMeM4IZIQof+DDgcv+fRRlmWsUAGN3FoC8PBwlDQx
 4CPWqOZMyfivJ0zTnMG+wKfpSQfG7qt+LP84QcVpyOUj7kql823E6XlOaWLpcJtXsHiGGBn8C5
 PK0=
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="51642054"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Sep 2019 04:53:37 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Sep 2019 04:53:36 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 24 Sep 2019 04:53:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wh/NCe9S9EiS7Ce8166E6Wh0NfHC4Mv+ue9+rmXgTS2r4jrVVpQwwy8DcA7vN5pauSNCl1jXpayiipnACMeWI/1UTbRp2l1ZSo9quAWAn4EtiCewXkY6Cg2VZ0w0C7XRhNW7b0f4SYDQc+22fDj4huT5j/zxa2bY/GCHABhafymAZd1M4k7A1tT/m1Ew7OhttyldR4flaqVUo5BKZuiU6Ey8/UHDpSknIAPziUNA7XOndxJLOoxwTkwgw+BwrkzYiidqXRPyYnhY3u5QSMgbg6eQOZeT2+G+UrVmq/rxFlgQf4dkaBm0ICBg8y4tZS2UAhyl86R10H1eYVOjJtEZCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rNpqvT9bNHgd5aL+Eu9HXIQw7Azfq0GS9vEBhBTlrg4=;
 b=M5ZZaafxHg2pr5dHUPFJ4vuaq0nd0CNy2DVtotsaFb61aDHcODwo6hP2sfzQ0PvKwXWUUrpiJg4zAk9nP8RqKq8m1WOBy+7cbGBVGg7w36oGj9lbOr0/Os52z8ow0bqykQrOAbiAcn6QpEZyw1Jy1ilDOMhSppADThfXxAL3lje0UbOyyK6kHaNn1KoKGu7Li9pqXO5C73Xx5aPtUq9qz6+vPt145kZNJOn+k7JOn25lFISpBKoZzVB2dPpmYt9sAi/0U8PmEcrPoo4SSrrJ4v+2iZnlZD3cFsLRmr0GCyCAawR6Jtvf1iTmZIZZaq4ysqv0ZO4p2cGspXeyFEf13A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rNpqvT9bNHgd5aL+Eu9HXIQw7Azfq0GS9vEBhBTlrg4=;
 b=HRmRiqxWocKAuoHt8Cx8PjV/oVjZEAlusg8NvtPLlK63ZW9zLaX61/STroeJ31IWY+tb9gmHLR4UrjniHgAPlJ2AiTt8mAtqt5jrWWp1wvdjQD0F4QbKllSSMTp9Cr00je9cPPkAZ+BeQ+gtltPmyzAoFbrxzjEEIM7Crw/9nak=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1920.namprd11.prod.outlook.com (10.175.49.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.19; Tue, 24 Sep 2019 11:53:32 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::a5d8:feff:2b41:862b]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::a5d8:feff:2b41:862b%6]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 11:53:32 +0000
From: <Nicolas.Ferre@microchip.com>
To: <Eugen.Hristev@microchip.com>, <mturquette@baylibre.com>,
 <sboyd@kernel.org>, <alexandre.belloni@bootlin.com>,
 <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] clk: at91: sam9x60: fix programmable clock
Thread-Topic: [PATCH] clk: at91: sam9x60: fix programmable clock
Thread-Index: AQHVcsRMYTeAx/4mlU+eM6N6BpGrrac6t80A
Date: Tue, 24 Sep 2019 11:53:32 +0000
Message-ID: <a0139a50-9109-77d2-1aff-8c43439e5ec3@microchip.com>
References: <1569321191-27606-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1569321191-27606-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0902CA0013.eurprd09.prod.outlook.com
 (2603:10a6:200:9b::23) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 914edafb-bdc0-4181-ec6b-08d740e5d29e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1920; 
x-ms-traffictypediagnostic: MWHPR11MB1920:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1920E1B3192F599B0183A910E0840@MWHPR11MB1920.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(136003)(39860400002)(366004)(199004)(189003)(6506007)(66476007)(26005)(66556008)(53546011)(102836004)(386003)(8936002)(66946007)(3846002)(110136005)(71190400001)(71200400001)(2906002)(64756008)(36756003)(4744005)(6116002)(66066001)(52116002)(76176011)(186003)(99286004)(256004)(66446008)(446003)(476003)(2616005)(486006)(11346002)(25786009)(2501003)(86362001)(2201001)(14454004)(31696002)(478600001)(316002)(8676002)(81156014)(6512007)(6246003)(81166006)(31686004)(229853002)(6436002)(6486002)(305945005)(5660300002)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1920;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Vs0TD5vyRTLlZ+Gkvpr7ZKU6U1+YHqEUbrPgP10+Mito8oO73PHIG2CRRhLML3iFEi4xxDQv6Qv4IA8AeWRk4TxdYj/R2RsmaQsodSE/bSeUr5dRMlDDp1b/K3srZtQafJKA1h4em7UkFXpPhmkCnow9Pb7teXp7wT3bpTZd0ofw0Dxtslkl4XR+GOHwPIbKk1AjMpPdQl1JQIcqhNn9nZuUPDZ/r7cjfT7Q605CLZ6JoN9u3uwgMq0Fkri7Sz4K0rg22PKSknDn5BgDhvYb9uJpfcFTZa6hyNfh9J3u9RN982tILBBdNnxl5lAhWGZ3ekyyANgZOmkIxb/yitHJczO6XEdpWzCfczkcSgekdYHktTdWYv2CQOYZEIDKlHKmK+7o6z36+eIUE7Q+ZOflo0wnWTtU66GHoONJn82a6uQ=
Content-ID: <F3EE17076B5A274D814D23071466CC13@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 914edafb-bdc0-4181-ec6b-08d740e5d29e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 11:53:32.3102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jluPSRMxbvO5OtIV+vFUqqUvOzdGN3ohv8k6qcGvadnlHmZEhvIrUFDp6FE4JpFe5P2ImkLtQ6aouBQAOmOJjFjuJyvhBivyn7pXDwvvcLo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1920
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_045342_475192_D3E1819F 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/09/2019 at 12:39, Eugen Hristev - M18282 wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The prescaler mask for sam9x60 must be 0xff (8 bits).
> Being set to 0, means that we cannot set any prescaler, thus the
> programmable clocks do not work (except the case with prescaler 0)
> Set the mask accordingly in layout struct.
> 
> Fixes: 01e2113de9a5 ("clk: at91: add sam9x60 pmc driver")
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Thanks Eugen. Best regards,
   Nicolas

> ---
>   drivers/clk/at91/sam9x60.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
> index 9790ddf..86238d5 100644
> --- a/drivers/clk/at91/sam9x60.c
> +++ b/drivers/clk/at91/sam9x60.c
> @@ -43,6 +43,7 @@ static const struct clk_pll_characteristics upll_characteristics = {
>   };
>   
>   static const struct clk_programmable_layout sam9x60_programmable_layout = {
> +	.pres_mask = 0xff,
>   	.pres_shift = 8,
>   	.css_mask = 0x1f,
>   	.have_slck_mck = 0,
> 


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
