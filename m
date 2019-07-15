Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0738686D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 12:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0XCtLVtZaUzCuwKUM1Ewn/aNWBHkLOEsJCm+j4onImk=; b=ZLtbbjFJNQ1U/Y
	WzezaEoqvRrMP/Vni7GXZur5nm5PEpf25Xr/kra0wAorpKNOm8GCNE/WxECk7FayzOewNdYcyPmLz
	H96goxPeGdqblKfH5HJIf2kCKQscXaNYDAsMaae5HvtG/dYES6X84IcP6H94AtsG2WLMIAK/QCbAQ
	GP7HWkTt/hq0ltNpYIvMDLN7B/HW1oDtAOGIk6yNJ7KOcE8OMbaXjcwdRRldhHgyKX6OjRZGxMb1H
	o/gP2yP1X1DsYfKF+1vB8EQ0lBhKkbYe5a2q/i3WsILPziEZ+yH3YJJECd3HPvbemy/+syHXoZE4a
	TYzz2S2h5thKpM/FYIvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmxw7-0005FP-BA; Mon, 15 Jul 2019 10:10:23 +0000
Received: from mail-eopbgr140077.outbound.protection.outlook.com
 ([40.107.14.77] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmxvt-0005En-PL
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 10:10:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QizfqdUWTlFVbkPi4YC6cXBScDE6hbAtonTMz6PsFgxGqC9dH9vwIc9Lf6KdsHVVL1Vf64aPTOlusciyGigCFzhaO5JzDbHtV9icg8/JJgvxxD+cF4F1HoflST8ZL7KWTjtdGmMJ5mFF8sZz0RjWglTAsgvmPTM9mWdVV2cR0em/ANvBgim1ZIj3V7fPiItULtCqM+MPahZKuQ6/aXD4XDqN10HlxADqGVo0i0AEuJKf4svG1r51FciZapyXclMPOU5Hfw+78Meti548Jl6eYQ31Ko/DHFCiVGOBZPclhXTgWRxo3c26fzTE6+UNM4Vi3CnfvCa/4m8SXuq0bWNk9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j7KECzzuyvjcIXRCXV1nmTw+D+j/QlfhVsSEjV6lGJA=;
 b=g8tJy8Iwj4N9dkXwA7i78igBPGqpbjXULcZgKOedPVYqjX0YKWsUFyJ386uH+qmQxUGPADHWAbSaVG6vFJDY9WejvFmnCEEhxQojg9bF6SB57cPriJqDxCXRxe1IahXditNjm0NxJE45KjSS863Hqxqu3ubGEkw3SR/EIkjYvaFJpu8oXzDruUyWlswpihQIkwghiE+mCbJpw3jKHAdMAenKSJFKxLhbpbNN/yExT9Qh23j/xIGaGqAAQUaCFQUsFtGQuA8arwi25a4zSTfFwvA8O39Dc3Nl9/fjo1JrcAX2ZyeTsZZ1hTUMkWs2wLOoQdNYixrmqPkVjVG/0tCgPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j7KECzzuyvjcIXRCXV1nmTw+D+j/QlfhVsSEjV6lGJA=;
 b=lJZIlXky83CJIOU5eAy5+mbnPt5YC8RxmEa52oZYGWyzrRFHGBGoP9VEsMr+ibBO9SGPJHza08ZwbVWMTZg9SktMxzx4C/VLl89hvCsS4htkHdmtKGVpLXVZS0Kf+SGNlOwWiL0TX+UZ47JFe6K/Cr4NdvZAAUgMwdkQpeBwBwY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4356.eurprd04.prod.outlook.com (52.134.93.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 15 Jul 2019 10:10:06 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2052.020; Mon, 15 Jul 2019
 10:10:06 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH v3 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH v3 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVOvV5QOhgWrlDMUC6J9nMDn5GdA==
Date: Mon, 15 Jul 2019 10:10:06 +0000
Message-ID: <1563184103-8493-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0024.apcprd03.prod.outlook.com
 (2603:1096:203:2e::36) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f00829b-6c70-4bc9-d54e-08d7090c9c48
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4356; 
x-ms-traffictypediagnostic: AM0PR04MB4356:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB435699A7A6B4B417FCE4E7D888CF0@AM0PR04MB4356.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(366004)(199004)(189003)(66066001)(68736007)(2501003)(7736002)(305945005)(110136005)(316002)(99286004)(54906003)(50226002)(8936002)(52116002)(386003)(44832011)(8676002)(186003)(102836004)(2616005)(26005)(14454004)(486006)(66446008)(64756008)(66556008)(66476007)(66946007)(81156014)(81166006)(6306002)(25786009)(2906002)(3846002)(6116002)(2201001)(15650500001)(6486002)(478600001)(86362001)(6436002)(14444005)(966005)(256004)(6506007)(5660300002)(71190400001)(476003)(71200400001)(36756003)(6512007)(53936002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4356;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: R/lZlKCHXeVY4dvyZsLM+SKMP9+wuxukCU8v19eYfFc0MIFjaUPWxCZl9kbVfvWVPpj7lU39ZxAgLJVei01hQ/dPgkhbEtoAmS6hxwcMoDjQExXPZ3Pr9mMwMD32k6sCsvDdji1kibLpHTCft4QTSuW2G3R7QD5sQCdPsOamHsAnlSMOqeF/xyNU0nLexnOVEHix63jh8u81JIg5sCZoIUYNUh3dfEuXE0dqokIf7c5CxfiunCTDUaUi93LhQI/ldQKR6ChSqcD1c1nfKN4/oQz+6MwpJdsi5AyicxjwlnLLjNBMAbZKBcZ7AkXtj4boLvvXggrcRxWdWynExc7vgleHuJucsAafUj/c5HDx5hEAjIReII4iaNidqmXwlmQz0aSN/ni9JhVzFUxzbaeZRAQ/1n9FeQ/8tJ8yJv14HpY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f00829b-6c70-4bc9-d54e-08d7090c9c48
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 10:10:06.5089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4356
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_031009_939342_ED8056BB 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V3:
Drop interrupt
Introduce transports for mem/reg usage
Add chan-id for mem usage
Convert to yaml format
 
V2:
This is a modified version from Andre Przywara's patch series
https://lore.kernel.org/patchwork/cover/812997/.
The modification are mostly:
Introduce arm,num-chans
Introduce arm_smccc_mbox_cmd
txdone_poll and txdone_irq are both set to false
arm,func-ids are kept, but as an optional property.
Rewords SCPI to SCMI, because I am trying SCMI over SMC, not SCPI.
Introduce interrupts notification.

[1] is a draft implementation of i.MX8MM SCMI ATF implementation that
use smc as mailbox, power/clk is included, but only part of clk has been
implemented to work with hardware, power domain only supports get name
for now.

The traditional Linux mailbox mechanism uses some kind of dedicated hardware
IP to signal a condition to some other processing unit, typically a dedicated
management processor.
This mailbox feature is used for instance by the SCMI protocol to signal a
request for some action to be taken by the management processor.
However some SoCs does not have a dedicated management core to provide
those services. In order to service TEE and to avoid linux shutdown
power and clock that used by TEE, need let firmware to handle power
and clock, the firmware here is ARM Trusted Firmware that could also
run SCMI service.

The existing SCMI implementation uses a rather flexible shared memory
region to communicate commands and their parameters, it still requires a
mailbox to actually trigger the action.

This patch series provides a Linux mailbox compatible service which uses
smc calls to invoke firmware code, for instance taking care of SCMI requests.
The actual requests are still communicated using the standard SCMI way of
shared memory regions, but a dedicated mailbox hardware IP can be replaced via
this new driver.

This simple driver uses the architected SMC calling convention to trigger
firmware services, also allows for using "HVC" calls to call into hypervisors
or firmware layers running in the EL2 exception level.

Patch 1 contains the device tree binding documentation, patch 2 introduces
the actual mailbox driver.

Please note that this driver just provides a generic mailbox mechanism,
It could support synchronous TX/RX, or synchronous TX with asynchronous
RX. And while providing SCMI services was the reason for this exercise,
this driver is in no way bound to this use case, but can be used generically
where the OS wants to signal a mailbox condition to firmware or a
hypervisor.
Also the driver is in no way meant to replace any existing firmware
interface, but actually to complement existing interfaces.

[1] https://github.com/MrVan/arm-trusted-firmware/tree/scmi

Peng Fan (2):
  dt-bindings: mailbox: add binding doc for the ARM SMC/HVC mailbox
  mailbox: introduce ARM SMC based mailbox

 .../devicetree/bindings/mailbox/arm-smc.yaml       | 124 ++++++++++++
 drivers/mailbox/Kconfig                            |   7 +
 drivers/mailbox/Makefile                           |   2 +
 drivers/mailbox/arm-smc-mailbox.c                  | 215 +++++++++++++++++++++
 4 files changed, 348 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
 create mode 100644 drivers/mailbox/arm-smc-mailbox.c

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
