Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3422BBF9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 03:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SpeflQNBuwPpMAoJwU+IG5AUcYEZQabDjwL7EqCVV7o=; b=NkBenE7ezJ9KjU
	hLHPh/qJXNYVE36slXzF29UCFsEFUg0b9bX5+mAsKbRrBalg8oVOiyE3mGg/PkTgVwSVizyxhkPqu
	ppk0YQ7m/X3JBHGJAtC6DfLnTqinkMPz4SQyfKZPxhWxNTurzESSMo79XIxxYTdbiYyXNvVmK8Kav
	2sn1vzoxwSOqy/vQYeWEPX9lNL3UVWFeDD9nGCFK0Tdmpsk7G0KQvTXAHPSezluhcux5jxodKNLo7
	mWFARId5lG8KPzbkeHcQ3OVtboyrFjEpp4ZUwdpagS0wAmzxwFndJADknNhum+xHot+Y/aq47eRwo
	LEt5ij1elF9zRBBL9hPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCZPG-0002AE-Au; Tue, 24 Sep 2019 01:14:18 +0000
Received: from mail-eopbgr30069.outbound.protection.outlook.com ([40.107.3.69]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCZP7-000294-4i
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 01:14:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ITWN+49fiFBMCYlP/Var00VkEwKnsB36P8rqITzzUa6Ee3S9ocf9+F4jZc9OV1x4XToOyfjNk3Sr0Shc1HBQlqLNqgv74FcoNM7ul/fiUnP+M2AAr8FZ/moPB/vw6ZL85SmHOMVUOvZkXrqVktonA0P2pQUoLJjrxN6BrO5D7lTsuwd/UuHoMnvqzEIeEQJKiv/0KSNV0hXK/T1Qfx3KZPonkGCGHD/cRTjMNz1j1z751EUZt429gfAcnmlN4Fp2F2D91lIfaRRtoimZQ9CF3U8T0+dU/KGQof71pdiuxTInLkudf+Er8XJyj50bB1muRrHaxI5h0zUqBAWyPFsq8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3WxFS7UmptMzToPNfknEYNcbfNJ7tnjtu+DHgKSayhs=;
 b=BiLjx71vkOnPFt3TtIR13iJBW+Hx/jfwAmI9v2GjjShvDQr1OvvNQpBlVN6hvw3BuFCYUkOLq4bvglIR2zhRnEO9xYX7VDqriMP8Kt2gKASiopa1FVae7pqfD6DkfC6J82qgfJ4QY4ct/Og23AzpXKF0L/piMgIqtF2rFKn+Po56oxV7sHNjF96bYTaLuEdcqhbT3CXv3POVdvoDtdx73RolJf6ukOl6uGHOqoBOw5wq7pGzV1EqmpowxrUP9kxIBeukyCAIrTJMZMbL/4FiadrGgxvuLUkRdWg07/+chrNLSbc+q6zCVtGgl50doa58kM9if/+5PlEB47GOoGb7qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3WxFS7UmptMzToPNfknEYNcbfNJ7tnjtu+DHgKSayhs=;
 b=H+W+m+QZ5AfmzXwLG7AyFJH/YerjN4c5mLasS9VYfO5EyC9FEUf5HCZfOC4UhozqyQ09AuP6wLEATLnvCf40Xy3VXv4LamovnFJRLEkjolgaqnnr9MYTk9XDPO068PbzmN1WDxBMqF+aVFxmcBwqUNAxfis5ca88UxSXGr2SJMc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5396.eurprd04.prod.outlook.com (20.178.113.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Tue, 24 Sep 2019 01:14:03 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 01:14:03 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH V8 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH V8 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVcnVaog47u9gB7k2DLgSr2MVvDA==
Date: Tue, 24 Sep 2019 01:14:03 +0000
Message-ID: <1569287538-10854-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0001.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::13) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f1bcfb6-8d04-4f4e-d1ee-08d7408c7d09
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5396; 
x-ms-traffictypediagnostic: AM0PR04MB5396:|AM0PR04MB5396:
x-ms-exchange-purlcount: 6
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB53969CD26D072B680FE2BDFC88840@AM0PR04MB5396.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(396003)(136003)(346002)(189003)(199004)(66066001)(6436002)(36756003)(478600001)(2201001)(316002)(14454004)(966005)(305945005)(66946007)(26005)(86362001)(71200400001)(66446008)(64756008)(66476007)(71190400001)(6116002)(3846002)(256004)(14444005)(99286004)(6306002)(386003)(66556008)(486006)(6512007)(186003)(6486002)(2501003)(6506007)(2906002)(4326008)(2616005)(102836004)(8676002)(54906003)(110136005)(8936002)(52116002)(81166006)(50226002)(5660300002)(81156014)(44832011)(15650500001)(7736002)(25786009)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5396;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xh2JBC9Y281Y7s7XRdyGRsl6hUkOqOAGbH7CKjbw6dOHzUNr/NouyInImhHtwyJ4t481d5g6R7d5w0gIWxWZ8gDTMAPcpVGqcr6EMYHEw0RF60jK4zUglIhksyRHJ7q3pwyvNDGf1yPKkH4/tFRY7HNGS1NDrNZTzvFX2t3SnuQdn0FTxw0NhDv36aB6/dhKDfPJSe9dgNGpTHzlq7oodxk9e1nmuNwfutcvq4ignVl3m7RIKsALWNAq/PFW9RrcXETPMKJwnbGbKtJo4yaMGN9bbJYhMNMQlrnh0bkA7XZgsjKQEUwuEBI588fe/MGYBS90zbGht3TypEAQCHBUpJz6CXvn/fRMzZj4ALJDfeiXax+XxGmVbK8rbcwqSWKIk5r6DexgsEmRraWklZzdIJv0B9K2m6Jzv316X7y38N4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f1bcfb6-8d04-4f4e-d1ee-08d7408c7d09
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 01:14:03.6707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pRuuc9kkInW4SMu47IoXg6PqcekHZGf30+BP69ogjzrTYJuTmYn/kCUM1LKNSRFAMWiDhLajck/yBoyDYwQA1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5396
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_181409_364459_40B2336A 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

V8:
Add missed arm-smccc-mbox.h

V7:
Typo fix
#mbox-cells changed to 0
Add a new header file arm-smccc-mbox.h
Use ARM_SMCCC_IS_64

Andre,
  The function_id is still kept in arm_smccc_mbox_cmd, because arm,func-id
property is optional, so clients could pass function_id to mbox driver.

V6:
Switch to per-channel a mbox controller
Drop arm,num-chans, transports, method
Add arm,hvc-mbox compatible
Fix smc/hvc args, drop client id and use correct type.
https://patchwork.kernel.org/cover/11146641/

V5:
yaml fix
https://patchwork.kernel.org/cover/11117741/

V4:
yaml fix for num-chans in patch 1/2.
https://patchwork.kernel.org/cover/11116521/

V3:
Drop interrupt
Introduce transports for mem/reg usage
Add chan-id for mem usage
Convert to yaml format
https://patchwork.kernel.org/cover/11043541/

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

 .../devicetree/bindings/mailbox/arm-smc.yaml       |  95 ++++++++++++
 drivers/mailbox/Kconfig                            |   7 +
 drivers/mailbox/Makefile                           |   2 +
 drivers/mailbox/arm-smc-mailbox.c                  | 168 +++++++++++++++++++++
 include/linux/mailbox/arm-smccc-mbox.h             |  22 +++
 5 files changed, 294 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
 create mode 100644 drivers/mailbox/arm-smc-mailbox.c
 create mode 100644 include/linux/mailbox/arm-smccc-mbox.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
