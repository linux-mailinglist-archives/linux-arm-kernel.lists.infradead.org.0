Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 758519F88C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 05:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pQfKU8kKk/wfADosB5IDMcegor17XaK+2H7vNhAnJa0=; b=rfHRsFOCmfk6bG
	2ZH0hNL6eSdXRu3Vneaz+D+RPWQkdHyx1V8l2nrEHdJhM4DRNr8RjX+LJnwqAG0OtPD4ge7RA0qtc
	j0s1p8q4U2SursBh8zwjzw7AD0MAGhZkXqa/izjDUOWzJtxs1WBUC3bzx3uwnE9+mHkym6xQK1dYi
	BkC9LTZhwbXPW/uDZTDJ1r3v5ZME/eOAwmhBrX4KkpHZ2f6lsEeXa7z87NGOt8/BvNpEwQL56anBU
	6Z3pJ8vMC5Lvw1lZvxlBXGceJaopPqHSrV6PelLB22me1LvFaYI8gwVDpZUcoCx4S5/PvrvfQDAzG
	N+p4Bou2fYpmTZPMzZKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2oEw-0003Lo-2J; Wed, 28 Aug 2019 03:03:18 +0000
Received: from mail-eopbgr30058.outbound.protection.outlook.com ([40.107.3.58]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2oEg-0003KZ-6K
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 03:03:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bc9hK9APccyum72sfb0qn0aPJGbo8nnAQREdRKv6QF+gMn7EdNxec94M5QIwEiStIkFXrMa+tJ0060DXV6+g6w+lGDNBl8v/H9Rv59xWdFgFZPqd5wzadwJygZmTOjHDtHIdNWql7v/n8vZAkfy0ERs50mE85kIJ4UghU++dgsPzzNpixQrRiwSZQJlBKlT4E58Ly/VbxTJ40+Fyoclu76NNfa7Nt/3cNQlFglQow3sAFx0pJZW6yU/0fNU5phYt1Z2cMJ1VyE3tYVBX3k1iD2MGpCvTddCa0DTcWDVKp/Y/J9a7AFrvzR/jvzeF19jGFsW+u7qes6F4rknAXY88Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Rx9r6CgURtCFmp8DHjXvh7Bt6cFnUZHBoFRsXTMJoY=;
 b=Ir6kf/I+jKNJvJZzCNim55D5zOKbRwJtTW+70/YVdPti3DoUFJ9FpK8SUMyrJDCcj2D49esgaQvOWyQAJI8QBzQLgc0IVK56zsXG1SIYDjofzz/IvdU+lY4ZFpmzNLkf83LacOLvMj72u9BEahsCi/I44Lh7/MdQgDL9I94GTUHcomoAR7WH9L26lWX1L8St6bblnNJl9yitx93Ao1hwFJXmHVpVSozPL6rNYV97tPah3za5WMHTDhmHHko5ZpR+sjNqMZzMAVCZfWXdBqXSZ8k4ki6AmQgYG5kPuf07DZYgj+0JcJbvt7T7LwLBHLk4/HWeLHtXHDTe5SPYxpW96A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Rx9r6CgURtCFmp8DHjXvh7Bt6cFnUZHBoFRsXTMJoY=;
 b=qIHxHcfGv1Gm09Kmb6/n8ee0Z3v6R0o4IFkF9qznXLOT4n8UmldwclV1p6viebWsNHQp5Bzg9EuViicladZ+QXywq3nRYRyM/HoDFmeYK4wFNtjqpva9iH+hQOSJTuAksJraKscY47E8yDeYygIDHik8fndaanw+0WAe6MS5ChE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6033.eurprd04.prod.outlook.com (20.179.33.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 28 Aug 2019 03:02:54 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.023; Wed, 28 Aug 2019
 03:02:54 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH v5 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH v5 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVXU0W/OQqpHrw2UaiSQygGBIz9Q==
Date: Wed, 28 Aug 2019 03:02:54 +0000
Message-ID: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0163.apcprd02.prod.outlook.com
 (2603:1096:201:1f::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d15ec50a-bf93-4ec6-b435-08d72b6438a6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB6033; 
x-ms-traffictypediagnostic: AM0PR04MB6033:
x-ms-exchange-purlcount: 4
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB60339A6C7E9DD99397A9EB2088A30@AM0PR04MB6033.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(136003)(366004)(189003)(199004)(476003)(25786009)(6116002)(66446008)(53936002)(3846002)(66476007)(66946007)(66556008)(64756008)(8936002)(6512007)(14444005)(478600001)(386003)(44832011)(6306002)(305945005)(15650500001)(54906003)(2201001)(86362001)(2616005)(14454004)(486006)(6506007)(256004)(966005)(7736002)(6436002)(2906002)(50226002)(4326008)(81166006)(102836004)(81156014)(8676002)(6486002)(36756003)(5660300002)(26005)(71190400001)(2501003)(99286004)(66066001)(52116002)(316002)(186003)(71200400001)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6033;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MOuufvugdaLsoY3W1ukB+WMdtSjLlDAhRv4fupLXYl4+qBwd21C+Xsx/yG8oKpjo0m6mGTrqqSP2D5pZQtRu/hmWqV+T16C8ACN9VEpDV6H7zQELZtFF1OuR+2uKoZpt9tLLA429lCq69V1HwrefQScHlgDCJ+qjSp7UaCPMBzuucP/LlD95h7eQ1b2/XSfmgPlSTZ0Yoxy1jNHJbvj4NqbyrckPtV6+Bkjx25DS+KRztmM7mA5nTG0hw879dHkLAI3oVu+LLud4UQoZ2+Ha3nkGGuid7wkSBx45RvJRJZ5c1rYS89DvefBKagdAtNEO+mF0KVCpVOgbMyozexjlNCiSACAkH/9S0F8/DIx0K/65yDWsCRAAfTn0Z4OJiJ+23J1/RKnyg+8ETA7KUi9x9AkSD9gSLWxP1/MxHZSRn7A=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d15ec50a-bf93-4ec6-b435-08d72b6438a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 03:02:54.6176 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PccFo1di8NM2BGM+WAIsfvLonKL6dpxc1RSN4xI+NEC34U7K9gWo4q6qi14B8XIJUx3VxO5oSz/sKDslHVrzvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_200302_235296_AC26E1C0 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

V5:
yaml fix

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

 .../devicetree/bindings/mailbox/arm-smc.yaml       | 125 ++++++++++++
 drivers/mailbox/Kconfig                            |   7 +
 drivers/mailbox/Makefile                           |   2 +
 drivers/mailbox/arm-smc-mailbox.c                  | 215 +++++++++++++++++++++
 4 files changed, 349 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
 create mode 100644 drivers/mailbox/arm-smc-mailbox.c

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
