Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A421AD96A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 11:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHx9s4e/KU4uXXiGJ+YMZEhz8QuH5s4yAbvNQwcKh64=; b=pDSTTHXUdqEkZC
	qfF4mw7/QtfABGpYpuolwTM5oZOEfp3KZ3ORJot3FCQKFcZv0cOynO/A1Wse5XUcYe/Qnrt+Mkjmd
	X/rzbjn6AEcTiruXM7Uf545rdNPbnrqh/GkI7FzqU3qOcqNP0MYhjs1cAuFh002GltCvpWwr5WjjG
	jA41lr/iKfKWjtla7tZdvpd1TVKUNHAcgZvMNIB+HjB+16B70NGtGW/9DPumWqEDRiWw9whjAtvb6
	E9jH5vpcwDAd72btXS5AtbIe3dF3L+bGyROmU326EgQIyqkJ7BEjPXuqwTmBc/UYCtfHFFNsSujF+
	HRlJ685HvOaiMa8BU0vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPMwG-0000kh-B6; Fri, 17 Apr 2020 09:05:32 +0000
Received: from forward104o.mail.yandex.net ([37.140.190.179])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPMvp-0007ZW-7h
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 09:05:09 +0000
Received: from mxback21j.mail.yandex.net (mxback21j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::221])
 by forward104o.mail.yandex.net (Yandex) with ESMTP id 8D267941C24;
 Fri, 17 Apr 2020 11:58:04 +0300 (MSK)
Received: from sas2-b157fac3b6f2.qloud-c.yandex.net
 (sas2-b157fac3b6f2.qloud-c.yandex.net [2a02:6b8:c08:b282:0:640:b157:fac3])
 by mxback21j.mail.yandex.net (mxback/Yandex) with ESMTP id 10BClQGEfC-w2d0arIi;
 Fri, 17 Apr 2020 11:58:04 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maquefel.me; s=mail;
 t=1587113884; bh=7RSmA7/uov74FEEZSZQrj9Kdd8g3cpWwuhUzamcdrEY=;
 h=In-Reply-To:Subject:Cc:To:From:References:Date:Message-ID;
 b=XnzG87yiM38vzmZb6RNv7/jJ+vTfGjPedkb7qUDQlNqtKBwLVhl0i/PukjLDHmqp+
 MX6gDZ6jVHXOCk43QECHTHvZ+g57EtRsaVlhWiQdMFHgEKZo+NmshIlXGecoEGynuj
 F1z1I5riHbq5ZXMTVnMoZIXJ4ltJ9yKPjxhNwYOU=
Authentication-Results: mxback21j.mail.yandex.net;
 dkim=pass header.i=@maquefel.me
