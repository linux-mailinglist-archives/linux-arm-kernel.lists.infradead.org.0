Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2B050A07
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 13:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jda3+M2bNZ1YxYEH0Xx6rRvdWRq5PjT4y4aTOHgocoo=; b=XZv9dWl9zq7fJ0
	mz26JEE97XsxJAAoyrPw852zRyPALQh6EMS6YVrkHf1PyXK4ZIJ/n0+XFT/K2HCTISk3ik9Awrtux
	pvshxjTJvVSfIlWbKtagtppa5R0c3Zncl5XLRniGAGgMVqr80YjO6oepGb6ixlRA6rEXAm7POgvsN
	3PyKprOXW2Xn45H+YKHUs4NYKov/i05k0XlAywvP0Zbwq8HtTbDAsWrzzvMKk4zPUZZMvoWfGakg6
	UacVGYLnQGhSqjxZKFbbFu1wEX42wHBo8l9iAzGhSR2PuW+EQ/rQuXjHYZ7IET+5+LKUUNS3tZijv
	8X4VW+QXKXZBGBUcx9og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfNQ4-0004Fm-9S; Mon, 24 Jun 2019 11:45:56 +0000
Received: from mail-eopbgr10046.outbound.protection.outlook.com ([40.107.1.46]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfNPr-0004Eo-02
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 11:45:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uiBvnSVc9iVgRblkUv8oNtcSdjLdouP7sgHwUqCFq7o=;
 b=arVbRxRa6ubZBOyzBdCqvO02hD6jW7u37f6Y47AvFOzDWCtTQlZZ/IOzCvp9OESrYt/Vg93zdH/e2bnTXCuwKgO/9wm0Qcm1iYkaN6ekaBPBYCbTvyoYOxKDNhTaN6wSlBUCOMU/7PPacgzk45e2dpGn4C09FbCp4LUDKyNy/uQ=
Received: from VI1PR04MB4880.eurprd04.prod.outlook.com (20.177.49.153) by
 VI1PR04MB5309.eurprd04.prod.outlook.com (20.177.52.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Mon, 24 Jun 2019 11:45:37 +0000
Received: from VI1PR04MB4880.eurprd04.prod.outlook.com
 ([fe80::cdda:87e3:ea91:f78b]) by VI1PR04MB4880.eurprd04.prod.outlook.com
 ([fe80::cdda:87e3:ea91:f78b%7]) with mapi id 15.20.2008.014; Mon, 24 Jun 2019
 11:45:37 +0000
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: RE: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch
 port DT node
Thread-Topic: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch
 port DT node
Thread-Index: AQHVKEeAhac7DL/j0Uy9JhFYnIZAmKamUhMAgARcasA=
Date: Mon, 24 Jun 2019 11:45:37 +0000
Message-ID: <VI1PR04MB4880D8F90BBCD30BF8A69C9696E00@VI1PR04MB4880.eurprd04.prod.outlook.com>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
 <1561131532-14860-5-git-send-email-claudiu.manoil@nxp.com>
 <20190621164940.GL31306@lunn.ch>
In-Reply-To: <20190621164940.GL31306@lunn.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=claudiu.manoil@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c951484-610a-4101-b379-08d6f89979a2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5309; 
x-ms-traffictypediagnostic: VI1PR04MB5309:
x-microsoft-antispam-prvs: <VI1PR04MB530911634F859E9A9C58FF4A96E00@VI1PR04MB5309.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(366004)(396003)(346002)(376002)(13464003)(199004)(189003)(51914003)(11346002)(54906003)(44832011)(33656002)(305945005)(6116002)(3846002)(6916009)(66066001)(26005)(52536014)(74316002)(4326008)(2906002)(478600001)(68736007)(7736002)(229853002)(446003)(316002)(486006)(7696005)(186003)(102836004)(5660300002)(14454004)(6246003)(71200400001)(53936002)(66946007)(71190400001)(8676002)(256004)(81156014)(73956011)(55016002)(76176011)(7416002)(81166006)(9686003)(76116006)(99286004)(6506007)(25786009)(8936002)(66476007)(66446008)(6436002)(64756008)(476003)(86362001)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5309;
 H:VI1PR04MB4880.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mu4KR8QYccwr0U/FAI5cMaBeiV0dE9dONoHkq1xji6xGt8JCRT7n1u7/yyNhi+DoWuwsYtr+VJj9jCNEOlIYP/8V4raHyjZZ10M4GupxrPhIiC9LqInKf/4i/t9AhXokExaXASdvkuflKzoSR8OdzW+grJ+H4VKVNKT7Bw+j6SyTYIRQ79tcMWWcwmcdnokMp+qs5JLGbGIccPHZw9psA4NsGt4PW+NWF3EXh3uCrP09YX31kk/qiZ8ITT6l8ELc8FngVHTgGoKZ6rrGHu05m7kJ6m5gifV1aBXByWMelUjB+1ARHIYpbagds9aqtTTtSp+NasjCyBQFzqHPXGy0Q0GqDMWnBuzMqTbbcRVVxcdcWWpBXG3H8YzIqViIuFYukq5D9AEJ5NAVRtMDtX8wtxmV85c7TA6Fzdq4dgGo/M8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c951484-610a-4101-b379-08d6f89979a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 11:45:37.2295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.manoil@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5309
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_044543_130603_6F8B6887 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Allan Nielsen <Allan.Nielsen@microsemi.com>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

>-----Original Message-----
>From: Andrew Lunn <andrew@lunn.ch>
>Sent: Friday, June 21, 2019 7:50 PM
>To: Claudiu Manoil <claudiu.manoil@nxp.com>
>Cc: David S . Miller <davem@davemloft.net>; devicetree@vger.kernel.org;
>Alexandre Belloni <alexandre.belloni@bootlin.com>; netdev@vger.kernel.org;
>Alexandru Marginean <alexandru.marginean@nxp.com>; linux-
>kernel@vger.kernel.org; UNGLinuxDriver@microchip.com; Allan Nielsen
><Allan.Nielsen@microsemi.com>; Rob Herring <robh+dt@kernel.org>; linux-
>arm-kernel@lists.infradead.org
>Subject: Re: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch port
>DT node
>
>On Fri, Jun 21, 2019 at 06:38:50PM +0300, Claudiu Manoil wrote:
>> The switch device features 6 ports, 4 with external links
>> and 2 internally facing to the ls1028a SoC and connected via
>> fixed links to 2 internal enetc ethernet controller ports.
>
>Hi Claudiu
>
>> +			switch@0,5 {
>> +				compatible = "mscc,felix-switch";
>> +				reg = <0x000500 0 0 0 0>;
>> +
>> +				ethernet-ports {
>> +					#address-cells = <1>;
>> +					#size-cells = <0>;
>> +
>> +					/* external ports */
>> +					switch_port0: port@0 {
>> +						reg = <0>;
>> +					};
>> +					switch_port1: port@1 {
>> +						reg = <1>;
>> +					};
>> +					switch_port2: port@2 {
>> +						reg = <2>;
>> +					};
>> +					switch_port3: port@3 {
>> +						reg = <3>;
>> +					};
>> +					/* internal to-cpu ports */
>> +					port@4 {
>> +						reg = <4>;
>> +						fixed-link {
>> +							speed = <1000>;
>> +							full-duplex;
>> +						};
>> +					};
>> +					port@5 {
>> +						reg = <5>;
>> +						fixed-link {
>> +							speed = <1000>;
>> +							full-duplex;
>> +						};
>> +					};
>> +				};
>> +			};
>
>This sounds like a DSA setup, where you have SoC ports connected to
>the switch. With DSA, the CPU ports of the switch are special. We
>don't create netdev's for them, the binding explicitly list which SoC
>interface they are bound to, etc.
>
>What model are you using here? I'm just trying to understand the setup
>to ensure it is consistent with the swichdev model.
>

Yeah, there are 2 ethernet controller ports (managed by the enetc driver) 
connected inside the SoC via SGMII links to 2 of the switch ports, one of
these switch ports can be configured as CPU port (with follow-up patches).

This configuration may look prettier on DSA, but the main restriction here
is that the entire functionality is provided by the ocelot driver which is a
switchdev driver.  I don't think it would be a good idea to copy-paste code
from ocelot to a separate dsa driver.

Thanks for the review.
Claudiu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
