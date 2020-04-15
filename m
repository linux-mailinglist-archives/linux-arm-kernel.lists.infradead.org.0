Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0531A9108
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 04:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgPCc/avU2WSjFFgNcPK+rbgNYBRcz2pJ7s6+x+YT4o=; b=uXvs5AB8pK+UCo
	wvmgYXCmpgXjTfT8DqxiPYZkO4TaXWoyeL8Aah1RfaJfPNbfbiDaF7aV7+K2KIKsMGRfuapGssKuL
	j7DIkgQJhnAGPZe6fRL1lXG9dxdhE/SKeyMQwKLVlw69NIJ9pm5bKsCaCgiux3UhZTePkFzt5S6Ch
	9S14+i+uifOzwkAHe1v22dM/grqzlwDnZeqkBn/5R/XOtq1nETGfAs9AWNhzhvEpRfczeb79uxd/6
	LhzwPzB2Dn+pPJCFjA6dLzD9FaUpvda2TZxb+ocM5gAFkeGtwf53nT0kCYuF+NQogFUw6icc0RoPD
	SsnxpVe4ucSFIt7g59/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOY0i-0008Dq-Li; Wed, 15 Apr 2020 02:42:44 +0000
Received: from mail-db8eur05on2076.outbound.protection.outlook.com
 ([40.107.20.76] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOY0Z-0008DJ-G8
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 02:42:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BjAl34XhCuiLTgbHZP+Y1m0HZL7a4wv+C45i11B49sZCrBSk8i3CtTvAAqvGHBx2y/1/ySTzgI1rlSEx3jFSXCaYKpY1zvFhSvhkW1vRxWJtJe5AgLF2arc6NIJifLiK2sZE9JBqXh2t/KWzNk4erYFdkg98xKRMoeGe2tnEeAiXC0weeKPyFiyHso9BOvD8cB+HxDYplUV/Oam41IA8XeEnJ5CTqu7Uh64ArJFXwfiWGwwYzzy8JVmar74eQOtWCFwQkz9a2+HRo8bpHB/TesChyl9tkAVnHQs8WJy1TbP1z1cLHFZZcLBQ0n5d3O9J9xXzp4b7O3nYMMObNmgcAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gtFjWj1YucLUeoKjFAhlC/kjmEtosOXKWzmGv9cI8CE=;
 b=hwxVATyNwO7gnf0vBLjZiTj+x0lkDfIFTpbAhTIzFsrnIbXwnde+vOPT/69T+CKxgkBBu/CW0EAH2o21s5lQfYvoCTJFMDg8xili8EC9BP6cWnatTcCATfFrcY7Q0uAbhWpWaLJFBhwD6UMZU7pwEvWomQRJjuo5aUvzKUv/YZ+oNj1BcWtJzn3oUWDV3/04QaZT4UROUvvVzVj06TUkbz9LzPhqBYsz+6m2WunDE2qgdcMUAzCoaav+svuuuQgtLxTi6s/tJKRd1o1zifbecYFY8NLIyDS+KfPMon/nJUtY0IP/ClXiSivHPoHGMmWSUV5X/Qv6WaDBjtCqWXdbSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gtFjWj1YucLUeoKjFAhlC/kjmEtosOXKWzmGv9cI8CE=;
 b=iuHVvLQJ7SJmaxRRlon4KtALNpSARcW86sVHzHbWkbcgXa2Lt8FpEKALBfiyvwc7NsR5CCjhdMC8x87WCbkBbZyOLOAQGBx+8og6obhbFPy0APIPsf/HmGX5vdIhXfQ1nc9rT03FJazbycKnvd8sq4RYOAZkSu1IqKpulNIEg8E=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2695.eurprd04.prod.outlook.com (2603:10a6:4:95::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Wed, 15 Apr
 2020 02:42:32 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 02:42:32 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "nikita.shubin@maquefel.me" <nikita.shubin@maquefel.me>
Subject: RE: [PATCH v2 0/3] remoteproc: imx_rproc: add virtio support
Thread-Topic: [PATCH v2 0/3] remoteproc: imx_rproc: add virtio support
Thread-Index: AQHWDAb+JdgObafwAkG5FGKUl9Xnrah5hqFQ
Date: Wed, 15 Apr 2020 02:42:32 +0000
Message-ID: <DB6PR0402MB27603D39E31D30AA28D6893A88DB0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
In-Reply-To: <20200406113310.3041-1-nikita.shubin@maquefel.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: de760fa7-0c26-4bf9-0fc8-08d7e0e6a5e7
x-ms-traffictypediagnostic: DB6PR0402MB2695:|DB6PR0402MB2695:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB269562743D7977329228622F88DB0@DB6PR0402MB2695.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0374433C81
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(376002)(396003)(136003)(8676002)(6916009)(76116006)(66556008)(966005)(8936002)(316002)(7416002)(66446008)(64756008)(5660300002)(66946007)(55016002)(9686003)(66476007)(44832011)(81156014)(478600001)(54906003)(186003)(7696005)(6506007)(4326008)(52536014)(71200400001)(33656002)(26005)(2906002)(86362001)(505234006);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Uv8CnEOS8qMeLmlJKtDH0WjIKiXocqebxmyKKRYXPd4P2qLN4G4xLzGvWHqwy37INwXnX+HH7hyDAELqG6YiqAA48nBRFvYIKOq1ihTssT9RZ70jsoWJ31CTuRyvCh7cHIcS6CVmnTXGQm2URAyamoPIqNWWJo6sWodfMNFJNOYji2N9NGnzvLnRzRDc5DfLgknQMhChqW66uiwtMuBOZbmoxoKWp9QXtXj2uzCBl0WJ2A9Y1CIJLddN9sjKF6kHD5E5+oItIj1ApspjdLPVQmMu/cdjSk0FugYN6862DbktEykIlww9AlDEylSeEG8gv6oPyrAUaNIW4V0lv2WzCi1csdIuVHlcN5vH4XufJ0DonlDxM+F0uvWUkivsj9jJ8X8ytK7slYgKZo04vZ3LTyvmEtBQhUKZaBWtu4mrnPJErtJpRq6yYOCEInQBpfNRVDiT9hcWADZHUxBctLri3USza0hY6UkWX0YIPGsnX7edyMQkYug1l8BiA9cLG3Ds4y9qRV4AJk7Y9RwX0Xxm2ZUWDJk7R2eGc6ofeL9KwkMWSbfRsWkk+fZngf/09p7PBxeG8woJTAYnqs7x1s5pGg==
x-ms-exchange-antispam-messagedata: Iu/bQsl1Rr4KTCWbz59s/ZknJXYLKMLgyG9pJz6lg5a7o5Avo13SIs1cJxEbxrH6QCrEcfw7zE0uqAAgsCIGDjau/QjkrKvvMxw2Eaw8uBBTpjMOP/XfHOHMrGyeOk74xH1XwyWVr9FruzO/DBdqGg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de760fa7-0c26-4bf9-0fc8-08d7e0e6a5e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2020 02:42:32.5388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6TAbGj87zyHa1h9LU/mv8Te/18qIxLbo0fapHSR8Y2kRA570hwmzmU+AhhEaCaEg+POyLl2kU7g5nRKiPIQtGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_194235_608194_83645BF5 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH v2 0/3] remoteproc: imx_rproc: add virtio support

Have you ever see https://patchwork.kernel.org/cover/11390477/?

I have been waiting for Mathieu's rproc sync state patch, then
rebase.

Thanks,
Peng.

> 
> This patch set introduces virtio support for imx7d-m4 communication:
> 
> - support booting loaded vim imx-rproc firmware
> - implement .kick method support using mailbox in imx-processor
> - parse vdev0vring0, vdev0vring1, vdev0buffer memory regions required for
> virtio_rpmsg_bus initialization
> 
> Regarding imx7d-m4 boot proccess
> 
> Citing ARM documentation:
> 
> At Reset, Cortex-M3 and Cortex-M4 processors always boot from a vector
> table at address zero.
> 
> "With uninitialized memory at address zero (for example, unprogrammed
> Flash or uninitialized RAM), the processor will read a spurious initial Main
> Stack Pointer value from address zero and a spurious code entry point (Reset
> vector) from address 0x4, possibly containing an illegal instruction set state
> specifier (ESPR.T bit) in bit[0]."
> 
> So to successfully boot m4 coproc we need to write Stack Pointer and
> Program counter, i see no obvious to get Stack Pointer value, so two ways
> exist ethier form a special elf section:
> 
> "
> .loader :
>   {
>     LONG(__StackTop);
>     LONG(Reset_Handler + 1);
>   } > m_start
> "
> 
> and put it at 0x0 address:
> 
> "
> m_start               (RX)  : ORIGIN = 0x00000000, LENGTH =
> 0x00008000
> "
> 
> Or (the way i've chosen) only put Entry Point at 0x04 and set stack as first
> instruction:
> 
> "
> Reset_Handler:
> 	ldr   sp, =__stack      /* set stack pointer */
> "
> 
> Regarding mailboxes and memory regions :
> 
> This code is heavily derived from stm32-rproc (i.e. copy pasted) and this fact
> needs to reflected in commits, please tell me how to emphasize this fact.
> 
> Attaching succesful trace booting m4 (with Add rpmsg tty driver applied) :
> 
> [  143.240616] remoteproc remoteproc0: powering up imx-rproc
> [  143.251768] remoteproc remoteproc0: Booting fw image huginn.elf, size
> 466876 [  143.251786] imx-rproc imx7d-cm4: iommu not present
> [  143.251825] remoteproc remoteproc0: rsc: type 3 [  143.251837]
> remoteproc remoteproc0: vdev rsc: id 7, dfeatures 0x1, cfg len 0, 2 vrings
> [  143.251924] remoteproc remoteproc0: vdev rsc: vring0: da 0xffffffff, qsz
> 16, align 16 [  143.251935] remoteproc remoteproc0: vdev rsc: vring1: da
> 0xffffffff, qsz 16, align 16 [  143.251955] imx-rproc imx7d-cm4: map memory:
> 0x00900000+20000 [  143.251987] imx-rproc imx7d-cm4: map memory:
> 0x00920000+2000 [  143.252003] imx-rproc imx7d-cm4: map memory:
> 0x00922000+2000 [  143.252020] remoteproc remoteproc0: phdr: type 1 da
> 0x20200000 memsz 0x240 filesz 0x240 [  143.252032] remoteproc
> remoteproc0: da = 0x20200000 len = 0x240 va = 0x(ptrval) [  143.252043]
> remoteproc remoteproc0: phdr: type 1 da 0x20200240 memsz 0x5b38 filesz
> 0x5b38 [  143.252053] remoteproc remoteproc0: da = 0x20200240 len =
> 0x5b38 va = 0x(ptrval) [  143.252105] remoteproc remoteproc0: phdr: type
> 1 da 0x20205d78 memsz 0x4b58 filesz 0x758 [  143.252115] remoteproc
> remoteproc0: da = 0x20205d78 len = 0x4b58 va = 0x(ptrval) [  143.252159]
> remoteproc remoteproc0: da = 0x200006cc len = 0x8c va = 0x(ptrval)
> [  143.252176] remoteproc remoteproc0: Started from 0x202002f5
> [  143.252211]  imx7d-cm4#vdev0buffer: assigned reserved memory node
> vdev0buffer@00924000 [  143.252232] virtio virtio0: reset !
> [  143.252241] virtio virtio0: status: 1 [  143.260567] virtio_rpmsg_bus
> virtio0: status: 3 [  143.260598] remoteproc remoteproc0: vring0: va
> c083c000 qsz 16 notifyid 0 [  143.260614] remoteproc remoteproc0: vring1:
> va c0872000 qsz 16 notifyid 1 [  143.260651] virtio_rpmsg_bus virtio0:
> buffers: va c0894000, dma 0x00924000 [  143.260666] Added buffer head 0
> to (ptrval) [  143.260674] Added buffer head 1 to (ptrval) [  143.260680]
> Added buffer head 2 to (ptrval) [  143.260686] Added buffer head 3 to (ptrval)
> [  143.260692] Added buffer head 4 to (ptrval) [  143.260697] Added buffer
> head 5 to (ptrval) [  143.260703] Added buffer head 6 to (ptrval)
> [  143.260709] Added buffer head 7 to (ptrval) [  143.260715] Added buffer
> head 8 to (ptrval) [  143.260721] Added buffer head 9 to (ptrval)
> [  143.260727] Added buffer head 10 to (ptrval) [  143.260733] Added
> buffer head 11 to (ptrval) [  143.260738] Added buffer head 12 to (ptrval)
> [  143.260744] Added buffer head 13 to (ptrval) [  143.260750] Added
> buffer head 14 to (ptrval) [  143.260756] Added buffer head 15 to (ptrval)
> [  143.260771] virtio_rpmsg_bus virtio0: status: 7 [  143.260779]
> remoteproc remoteproc0: kicking vq index: 0 [  143.260788] remoteproc
> remoteproc0: sending message : vqid = 0 [  143.260802] imx_mu
> 30aa0000.mailbox: Send data on wrong channel type: 1 [  143.260810]
> virtio_rpmsg_bus virtio0: rpmsg host is online [  143.261680]
> imx7d-cm4#vdev0buffer: registered virtio0 (type 7) [  143.261694]
> remoteproc remoteproc0: remote processor imx-rproc is now up
> [  143.354880] remoteproc remoteproc0: vq index 0 is interrupted
> [  143.354895] virtqueue callback for (ptrval) ((ptrval)) [  143.354912]
> virtio_rpmsg_bus virtio0: From: 0x0, To: 0x35, Len: 40, Flags: 0, Reserved: 0
> [  143.354924] rpmsg_virtio RX: 00 00 00 00 35 00 00 00 00 00 00 00 28 00
> 00 00  ....5.......(...
> [  143.354932] rpmsg_virtio RX: 72 70 6d 73 67 2d 74 74 79 2d 72 61 77 00
> 00 00  rpmsg-tty-raw...
> [  143.354939] rpmsg_virtio RX: 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> 00 00  ................
> [  143.354945] rpmsg_virtio RX: 00 00 00 00 00 00 00
> 00                          ........
> [  143.354956] NS announcement: 72 70 6d 73 67 2d 74 74 79 2d 72 61 77
> 00 00 00  rpmsg-tty-raw...
> [  143.354963] NS announcement: 00 00 00 00 00 00 00 00 00 00 00 00 00
> 00 00 00  ................
> [  143.354969] NS announcement: 00 00 00 00 00 00 00
> 00                          ........
> [  143.354980] virtio_rpmsg_bus virtio0: creating channel rpmsg-tty-raw
> addr 0x0 [  143.356584] rpmsg_tty virtio0.rpmsg-tty-raw.-1.0: new channel:
> 0x400 -> 0x0 : ttyRPMSG0 [  143.356651] Added buffer head 0 to (ptrval)
> [  143.356658] No more buffers in queue [  143.356667] virtio_rpmsg_bus
> virtio0: Received 1 messages [  143.404302] remoteproc remoteproc0: vq
> index 0 is interrupted [  143.404319] virtqueue callback for (ptrval) ((ptrval))
> [  143.404337] virtio_rpmsg_bus virtio0: From: 0x1, To: 0x35, Len: 40, Flags:
> 0, Reserved: 0 [  143.404350] rpmsg_virtio RX: 01 00 00 00 35 00 00 00 00
> 00 00 00 28 00 00 00  ....5.......(...
> [  143.404391] rpmsg_virtio RX: 72 70 6d 73 67 2d 74 74 79 2d 72 61 77 00
> 00 00  rpmsg-tty-raw...
> [  143.404399] rpmsg_virtio RX: 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> 00 00  ................
> [  143.404405] rpmsg_virtio RX: 01 00 00 00 00 00 00
> 00                          ........
> [  143.404417] NS announcement: 72 70 6d 73 67 2d 74 74 79 2d 72 61 77
> 00 00 00  rpmsg-tty-raw...
> [  143.404424] NS announcement: 00 00 00 00 00 00 00 00 00 00 00 00 00
> 00 00 00  ................
> [  143.404430] NS announcement: 01 00 00 00 00 00 00
> 00                          ........
> [  143.404441] virtio_rpmsg_bus virtio0: creating channel rpmsg-tty-raw
> addr 0x1 [  143.411114] rpmsg_tty virtio0.rpmsg-tty-raw.-1.1: new channel:
> 0x401 -> 0x1 : ttyRPMSG1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