Received: by sas2-b157fac3b6f2.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id eUwTDORmgt-w12KMWAg; Fri, 17 Apr 2020 11:58:02 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
Date: Fri, 17 Apr 2020 11:57:20 +0300
From: Nikita Shubin <nikita.shubin@maquefel.me>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v2 0/3] remoteproc: imx_rproc: add virtio support
Message-ID: <20200417115720.000055d1@maquefel.me>
In-Reply-To: <DB6PR0402MB27603D39E31D30AA28D6893A88DB0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
 <DB6PR0402MB27603D39E31D30AA28D6893A88DB0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_020505_669672_EBF85220 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [37.140.190.179 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [37.140.190.179 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, 15 Apr 2020 02:42:32 +0000
Peng Fan <peng.fan@nxp.com> wrote:

> > Subject: [PATCH v2 0/3] remoteproc: imx_rproc: add virtio support
> 
> Have you ever see https://patchwork.kernel.org/cover/11390477/?
> 

I don't see anything that allows booting imx7-m4 from A7 In case elf
file interrupt vector is not supposed to be at OCRAM_S, am i missing
something?

I not interested in booting A7 from M4, i interested in wise versa
scenario.

> I have been waiting for Mathieu's rproc sync state patch, then
> rebase.
> 
> Thanks,
> Peng.
> 
> > 
> > This patch set introduces virtio support for imx7d-m4 communication:
> > 
> > - support booting loaded vim imx-rproc firmware
> > - implement .kick method support using mailbox in imx-processor
> > - parse vdev0vring0, vdev0vring1, vdev0buffer memory regions
> > required for virtio_rpmsg_bus initialization
> > 
> > Regarding imx7d-m4 boot proccess
> > 
> > Citing ARM documentation:
> > 
> > At Reset, Cortex-M3 and Cortex-M4 processors always boot from a
> > vector table at address zero.
> > 
> > "With uninitialized memory at address zero (for example,
> > unprogrammed Flash or uninitialized RAM), the processor will read a
> > spurious initial Main Stack Pointer value from address zero and a
> > spurious code entry point (Reset vector) from address 0x4, possibly
> > containing an illegal instruction set state specifier (ESPR.T bit)
> > in bit[0]."
> > 
> > So to successfully boot m4 coproc we need to write Stack Pointer and
> > Program counter, i see no obvious to get Stack Pointer value, so
> > two ways exist ethier form a special elf section:
> > 
> > "
> > .loader :
> >   {
> >     LONG(__StackTop);
> >     LONG(Reset_Handler + 1);
> >   } > m_start
> > "
> > 
> > and put it at 0x0 address:
> > 
> > "
> > m_start               (RX)  : ORIGIN = 0x00000000, LENGTH =
> > 0x00008000
> > "
> > 
> > Or (the way i've chosen) only put Entry Point at 0x04 and set stack
> > as first instruction:
> > 
> > "
> > Reset_Handler:
> > 	ldr   sp, =__stack      /* set stack pointer */
> > "
> > 
> > Regarding mailboxes and memory regions :
> > 
> > This code is heavily derived from stm32-rproc (i.e. copy pasted)
> > and this fact needs to reflected in commits, please tell me how to
> > emphasize this fact.
> > 
> > Attaching succesful trace booting m4 (with Add rpmsg tty driver
> > applied) :
> > 
> > [  143.240616] remoteproc remoteproc0: powering up imx-rproc
> > [  143.251768] remoteproc remoteproc0: Booting fw image huginn.elf,
> > size 466876 [  143.251786] imx-rproc imx7d-cm4: iommu not present
> > [  143.251825] remoteproc remoteproc0: rsc: type 3 [  143.251837]
> > remoteproc remoteproc0: vdev rsc: id 7, dfeatures 0x1, cfg len 0, 2
> > vrings [  143.251924] remoteproc remoteproc0: vdev rsc: vring0: da
> > 0xffffffff, qsz 16, align 16 [  143.251935] remoteproc remoteproc0:
> > vdev rsc: vring1: da 0xffffffff, qsz 16, align 16 [  143.251955]
> > imx-rproc imx7d-cm4: map memory: 0x00900000+20000 [  143.251987]
> > imx-rproc imx7d-cm4: map memory: 0x00920000+2000 [  143.252003]
> > imx-rproc imx7d-cm4: map memory: 0x00922000+2000 [  143.252020]
> > remoteproc remoteproc0: phdr: type 1 da 0x20200000 memsz 0x240
> > filesz 0x240 [  143.252032] remoteproc remoteproc0: da = 0x20200000
> > len = 0x240 va = 0x(ptrval) [  143.252043] remoteproc remoteproc0:
> > phdr: type 1 da 0x20200240 memsz 0x5b38 filesz 0x5b38 [
> > 143.252053] remoteproc remoteproc0: da = 0x20200240 len = 0x5b38 va
> > = 0x(ptrval) [  143.252105] remoteproc remoteproc0: phdr: type 1 da
> > 0x20205d78 memsz 0x4b58 filesz 0x758 [  143.252115] remoteproc
> > remoteproc0: da = 0x20205d78 len = 0x4b58 va = 0x(ptrval) [
> > 143.252159] remoteproc remoteproc0: da = 0x200006cc len = 0x8c va =
> > 0x(ptrval) [  143.252176] remoteproc remoteproc0: Started from
> > 0x202002f5 [  143.252211]  imx7d-cm4#vdev0buffer: assigned reserved
> > memory node vdev0buffer@00924000 [  143.252232] virtio virtio0:
> > reset ! [  143.252241] virtio virtio0: status: 1 [  143.260567]
> > virtio_rpmsg_bus virtio0: status: 3 [  143.260598] remoteproc
> > remoteproc0: vring0: va c083c000 qsz 16 notifyid 0 [  143.260614]
> > remoteproc remoteproc0: vring1: va c0872000 qsz 16 notifyid 1 [
> > 143.260651] virtio_rpmsg_bus virtio0: buffers: va c0894000, dma
> > 0x00924000 [  143.260666] Added buffer head 0 to (ptrval) [
> > 143.260674] Added buffer head 1 to (ptrval) [  143.260680] Added
> > buffer head 2 to (ptrval) [  143.260686] Added buffer head 3 to
> > (ptrval) [  143.260692] Added buffer head 4 to (ptrval) [
> > 143.260697] Added buffer head 5 to (ptrval) [  143.260703] Added
> > buffer head 6 to (ptrval) [  143.260709] Added buffer head 7 to
> > (ptrval) [  143.260715] Added buffer head 8 to (ptrval) [
> > 143.260721] Added buffer head 9 to (ptrval) [  143.260727] Added
> > buffer head 10 to (ptrval) [  143.260733] Added buffer head 11 to
> > (ptrval) [  143.260738] Added buffer head 12 to (ptrval) [
> > 143.260744] Added buffer head 13 to (ptrval) [  143.260750] Added
> > buffer head 14 to (ptrval) [  143.260756] Added buffer head 15 to
> > (ptrval) [  143.260771] virtio_rpmsg_bus virtio0: status: 7 [
> > 143.260779] remoteproc remoteproc0: kicking vq index: 0 [
> > 143.260788] remoteproc remoteproc0: sending message : vqid = 0 [
> > 143.260802] imx_mu 30aa0000.mailbox: Send data on wrong channel
> > type: 1 [  143.260810] virtio_rpmsg_bus virtio0: rpmsg host is
> > online [  143.261680] imx7d-cm4#vdev0buffer: registered virtio0
> > (type 7) [  143.261694] remoteproc remoteproc0: remote processor
> > imx-rproc is now up [  143.354880] remoteproc remoteproc0: vq index
> > 0 is interrupted [  143.354895] virtqueue callback for (ptrval)
> > ((ptrval)) [  143.354912] virtio_rpmsg_bus virtio0: From: 0x0, To:
> > 0x35, Len: 40, Flags: 0, Reserved: 0 [  143.354924] rpmsg_virtio
> > RX: 00 00 00 00 35 00 00 00 00 00 00 00 28 00 00 00
> > ....5.......(... [  143.354932] rpmsg_virtio RX: 72 70 6d 73 67 2d
> > 74 74 79 2d 72 61 77 00 00 00  rpmsg-tty-raw... [  143.354939]
> > rpmsg_virtio RX: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> > ................ [  143.354945] rpmsg_virtio RX: 00 00 00 00 00 00
> > 00 00                          ........ [  143.354956] NS
> > announcement: 72 70 6d 73 67 2d 74 74 79 2d 72 61 77 00 00 00
> > rpmsg-tty-raw... [  143.354963] NS announcement: 00 00 00 00 00 00
> > 00 00 00 00 00 00 00 00 00 00  ................ [  143.354969] NS
> > announcement: 00 00 00 00 00 00 00 00
> > ........ [  143.354980] virtio_rpmsg_bus virtio0: creating channel
> > rpmsg-tty-raw addr 0x0 [  143.356584] rpmsg_tty
> > virtio0.rpmsg-tty-raw.-1.0: new channel: 0x400 -> 0x0 : ttyRPMSG0 [
> >  143.356651] Added buffer head 0 to (ptrval) [  143.356658] No more
> > buffers in queue [  143.356667] virtio_rpmsg_bus virtio0: Received
> > 1 messages [  143.404302] remoteproc remoteproc0: vq index 0 is
> > interrupted [  143.404319] virtqueue callback for (ptrval)
> > ((ptrval)) [  143.404337] virtio_rpmsg_bus virtio0: From: 0x1, To:
> > 0x35, Len: 40, Flags: 0, Reserved: 0 [  143.404350] rpmsg_virtio
> > RX: 01 00 00 00 35 00 00 00 00 00 00 00 28 00 00 00
> > ....5.......(... [  143.404391] rpmsg_virtio RX: 72 70 6d 73 67 2d
> > 74 74 79 2d 72 61 77 00 00 00  rpmsg-tty-raw... [  143.404399]
> > rpmsg_virtio RX: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> > ................ [  143.404405] rpmsg_virtio RX: 01 00 00 00 00 00
> > 00 00                          ........
> > [  143.404417] NS announcement: 72 70 6d 73 67 2d 74 74 79 2d 72 61
> > 77 00 00 00  rpmsg-tty-raw...
> > [  143.404424] NS announcement: 00 00 00 00 00 00 00 00 00 00 00 00
> > 00 00 00 00  ................
> > [  143.404430] NS announcement: 01 00 00 00 00 00 00
> > 00                          ........
> > [  143.404441] virtio_rpmsg_bus virtio0: creating channel
> > rpmsg-tty-raw addr 0x1 [  143.411114] rpmsg_tty
> > virtio0.rpmsg-tty-raw.-1.1: new channel: 0x401 -> 0x1 : ttyRPMSG1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
