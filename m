Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DD3196622
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 13:37:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lv3u1+zd6IaAvp+0r85IaJsW0ZwTSKbkTmhKxdHDYJA=; b=YIkAq6TWM3mlBo
	0oVx09bq4hxL8jfwUYWMf5Y8VJK0aeli+bUze2d6cnlK7QaE+C5as6eGapaEDnzNle9/6dUrMzaOb
	5yi88QDcAY6vF4fdC4ltjf8AQ1IMoPBf6IbF1dorFcpDSBnbYO8FhDWbvpG3nEoGuSk2Xq5b4BL3A
	uEEDHpoeTkpiArUyN0cvYHDFS1i8qPq1GHqTPWuLOKnuuN8ZrvrEB5CDtT2yQmMwm3uHRr8R3kJnf
	3hxOBEwt19xihrONMNjSEXOcr2mVK38hVE1TclsKAFhCK3bTusdqobH0Wt67Z+fZTUA2h8NDDIj7M
	0t4fILvkVLdTaqCDZHXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIAiL-0004WD-Fo; Sat, 28 Mar 2020 12:37:25 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIAiE-0004V3-M6
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 12:37:20 +0000
Received: by mail-il1-x142.google.com with SMTP id p13so11339518ilp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 05:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O/8yHh9a7PftoLLUSkGnNnfodolyFPpd9WhHKOKDPIA=;
 b=CY8eZFv7KVbtrEKXF0M8rb3igcjdETQPtrZ4ZnFKlcfLnduiyC36E1ZgohJf95wvmX
 p52eU0pxQVlFCQeSq3G6rsdkLILNCl34UO8f7yJRZglOun2Bdf4Zga+evMfYR2dU8s5P
 Zd6TvAFNOu/tiXas5A8aYH5NxdrMAntPGczoEXjpX94OngWN4dyR3nLiZqyyIshMlnx/
 gb8PZ6+IxUxNNng0uBuSXmhOK5M5o5f3Oel0hcJMguTUgQejUHwYwdUM3zPkS/sHA7rU
 3/R2SOB5aQ9incRSZUHje8qqACLlXMMvnxiMhWsJE0Yq/rx8/07OkUPXFjONFKKS+DPU
 pu3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O/8yHh9a7PftoLLUSkGnNnfodolyFPpd9WhHKOKDPIA=;
 b=aU7UFgUfcB4dmvj66giKHDyLGo35xGlmovIzM33y7MnCIOqE102I0iRApnv1GagljQ
 IGTn/ahR9Ps1SgkEOcb6rYUJzNXK56uOlmG7Loy5KKaQMHMfa+XacN5iaiqlUEB0ZuvO
 2ePvt0+n0f+pgX0ikKzYyfwrB7qYT0PxLx4vtZlpXsdhiQWs2jcMT0ZVeXwZ37GXfmr/
 /5WormPYnk/ezWVf4UEryUIkac/9t8RLFMj+1F6QANYdebbyNt7yKkHRcF+0CEHj3oyI
 Nd3u3EGVDhxHoEiDHFF3puiySPV2Tx5dAQsVtC7lR2CjXP2eiofsfq5MCCFfhYijZBSb
 XY6Q==
X-Gm-Message-State: ANhLgQ3IECwdC4Css0DDiQsEVW/bRNoI2iDb2n+MBhOYSlss4FeMk9p4
 jCI1gqzyahTlPiTVzwnii4tA9JVdIqIIln74/1g=
X-Google-Smtp-Source: ADFU+vu+FX/31Esa4oReLjE2l+HEqXJ0WmQE/QmsqlRjAHIQis3eJkgh0I/03U+PImxYEHaV+/7e3sBg1ZxBNUmLpX4=
X-Received: by 2002:a92:5dc7:: with SMTP id e68mr3547084ilg.205.1585399035789; 
 Sat, 28 Mar 2020 05:37:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAHCN7xJSKH-gXA5ncFS3h6_2R28rn70O3HfT=ActS1XVgCFSeg@mail.gmail.com>
 <DB3PR0402MB39160D3F0D03B968B7CBE25AF5CD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39160D3F0D03B968B7CBE25AF5CD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Adam Ford <aford173@gmail.com>
Date: Sat, 28 Mar 2020 07:37:04 -0500
Message-ID: <CAHCN7xJ2m3LRB3oGBb5QKbacYyTBQK1CdzGcTh3w=hj18H=4Pw@mail.gmail.com>
Subject: Re: i.MX8MN Errors on 5.6-RC7
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_053718_748225_BF44F8DC 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Adam Ford-BE <aford@beaconembedded.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 7:07 AM Anson Huang <anson.huang@nxp.com> wrote:
>
> Hi, Adam
>
> > Subject: i.MX8MN Errors on 5.6-RC7
> >
> > I am getting a few errors on the i.MX8MN:
> >
> > [    0.000368] Failed to get clock for /timer@306a0000
> > [    0.000380] Failed to initialize '/timer@306a0000': -22
> > [    7.203447] caam 30900000.caam: Failed to get clk 'ipg': -2
> > [    7.334741] caam 30900000.caam: Failed to request all necessary clocks
> > [    7.438651] caam: probe of 30900000.caam failed with error -2
> > [    7.854193] imx-cpufreq-dt: probe of imx-cpufreq-dt failed with error -2
> >
> > I was curious to know if anyone else is seeing similar errors.  I already
> > submitted a proposed fix for a DMA timeout (not shown here) which
> > matched work already done on i.MX8MQ and i.MX8MM.
> >
> > I am not seeing huge differences between 8MM and 8MN in the nodes which
> > address the timer, caam or imx-cpufreq-dt.
> >
> > If anyone has any suggestions, I'd love to try them.
>

