Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 136C6152845
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 10:27:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AErtg8iPBmb3nn/LZZGDTzb57QfJgvCi68YWK1ZE8Q=; b=g+qikRd0A3bxhA
	rkhMxtBe//0Z/jWcFmL+z0xhUE8tLMc/PV/D7eF49I0PoBBl6oVpoofRQcRXr6GgaoL1OiS2MekSN
	Dust39/8b+atlcQ7ytNfRCuyyDNWLx758gXLcUiUIumjA8ufb81j32QjbElNo6A9FXNlBB+MZsCZf
	t2Ikj9CnZBtk+yjsj0tlnt09KGFR7D0RSyfFj/wSV369twa7RZmLPnrn3xwtVqX8EvQBv1zPZPXMQ
	jjF/ls54prmc81nFZuQ0OHobj1jbry0pEKTLTfZmUCYdo+BKo4rDiYQ0Ka+Uht4X5qW3Ak3ZnMEw2
	+LDHY1RKxv41uojc8eKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izGxi-0001E5-HY; Wed, 05 Feb 2020 09:27:10 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izGxZ-0001D3-Gz
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 09:27:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id F0459FB03;
 Wed,  5 Feb 2020 10:26:55 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Db75lo8tmrVk; Wed,  5 Feb 2020 10:26:54 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id C1A17400E6; Wed,  5 Feb 2020 10:26:53 +0100 (CET)
Date: Wed, 5 Feb 2020 10:26:53 +0100
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: sdhci timeout on imx8mq
Message-ID: <20200205092653.GB2737@bogon.m.sigxcpu.org>
References: <CAOMZO5DMMCZPfwNbTaG8_iQhWg2K1XeO719nSA0Gsf2ywHy4jQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5DMMCZPfwNbTaG8_iQhWg2K1XeO719nSA0Gsf2ywHy4jQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_012701_728917_40D5D63E 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,
On Mon, Feb 03, 2020 at 04:19:50PM -0300, Fabio Estevam wrote:
> Hi,
> 
> I observe the following timeout on a imx8mq-evk running linux-next 20200203:
> 
> # [   11.747858] mmc0: Timeout waiting for hardware interrupt.
> [   11.753264] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> [   11.759705] mmc0: sdhci: Sys addr:  0x00000800 | Version:  0x00000002
> [   11.766145] mmc0: sdhci: Blk size:  0x00000200 | Blk cnt:  0x00000001
> [   11.772584] mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> [   11.779024] mmc0: sdhci: Present:   0x01f88a0a | Host ctl: 0x00000011
> [   11.785463] mmc0: sdhci: Power:     0x00000002 | Blk gap:  0x00000080
> [   11.791902] mmc0: sdhci: Wake-up:   0x00000008 | Clock:    0x000020ff
> [   11.798342] mmc0: sdhci: Timeout:   0x0000008f | Int stat: 0x00000000
> [   11.804781] mmc0: sdhci: Int enab:  0x117f100b | Sig enab: 0x117f100b
> [   11.811220] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00008402
> [   11.817660] mmc0: sdhci: Caps:      0x07eb0000 | Caps_1:   0x8000b407
> [   11.824100] mmc0: sdhci: Cmd:       0x0000083a | Max curr: 0x00ffffff
> [   11.830539] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0xffffffff
> [   11.836978] mmc0: sdhci: Resp[2]:   0x320f5913 | Resp[3]:  0x00d04f01
> [   11.843416] mmc0: sdhci: Host ctl2: 0x00000008
> [   11.847860] mmc0: sdhci: ADMA Err:  0x00000001 | ADMA Ptr: 0xf97d2200
> [   11.854297] mmc0: sdhci: ============================================
> [   11.860908] mmc0: error -110 whilst initialising MMC card
> [   12.027806] mmc0: new HS400 MMC card at address 0001
> [   12.033283] mmcblk0: mmc0:0001 R1J56L 13.8 GiB
> [   12.038007] mmcblk0boot0: mmc0:0001 R1J56L partition 1 4.00 MiB
> [   12.044112] mmcblk0boot1: mmc0:0001 R1J56L partition 2 4.00 MiB
> [   12.050172] mmcblk0rpmb: mmc0:0001 R1J56L partition 3 128 KiB,
> chardev (235:0)
> [   12.058210]  mmcblk0: p1 p2
> 
> Haven't had a chance to debug this yet, but just reporting in case
> anyone has any ideas.

I've seen the same occasionally on the librem 5 with older linux-next as
well. Do you have a good reproducer?
Cheers,
 -- Guido

> 
> Thanks
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
