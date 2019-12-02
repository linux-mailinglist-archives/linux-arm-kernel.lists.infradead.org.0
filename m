Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2459F10E867
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:14:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KvZitZnzRkRrEpkraYod+AXjxVzqL9qMcrw78BkFDgY=; b=pZjVcdlY5LeJUj
	BrPPNXA3TeFkDf24ModZVtTp4uw1/uETGPHUKDJ9r6+wAHI9D1uoCQ3/Ok2RLGoEfuylHZT/sxlCb
	08VduBkiWKzMqiAXYitkeqUEfBoDqGK3IjMYPNrPkddF45ufnwuXgVQ/EvqUMcXaPfT0lrU4WFGb8
	2shklx1lK409iY/pDNyGulEqJHwnGX7ttC4HG/1zVpUuuM3BUaASvOGsQAa6PvwghOYyFEBQOMH87
	IdRmaLUUvSIMye+KYpXyZTT8yHdpiXzpK3N5xGVM4lopwQNqoVJ290FwNNHxWIuitDic9nucJuAmL
	VJJOIcWxRP4jhYVDF4mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibijB-0007w6-Su; Mon, 02 Dec 2019 10:14:49 +0000
Received: from mail-eopbgr40088.outbound.protection.outlook.com ([40.107.4.88]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibij3-0007ui-3q
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 10:14:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h9f6e3nq+26s3GEs2KWSTAIVoP+NfLPHVM+6mcpyP1xc3cW5kAPi4hgv6fx+SuZOyGnW0zUoUB+pitMWfXsOg055ZmZbbkTwrGiUxgrnqAkOIlRmHy6P3C8dggzPBjQLUfjWl4Bx8xbgq1TmaYmC7Qx2g4309o1uk2SSaQVANi4sxUZpvFmmkrpLuafvGuJboyd2GnL0EZLr/8cNnVM2FcEO4ySeZg2ph+k0Lq4lnf8ChyvU+d8Ug7Rhq54a5vDgH3JNFgKWIgwvY/tzxGbjSP20kGcqBu/ydDrYzlQO2m+JsYWbMbFmMRrAaO0bT0yugmpFRPpcO8hftx7U6Q/6Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ebSp5UA9Z63xRw2JXxlqa0RKFTNqUWgYamgF63Anpw=;
 b=BuXB1a70wH2h4mILrgY0aoY1zj3CBrxy54GA8Bl0/fGrHysMQvmbi8WiEr3dKlfeElTC5NVw0tsbqyUkdspsJc2DqZ9AxzbVmWMw09r1wb3htELcftspSNoDjLrdFw2TbuwOrMaRRaYNSqoFuSQAWvMxk+LwDhfUVZ0AXiphqYlVy4fOCfSY5UQYJ+v2WOtwMsk+uBLWMFH5diQmqECeTNSUMlVVcbtlH0YAX4UtYjnXxs6kiEntoFPx5trs/x8k+9DuT8Y2loxVIqHNI4LlLY/Z3jdq6zjjkxQN6YWj8iCCJkX7JpjILsDNbFv9K95052UzfCBZWXPtIeWPF8HCTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ebSp5UA9Z63xRw2JXxlqa0RKFTNqUWgYamgF63Anpw=;
 b=tBxFr5f7ljNRpAIdyIkf2oQFc1U6+Au8TxfX2hAlayXVM1n7hPWFB+wtiYS9BuBKopu7sACW7qcem3U1Se3CT+LZApoAlTGBKQSsmoWjvfjV4N9hGY38J+7qhteLEg5+CbwfJfjlIZ2kFJ/NiPUnERMZJwdZcKa2ZjsXN9ItKIo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7044.eurprd04.prod.outlook.com (10.186.128.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Mon, 2 Dec 2019 10:14:36 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 10:14:36 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH v11 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH v11 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVqPlMDGzxN1DOjUSOwDLq/cn0Ig==
Date: Mon, 2 Dec 2019 10:14:36 +0000
Message-ID: <1575281525-1549-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0060.apcprd04.prod.outlook.com
 (2603:1096:202:14::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 93e143bd-9eee-4f28-9b6e-08d777106f09
x-ms-traffictypediagnostic: AM0PR04MB7044:|AM0PR04MB7044:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB70444870A98DE5E2FDBC896B88430@AM0PR04MB7044.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(39860400002)(396003)(366004)(199004)(189003)(256004)(26005)(66556008)(64756008)(44832011)(2201001)(5660300002)(2616005)(66446008)(86362001)(66476007)(14454004)(305945005)(2906002)(186003)(52116002)(66946007)(6512007)(316002)(6306002)(6486002)(99286004)(54906003)(4326008)(110136005)(50226002)(66066001)(7736002)(8936002)(71200400001)(71190400001)(14444005)(25786009)(8676002)(478600001)(6116002)(36756003)(6436002)(2501003)(3846002)(15650500001)(102836004)(81166006)(966005)(6506007)(386003)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7044;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ovZTTZ4Y18HHGB1g41pPZ6I4ENo0gn+JwADlnvlmCGQktMJG25DIMUeU1iURqRDk4ySEQA7zSORQmKJmZi/P7uG2MuEMjzRabbQMgoawP4Xgi7XlkkZmToHc24TnTlvbNeMZ/+Fyn3tHCQnILJLFBRa088CKtWAd60e1ZDQtWkEPLxqiDo+qfWMGgvwPA6vWX70uQx9XJlBff5/L73smYlfYKbgpJr9ntjQaYKbJ+q0DfA1mQ591RhfpFhMCyDRwwHvVAChtI/NeaUb8JvlOjLb2IfiqcYv/jOKLyASXJKg/T5a8JPj9CYKfatuaQvU5Qj17v4kbVehjP1/iBoHRZJaAm4oXOcWydYcjPQwEUD4ee8r/z2z8Z/6+D8HNfzJGAAKk+7ISIBTCDgqgo/mFAdKRnWB2TalKEjhrB1rSW7mAdmHZZQnEaFljEK7V0vqRw1dmmhSBHpiEK35g0hpK9dnyReuWLE5b9K5GqGifeNs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93e143bd-9eee-4f28-9b6e-08d777106f09
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 10:14:36.4306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UBwUW5rGqs66pbbrok9nSmtDFswhAhaVipfRPjfiOtIy9SxqxUW4uC/n1pcsq+qS3KLVwz8TflQGai1ioKnFuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_021441_250996_C8122294 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
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

V11:
 - Minor update: Replace arg_smccc64/32 with unsigned long arg_smccc[];

 Hope this version is ok for everyone.

V10:
 - Add R-b tag from Andre, Rob and Florian
 - Two minor fixes
  - Drop "are passed from consumers" in patch 1/2 per Andre's comments
  - Drop interrupts.h in patch 2/2 per Andre's comments

V9:
 - Add Florian's R-b tag in patch 1/2
 - Mark arm,func-id as a required property per Andre's comments in patch 1/2.
 - Make invoke_smc_mbox_fn as a private entry in a channal per Florian's
   comments in pach 2/2
 - Include linux/types.h in arm-smccc-mbox.h in patch 2/2
 - Drop function_id from arm_smccc_mbox_cmd since func-id is from DT
   in patch 2/2/.

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

 .../devicetree/bindings/mailbox/arm-smc.yaml       |  96 +++++++++++++
 drivers/mailbox/Kconfig                            |   7 +
 drivers/mailbox/Makefile                           |   2 +
 drivers/mailbox/arm-smc-mailbox.c                  | 156 +++++++++++++++++++++
 include/linux/mailbox/arm-smccc-mbox.h             |  17 +++
 5 files changed, 278 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
 create mode 100644 drivers/mailbox/arm-smc-mailbox.c
 create mode 100644 include/linux/mailbox/arm-smccc-mbox.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
