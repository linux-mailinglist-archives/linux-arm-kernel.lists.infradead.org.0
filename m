Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB65BC1B60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 08:20:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xTKg8GdFu6UnOKKJyMLwvaM8q3Or/MoYNqMWwbWbRmc=; b=lyuE8X8YTwLI7o
	s4U4D9oyolkfQ5siCzYYelygV6v9KAQZVN0PeqSPAaOC6h/Oe5vq+xK4kogeZD13TnRPXy1654cNM
	ZW/XBWlXtC2zpVPvB930ofhgLAGn8ADtXdQXtTaidt/6uLNtbGkn4jEhmHf5XAVwgwh4l10nw9uIb
	wvGPt+Iy7gggbRGHulCAt3M3YKsrmwbrG+16WEqQqNVuL8ATKesRP8iKY5KvenNNL0Q6caZS12D/A
	mIMul5lMdj6KH7wHXrLO+x0UrX1W0n8yZuurE+PoGzqMTLPJL+80ZVMVOt+nTSjsyb4AGbxFF0SoB
	2EgUOUlN0nfVNT6VCGnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEp2n-0002RB-2v; Mon, 30 Sep 2019 06:20:25 +0000
Received: from mail-eopbgr40089.outbound.protection.outlook.com ([40.107.4.89]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEp2Z-0001vi-Ka
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 06:20:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GFOXADDqGiDXAP7yr6RFF6deHuSyOZUoT0eliDWl8nERPEOYJ/h72tJf+BQOQ4EXAP+gpLBV503cHYtTq1PRqIebHSGehEf/zfNmzmCRb6KSavlutfozT+4bKh4NWWgjfek8SyS8ID9EqqnTqzh24vhQsOsCuNYG5bc+JZxXjxtgDhxZ+lGkwlJOSS9xn6bhOZohsDpebUvU1JB/n7tUP+W1Sgk90wF0pKb3MGl2GpdZpS+sj47iHuP/iZk3zrpddBBRG4v0vNNg5NuiS9iaUUjHVAtGeh5FIt+cJtmba367Rt99M8g7UqlP27EWQ0rHg49GPrZvQQwskEprQjCxQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qlhj/Ba44JBPMgVrgAe05X/Ta++g/ZxvxQgnqoo7elY=;
 b=AyNTq5y+7ylJ5ir3IfYuiQNHmWjhoI+3me8LhMDkD0hX6pnVaxx2YChD0CGxH9mPFavRGnS7pxnNDyaZiJc/FuveexYWy+RSOQM5zzigMD98FqJ+eunQholfdUDc8XHuy3E1ZtSm52ssNRuXNg9RL8hzc95e8PHNo/vkM1OelDQZRUtnmWx4fSMkY9n4KMr6iBOlnwDTZnoE1sqVpvfokmpsOWXqw1ikjPQCM0GdN6N2tvcyjAhsouWfP2A0tolw+6qptAcODG76Ff3iilXC/lBtIDeKkjaJBR3bayznvJPTkC9D3GHHNucbqffp0Tg6iyw0P66bRWe55G/SOtPz3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qlhj/Ba44JBPMgVrgAe05X/Ta++g/ZxvxQgnqoo7elY=;
 b=rDzS77h0MAu5J9ZsM1sUe/bwCEcqfzttbu7hYywngDvfsE7yy6XknKgbHTQaybxSlLoGpHeeYVbbbwHZXWvWxDivKBgGK1aodAmvGVmUKqQC1LUoyzSGF+ylTduzq3JUFfKYaPLkO7fCtgnSthU2HeHh/1R/z3FlFkFotX1U6VU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5348.eurprd04.prod.outlook.com (20.178.113.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 30 Sep 2019 06:20:06 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2305.017; Mon, 30 Sep 2019
 06:20:06 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH V10 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH V10 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVd1cZbembLLIl0UWluk5SdDoXkA==
Date: Mon, 30 Sep 2019 06:20:05 +0000
Message-ID: <1569824287-4263-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0034.apcprd03.prod.outlook.com
 (2603:1096:203:2f::22) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 252464db-289d-492c-1d57-08d7456e3c67
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB5348:|AM0PR04MB5348:
x-ms-exchange-purlcount: 6
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB53480BAB9958664DF99686AC88820@AM0PR04MB5348.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(366004)(376002)(136003)(189003)(199004)(54906003)(64756008)(4326008)(66446008)(186003)(110136005)(5660300002)(71190400001)(2201001)(71200400001)(8936002)(26005)(478600001)(316002)(8676002)(386003)(6506007)(36756003)(81166006)(81156014)(52116002)(102836004)(66946007)(66476007)(66556008)(2906002)(305945005)(7736002)(14454004)(66066001)(15650500001)(25786009)(2501003)(50226002)(6116002)(966005)(476003)(6436002)(256004)(14444005)(2616005)(99286004)(3846002)(6512007)(6306002)(86362001)(486006)(44832011)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5348;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VNhU3Wbr3lKuFWVKnQfhyCnxRmJqVKBUosOhH8PuceehSOEiPQIldY8z73Cq3f+Ib8hQm6W7j3pw1RBTqA9GpdDAESkfdPtXEewA7vAbdJ3RZjnFloS3nOlONI5Pryo0500O5reZ9nDKTE/mBHBHBYsa5JD8sL+juUCvmN+5FzJpCNdI5875zKSB1HBlGDCYMxHKfEv0AhnKflOL9Pcgq1qtZBUrgzfc9t59OCa/MUO3JNnQwXovhRP/pvfTxIqlK/SKazfXvq0R7p3F9aQr30bKqK917VrHd7tIsL8VZiHp9BCATowNSvFqdZVCPHwZ9lm8VGC9vmaRYhDrr1uBh4QVO8ULwhtk80Gy1wdY7DNtztriuc2sP0ORPiPLjriZYfX98vD6ye5WvtefvIT9QDGhx1Wuxsnk72bcqou9iT4ilWinTS1ayIMInC3s/d97n9sXONdYUhil/4F3nbR77A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 252464db-289d-492c-1d57-08d7456e3c67
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2019 06:20:05.9823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v0EE4noBlEgUlW6K6vglYMW3h1IwVfSElpN2ZHhYJGPvvRKSvvPcpNNgSFA0YA3YKIyJyLmQq7sDn8tLMIIVbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5348
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_232011_774235_23B4F981 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

V10:
 - Add R-b tag from Andre, Rob and Florian
 - Two minor fixes
  - Drop "passed from consumers" in patch 1/2 per Andre's comments
  - Drop interrupts.h in patch 2/2 per Andre's comments

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
 drivers/mailbox/arm-smc-mailbox.c                  | 166 +++++++++++++++++++++
 include/linux/mailbox/arm-smccc-mbox.h             |  20 +++
 5 files changed, 291 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
 create mode 100644 drivers/mailbox/arm-smc-mailbox.c
 create mode 100644 include/linux/mailbox/arm-smccc-mbox.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
