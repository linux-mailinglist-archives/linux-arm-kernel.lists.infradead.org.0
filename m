Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA842D050D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 03:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICwmtRhtR7BaNkh7JyvEbkAntnZ5T9PtDgMiIbIj94A=; b=OY5yklWaPNM5OM
	cpHrO91RHEHPWXVRnk1S1x5JzGCw6KE1QIg/DXyKNFMU3+0Di+vgQwmnPjULqC0A37JKYD23b4F2C
	bsMyA9vxJchOL39xIXZpvnwdbH7IWgpoY1PD7d8gQy5hSODO0aJ377V3Bcs0npnSG5igrChWHBEpK
	48YWMpxzInZQRl+KnkFOAaVpeA1mZjFMzOeYGUJlu8Rt2IzL6OU4wy4O2RmmxbMi1K0UqgyBMhWJI
	h6uJfjmiGKGjtb+ckSYCiYH5RcAOF2YTxes7n/4m0LNqIs+3t0GRIAIsYqpiJUcDQ92cgEVbx96uW
	lMhGtoGvRb8Tfv/Su8xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI0Ua-00055c-Vk; Wed, 09 Oct 2019 01:10:16 +0000
Received: from mail-eopbgr60086.outbound.protection.outlook.com ([40.107.6.86]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI0UR-0003we-29
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 01:10:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/kzCXrGH6xJitYALgOuhOr8ZKWgR1cFlVip62J/w9U/NgOsWQvzxQlX68+zog3q0rRbCs+QJQae/LcsHWbeSmf9fcmFJliq6upLcvO1JH1aBzIQd+BG5xWAKAniXUswTMgBf9Stz5C6qFFEDxPKdLAvbGnzWMvL2ty3ynixxLErjNZDDBP8eUHDviYJqsRyk7e1paIAFDxJqRgtOkc1hMvi1SC91g5Y6ScNBmOk/c0jqskDZLw4JHs9gCW53KZaMpXa6GeIbVy7u/nFQoYiDFGwj93t93pW+40BsK1aPDKhb4X/QFHeXwHi5RfUOkscPeMm8XgoPPkpojWDXtHtiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QqLIb9mTGELv7jCYd4zZtp23+oJ/NSkEgxRRLutbY00=;
 b=XUeVrRgdMq/HRdnRHnJ2NV+/+/3S3kNLpNcsdF9tMmU3iI62XOulSlsvd7S9pCDLWWHC3gO9SfvXBHvKBTZnJNYlOKnhYb0XDVIgPFr+BW/KKbJBhgKfV+l7w1kR0A7jqKEpcQaNast3dGrZmrjoEGmdUwyC2QuJa5C4ibbmO0ZK0slwvwqW0LgAukEJCES0KB8griJxsil4T+mvOwmqYZP7A7rD/AqlvPXRdANYSfWfv6C0NDXLEgxATW6k+pKNLCh9BK81EfAhveEwPRJpvYhLjobOk4NfCoc511lTLVkpc6jAOoDIEK5d4o1FH0/Iuxy/5t/2GH+o66Vx3Ok1+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QqLIb9mTGELv7jCYd4zZtp23+oJ/NSkEgxRRLutbY00=;
 b=Ryno+aaweIwbqfnvp9u3b6Ze36E3kqjStyASAAAXF9NJVQ2PDf8cNjFUTcxDgCSRYbbLtEhYDftF71z0lKIbpJMy5OPJENr3YnXnJMwQAY7tCywJRAu41Lr+/Ru/nC0W304240tGCthgMInLaH4ZpyxYQ+KmbEgzxj7KkK5RU4M=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5426.eurprd04.prod.outlook.com (20.178.116.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Wed, 9 Oct 2019 01:10:01 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2327.026; Wed, 9 Oct 2019
 01:10:01 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: RE: [PATCH V10 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH V10 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVd1cZbembLLIl0UWluk5SdDoXkKdRjZNQ
Date: Wed, 9 Oct 2019 01:10:01 +0000
Message-ID: <AM0PR04MB4481F68159D932DA455634A988950@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1569824287-4263-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1569824287-4263-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 290f3d04-30e9-48ff-959e-08d74c5568f8
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB5426:|AM0PR04MB5426:
x-ms-exchange-purlcount: 6
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB54268A42504C105AD487551888950@AM0PR04MB5426.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(136003)(396003)(346002)(366004)(39860400002)(376002)(199004)(189003)(76176011)(54906003)(52536014)(110136005)(316002)(2906002)(6246003)(3846002)(99286004)(6116002)(966005)(5660300002)(2501003)(14454004)(71200400001)(71190400001)(4326008)(478600001)(6306002)(9686003)(446003)(8936002)(66946007)(6506007)(86362001)(11346002)(55016002)(476003)(25786009)(66446008)(486006)(2201001)(305945005)(102836004)(186003)(76116006)(7736002)(74316002)(81156014)(81166006)(33656002)(14444005)(229853002)(7696005)(256004)(44832011)(6436002)(66066001)(8676002)(15650500001)(26005)(64756008)(66556008)(66476007)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5426;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kIfVYhxDDpLQlU2CZk0vHdcKzqRhT5U/lXKVKrHscmntpRdUZaHm49vcu3fDB60QgpypLc/zRPBsYjWh4caKQvmyLyxFrxIIYIwZ7Eg177ze8ASAku6/ASLeG+XN3O5u10SazszfzrWOMC8RpMHEHrIPLSoOEfP9LUh98J2l0lIP1Fykm+qaus/GVyv3aaRdymIGogBio0oCd4mNS3ARU698viVaAM2V3GZViIPQunF4Wvb8h2VyC9lqm2WxMrE4xVUKrbf8M/jMjX6ryyo4KalJuOmuEPGB8xnxeid9XtMTQH2aJXJymMlWo8X3pXvPYa7hnmfoOr7TdIkIEgkXS9fYj1KmcqHtADxEBaEOeSdTqJzl2gKv3SyhR8PU+Xy5lQg+ZQ5aVKSPtufGOz/o+RsOFZvfw/og4v7gFXWHP7ga25IYY0SE2b1DZY8ckFecMy+TOW+63OP5czbuVamRFA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 290f3d04-30e9-48ff-959e-08d74c5568f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 01:10:01.1678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2oOUC26saKUaiMpxO0j0Xo0LeWjHemf08+bgzInyZaYiT1RounEf+wLAUEQa3XldQD+68UKL3Mla7im5SjsaIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5426
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_181007_319036_D1890673 
X-CRM114-Status: GOOD (  25.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jassi,

> Subject: [PATCH V10 0/2] mailbox: arm: introduce smc triggered mailbox

Are you fine with this patch set?

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> V10:
>  - Add R-b tag from Andre, Rob and Florian
>  - Two minor fixes
>   - Drop "passed from consumers" in patch 1/2 per Andre's comments
>   - Drop interrupts.h in patch 2/2 per Andre's comments
> 
> V9:
>  - Add Florian's R-b tag in patch 1/2
>  - Mark arm,func-id as a required property per Andre's comments in patch
> 1/2.
>  - Make invoke_smc_mbox_fn as a private entry in a channal per Florian's
>    comments in pach 2/2
>  - Include linux/types.h in arm-smccc-mbox.h in patch 2/2
>  - Drop function_id from arm_smccc_mbox_cmd since func-id is from DT
>    in patch 2/2/.
> 
>    Andre,
>     I have marked arm,func-id as a required property and dropped
> function-id
>     from client, please see whether you are happy with the patchset.
>     Hope we could finalize and get patches land in.
> 
>    Thanks,
>    Peng.
> 
> V8:
> Add missed arm-smccc-mbox.h
> 
> V7:
> Typo fix
> #mbox-cells changed to 0
> Add a new header file arm-smccc-mbox.h
> Use ARM_SMCCC_IS_64
> 
> Andre,
>   The function_id is still kept in arm_smccc_mbox_cmd, because arm,func-id
> property is optional, so clients could pass function_id to mbox driver.
> 
> V6:
> Switch to per-channel a mbox controller
> Drop arm,num-chans, transports, method
> Add arm,hvc-mbox compatible
> Fix smc/hvc args, drop client id and use correct type.
> https://patchwork.kernel.org/cover/11146641/
> 
> V5:
> yaml fix
> https://patchwork.kernel.org/cover/11117741/
> 
> V4:
> yaml fix for num-chans in patch 1/2.
> https://patchwork.kernel.org/cover/11116521/
> 
> V3:
> Drop interrupt
> Introduce transports for mem/reg usage
> Add chan-id for mem usage
> Convert to yaml format
> https://patchwork.kernel.org/cover/11043541/
> 
> V2:
> This is a modified version from Andre Przywara's patch series
> https://lore.kernel.org/patchwork/cover/812997/.
> The modification are mostly:
> Introduce arm,num-chans
> Introduce arm_smccc_mbox_cmd
> txdone_poll and txdone_irq are both set to false arm,func-ids are kept, but as
> an optional property.
> Rewords SCPI to SCMI, because I am trying SCMI over SMC, not SCPI.
> Introduce interrupts notification.
> 
> [1] is a draft implementation of i.MX8MM SCMI ATF implementation that use
> smc as mailbox, power/clk is included, but only part of clk has been
> implemented to work with hardware, power domain only supports get name
> for now.
> 
> The traditional Linux mailbox mechanism uses some kind of dedicated
> hardware IP to signal a condition to some other processing unit, typically a
> dedicated management processor.
> This mailbox feature is used for instance by the SCMI protocol to signal a
> request for some action to be taken by the management processor.
> However some SoCs does not have a dedicated management core to provide
> those services. In order to service TEE and to avoid linux shutdown power and
> clock that used by TEE, need let firmware to handle power and clock, the
> firmware here is ARM Trusted Firmware that could also run SCMI service.
> 
> The existing SCMI implementation uses a rather flexible shared memory
> region to communicate commands and their parameters, it still requires a
> mailbox to actually trigger the action.
> 
> This patch series provides a Linux mailbox compatible service which uses smc
> calls to invoke firmware code, for instance taking care of SCMI requests.
> The actual requests are still communicated using the standard SCMI way of
> shared memory regions, but a dedicated mailbox hardware IP can be replaced
> via this new driver.
> 
> This simple driver uses the architected SMC calling convention to trigger
> firmware services, also allows for using "HVC" calls to call into hypervisors or
> firmware layers running in the EL2 exception level.
> 
> Patch 1 contains the device tree binding documentation, patch 2 introduces
> the actual mailbox driver.
> 
> Please note that this driver just provides a generic mailbox mechanism, It
> could support synchronous TX/RX, or synchronous TX with asynchronous RX.
> And while providing SCMI services was the reason for this exercise, this driver
> is in no way bound to this use case, but can be used generically where the OS
> wants to signal a mailbox condition to firmware or a hypervisor.
> Also the driver is in no way meant to replace any existing firmware interface,
> but actually to complement existing interfaces.
> 
> [1] https://github.com/MrVan/arm-trusted-firmware/tree/scmi
> 
> 
> 
> Peng Fan (2):
>   dt-bindings: mailbox: add binding doc for the ARM SMC/HVC mailbox
>   mailbox: introduce ARM SMC based mailbox
> 
>  .../devicetree/bindings/mailbox/arm-smc.yaml       |  96
> ++++++++++++
>  drivers/mailbox/Kconfig                            |   7 +
>  drivers/mailbox/Makefile                           |   2 +
>  drivers/mailbox/arm-smc-mailbox.c                  | 166
> +++++++++++++++++++++
>  include/linux/mailbox/arm-smccc-mbox.h             |  20 +++
>  5 files changed, 291 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/mailbox/arm-smc.yaml
>  create mode 100644 drivers/mailbox/arm-smc-mailbox.c  create mode
> 100644 include/linux/mailbox/arm-smccc-mbox.h
> 
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
