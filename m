Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E469669C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Rb7KtVkOwxh+2vUYSdKw6FZKELH2EqnRuwxHqYWrFBM=; b=oDuj9NzEWmq8cT
	UHrAfOVfk7IJWo5KTUmNfrbiKK22x6p2kZvwTVOjR10nKrDJuNxVVeTgcqJGZX8jWlNnKchXFUp8s
	MSMab15/w2CYH6wsXbKurSK7bEVnf35qno+cfAq4QUHwZRno8YDjaEnLeyt+f30gU3K4zYlBm3Re/
	LoeHnvE5MYjQOMLFyBbg/o48A7XZ464D1T6qJaGSWbTbzgmoPGBDKSqddQJgGjIdp8AY7cYpTJX2q
	Ukvl14irzpR1uWjhqMRYak8qFzQNuWPwzxUD1+EnTiJJuAFpnQA6aNBghZPUZrribHyU/rS0vZgRY
	i1PaMexIgzDvXBynukZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07AD-0002BB-38; Tue, 20 Aug 2019 16:39:17 +0000
Received: from mail-eopbgr140055.outbound.protection.outlook.com
 ([40.107.14.55] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i079a-0001uW-Js
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:38:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IlDnMAEYIrZ5xE/XtdrJoaRHSSnJ2SKVEQTZ6adgeMh0mjq73VRqkI8U8y4UMNlN5Qa20PXONB+9tcZAlfFq9AYQjMPswm/ZbMHkryWqNQNTCNaHctKbeo/pz5j0YRw55ArFjzkE1g1L2UO76XRN6oYYeSIgNPyPgzzqlWgypxS4PCZUWbNdzLGoLvdHKZGRqQfYgZ5v9EcfB1YN8P1EiUyv/az2ManckBDjbaSCCjEBKoVV+r8t7TFlfzWiJ9Oyu12dKq7LHGl/Zf0q0D6ogHgXptGFBhlsQ6PjXg1UW50RuPAhi/zexRWtHEOXQ4Mghcwy88YvZgBeEiFvDDmMqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SwDseLBQbgymJh8JBi0siJb/NcMG3hsOIt4+G/OlxqI=;
 b=KNZqvx13VZNdeRDsaiHDxNsFGeMMFDfLKmelB01yrX9PDylhwjX7A/FVHP5Kjhl1P1vs9MTk8aFtBDAkeLY+t5Fv4UqIVpnLE1Hd1nZIMqcV9JC/2gQAGHs5OpghI0AyWdLntVEYLry/oIhzuEDXg9S+zIOOgtwptqbs3nk5rwy0xjZHUe6V3LK08Dw9KF3yIDyml3xh3ssuY2KRAXL6HWTxQkTgwovUEA29VMUKrT+u3IaNXNNY93Qek8KNjxev7AmeFevyYTZMAX/CvvMv56vUOwP97zI8tqJvJO/YWw+WzAOwHErdmXKRJv4IATtsGXwHZyIBP08u8RoRsFRzlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SwDseLBQbgymJh8JBi0siJb/NcMG3hsOIt4+G/OlxqI=;
 b=OVqeuQ1/x7cbBAhqEfvz3a/7iVtO/fX9Amk8EgnVCfik+ipchlxugkrDzg+0EoArG5+XOeYelcLzVAoYslTSr8WN82El1L1AMlV1BLLxm0tf1HRrFPHxztBbiL5dSy4D5jaLJf42In7UJlHWD5dEwmP+jDqKN01AnGi7Y94O11E=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3343.eurprd04.prod.outlook.com (52.134.8.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 16:38:34 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 16:38:34 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v2 3/6] arm64: dts: fsl: Add device tree for S32V234-EVB
Thread-Topic: [PATCH v2 3/6] arm64: dts: fsl: Add device tree for S32V234-EVB
Thread-Index: AQHVV3W1bpUQayLw/Uqx7+IPeeYhYQ==
Date: Tue, 20 Aug 2019 16:38:34 +0000
Message-ID: <VI1PR0402MB28634C3AEDC11B2CE0C4DE43DFAB0@VI1PR0402MB2863.eurprd04.prod.outlook.com>
References: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
 <20190809112853.15846-4-stefan-gabriel.mirea@nxp.com>
 <20190819085816.GI5999@X250>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d306e8dd-951c-4239-655f-08d7258cd837
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3343; 
x-ms-traffictypediagnostic: VI1PR0402MB3343:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB334391BD1F52339FC466413ADFAB0@VI1PR0402MB3343.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(39860400002)(346002)(366004)(189003)(199004)(71200400001)(71190400001)(9686003)(53936002)(6436002)(33656002)(55016002)(14444005)(256004)(6916009)(5660300002)(229853002)(6246003)(99286004)(25786009)(53546011)(6506007)(52536014)(4326008)(102836004)(54906003)(316002)(14454004)(7696005)(486006)(26005)(476003)(446003)(76176011)(2906002)(7416002)(186003)(8936002)(74316002)(81166006)(81156014)(478600001)(3846002)(8676002)(66066001)(86362001)(76116006)(91956017)(66946007)(6116002)(64756008)(66556008)(66476007)(66446008)(7736002)(305945005)(21314003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3343;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nCEBCZgNpiT65rhk1eUhQLJgLtbjBWs/mls/XgrTlNu16bZWX+iW5yKHpo3NxtsmNkxi985txmqCJXMCIWF35fUfgMpI2UmBoGZiSJBL4S/SsZmxCAlHum1euvxAe07dCDvegIr4/1wXHo6CTm6zH3zUTMGg4EFUxeWBzxR66Zu8NJWlq2YIqpVeW7GnZuAIBcZ7gP71r843PmaM2WLVqmsrUiEAWKie3ysXN3ZaPluogNyf3jIRyq8Ni9k1WHCI3/Rcc+DRCSrv58j3Db+xIIUR/jUsOaIAH0SBou+AhOsPLrXmmMOpDZ3B3PQMoIeHvQgaksjJBSRQgkYc2ldv9asE39NHggZXHmIoksxQAgyZxmJBISBZsFYmUzxM7rWWOLI1N7iJyXWzPDDFELhznTxJ55jeTe6bpafSeTEFEpk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d306e8dd-951c-4239-655f-08d7258cd837
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 16:38:34.8483 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n3g5yRMCbe+81eA6+X0zvShnC83cGaCn0lHQKOA1uSoqWEVinCwd3Clur/OORft9A6uOhMvLdwJ6rKIPDykYiDaSA1g2FBIp+oeSl1Oh/VM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3343
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_093838_660594_ED28A783 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Dan Nica <dan.nica@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Shawn,

Thank you for your suggestions!

On 8/19/2019 11:58 AM, Shawn Guo wrote:
> On Fri, Aug 09, 2019 at 11:29:12AM +0000, Stefan-gabriel Mirea wrote:
>>  .../boot/dts/freescale/fsl-s32v234-evb.dts    |  24 ++++
> 
> The 'fsl-' prefix can be saved here, so that we can distinguish three
> families by starting string: imx??? for i.MX, fsl-??? for LayerScape,
> and s32??? for S32.

All right, I will remove the prefixes.

>> +     model = "Freescale S32V234";
> 
> The 'model' is usually used in board level DTS to describe the board.

I will delete the 'model' property from fsl-s32v234.dtsi and add a
suitable one in fsl-s32v234-evb.dts.

>> +             };
> 
> Please have a newline between nodes.
> 
>> +             cpu1: cpu@1 {

I've got it.

>> +                             interrupts = <0 59 1>;
> 
> Please use GIC_SPI and IRQ_TYPE_xxx defines to make it more readable.

I will use GIC_SPI/GIC_PPI and IRQ_TYPE_xxx/GIC_CPU_MASK_xxx where
applicable.

>> +
>> +     timer {
>> +             compatible = "arm,armv8-timer";
>> +             interrupts = <1 13 0xf08>,
>> +                          <1 14 0xf08>,
>> +                          <1 11 0xf08>,
>> +                          <1 10 0xf08>;
>> +             /* clock-frequency might be modified by u-boot, depending on the
>> +              * chip version.
>> +              */
>> +             clock-frequency = <10000000>;
>> +     };
>> +
>> +     gic: interrupt-controller@7d001000 {
>> +             compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
>> +             #interrupt-cells = <3>;
>> +             #address-cells = <0>;
>> +             interrupt-controller;
>> +             reg = <0 0x7d001000 0 0x1000>,
>> +                   <0 0x7d002000 0 0x2000>,
>> +                   <0 0x7d004000 0 0x2000>,
>> +                   <0 0x7d006000 0 0x2000>;
>> +             interrupts = <1 9 0xf04>;
>> +     };
> 
> We usually put these core platform devices prior to 'soc' node.

Sure, I will move the 'timer' and 'interrupt-controller' nodes right
before 'soc'.

Regards,
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
