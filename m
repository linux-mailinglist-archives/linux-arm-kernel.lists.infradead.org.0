Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEE1F435E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:33:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8L9cWepN1cusoTvcYdHn9JanV5kwi4ncItqQ+kxNxOE=; b=TkqqHR9US+JiIq
	peREe06mkvX/KQDbZRZ373kQoMrHyd/X8uvkzVphmEc0v68JHh32JEj66lcc4EZZ6q/zg4wMzFAYR
	P/mHJ4T3IiON98F1+0PBz0d/8rMmN9EdWbPCeVW9p2WDH6DwqPeHiIFsRfLNXzYihYzAsQhpxFGZU
	cmxqGLV7McM+EihNto2zrit81Fn5r7UFyuwxH1RnjqQCzDwr5d244/W698HXAYxM3Jt38R7AEbSrC
	CYY4fHMGujp2qXE6wYfqsgE/jnAwD1pbMqvPDgoDZ90amZponlNMKr0C3KCbynDbDyC46OhaeYSiw
	9wiuNdQKb57fwcWd9dMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0e2-0001aq-HA; Fri, 08 Nov 2019 09:33:30 +0000
Received: from mail-eopbgr60086.outbound.protection.outlook.com ([40.107.6.86]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0ds-0001Zx-0f
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 09:33:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YKXUh3Dva9hreQmFN4J2W7agVUbsiBhNtg+JAA2Xcccp6VVKsPsA/9vgScqtPu6uMNYm1EgNdilrmCvj17HaeVe3F8YpxgIWdUc65ba/GS2YSq1vUGyCjLiMJ1xq+2pm4Riull1F52y26xclIGFSrH9etoOWbYN2ixNwuygzr9SggNR8Ko+jNAhGInIfaFk9aYDEbVA2akrB4KOdinxxsDO+bAXyf2OQQazoZapRqLsfy9nKjvVZEgn5J6SVoyNTzDieWM11QXhcqsoBlIwn3AafOwcl5ZylW1EgzVm/RB00gGOReqdBmsa1/Up5VcDdGi8AeLuvJxuyuEorxxczzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FkIwcfNXLoFA7sFJe5zf6H9izbbPjvCGIu8DAMTptVo=;
 b=iXUM7b2eqgeYMWNPtNpX3OM+AK3k8mVRGddeRJW1ILdwAPP3Q4TgDh4TF/kR4yAUi3Msi6Dqg5Jt3x9YAbyyN95z2EPyepX+RWclriGbymoyW9UHkp32+SnUYEyiUap7w5fdkqZAPZrXSMnXK8xne9zMZKfLeAxgUrHHFPKS/FlN3Lv9KJsxUO1e3v3zY9MYzwjs2amvBeiX1PPyUzPtUj3o4g/CGTDVrNeKAP8VE6sTnaX5TFe8t7Ug4/IFxXyqJUhi515B7eBGcnqjC6gEWY1+tSaCS8CNLRd3xXph92M5a8Mm8YpG2JNE4QVcIi4sj4b9rMdn0vvgERXKGC7mSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FkIwcfNXLoFA7sFJe5zf6H9izbbPjvCGIu8DAMTptVo=;
 b=a6IQU56KyNR1Er5OesFRXdiCNw5/XQOtZTqIWDdrqaiO+amkObIs2pnc/KVe/g7M9bHZ9r/cAFGYMs6cus2pWxFVFgLMAdM+unOZjntuHJ561/MY08ng4Pv9VhG8kbyEjZNcxtaWgfjNgN8v4ulUZJBvYdfoCvdgZ8z7ai6Vx/Q=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5121.eurprd04.prod.outlook.com (20.176.214.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Fri, 8 Nov 2019 09:33:14 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2430.023; Fri, 8 Nov 2019
 09:33:14 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: RE: [PATCH V10 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH V10 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVd1cZbembLLIl0UWluk5SdDoXkKdRjZNQgC+ygtA=
Date: Fri, 8 Nov 2019 09:33:14 +0000
Message-ID: <AM0PR04MB448121C973D3A62C4BD00722887B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1569824287-4263-1-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB4481F68159D932DA455634A988950@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481F68159D932DA455634A988950@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ef7846d8-93e1-4604-93f9-08d7642eade2
x-ms-traffictypediagnostic: AM0PR04MB5121:|AM0PR04MB5121:
x-ms-exchange-purlcount: 6
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB51216E78BEF1F77B9C995132887B0@AM0PR04MB5121.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0215D7173F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(396003)(346002)(366004)(189003)(199004)(7696005)(99286004)(26005)(2501003)(186003)(71200400001)(6246003)(8676002)(66066001)(81156014)(71190400001)(4326008)(76176011)(8936002)(81166006)(2906002)(44832011)(55016002)(9686003)(6306002)(14444005)(33656002)(256004)(486006)(229853002)(5660300002)(476003)(66446008)(64756008)(66556008)(66476007)(76116006)(74316002)(11346002)(446003)(6436002)(305945005)(6506007)(15650500001)(7736002)(102836004)(52536014)(54906003)(478600001)(2201001)(25786009)(966005)(86362001)(6116002)(316002)(14454004)(110136005)(66946007)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5121;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RUTYUCQ0yUNRsn4ST5aSjIrCs6fEm3ZkStC+dY0Y2N7/YF35slPdjLG8Ps2mA/0fa4mEMB1hlrc0vDzzPoX7dWRz6QWCAuC8exX5zEKP5QUzM9ryGrbXTm4wfUhHifk/FIpybWNPbBQ13Aa3s30b+KNdYBa8N1hHbHj935tPVoRTxtNEMna8kJn2zWiHmkk0N+GzxoPfKBHOHWH+9/7UQwPWSoNiut04tQjP0Fs4LwdlPRdapoa6w3Y+S7oisCbSZPvOwTEROp/0y4PUjFF7y5NiDi3ipQhpxx0TqlPR3m9ljivASPXOSimLJ/Cx/tVPcSyWleu038LTX2yttGIcxfxA5saLhDgmt4JHr8COhYs6aKwE4Jdw1aiSj01zOdBnc0v5e4Os45V3WaKITwL7FmDMW3lmOnjWQovIvBXQqQ62Rh9mFulTBDbiBsKO1GcaL6zRVZ47lD9gWiMLW+2kUiKH8yCgXETI2Qocr71CutY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef7846d8-93e1-4604-93f9-08d7642eade2
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2019 09:33:14.2886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XS9hWGAekdX9IeVLVvXCXwEyNhnWF9aZYmYMm2f84FOgWCW3yqnoJdX9Mj2Yeenhy/G1g0/qD7EFDqLhrWk1Ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_013320_166548_F02AA204 
X-CRM114-Status: GOOD (  30.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jass,

> Subject: RE: [PATCH V10 0/2] mailbox: arm: introduce smc triggered mailbox

Sorry to ping again. Would you queue this patch set into your next tree for 5.5?

Thanks,
Peng.

> 
> Hi Jassi,
> 
> > Subject: [PATCH V10 0/2] mailbox: arm: introduce smc triggered mailbox
> 
> Are you fine with this patch set?
> 
> Thanks,
> Peng.
> 
> >
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > V10:
> >  - Add R-b tag from Andre, Rob and Florian
> >  - Two minor fixes
> >   - Drop "passed from consumers" in patch 1/2 per Andre's comments
> >   - Drop interrupts.h in patch 2/2 per Andre's comments
> >
> > V9:
> >  - Add Florian's R-b tag in patch 1/2
> >  - Mark arm,func-id as a required property per Andre's comments in
> > patch 1/2.
> >  - Make invoke_smc_mbox_fn as a private entry in a channal per Florian's
> >    comments in pach 2/2
> >  - Include linux/types.h in arm-smccc-mbox.h in patch 2/2
> >  - Drop function_id from arm_smccc_mbox_cmd since func-id is from DT
> >    in patch 2/2/.
> >
> >    Andre,
> >     I have marked arm,func-id as a required property and dropped
> > function-id
> >     from client, please see whether you are happy with the patchset.
> >     Hope we could finalize and get patches land in.
> >
> >    Thanks,
> >    Peng.
> >
> > V8:
> > Add missed arm-smccc-mbox.h
> >
> > V7:
> > Typo fix
> > #mbox-cells changed to 0
> > Add a new header file arm-smccc-mbox.h Use ARM_SMCCC_IS_64
> >
> > Andre,
> >   The function_id is still kept in arm_smccc_mbox_cmd, because
> > arm,func-id property is optional, so clients could pass function_id to mbox
> driver.
> >
> > V6:
> > Switch to per-channel a mbox controller Drop arm,num-chans,
> > transports, method Add arm,hvc-mbox compatible Fix smc/hvc args, drop
> > client id and use correct type.
> > https://patchwork.kernel.org/cover/11146641/
> >
> > V5:
> > yaml fix
> > https://patchwork.kernel.org/cover/11117741/
> >
> > V4:
> > yaml fix for num-chans in patch 1/2.
> > https://patchwork.kernel.org/cover/11116521/
> >
> > V3:
> > Drop interrupt
> > Introduce transports for mem/reg usage Add chan-id for mem usage
> > Convert to yaml format https://patchwork.kernel.org/cover/11043541/
> >
> > V2:
> > This is a modified version from Andre Przywara's patch series
> > https://lore.kernel.org/patchwork/cover/812997/.
> > The modification are mostly:
> > Introduce arm,num-chans
> > Introduce arm_smccc_mbox_cmd
> > txdone_poll and txdone_irq are both set to false arm,func-ids are
> > kept, but as an optional property.
> > Rewords SCPI to SCMI, because I am trying SCMI over SMC, not SCPI.
> > Introduce interrupts notification.
> >
> > [1] is a draft implementation of i.MX8MM SCMI ATF implementation that
> > use smc as mailbox, power/clk is included, but only part of clk has
> > been implemented to work with hardware, power domain only supports get
> > name for now.
> >
> > The traditional Linux mailbox mechanism uses some kind of dedicated
> > hardware IP to signal a condition to some other processing unit,
> > typically a dedicated management processor.
> > This mailbox feature is used for instance by the SCMI protocol to
> > signal a request for some action to be taken by the management processor.
> > However some SoCs does not have a dedicated management core to
> provide
> > those services. In order to service TEE and to avoid linux shutdown
> > power and clock that used by TEE, need let firmware to handle power
> > and clock, the firmware here is ARM Trusted Firmware that could also run
> SCMI service.
> >
> > The existing SCMI implementation uses a rather flexible shared memory
> > region to communicate commands and their parameters, it still requires
> > a mailbox to actually trigger the action.
> >
> > This patch series provides a Linux mailbox compatible service which
> > uses smc calls to invoke firmware code, for instance taking care of SCMI
> requests.
> > The actual requests are still communicated using the standard SCMI way
> > of shared memory regions, but a dedicated mailbox hardware IP can be
> > replaced via this new driver.
> >
> > This simple driver uses the architected SMC calling convention to
> > trigger firmware services, also allows for using "HVC" calls to call
> > into hypervisors or firmware layers running in the EL2 exception level.
> >
> > Patch 1 contains the device tree binding documentation, patch 2
> > introduces the actual mailbox driver.
> >
> > Please note that this driver just provides a generic mailbox
> > mechanism, It could support synchronous TX/RX, or synchronous TX with
> asynchronous RX.
> > And while providing SCMI services was the reason for this exercise,
> > this driver is in no way bound to this use case, but can be used
> > generically where the OS wants to signal a mailbox condition to firmware or
> a hypervisor.
> > Also the driver is in no way meant to replace any existing firmware
> > interface, but actually to complement existing interfaces.
> >
> > [1] https://github.com/MrVan/arm-trusted-firmware/tree/scmi
> >
> >
> >
> > Peng Fan (2):
> >   dt-bindings: mailbox: add binding doc for the ARM SMC/HVC mailbox
> >   mailbox: introduce ARM SMC based mailbox
> >
> >  .../devicetree/bindings/mailbox/arm-smc.yaml       |  96
> > ++++++++++++
> >  drivers/mailbox/Kconfig                            |   7 +
> >  drivers/mailbox/Makefile                           |   2 +
> >  drivers/mailbox/arm-smc-mailbox.c                  | 166
> > +++++++++++++++++++++
> >  include/linux/mailbox/arm-smccc-mbox.h             |  20 +++
> >  5 files changed, 291 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> >  create mode 100644 drivers/mailbox/arm-smc-mailbox.c  create mode
> > 100644 include/linux/mailbox/arm-smccc-mbox.h
> >
> > --
> > 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
