Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C633A10D116
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 06:34:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=nVFMwqCTwfZ1jFNCBiTO1FYp0ilB4c3kvxSTAOy2pPs=; b=kItkD0ILt842AT
	kIB7N49tvdnTjl4H3chvLIePUHHIP5lJVsVaoXKciNErqzqK6riKqB5B0IrNZmQr5B5Gh9u8koknF
	ZYoXbT0orYqyV9lyAKmA72Bmoou9kpKz/IxshVLETz1CvrrtAGo5pyrOFl2MAq6fMhR3NMdTxEypt
	Q1+yP02WDj6f4KNyo+vlMCKwRgefnEbOzDqMMORNol1gW95MBSi3TDCTwf/k/pK0ItupYQ+9S9n7m
	7lQ/HqNBGlnFfuW+vkNy/398jaKNAUqyeS2HvJnmE8/TPWXPBUy4PxcwUT7If1ZlibmeExpdkxWVf
	Wj7iYOwRXw8CgSn+XV9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaYuy-00040n-Hp; Fri, 29 Nov 2019 05:34:12 +0000
Received: from mail-eopbgr130089.outbound.protection.outlook.com
 ([40.107.13.89] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaYuo-000401-9W
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 05:34:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RcMMtLTIMc6Li6DKdxkVfIiSwvEV6tB2hUxj3Ox+oZ37EfXL/BjextTFQwVITfVJdeeWLu/0Ce5lqDq6qiLPoAeDO+yXKXgxAqUnZJlpx3p2/6Bvq3UKxARUmcjvuSQcf81l2NLDqT6aakR0DLuZw5y8c21B+VuoZLZbL8S9pg7htddRex4svjGrqdayXmwVPb8cSaDJ1Hr6cU6PM+JLNWMOWguM2mlrbWa3lYXZfn6fsfq597G4Os5YA5+2XlXWYJPjVbAiCJDPVw3bpfE8YYFGDVVklb5FpSQncVMg4mDUja8iFTV60MCQcwJU0tPxgUc12oz61eBd/GNPUR5YvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dxbD+1226YR2VeViQqTfgbStEMJKdquYiojmwBwHWUk=;
 b=CvvDiI76n/PNmJWtZEctDRbV0BCDQSYE5HMUn9xqkBaNzwJ/GZ22aZoUKD5cpYvNWeB8rhgYKe2mEFhGltsPRSEnSt9E8ix71e892XWieBa3sPDHuerkmc5/5Lw19lJqszrMSr8Bsi9gmEVD1tTiSwxHA6OQHQcejAEIwHGOIJV4bm5y9hwbwf3/Gjad2cj8yxI+CYG4jz3rCd5Hb9aAaSU/W2E1M/T5L+WSibtxx/G7dE/atM3B/1yyG+Gt+xSQ9Fl0U+tlw9heM1jtmxGavLyI7IHH4jZqh5Oi2tVld4y0Dxt1nMWOzOnY5xIJJe94eNNiZQpTBQNpyVJ2FGVHrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dxbD+1226YR2VeViQqTfgbStEMJKdquYiojmwBwHWUk=;
 b=bZFp7oMDerOAkB+zYkL179kVBtEXpV5yG0iKyboiK/+3/pXSe/2g8nu6vZKrVHkSurjMS+JYjyBp74YTp0RA2kpxTqerGMr3+N9w7L7gYZqkITQh5I4vWQHSkzgCnpCBYK5PMP9Z9aLz7wm5apxqAWkzWcpqfvi4bz8x9iomiCc=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6221.eurprd04.prod.outlook.com (20.179.25.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.21; Fri, 29 Nov 2019 05:33:55 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2495.014; Fri, 29 Nov 2019
 05:33:55 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Adam Ford <aford173@gmail.com>, Rob Herring <robh+dt@kernel.org>, Shawn
 Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v7 5/5] arm64: dts: imx8m: Add ddr controller nodes
Thread-Topic: [PATCH v7 5/5] arm64: dts: imx8m: Add ddr controller nodes
Thread-Index: AQHVoX4qUUvWMnVlkEqCY7YW+VjVzQ==
Date: Fri, 29 Nov 2019 05:33:55 +0000
Message-ID: <VI1PR04MB702390E22E7273310BE47747EE460@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <23e46c12c98947315229c20dea6784ad40d294c4.1574458460.git.leonard.crestez@nxp.com>
 <CAHCN7xK_w9m7sZOJtGFVtpeu1BHN_H6eyeYCOgZQS67t1SvmRQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 650fd6cb-af99-4959-bcfa-08d7748db9d9
x-ms-traffictypediagnostic: VI1PR04MB6221:|VI1PR04MB6221:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6221AEBD7118D69D12995FBDEE460@VI1PR04MB6221.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0236114672
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(366004)(346002)(396003)(199004)(189003)(3846002)(6116002)(7696005)(4326008)(2906002)(8936002)(86362001)(81166006)(81156014)(8676002)(14454004)(55016002)(9686003)(4001150100001)(6436002)(6246003)(186003)(14444005)(256004)(102836004)(26005)(53546011)(6506007)(76176011)(25786009)(54906003)(110136005)(66446008)(64756008)(66556008)(66476007)(74316002)(66066001)(316002)(66946007)(7416002)(76116006)(91956017)(99286004)(446003)(305945005)(7736002)(5660300002)(44832011)(478600001)(229853002)(52536014)(71190400001)(71200400001)(33656002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6221;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +pJgowwOVjh9zjulv1XQkAYe3hfOvoV2H+EvqfI910Cnfr+RxjyRjlGtL0t9vKhqWa5INw9bx+SsC1cjUliXpPGwEUFcqDBV33XFDuGCFFkR0xViO+KMLq5GCOzSkNvt6fCfVam8qT/eDuMlrTehWzcjt9yRaLrhVnAkpGEPfLcihbnEhb86o+CNIRDzJVdvhCbyJm7X3f8igDdRMDu1OkcfQ2hThIuWJRwMruAnSlvHRjOvThwGSxCLPNWO/zUYz0XQoe9Ho0ghsultFJg0sbj+ONoJ7LBFY7qSpPSeshgQBz7JiYBF5DRxmGTvdin76+tvkpynqQXrXSYMKa7kYDxBbG9bkzKHk2pGfv4CxdUgb7tcp1HocvNT6s/HJCZfNHKLEqDqkGyzZ7IH3cpezMiHJOVLoPFcHjHW89h7nOcclJp3xiIfE2gIb+4aRfB1
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 650fd6cb-af99-4959-bcfa-08d7748db9d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2019 05:33:55.2056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Eup+OmXlpjWhVoCDx0dpP9irOXPbmgO9Z40jDkqENdNMwx9WQmPagNBMMsoD7UamyhEoo/cznOv+oXbHRyszyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6221
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_213402_471340_8BF1C5A3 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>, devicetree <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-28 4:43 PM, Adam Ford wrote:
> On Fri, Nov 22, 2019 at 3:46 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>>
>> This is used by the imx-ddrc devfreq driver to implement dynamic
>> frequency scaling of DRAM.
>>
>> Support for proactive scaling via interconnect will come later. The
>> high-performance bus masters which need that (display, vpu, gpu) are
>> mostly not yet enabled in upstream anyway.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   arch/arm64/boot/dts/freescale/imx8mm-evk.dts  | 18 ++++++++++++++
>>   arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 10 ++++++++
>>   .../boot/dts/freescale/imx8mn-ddr4-evk.dts    | 18 ++++++++++++++
>>   arch/arm64/boot/dts/freescale/imx8mn.dtsi     | 10 ++++++++
>>   arch/arm64/boot/dts/freescale/imx8mq-evk.dts  | 24 +++++++++++++++++++
>>   arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 10 ++++++++
>>   6 files changed, 90 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
>> index 28ab17a277bb..ecf0d385c164 100644
>> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
>> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
>> @@ -75,10 +75,28 @@
>>
>>   &A53_0 {
>>          cpu-supply = <&buck2_reg>;
>>   };
>>
>> +&ddrc {
>> +       operating-points-v2 = <&ddrc_opp_table>;
>> +
>> +       ddrc_opp_table: opp-table {
>> +               compatible = "operating-points-v2";
>> +
>> +               opp-25M {
>> +                       opp-hz = /bits/ 64 <25000000>;
>> +               };
>> +               opp-100M {
>> +                       opp-hz = /bits/ 64 <100000000>;
>> +               };
>> +               opp-750M {
>> +                       opp-hz = /bits/ 64 <750000000>;
>> +               };
>> +       };
>> +};
> 
> The SoC's device tree has the opp for the SoC.  Since the SoC also has
> the DDR controller, why not put the opp for the DDR into the SoC's
> device tree set for its maximum rates.  If the individual boards need
> to change them, they can do it on a case-by-case basis.
> 
> As more and more people add devices based on imx8m q/m/n, I can
> imaging a lot of these entries will be duplicated if they base their
> design on the reference evk for their respective SoC.

The OPPs can vary from board to board for the same SoC. For example ddr4 
and lpddr4 variants of the NXP evk boards have different setpoints.

If a default set was included in soc dtsi then some boards would end up 
having to use /delete-node/ and I wanted to avoid that. Last I check 
that feature wasn't even officially documented for dtc?

Perhaps this could be revisited if it ends up being duplicated on many 
boards.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
