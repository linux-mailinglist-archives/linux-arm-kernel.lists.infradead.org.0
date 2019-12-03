Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B0410F4B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 02:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGPw0jV3zAJPf3bBNlKAKNrtG0kA3Ds3mW+hqnqs1xA=; b=k4WTrewqdy3BP0
	OExpj/cPsfZnGzfNymQwOZqpB6CkhN7HaAJWNGe6Mzf+egDF0zOls8f7AsslaCLdgUCacqgVNo/fe
	iO3UPMYaZc7Tbn9nMbTS6KLlYifWc5a1rviP1vfP+sa4AFYaaGee/yQ1Mvs09Ls1are4tXfJpbmZ6
	2QHYZ1yFGyURsTqlUqm8vdAjwHVdWT7SchNJr1fl3Yy05xFcnIC06BHST2EjgipwIqwEyv33Je6d5
	W8s1e7Q8LA9h/k7I+kX6sz7z6HztPFDjUvXLFWKgCV9GR88FiWz9rEjyyenOGc34A9Iv4VUgLq2hC
	zAAAX7pdL78hQFvgE9Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibxNZ-0003X6-Br; Tue, 03 Dec 2019 01:53:29 +0000
Received: from mail-eopbgr60051.outbound.protection.outlook.com ([40.107.6.51]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibxNS-0003Wi-0k
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 01:53:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QNWHHQGuOEm1G/1lekuCTfyORbsOJ7gEvICkDEPJAEQTckIpAtgXK9e+yZqicBCEC2rhFCAdpDYQbknD/V/91JIF9YEa8JLgtnDHyDqpmi3f3m1tOsrIlGZZulZmt3Qp/nhFUZWirRwnSvM1JY6cUiQz83Dv+OxYAvuYengKr6dEFBU+8m9T/A3ggxHFwWfDOn+vEwhYxFxI4Id/nLmqrysiPHMpHJ8o4fSJ34oNaiYONgD7c1xrc8xZeMqdOuFCrWxPkLI92wo3ikWRt5562EnuPvldHssrWurBEGPeFzyUSzaMbnPhqlcT9OwF820rbmea539Ze7D7LHMUMTQUwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gbARCRHoHqS++sOWLDRqZfLGfq3uZ7wX+mHUrJ9vg+M=;
 b=mqFZ0SQ1tH4qDgCkWpgqniuqs9MQOp5lBFwkPKTA/+GJmnD3IdePQXDvnapqna/Vzof+IV6y1rHubetFekfOpY/6yM9VW8bu6T36VCerj9xPCUUMqgeqCkPGAhXB7C/jkD1N072l/kOV7fUrktJMmL4U8sMk1rQ/6IgEcCg0EbdXUfZ7Q6RFjDs0kMZLnXN/zioc9Is8NoU9DrSXrr7Ry4r26VyyG6JSVSTPouHAYHBr3DRsAQM2i5xNOEQ3PYl7hf+VTqvufaJkKYpz5Yo0z1e3a5QO+Fnw+e67iAxK/E3WJpidMf7tqkeXj94vn8Zq7E2PkqyNcsZdnZPWaytavw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gbARCRHoHqS++sOWLDRqZfLGfq3uZ7wX+mHUrJ9vg+M=;
 b=OGt5fQG1wj1jLik7hwmCpNbwhqeno75f5pvmefWnbIKs1AK5i7Sf8sMojzXZ75CYl8OXaN2Xbodq4Y6DDxon/A9xobwVgtlXmzCHFsDllc2DOAqM3HFn9VRS8rnITeLONWuOffMRtoPasGEUKs4V1zskf+F1OkxyeHQRfPw/bqo=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.3.146) by
 VI1PR0402MB3789.eurprd04.prod.outlook.com (52.134.15.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Tue, 3 Dec 2019 01:53:17 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::30e0:6638:e97c:e625]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::30e0:6638:e97c:e625%7]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 01:53:17 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Fabio Estevam <festevam@gmail.com>, Andre Renaud
 <arenaud@designa-electronics.com>
