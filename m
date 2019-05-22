Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224912659F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 16:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+gbYvfyt4xyVv1mcD9A9sUpJWmRP7nqIf65piYKQ8HU=; b=bcVOqsPDWFhuK8
	qaS7Clfs4q8FPk/QiXEYm+ShnDbVfoWWaULwDPgZNFBRgBTqcAGOaB8msgIYqSznGvGIp8J8obE69
	1FqZiuoboeCfbbPJ4xD7jpbPdhAodpySbGQ3BjJX2Nh89MDIGO3sSEtvTAhOM602yhMK82x2k210N
	CqXWENI4FixqSbNczhct+KgARw7fgWzucTpo5ksfmz/+b9ab1i5d3fDLRNeOoeh+itJ3VQDQE3WKb
	O7f/hlwIglj1CV++XG5Vp0c7BOG0pife/R8JhgIj0U39zKODD82lhlRXdtk9KLZTka/eqNbpx7vV6
	SieuNgM6DFGP238BGj0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTSBM-0006e4-6Z; Wed, 22 May 2019 14:25:28 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTSBE-0006dE-KT
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 14:25:23 +0000
Received: from sapphire.tkos.co.il (unknown [192.168.100.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 8A35944030A;
 Wed, 22 May 2019 17:25:12 +0300 (IDT)
Date: Wed, 22 May 2019 17:25:11 +0300
From: Baruch Siach <baruch@tkos.co.il>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: i.MX8MQ clk: enet1_root_clk already disabled
Message-ID: <20190522142511.7woox7asx636fiw7@sapphire.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_072520_952515_29E25CE5 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: netdev@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Fugang Duan <fugang.duan@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Abel,

I'm testing kernel v5.2-rc1 on my i.MX8MQ system, SolidRun Hummingboard
Pulse. The fec driver happens to probe before the gpio driver that we need for 
the PHY reset. So fec_reset_phy() returns -EPROBE_DEFER. This triggers the 
splat below when clk_ahb is disabled somewhere below the 'failed_reset' label:

[    1.267218] enet1_root_clk already disabled
[    1.271462] WARNING: CPU: 0 PID: 1 at drivers/clk/clk.c:924 clk_core_disable+0xa0/0xa8
[    1.279396] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.2.0-rc1-00002-gb88a935c6e3f-dirty #1340
[    1.288105] Hardware name: SolidRun i.MX8MQ HummingBoard Pulse (DT)
[    1.294383] pstate: 60000085 (nZCv daIf -PAN -UAO)
[    1.299184] pc : clk_core_disable+0xa0/0xa8
[    1.303376] lr : clk_core_disable+0xa0/0xa8
[    1.307565] sp : ffff00001003bad0
[    1.310886] x29: ffff00001003bad0 x28: ffff0000110c4000 
[    1.316208] x27: ffff00001099f0b0 x26: ffff8000bd9f50a8 
[    1.321530] x25: ffff00001099dfb0 x24: ffff0000110c4990 
[    1.326852] x23: ffff8000bd9f4810 x22: ffff8000b8820000 
[    1.332173] x21: ffff8000b949ec00 x20: ffff8000b91d0d00 
[    1.337495] x19: ffff8000b91d0d00 x18: 0000000000000010 
[    1.342816] x17: 0000000000000000 x16: 0000000000000000 
[    1.348138] x15: ffffffffffffffff x14: 0720072007200720 
[    1.353459] x13: 0720072007200720 x12: 0720072007200720 
[    1.358780] x11: 0720072007200720 x10: 0720072007200720 
[    1.364101] x9 : 0720072007200720 x8 : 0720072007200720 
[    1.369423] x7 : 000000000000009b x6 : ffff8000ba020f00 
[    1.374744] x5 : 0000000000000000 x4 : 0000000000000000 
[    1.380065] x3 : 00000000ffffffff x2 : ffff000011008ce0 
[    1.385386] x1 : dc292ba4797d3600 x0 : 0000000000000000 
[    1.390708] Call trace:
[    1.393162]  clk_core_disable+0xa0/0xa8
[    1.397006]  clk_core_disable_lock+0x20/0x38
[    1.401286]  clk_disable+0x1c/0x28
[    1.404698]  fec_probe+0x6a4/0x1248
[    1.408196]  platform_drv_probe+0x50/0xa0
[    1.412214]  really_probe+0xcc/0x280
[    1.415797]  driver_probe_device+0x54/0xe8
[    1.419901]  device_driver_attach+0x6c/0x78
[    1.424092]  __driver_attach+0x68/0xe8
[    1.427851]  bus_for_each_dev+0x70/0xc0
[    1.431695]  driver_attach+0x20/0x28
[    1.435279]  bus_add_driver+0x170/0x1d0
[    1.439123]  driver_register+0x60/0x110
[    1.442967]  __platform_driver_register+0x44/0x50
[    1.447683]  fec_driver_init+0x18/0x20
[    1.451443]  do_one_initcall+0x70/0x164
[    1.455288]  kernel_init_freeable+0x1a0/0x234
[    1.459657]  kernel_init+0x10/0x100
[    1.463156]  ret_from_fork+0x10/0x18
[    1.466743] ---[ end trace 5e50e985bb318e6c ]---

On the following probe attempt after gpio probe, fec probes successfully, and
Ethernet is functional. So this is not a fatal error, but it is not nice.

Any idea how to fix it?

Thanks,
baruch

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
