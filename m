Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2102ABD646
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 04:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tobkeleppsjbacJewfbbxr6BmT+5o0ixj7npjkjgORo=; b=GCFScSE1/G3lec
	0YKHREF5NZXAWnha57KWYsb/dXrgoliATqRUhPUmOn/U5cQwYsOgCHIe6o9TXTMhLjBAoX/y1uBkK
	eljqPlglFepvxysBjTcNMsgKu4rZa7JL403JobsSSGvsqTQV2evIxLoz7DxMPiImF74pb6ISGFab3
	JPPoWJw1KDyy6ljT5NCQEWGsqdmV/eB03iPhPGseKglDRpLguu72XUpfzQqkd8pGLZkNFjbB+ys4z
	IGFFEWBAm7x+WR1vhfOMas29Fu48DR/OfSwsGCDHt9L90fSRDSbI7IMCKVE8U81yunTmAvdBQ1qVH
	UOk2X8gQADNd8sZ0Yv5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCwk7-0007fK-CT; Wed, 25 Sep 2019 02:09:23 +0000
Received: from mail-eopbgr50056.outbound.protection.outlook.com ([40.107.5.56]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCwjt-0007ek-6I
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 02:09:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LXaT3d8drmG5EUG2JlDd/HipV7sAYaOAgANzSYW4QxUOl8QdJEell8l2/VbPzjIp8vD/J5zcFJKu/t18RQb3wuV+Z9KOlPZqrUKNQ6ld4h6jjV+4vkYim72IfejGzdqcJ0gJTfXghcWKxzMbOnD4YU1QoUO87HXM4hNqNlUIBd8XJjaK5DUFEBseTNJwAZ6mP00Q+SxwblWbSnGIXZWMT9HEoWc3Gk18rloiW+u7/aCuhAexbRGMWoEn1ZDzbsnovZdFxOsd9VK7do0+c54LQZAKwZVS0End55KI2vLiobPS++FA2YNcF12YtHbbGhYOtewwVTXeSsbWzpEJaWdP1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Jl2nPB2K53BgB4d/OGg7loTW2jHUGBeb7LcciZEA54=;
 b=O0JIK5hqFBr5wjXUWaUBlpJLlpLCsg7V8xKUGA5XX4Xd4P4YaWRrS7kh46gBVXIrWGV47BpYIWfiZ1uzCopg1jsZABAeZL14W7U2okyE6tCyj69Fgmfl22AfY2Pmz4+Y0RW19G0Q28GWIbGtPxKAznXLCzlYEyhzBdgdqSa/kpMVkUtbLpM/szYtCQeT+K7QQbwXv4qb3rGCfswBQjsjaaqe6gRlmmU7NXH3g7KP/Rid1AYN/AGVMDYlqlAkc3wkgcbY41QxaU2U5bcgquutaov6QE3K2vhkpsQ86izkqO6GHed8HZuzrz6gxdqYyTpu6vCLBwKHs0fkCsmj2eTbug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Jl2nPB2K53BgB4d/OGg7loTW2jHUGBeb7LcciZEA54=;
 b=hsyHzuzz90jWUi1inBxWuNI/q5PCZu2uvAn91MIcpJlLenNdocgHywbe36Wk88ilUs/jf+146m53NmPqVC+YgpdCGiv1XA6AXVVoRJii3uO46xDsGSvV0ddkV3368/4wpqw5OGUKGd3ieVlSl3NQoOImIEY3E9fHoI58MCCOYjc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4451.eurprd04.prod.outlook.com (52.135.149.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.25; Wed, 25 Sep 2019 02:09:04 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 02:09:04 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH V9 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH V9 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVc0Y0k9JRzjAEaUGpwXgSV3qtEQ==
Date: Wed, 25 Sep 2019 02:09:04 +0000
Message-ID: <1569377224-5755-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0041.apcprd03.prod.outlook.com
 (2603:1096:203:2f::29) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb77d6f4-8357-4347-1d5f-08d7415d5701
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB4451; 
x-ms-traffictypediagnostic: AM0PR04MB4451:|AM0PR04MB4451:
x-ms-exchange-purlcount: 6
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4451C12B10A15F53544C778088870@AM0PR04MB4451.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(189003)(199004)(8676002)(2501003)(66446008)(6116002)(66946007)(6512007)(6306002)(102836004)(6436002)(66476007)(64756008)(26005)(186003)(86362001)(44832011)(386003)(6506007)(54906003)(66556008)(486006)(316002)(8936002)(2616005)(476003)(25786009)(7736002)(256004)(15650500001)(14444005)(305945005)(99286004)(66066001)(14454004)(71200400001)(50226002)(81166006)(81156014)(110136005)(3846002)(478600001)(2906002)(52116002)(966005)(2201001)(36756003)(5660300002)(71190400001)(4326008)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4451;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2n/EmYWMd1Fz4UmkI03/MuYXTF3yqARHgFWgbZCqdTwfquJLOdY6hrCzj6yFOLzpC9Awxo76Q3dIb4+bNk2t10EdAyEtvq0iYhaH28nwkssud8A/T22acIbk7SiRz5BC1iI77lARgY6YqSF2Oezu281VjRBKtI+KRk+nlYnbmXw0Zpk7lmDMYYsOfLW2+4yj5bVOXwNihja92mrM3R5o7jJbdRoQCJwlovp+WLmwwVqH9pBCliU2k+OXLq+uF26//hCLhUcpp23QRdwNb24URDVQ9zsMYXd22SLOtNfKsTlNl8syZ2QacSV7qtrFMN6DPCwdEvdiweuwgr5lOq5pEZT+fz4hqJlyTIoCMWSR3ZNSwBv+DlQkHLDVk2CyYMWWtR3eUsIDQT54O8sFDoKG5mANRU0LWsZHGTaxZhm1R/Cf2ddsNJF8r5yZ524HoBlLPYG/4mcDvetdjLRikBsUpw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb77d6f4-8357-4347-1d5f-08d7415d5701
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 02:09:04.5148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gGeFiY8J1+XP36q5213MFxPBFQzRGc7I6i3Gt+VdqhUaqaovh0Tvl6UpWEpob2tJXtnzycCD2D6Xc2/n3WVJrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4451
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_190909_350326_66873F8D 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V9:
 - Add Florian's R-b tag in patch 1/2
 - Mark arm,func-id as a required property per Andre's comments in patch 1/2.
 - Make invoke_smc_mbox_fn as a private entry in a channal per Florian's
   comments in pach 2/2
 - Include linux/types.h in arm-smccc-mbox.h in patch 2/2
 - Drop function_id from arm_smccc_mbox_cmd since func-id is from DT
   in patch 2/2/.

   Andre,
    I have marked arm,func-id as a required property and dropped function-id
    from client, please see whether you are happy with the patchset.
    Hope we could finalize and get patches land in.

   Thanks,
   Peng.

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

 .../devicetree/bindings/mailbox/arm-smc.yaml       |  96 ++++++++++++
 drivers/mailbox/Kconfig                            |   7 +
 drivers/mailbox/Makefile                           |   2 +
 drivers/mailbox/arm-smc-mailbox.c                  | 167 +++++++++++++++++++++
 include/linux/mailbox/arm-smccc-mbox.h             |  20 +++
 5 files changed, 292 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
 create mode 100644 drivers/mailbox/arm-smc-mailbox.c
 create mode 100644 include/linux/mailbox/arm-smccc-mbox.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