Subject: RE: [EXT] Re: iMX6/UART imprecise external abort
Thread-Topic: [EXT] Re: iMX6/UART imprecise external abort
Thread-Index: AQHVqVLo4K9VUksIR0CZH5d48DlS+qenpL4w
Date: Tue, 3 Dec 2019 01:53:16 +0000
Message-ID: <VI1PR0402MB3600E87D07687EDD89AA1050FF420@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
In-Reply-To: <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c187bba4-a82d-44ba-816f-08d777939117
x-ms-traffictypediagnostic: VI1PR0402MB3789:
x-microsoft-antispam-prvs: <VI1PR0402MB378974823D5AADC72E38D63CFF420@VI1PR0402MB3789.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(366004)(346002)(39860400002)(199004)(189003)(8676002)(6436002)(8936002)(3846002)(6116002)(7696005)(76116006)(64756008)(7736002)(55016002)(6306002)(305945005)(14454004)(45080400002)(33656002)(5660300002)(53546011)(102836004)(316002)(76176011)(52536014)(478600001)(2906002)(66446008)(99286004)(186003)(229853002)(71200400001)(14444005)(256004)(966005)(81156014)(81166006)(66066001)(6506007)(66556008)(26005)(74316002)(86362001)(25786009)(66946007)(11346002)(446003)(4326008)(6246003)(110136005)(71190400001)(9686003)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3789;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ll/BICPRDfOsWdrIjji1tjIyof9S8Bo8+QX0x8cwXZlthfNtd/+YxmYI0/fzuPWqo/9jlugvImQHH+Mg0grxlLyBpoq/FDbGCnpGzbRoW1GZWY/zLSkhQqV2p3sS6cd6x7HyNbzxrPkPy1r/vEEPku57qp+F4WmdTr3UzeDJHq9MFqJomfg/qtMHDq8rBO6uBaMpCcAx9JKphePD/pS3fu33H5RQAXp1JXpPuajjws9dgKOlMD6Rnt86OXYPNf4zMxkecBfc9VOCxs/PGz9CwW0r/UsGNhVCjUc1p3I1hay2muXqSvRvlpLcC39QWpT/i4y55E0hu4XMtzb53BpuSUw6OZETErVtbCJFZabzl3OB63epIvF36lZRCVeUAd1KBFiDRpy1MlthtG7uxxYS/c+/qrid6wAGbxoyjKSNgq8DU+9AOVAyvaT4jBx6af2r
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c187bba4-a82d-44ba-816f-08d777939117
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 01:53:16.9881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2kQUZ5Lur0lUS4v1ptAr+28vnntxiDpOPvm4stvnxx7/43DlqNrkwaby1BdNsWr+Uz7UQ2KhuLREx6AZndSnBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3789
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_175322_195143_E17A6338 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabio Estevam <festevam@gmail.com> Sent: Tuesday, December 3, 2019 4:56 AM
> Hi Andre,
> 
> [Adding Andy]
> 
> On Mon, Dec 2, 2019 at 5:40 PM Andre Renaud
> <arenaud@designa-electronics.com> wrote:
> >
> > Hello,
> > I am working with an iMX6Q system that is exhibiting a crash when
> > using the serial ports.
> > We have /dev/ttymxc2 configured as an RS485 UART, and are seeing an
> > 'imprecise external abort' after some time of use (panic listed
> > below).
> >
> > We are able to replicate this both on the custom kernel we're using,
> > as well as on the 5.3.x+fslc image from
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgith
> >
> ub.com%2FFreescale%2Flinux-fslc&amp;data=02%7C01%7Cfugang.duan%40
> nxp.c
> >
> om%7C08c50f6afbd14be3017d08d7776a0a4e%7C686ea1d3bc2b4c6fa92cd9
> 9c5c3016
> >
> 35%7C0%7C0%7C637109169631007605&amp;sdata=MZ4O%2Bk0dgKcY2So
> TfF7Vs%2F%2
> > FCXkDcBa5pc1iTAR6x8qQ%3D&amp;reserved=0
> 
> Could you please try a vanilla 5.4.1 kernel?

Please try 5.4 kernel firstly.

Can you remove the sdma firmware "/lib/firmware/imx/sdma/sdma-imx6q.bin" and
try it ?

