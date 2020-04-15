Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0D41AAD4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwHLsKydYlqFkMQpcub1++gCgSfXt5aiPKatM6jJ9oA=; b=GEbnBJNR+WHwrW
	lGZ2NU8yzKsxb3sL4q3ZFsmyfk9INvWkBt+HaTvyBG2DO+Fs/H+H2YxRu97TO2yZ2a0SSYBKYXShq
	mO45FE+efB8CSdKUW6zn5tzsFfY/NFzjUGSuAfW1MHclg+cWJgE5G0FqgXrTJ8yzyBnKDunC4keby
	UEIP83zQtN+11FSoMLvFKjF9AqHpVqIapVW5rlAp79D5yuSr+3XdpMwnu5v4sV2S003Tu7WTrlevL
	i71EXPDw5zuFBtzCFJQzQmgjnMul0noh+bsXJmZR3lxUK58cU5dqFwXL34ttYLrsQn2LU95mSzl4c
	tDb6VEhWnLp6vAIFCOzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkrr-00051y-S6; Wed, 15 Apr 2020 16:26:27 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkrg-000513-7B
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:26:18 +0000
Received: by mail-il1-x143.google.com with SMTP id t10so3856509ilg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 09:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c0SAuDxgJRvnWKT3G5EeXF2Zad0kVUQbRnKDWIeJr6M=;
 b=MMq+WmrFahtorEiuniDqbLxtfwCYWKgVQb07BCQBJxbDnz3eYz41kD5F3mUisidr1O
 JqDVP5GUrzoG30QjwrfoOI9fIPj9lNxnXDbA+TlLxy06LUSWG1BPpgF9CtkYiVuPTGAR
 wI1jvxsQoRtoRIZeAqb0MLhds76NDVEbo9KkgaT7poLo9ob1oB9WR4UURoCdgD6cAWdX
 EnBqloqQ6Vv2Rp94mvbxkJPdYy8DD0PBqR8YbpTEAQSki9nqKhcMO0/OBpNUYFeIDTVL
 kX6nGzvt6iPkkdeIphbcSDd13o/UEKfzp+VUvVVuXA6hx/F047gEKD928kpiY/s3ZZoz
 vqkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c0SAuDxgJRvnWKT3G5EeXF2Zad0kVUQbRnKDWIeJr6M=;
 b=F3iDPFuyulebYVf4oOa4ZKsma2GHefeCTkzKsHTKeNZh7nAUXKcRACVbB/aZN2PIGh
 S3ErAUQ/50BZGXO2uc4MKSQdk4ZXkBQvSql+tmeJnjpUIv2VakVybIbkRFeWoms+7Nh+
 kxxxi4Au++DJc0A1SyEdHPLvMbirk/Dp8RY6+eV5gRswM1d2mCq7nhY7N8mw3mJK620t
 BvDwPHBlGyqDPQfRUBmCH8U7L6fAF4mhEnoYq14jvOT4q+U4HjjkjVukaxbbn0EeQ463
 +Xn7THuD+rKNK0/anF5/yz5n7CRa36RoAsLWStAIaSHBYNQKKwjWrp1HF05Hz+HYeSM3
 m4KQ==
X-Gm-Message-State: AGi0PubbwQo6p1lg1F+zs9B48CBAsUiVU4MwzRcfNkvWJQ2CwGQkcH37
 Uax2EnUH1MyXNPqkQz92GZPylyD272e20EAXoVXnwA==
X-Google-Smtp-Source: APiQypJkAugE0hL3vERmDWrKCRZkxTXHiPG4Mg/psGaAlG5S8hriTzMNkdv0OdpUDGnmH56ckilXxWVVMFpuuDzSqHQ=
X-Received: by 2002:a92:158c:: with SMTP id 12mr6127933ilv.58.1586967974949;
 Wed, 15 Apr 2020 09:26:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
 <DB6PR0402MB27603D39E31D30AA28D6893A88DB0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB27603D39E31D30AA28D6893A88DB0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 15 Apr 2020 10:26:04 -0600