Fabio,

I tried your ATF suggestion, and it fixed some issues and introduced others:

[    0.767679] ------------[ cut here ]------------
[    0.767687] coherent pool not initialised!
[    0.767714] WARNING: CPU: 3 PID: 1 at kernel/dma/remap.c:190
dma_alloc_from_pool+0x94/0xa0
[    0.767718] Modules linked in:
[    0.767728] CPU: 3 PID: 1 Comm: swapper/0 Not tainted
5.6.0-rc7-00471-g97c33f1ada5c-dirty #5
[    0.767732] Hardware name: Beacon EmbeddedWorks i.MX8M Nano
Development Kit (DT)
[    0.767738] pstate: 60000005 (nZCv daif -PAN -UAO)
[    0.767744] pc : dma_alloc_from_pool+0x94/0xa0
[    0.767749] lr : dma_alloc_from_pool+0x94/0xa0
[    0.767753] sp : ffff80001003ba10
[    0.767756] x29: ffff80001003ba10 x28: ffff00007c868080
[    0.767762] x27: 0000000fffffffe0 x26: ffff00007fbdd080
[    0.767768] x25: 0000000000000000 x24: ffff800010161b3c
[    0.767774] x23: 0000000000001000 x22: ffff00007c86bd38
[    0.767780] x21: ffff8000112ba000 x20: ffff00007f6ed410
[    0.767785] x19: 0000000000000000 x18: 0000000000000010
[    0.767791] x17: 00000000000045e0 x16: 00000000000045d0
[    0.767796] x15: ffff00007f470470 x14: ffffffffffffffff
[    0.767802] x13: ffff80009003b777 x12: ffff80001003b77f
[    0.767807] x11: ffff8000118e1000 x10: ffff800011abc658
[    0.767813] x9 : 0000000000000000 x8 : 6573696c61697469
[    0.767818] x7 : 6e6920746f6e206c x6 : 00000000000000a9
[    0.767824] x5 : 0000000000000000 x4 : 0000000000000000
[    0.767829] x3 : 00000000ffffffff x2 : ffff8000118e1b80
[    0.767835] x1 : 3a4437124c5a6b00 x0 : 0000000000000000
[    0.767840] Call trace:
[    0.767847]  dma_alloc_from_pool+0x94/0xa0
[    0.767853]  dma_direct_alloc_pages+0x1a4/0x1e0
[    0.767858]  dma_direct_alloc+0xc/0x20
[    0.767863]  dma_alloc_attrs+0x7c/0xf0
[    0.767870]  sdma_probe+0x3d4/0x7f0
[    0.767877]  platform_drv_probe+0x50/0xa0
[    0.767885]  really_probe+0xd4/0x320
[    0.767891]  driver_probe_device+0x54/0xf0
[    0.767897]  device_driver_attach+0x6c/0x80
[    0.767903]  __driver_attach+0x54/0xd0
[    0.767908]  bus_for_each_dev+0x6c/0xc0
[    0.767914]  driver_attach+0x20/0x30
[    0.767919]  bus_add_driver+0x140/0x1f0
[    0.767925]  driver_register+0x60/0x110
[    0.767930]  __platform_driver_register+0x44/0x50
[    0.767938]  sdma_driver_init+0x18/0x20
[    0.767944]  do_one_initcall+0x50/0x190
[    0.767950]  kernel_init_freeable+0x1cc/0x23c
[    0.767958]  kernel_init+0x10/0x100
[    0.767963]  ret_from_fork+0x10/0x18
[    0.767972] ---[ end trace 796b8d949d96f5f6 ]---


Anson,

> Which board did you try? I just run it on i.MX8MN-EVK board, no such failure:
I have a board from Beacon EmbeddedWorks based on the i.MX8MN which is
nearly identical to the i.MX8MM which doesn't exhibit any of these
errors.

I tried Fabio's suggestion of switching the version of ATF which did
fix the Bluetooth communication errors I was getting, but I didn't
show them before.

Unfortunately, I don't have the i.MX8MN-EVK right now, I'm working on
trying to get one.

Can I ask which version of U-Boot and ATF you're using?  I am
wondering if I need to update something else.

adam
>
> root@imx8mnevk:~# uname -a
> Linux imx8mnevk 5.6.0-rc7 #621 SMP PREEMPT Sat Mar 28 19:56:30 CST 2020 aarch64 aarch64 aarch64 GNU/Linux
> root@imx8mnevk:~# dmesg | grep fail
> [    0.719353] imx-sdma 302b0000.dma-controller: Direct firmware load for imx/sdma/sdma-imx7d.bin failed with error -2
> [    0.941304] calling  net_failover_init+0x0/0x8 @ 1
> [    0.941310] initcall net_failover_init+0x0/0x8 returned 0 after 0 usecs
> [    1.135885] calling  failover_init+0x0/0x24 @ 1
> [    1.135897] initcall failover_init+0x0/0x24 returned 0 after 6 usecs
> root@imx8mnevk:~#
>
> Thanks,
> Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