Andy
> 
> >
> > To replicate it we have the mx6 hooked up to a PC, with each end
> > sending short 3-4 character messages every second. The fault kicks in
> > after about 15-30 minutes. This seems similar to the fault described
> > here:
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml
> > .org%2Flkml%2F2019%2F11%2F11%2F588&amp;data=02%7C01%7Cfugang
> .duan%40nxp.com%7C08c50f6afbd14be3017d08d7776a0a4e%7C686ea1d3b
> c2b4c6fa92cd99c5c301635%7C0%7C0%7C637109169631007605&amp;sdat
> a=aC45obTT2sYqoWhcdm%2F8qz%2BtKH4CZxAOb%2FwyjJ376Fw%3D&amp;
> reserved=0. We have tried shutting down DMA and various
> performance/cpuidle systems, but that doesn't seem to have any impact.
> >
> > Does anyone have any thoughts on how to solve this?
> >
> > Regards,
> > Andre
> >
> > [ 5047.074427] Unhandled fault: imprecise external abort (0x1406) at
> > 0xb6e00f78 [ 5047.081498] pgd = c0004000 [ 5047.084213] [b6e00f78]
> > *pgd=00000000 [ 5047.087813] Internal error: : 1406 [#1] SMP ARM [
> > 5047.092348] Modules linked in:
> > [ 5047.095429] CPU: 1 PID: 0 Comm: swapper/1 Not tainted 4.8.0+ #19 [
> > 5047.101440] Hardware name: Freescale i.MX6 Quad/DualLite (Device
> > Tree) [ 5047.107974] task: ef0ecd00 task.stack: ef158000 [
> > 5047.112521] PC is at arch_cpu_idle+0x48/0x4c [ 5047.116799] LR is at
> > arch_cpu_idle+0x44/0x4c
> > [ 5047.121077] pc : [<c0108c70>]    lr : [<c0108c6c>]    psr: 60070013
> > [ 5047.121077] sp : ef159f98  ip : ef159fa8  fp : ef159fa4 [
> > 5047.132560] r10: 00000000  r9 : 00000002  r8 : c0d025dc [
> > 5047.137791] r7 : c0d95448  r6 : ef158000  r5 : c0d02648  r4 :
> > ef158000 [ 5047.144324] r3 : c011a140  r2 : 005bc18a  r1 : ef7ae3c0
> > r0 : 00000000 [ 5047.150858] Flags: nZCv  IRQs on  FIQs on  Mode
> > SVC_32  ISA ARM  Segment none [ 5047.157998] Control: 10c5387d
> Table:
> > 3dd9804a  DAC: 00000051 [ 5047.163748] Process swapper/1 (pid: 0,
> > stack limit = 0xef158210) [ 5047.169759] Stack: (0xef159f98 to
> > 0xef15a000) [ 5047.174124] 9f80:
> >     ef159fb4 ef159fa8
> > [ 5047.182310] 9fa0: c0170b54 c0108c34 ef159fdc ef159fb8 c0170da4
> > c0170b30 c0a8fb48 c0d8b845
> > [ 5047.190496] 9fc0: c0d8c48c c0d025dc 10c0387d c0d95448 ef159ff4
> > ef159fe0 c010e6cc c0170b6c
> > [ 5047.198682] 9fe0: 3f0fc06a 00000051 00000000 ef159ff8 101018cc
> > c010e580 edddf4eb ffeebffd
> > [ 5047.206887] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>]
> > (default_idle_call+0x30/0x3c)
> > [ 5047.214993] [<c0170b54>] (default_idle_call) from [<c0170da4>]
> > (cpu_startup_entry+0x244/0x298)
> > [ 5047.223619] [<c0170da4>] (cpu_startup_entry) from [<c010e6cc>]
> > (secondary_start_kernel+0x158/0x164)
> > [ 5047.232677] [<c010e6cc>] (secondary_start_kernel) from [<101018cc>]
> > (0x101018cc)
> > [ 5047.240083] Code: e34c30d0 e5933014 e12fff33 f1080080 (e89da800) [
> > 5047.246190] ---[ end trace 853e028df8c9b7cd ]--- [ 5047.250814]
> > Kernel panic - not syncing: Attempted to kill the idle task!
> > [ 5047.257528] CPU2: stopping
> > [ 5047.260250] CPU: 2 PID: 0 Comm: swapper/2 Tainted: G      D
> > 4.8.0+ #19
> > [ 5047.267476] Hardware name: Freescale i.MX6 Quad/DualLite (Device
> > Tree) [ 5047.274022] [<c0110cc4>] (unwind_backtrace) from [<c010c9d0>]
> > (show_stack+0x20/0x24)
> > [ 5047.281783] [<c010c9d0>] (show_stack) from [<c04939c8>]
> > (dump_stack+0x90/0xa4)
> > [ 5047.289019] [<c04939c8>] (dump_stack) from [<c010ebe8>]
> > (handle_IPI+0x2a4/0x2c4)
> > [ 5047.296426] [<c010ebe8>] (handle_IPI) from [<c01014dc>]
> > (gic_handle_irq+0x80/0x84)
> > [ 5047.304013] [<c01014dc>] (gic_handle_irq) from [<c080c8cc>]
> > (__irq_svc+0x6c/0x90)
> > [ 5047.311500] Exception stack(0xef15bf48 to 0xef15bf90)
> > [ 5047.316561] bf40:                   00000000 ef7bd3c0 00729232
> > c011a140 ef15a000 c0d02648
> > [ 5047.324747] bf60: ef15a000 c0d95448 c0d025dc 00000004 00000000
> > ef15bfa4 ef15bfa8 ef15bf98
> > [ 5047.332930] bf80: c0108c6c c0108c70 60000013 ffffffff [
> > 5047.337999] [<c080c8cc>] (__irq_svc) from [<c0108c70>]
> > (arch_cpu_idle+0x48/0x4c)
> > [ 5047.345410] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>]
> > (default_idle_call+0x30/0x3c)
> > [ 5047.353514] [<c0170b54>] (default_idle_call) from [<c0170da4>]
> > (cpu_startup_entry+0x244/0x298)
> > [ 5047.362137] [<c0170da4>] (cpu_startup_entry) from [<c010e6cc>]
> > (secondary_start_kernel+0x158/0x164)
> > [ 5047.371191] [<c010e6cc>] (secondary_start_kernel) from [<101018cc>]
> > (0x101018cc)
> > [ 5047.378593] CPU3: stopping
> > [ 5047.381314] CPU: 3 PID: 0 Comm: swapper/3 Tainted: G      D
> > 4.8.0+ #19
> > [ 5047.388540] Hardware name: Freescale i.MX6 Quad/DualLite (Device
> > Tree) [ 5047.395085] [<c0110cc4>] (unwind_backtrace) from [<c010c9d0>]
> > (show_stack+0x20/0x24)
> > [ 5047.402841] [<c010c9d0>] (show_stack) from [<c04939c8>]
> > (dump_stack+0x90/0xa4)
> > [ 5047.410073] [<c04939c8>] (dump_stack) from [<c010ebe8>]
> > (handle_IPI+0x2a4/0x2c4)
> > [ 5047.417479] [<c010ebe8>] (handle_IPI) from [<c01014dc>]
> > (gic_handle_irq+0x80/0x84)
> > [ 5047.425060] [<c01014dc>] (gic_handle_irq) from [<c080c8cc>]
> > (__irq_svc+0x6c/0x90)
> > [ 5047.432546] Exception stack(0xef15df48 to 0xef15df90)
> > [ 5047.437606] df40:                   00000000 ef7cc3c0 00512f92
> > c011a140 ef15c000 c0d02648
> > [ 5047.445792] df60: ef15c000 c0d95448 c0d025dc 00000008 00000000
> > ef15dfa4 ef15dfa8 ef15df98
> > [ 5047.453974] df80: c0108c6c c0108c70 600d0013 ffffffff [
> > 5047.459041] [<c080c8cc>] (__irq_svc) from [<c0108c70>]
> > (arch_cpu_idle+0x48/0x4c)
> > [ 5047.466452] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>]
> > (default_idle_call+0x30/0x3c)
> > [ 5047.474555] [<c0170b54>] (default_idle_call) from [<c0170da4>]
> > (cpu_startup_entry+0x244/0x298)
> > [ 5047.483179] [<c0170da4>] (cpu_startup_entry) from [<c010e6cc>]
> > (secondary_start_kernel+0x158/0x164)
> > [ 5047.492234] [<c010e6cc>] (secondary_start_kernel) from [<101018cc>]
> > (0x101018cc)
> > [ 5047.499635] CPU0: stopping
> > [ 5047.502356] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D
> > 4.8.0+ #19
> > [ 5047.509582] Hardware name: Freescale i.MX6 Quad/DualLite (Device
> > Tree) [ 5047.516126] [<c0110cc4>] (unwind_backtrace) from [<c010c9d0>]
> > (show_stack+0x20/0x24)
> > [ 5047.523883] [<c010c9d0>] (show_stack) from [<c04939c8>]
> > (dump_stack+0x90/0xa4)
> > [ 5047.531116] [<c04939c8>] (dump_stack) from [<c010ebe8>]
> > (handle_IPI+0x2a4/0x2c4)
> > [ 5047.538521] [<c010ebe8>] (handle_IPI) from [<c01014dc>]
> > (gic_handle_irq+0x80/0x84)
> > [ 5047.546102] [<c01014dc>] (gic_handle_irq) from [<c080c8cc>]
> > (__irq_svc+0x6c/0x90)
> > [ 5047.553588] Exception stack(0xc0d01d78 to 0xc0d01dc0) [
> > 5047.558645] 1d60:
> >     ee4dfae8 20070113
> > [ 5047.566831] 1d80: 00000730 000049db ee4dfa80 ef3d9de0 ee4dfae8
> > 20070113 00000020 00000000
> > [ 5047.575016] 1da0: c0d0799c c0d01dd4 c0d01dd8 c0d01dc8 c05fdd00
> > c080c26c 60070113 ffffffff [ 5047.583205] [<c080c8cc>] (__irq_svc)
> > from [<c080c26c>]
> > (_raw_spin_unlock_irqrestore+0x30/0x34)
> > [ 5047.591839] [<c080c26c>] (_raw_spin_unlock_irqrestore) from
> > [<c05fdd00>] (sdhci_tasklet_finish+0xfc/0x234) [ 5047.601507]
> > [<c05fdd00>] (sdhci_tasklet_finish) from [<c012dfe8>]
> > (tasklet_action+0x68/0xf8)
> > [ 5047.609955] [<c012dfe8>] (tasklet_action) from [<c0101630>]
> > (__do_softirq+0x150/0x34c)
> > [ 5047.617892] [<c0101630>] (__do_softirq) from [<c012d9e0>]
> > (irq_exit+0xc8/0x128)
> > [ 5047.625218] [<c012d9e0>] (irq_exit) from [<c0181338>]
> > (__handle_domain_irq+0x70/0xc4)
> > [ 5047.633060] [<c0181338>] (__handle_domain_irq) from [<c01014a4>]
> > (gic_handle_irq+0x48/0x84)
> > [ 5047.641421] [<c01014a4>] (gic_handle_irq) from [<c080c8cc>]
> > (__irq_svc+0x6c/0x90)
> > [ 5047.648907] Exception stack(0xc0d01f08 to 0xc0d01f50)
> > [ 5047.653965] 1f00:                   00000000 ef79f3c0 00449df4
> > c011a140 c0d00000 c0d02648
> > [ 5047.662151] 1f20: c0d00000 c0d02540 c0d025dc 00000001 ef7db300
> > c0d01f64 c0d01f68 c0d01f58
> > [ 5047.670333] 1f40: c0108c6c c0108c70 60070013 ffffffff [
> > 5047.675399] [<c080c8cc>] (__irq_svc) from [<c0108c70>]
> > (arch_cpu_idle+0x48/0x4c)
> > [ 5047.682809] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>]
> > (default_idle_call+0x30/0x3c)
> > [ 5047.690911] [<c0170b54>] (default_idle_call) from [<c0170da4>]
> > (cpu_startup_entry+0x244/0x298)
> > [ 5047.699533] [<c0170da4>] (cpu_startup_entry) from [<c0806eb8>]
> > (rest_init+0x84/0x88)
> > [ 5047.707292] [<c0806eb8>] (rest_init) from [<c0c00d34>]
> > (start_kernel+0x390/0x39c)
> > [ 5047.714786] ---[ end Kernel panic - not syncing: Attempted to kill
> > the idle task!
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists
> > .infradead.org%2Fmailman%2Flistinfo%2Flinux-arm-kernel&amp;data=02%
> 7C0
> >
> 1%7Cfugang.duan%40nxp.com%7C08c50f6afbd14be3017d08d7776a0a4e%7
> C686ea1d
> >
> 3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637109169631007605&amp;sd
> ata=H%2FA
> >
> He58qWHdK12hD%2BWTVeLcETpFzwYpM2ZbRwArS4VA%3D&amp;reserved=
> 0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