Message-ID: <CANLsYkweYysAJru0dZkBfEeFU0Qb5zzDX1fjodYupXaXJsrOfA@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] remoteproc: imx_rproc: add virtio support
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_092616_268271_A44E9C7D 
X-CRM114-Status: GOOD (  21.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 "nikita.shubin@maquefel.me" <nikita.shubin@maquefel.me>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 at 20:42, Peng Fan <peng.fan@nxp.com> wrote:
>
> > Subject: [PATCH v2 0/3] remoteproc: imx_rproc: add virtio support
>
> Have you ever see https://patchwork.kernel.org/cover/11390477/?
>
> I have been waiting for Mathieu's rproc sync state patch, then
> rebase.

I have already sent out 2 revisions of the MCU synchronisation
patchset, the latest here [1].  A new iteration should be out by the
end of the week or early next week.  When that happens, I would really
appreciate it if you could take a look and provide comments.

Thanks,
Mathieu

[1].https://patchwork.kernel.org/project/linux-remoteproc/list/?series=261069


>
> Thanks,
> Peng.
>
> >
> > This patch set introduces virtio support for imx7d-m4 communication:
> >
> > - support booting loaded vim imx-rproc firmware
> > - implement .kick method support using mailbox in imx-processor
> > - parse vdev0vring0, vdev0vring1, vdev0buffer memory regions required for
> > virtio_rpmsg_bus initialization
> >
> > Regarding imx7d-m4 boot proccess
> >
> > Citing ARM documentation:
> >
> > At Reset, Cortex-M3 and Cortex-M4 processors always boot from a vector
> > table at address zero.
> >
> > "With uninitialized memory at address zero (for example, unprogrammed
> > Flash or uninitialized RAM), the processor will read a spurious initial Main
> > Stack Pointer value from address zero and a spurious code entry point (Reset
> > vector) from address 0x4, possibly containing an illegal instruction set state
> > specifier (ESPR.T bit) in bit[0]."
> >
> > So to successfully boot m4 coproc we need to write Stack Pointer and
> > Program counter, i see no obvious to get Stack Pointer value, so two ways
> > exist ethier form a special elf section:
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
> > Or (the way i've chosen) only put Entry Point at 0x04 and set stack as first
> > instruction:
> >
> > "
> > Reset_Handler:
> >       ldr   sp, =__stack      /* set stack pointer */
> > "
> >
> > Regarding mailboxes and memory regions :
> >
> > This code is heavily derived from stm32-rproc (i.e. copy pasted) and this fact
> > needs to reflected in commits, please tell me how to emphasize this fact.
> >
> > Attaching succesful trace booting m4 (with Add rpmsg tty driver applied) :
> >
> > [  143.240616] remoteproc remoteproc0: powering up imx-rproc
> > [  143.251768] remoteproc remoteproc0: Booting fw image huginn.elf, size
> > 466876 [  143.251786] imx-rproc imx7d-cm4: iommu not present
> > [  143.251825] remoteproc remoteproc0: rsc: type 3 [  143.251837]
> > remoteproc remoteproc0: vdev rsc: id 7, dfeatures 0x1, cfg len 0, 2 vrings
> > [  143.251924] remoteproc remoteproc0: vdev rsc: vring0: da 0xffffffff, qsz
> > 16, align 16 [  143.251935] remoteproc remoteproc0: vdev rsc: vring1: da
> > 0xffffffff, qsz 16, align 16 [  143.251955] imx-rproc imx7d-cm4: map memory:
> > 0x00900000+20000 [  143.251987] imx-rproc imx7d-cm4: map memory:
> > 0x00920000+2000 [  143.252003] imx-rproc imx7d-cm4: map memory:
> > 0x00922000+2000 [  143.252020] remoteproc remoteproc0: phdr: type 1 da
> > 0x20200000 memsz 0x240 filesz 0x240 [  143.252032] remoteproc
> > remoteproc0: da = 0x20200000 len = 0x240 va = 0x(ptrval) [  143.252043]
> > remoteproc remoteproc0: phdr: type 1 da 0x20200240 memsz 0x5b38 filesz
> > 0x5b38 [  143.252053] remoteproc remoteproc0: da = 0x20200240 len =
> > 0x5b38 va = 0x(ptrval) [  143.252105] remoteproc remoteproc0: phdr: type
> > 1 da 0x20205d78 memsz 0x4b58 filesz 0x758 [  143.252115] remoteproc
> > remoteproc0: da = 0x20205d78 len = 0x4b58 va = 0x(ptrval) [  143.252159]
> > remoteproc remoteproc0: da = 0x200006cc len = 0x8c va = 0x(ptrval)
> > [  143.252176] remoteproc remoteproc0: Started from 0x202002f5
> > [  143.252211]  imx7d-cm4#vdev0buffer: assigned reserved memory node
> > vdev0buffer@00924000 [  143.252232] virtio virtio0: reset !
> > [  143.252241] virtio virtio0: status: 1 [  143.260567] virtio_rpmsg_bus
> > virtio0: status: 3 [  143.260598] remoteproc remoteproc0: vring0: va
> > c083c000 qsz 16 notifyid 0 [  143.260614] remoteproc remoteproc0: vring1:
> > va c0872000 qsz 16 notifyid 1 [  143.260651] virtio_rpmsg_bus virtio0:
> > buffers: va c0894000, dma 0x00924000 [  143.260666] Added buffer head 0
> > to (ptrval) [  143.260674] Added buffer head 1 to (ptrval) [  143.260680]
> > Added buffer head 2 to (ptrval) [  143.260686] Added buffer head 3 to (ptrval)
> > [  143.260692] Added buffer head 4 to (ptrval) [  143.260697] Added buffer
> > head 5 to (ptrval) [  143.260703] Added buffer head 6 to (ptrval)
> > [  143.260709] Added buffer head 7 to (ptrval) [  143.260715] Added buffer
> > head 8 to (ptrval) [  143.260721] Added buffer head 9 to (ptrval)
> > [  143.260727] Added buffer head 10 to (ptrval) [  143.260733] Added
> > buffer head 11 to (ptrval) [  143.260738] Added buffer head 12 to (ptrval)
> > [  143.260744] Added buffer head 13 to (ptrval) [  143.260750] Added
> > buffer head 14 to (ptrval) [  143.260756] Added buffer head 15 to (ptrval)
> > [  143.260771] virtio_rpmsg_bus virtio0: status: 7 [  143.260779]
> > remoteproc remoteproc0: kicking vq index: 0 [  143.260788] remoteproc
> > remoteproc0: sending message : vqid = 0 [  143.260802] imx_mu
> > 30aa0000.mailbox: Send data on wrong channel type: 1 [  143.260810]
> > virtio_rpmsg_bus virtio0: rpmsg host is online [  143.261680]
> > imx7d-cm4#vdev0buffer: registered virtio0 (type 7) [  143.261694]
> > remoteproc remoteproc0: remote processor imx-rproc is now up
> > [  143.354880] remoteproc remoteproc0: vq index 0 is interrupted
> > [  143.354895] virtqueue callback for (ptrval) ((ptrval)) [  143.354912]
> > virtio_rpmsg_bus virtio0: From: 0x0, To: 0x35, Len: 40, Flags: 0, Reserved: 0
> > [  143.354924] rpmsg_virtio RX: 00 00 00 00 35 00 00 00 00 00 00 00 28 00
> > 00 00  ....5.......(...
> > [  143.354932] rpmsg_virtio RX: 72 70 6d 73 67 2d 74 74 79 2d 72 61 77 00
> > 00 00  rpmsg-tty-raw...
> > [  143.354939] rpmsg_virtio RX: 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> > 00 00  ................
> > [  143.354945] rpmsg_virtio RX: 00 00 00 00 00 00 00
> > 00                          ........
> > [  143.354956] NS announcement: 72 70 6d 73 67 2d 74 74 79 2d 72 61 77
> > 00 00 00  rpmsg-tty-raw...
> > [  143.354963] NS announcement: 00 00 00 00 00 00 00 00 00 00 00 00 00
> > 00 00 00  ................
> > [  143.354969] NS announcement: 00 00 00 00 00 00 00
> > 00                          ........
> > [  143.354980] virtio_rpmsg_bus virtio0: creating channel rpmsg-tty-raw
> > addr 0x0 [  143.356584] rpmsg_tty virtio0.rpmsg-tty-raw.-1.0: new channel:
> > 0x400 -> 0x0 : ttyRPMSG0 [  143.356651] Added buffer head 0 to (ptrval)
> > [  143.356658] No more buffers in queue [  143.356667] virtio_rpmsg_bus
> > virtio0: Received 1 messages [  143.404302] remoteproc remoteproc0: vq
> > index 0 is interrupted [  143.404319] virtqueue callback for (ptrval) ((ptrval))
> > [  143.404337] virtio_rpmsg_bus virtio0: From: 0x1, To: 0x35, Len: 40, Flags:
> > 0, Reserved: 0 [  143.404350] rpmsg_virtio RX: 01 00 00 00 35 00 00 00 00
> > 00 00 00 28 00 00 00  ....5.......(...
> > [  143.404391] rpmsg_virtio RX: 72 70 6d 73 67 2d 74 74 79 2d 72 61 77 00
> > 00 00  rpmsg-tty-raw...
> > [  143.404399] rpmsg_virtio RX: 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> > 00 00  ................
> > [  143.404405] rpmsg_virtio RX: 01 00 00 00 00 00 00
> > 00                          ........
> > [  143.404417] NS announcement: 72 70 6d 73 67 2d 74 74 79 2d 72 61 77
> > 00 00 00  rpmsg-tty-raw...
> > [  143.404424] NS announcement: 00 00 00 00 00 00 00 00 00 00 00 00 00
> > 00 00 00  ................
> > [  143.404430] NS announcement: 01 00 00 00 00 00 00
> > 00                          ........
> > [  143.404441] virtio_rpmsg_bus virtio0: creating channel rpmsg-tty-raw
> > addr 0x1 [  143.411114] rpmsg_tty virtio0.rpmsg-tty-raw.-1.1: new channel:
> > 0x401 -> 0x1 : ttyRPMSG1
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
