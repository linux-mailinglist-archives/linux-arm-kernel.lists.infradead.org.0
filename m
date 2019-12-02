Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E6110E508
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 05:20:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=BgTsUCshcrOhuSXLnt57LzRc3X/Gi5KwDYA/snVB7lw=; b=b+DiWyyAnzZ2/F
	lEIsB4viddcw+/6F7jJVn/REHI9ksrAavLAZPrY0piUAfpriq8Cjwxm2LYp8KNo1tlP8rDc5Y8P+Q
	yvUWOX0oipqLu+ulDC2wZlQblO/4q50yZknCRIdupiBdff1fQcif4Up3E4wOwrMc6x6qfOp+pXicc
	O58okpUa2kuUqX/CTHcZ/VY6VuhXSh3hdbwyQ1iMSviLxd9fk5a2H0iwysuZWBq4ys9gS/eOBWxn0
	OVGCslLILo+cKgJNy3R2paUtc4XisjoUWn7DNrAi7Gc/XClzstbWiWwuWEBF5G3GUWOFv3/stG6OA
	yKjgu50aMQhDJ1l9BP9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibdC6-0007PP-SZ; Mon, 02 Dec 2019 04:20:18 +0000
Received: from mail-eopbgr20089.outbound.protection.outlook.com ([40.107.2.89]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibdBv-00077K-3l
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 04:20:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qq1/NNyQt+Q8mBqBpI07+ciKkGrr0dVQOhA2FqgsbMzZysbVZ5cEXVIaqFUvKVvofRmTEKxNcK32YOqCJs3To7J7ftwjZUedNlEfvWkv9wTTVAYmFOfWzTsHQEA6H3fL1oubQsx4WBRHNv/j9SkCq+MelOrU2iqUEHpatxtVurWsE0cIGk2J2pythyunItK4EsAudiV6MK3M5RkRI+B36TuHMBb5AyUrijiBpzD9X7UBBFD80AQyIhprsOjbSh9WdCXshJStZBQtswvKPiksW4w6lmjYkqBhYQ+NZDma2iVp5ctznozYv3EzfxLGCn/NgbZNCj8mUS7F63k883NhBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xJLJh+O1y2EsARSc1iGGNQqeZqHfC/GJU/o6UDF5mlk=;
 b=SKG+MZrYqXfHShwosIo/1AKCFCyXaN7CIBDllx/iVKFlfQxLNLpv9z9XiPvIkV505mgTVcvhAhEd1LgRVhPQKyrancxKy9lJA9cifuu6ol8Bgal5B2Yt6cst6Kdw3SRwzYI3566PM6mfyWnn0hOWPvheMXgax5oLwYP1e5l6Z4Gz3OD1Dv0bH54KaW8tfoSXSJ1KJEuj7uG9qWnqSNnRD7OdxFbzWlifmoQX2BaODMq0AkhFF+vWpzPxFlQ6vpRFkWHrc+/TIvstOxqC4dYjMj0mLnJGeIk6HxWb1DaSt+AihSOVgEKtE4eaKjeEEqzz/yRHoNJ/DS3iqOwPZxZbQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xJLJh+O1y2EsARSc1iGGNQqeZqHfC/GJU/o6UDF5mlk=;
 b=S4LWJnizI6F1D7T5f/54HxxjXtCw/Ch+uuhNStE0Aw/nsTui5F2YBgQdJ8syx0ijm5ZWHHY27K41jpVlCwPmfEKQMqACXMdhYpQTealaZUeb+S8P/SsAsM2VYLdQhB1XMMyqttRxwja7YWNke1mlGemZ0/yQoqptXKcdTFS35Vs=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3200.eurprd04.prod.outlook.com (10.170.230.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Mon, 2 Dec 2019 04:20:00 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 04:20:00 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH v3 1/6] clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
Thread-Topic: [PATCH v3 1/6] clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram
 clocks
Thread-Index: AQHVkDU5CAT+mGhag0irKrwA1oglYA==
Date: Mon, 2 Dec 2019 04:19:59 +0000
Message-ID: <VI1PR04MB7023B15ED837A3C4BF940C47EE430@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
 <94c478c1209704a3da4577ae79ea28888759e8a7.1572558427.git.leonard.crestez@nxp.com>
 <20191202031203.GB9767@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1dbbabbb-932d-4f98-0a8f-08d776dee588
x-ms-traffictypediagnostic: VI1PR04MB3200:|VI1PR04MB3200:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB3200BD139DEC27933E1A3C13EE430@VI1PR04MB3200.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(346002)(396003)(366004)(199004)(189003)(6246003)(25786009)(14454004)(966005)(26005)(6506007)(66476007)(53546011)(66066001)(5660300002)(55016002)(64756008)(66556008)(7416002)(14444005)(256004)(6636002)(305945005)(229853002)(9686003)(91956017)(76116006)(7736002)(102836004)(6436002)(66446008)(66946007)(6306002)(76176011)(99286004)(52536014)(8936002)(478600001)(186003)(74316002)(110136005)(7696005)(54906003)(33656002)(446003)(6116002)(4326008)(3846002)(44832011)(8676002)(81156014)(81166006)(2906002)(86362001)(316002)(71190400001)(71200400001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3200;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Acr53TpRvXOkJCPfjSQNSn8NM4DYpFI/S05Vd24OqkzcF2adimKolOwkqTy/y8hPacGTPr9AM+e40RH0JG3fM8yNO0gg7DBFy8sumVd9vH/OVFlpJAlv/V9y3YAmubq9tkRFQbnB/1xt7L6e+PhxCN+a4WRINV9w7RgX0utj8ZkAA1yYWGdAT1TdOCZx7/b64j0/lC95+LSGrwoMCdJk/FcMyt6Roz934f8lr0nzMOA2edWfhFz9uIaI5VVGVgvcySP/aQJHTSQW9C+2YtTLaNb6TjnzqSAFydE7cDybK1CkRdPH4oRbtEtcBJfCm7VgsWO3Ztbm46S+m/d+ZOkS2KLWu5NLuzbqam25U3M3E49QhFbjiMJmdqVie0JxIXyjmTe7l+PlmZLoRf11Z+kSemoT38990RhpeS+vV818iOcnwIWStwY65dmhIVdD1nIxkUYF7U63PIPYbg+UYUgbAmQs+JDNHw7OpBrUXumo+Rs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dbbabbb-932d-4f98-0a8f-08d776dee588
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 04:19:59.9251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cYmgN8rJx8CJByjLVkXFrI+MWeAw4BojHwvsyL9l3i6TN0ApM70aIoaEW63GNIrjRfxURP8BIGBWYJuH9cAGHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_202007_164857_2EE909E3 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-02 5:12 AM, Shawn Guo wrote:
> On Thu, Oct 31, 2019 at 11:50:22PM +0200, Leonard Crestez wrote:
>> These clocks are only modified as part of DRAM frequency switches during
>> which DRAM itself is briefly inaccessible. The switch is performed with
>> a SMC call to by TF-A which runs from a SRAM area; upon returning to
>> linux several clocks bits are modified and we need to update them.
>>
>> For rate bits an easy solution is to just mark with
>> CLK_GET_RATE_NOCACHE so that new rates are always read back from
>> registers.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/clk/imx/clk-imx8mm.c | 11 +++++++++--
>>   drivers/clk/imx/clk-imx8mn.c | 12 ++++++++++--
>>   drivers/clk/imx/clk-imx8mq.c | 15 +++++++++++----
>>   3 files changed, 30 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
>> index 030b15d7c0ce..c58f988191a5 100644
>> --- a/drivers/clk/imx/clk-imx8mm.c
>> +++ b/drivers/clk/imx/clk-imx8mm.c
>> @@ -440,13 +440,20 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
>>   
>>   	/* IPG */
>>   	clks[IMX8MM_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
>>   	clks[IMX8MM_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
>>   
>> +	/*
>> +	 * DRAM clocks are manipulated from TF-A outside clock framework.
>> +	 * Mark with GET_RATE_NOCACHE to always read div value from hardware
>> +	 */
>> +	clks[IMX8MM_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000,
>> +			CLK_GET_RATE_NOCACHE);
>> +	clks[IMX8MM_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mm_dram_apb_sels, base + 0xa080,
>> +			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
>> +
> 
> I think we prefer to ignore over-80-column warnings for i.MX clock
> drivers, because doing that improve the readability of code.

You're replying to an old version, v7 doesn't have this issue:

* https://patchwork.kernel.org/patch/11258501/
* https://patchwork.kernel.org/patch/11258505/

It also has additional acks from Abel and Stephen and the devfreq parts 
of this series have already been accepted.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
