Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9AB2122E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 04:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiKySuzp9BxF3qZRDvv0/0j2zRj693NIArNDhEP3dro=; b=EgtVoIIck8kO4M
	3WF/QD5vqVqFwea6xLJRNKeiy1HOL5Hbxq26BB4j6XsWTqdiRXrUh0BS8p+9yctbfRqsGHe4/4EUf
	gkiV1zupMvRLjU7HYyaK+itr4CKL55486jSMyp+JFMjRvoUt8qOsQ5jqveI4Z+UXVa4Qh38k4u8Kl
	G4+tnaTj2NG2Km9+536QOtDBftNmesQjxJxMQDSy1yfyaFhDF7CQFHF0/bjAUYS1/BRBa3XwuywOA
	mngnaltcQgI8FeBdYqGUe6N8nO/nzCm+ByXEv8LWmZH6o5GK+zQJrOdbffwZuX46ylsSYNxkk9bPo
	MH1GhSCNLbuMkFUVB9uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRSrK-0003Yb-LW; Fri, 17 May 2019 02:44:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRSrE-0003YD-CH
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 02:44:29 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B1C920848;
 Fri, 17 May 2019 02:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558061068;
 bh=wa9myGyRMaYahr2088guoMQ/oF7+8i++qNk0d4F0tOo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wG4lQWEDTA9JTF64I55cyQIiVuwwwcPmjKEcd9mAw+uX/IMhb2sOaF72YFr/xBAZ1
 804NBQW3XXJw8NoMkFhQKGugNy3b2L1c2rnF5aGPP7DIRbYJVb+uPcqrhiaomlPxDr
 oyi3W6QfxHX+0ThT+2cj+5yyoq7CkIJaivdo53Lw=
Date: Fri, 17 May 2019 10:43:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH RESEND] firmware: imx: SCU irq should ONLY be enabled
 after SCU IPC is ready
Message-ID: <20190517024347.GC15856@dragon>
References: <1557650002-10565-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557650002-10565-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_194428_455416_E1EF6481 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 08:38:22AM +0000, Anson Huang wrote:
> The imx_scu_irq_group_enable() is normally called during module driver
> probe phase to enable SCU group irq, if SCU IPC is NOT ready, below
> dump will show out:
> 
> [    0.933001] Hardware name: Freescale i.MX8QXP MEK (DT)
> [    0.938129] pstate: 60000005 (nZCv daif -PAN -UAO)
> [    0.942907] pc : imx_scu_call_rpc+0x114/0x158
> [    0.947251] lr : imx_scu_irq_group_enable+0x74/0xc4
> [    0.952113] sp : ffff00001005bae0
> [    0.955415] x29: ffff00001005bae0 x28: ffff0000111bb0a0
> [    0.960712] x27: ffff00001140b000 x26: ffff00001111068c
> [    0.966011] x25: ffff0000111bb100 x24: 0000000000000000
> [    0.971311] x23: ffff0000113d9cd8 x22: 0000000000000001
> [    0.976610] x21: 0000000000000001 x20: ffff80083b51a410
> [    0.981909] x19: ffff000011259000 x18: 0000000000000480
> [    0.987209] x17: 000000000023ffb8 x16: 0000000000000010
> [    0.992508] x15: 000000000000023f x14: ffffffffffffffff
> [    0.997807] x13: 0000000000000018 x12: 0000000000000030
> [    1.003107] x11: 0000000000000003 x10: 0101010101010101
> [    1.008406] x9 : ffffffffffffffff x8 : 7f7f7f7f7f7f7f7f
> [    1.013706] x7 : fefefeff646c606d x6 : 0000000000000000
> [    1.019005] x5 : ffff0000112596c8 x4 : 0000000000000008
> [    1.024304] x3 : 0000000000000003 x2 : 0000000000000001
> [    1.029604] x1 : ffff00001005bb58 x0 : 0000000000000000
> [    1.034905] Call trace:
> [    1.037341]  imx_scu_call_rpc+0x114/0x158
> [    1.041334]  imx_scu_irq_group_enable+0x74/0xc4
> [    1.045856]  imx_sc_wdt_probe+0x24/0x150
> [    1.049766]  platform_drv_probe+0x4c/0xb0
> [    1.053762]  really_probe+0x1f8/0x2c8
> [    1.057407]  driver_probe_device+0x58/0xfc
> [    1.061490]  device_driver_attach+0x68/0x70
> [    1.065660]  __driver_attach+0x94/0xdc
> [    1.069397]  bus_for_each_dev+0x64/0xc0
> [    1.073220]  driver_attach+0x20/0x28
> [    1.076782]  bus_add_driver+0x148/0x1fc
> [    1.080601]  driver_register+0x68/0x120
> [    1.084424]  __platform_driver_register+0x4c/0x54
> [    1.089120]  imx_sc_wdt_driver_init+0x18/0x20
> [    1.093463]  do_one_initcall+0x58/0x1b8
> [    1.097287]  kernel_init_freeable+0x1cc/0x288
> [    1.101630]  kernel_init+0x10/0x100
> [    1.105101]  ret_from_fork+0x10/0x18
> [    1.108669] ---[ end trace 9e03302114457de9 ]---
> [    1.113296] enable irq failed, group 1, mask 1, ret -22
> 
> To avoid such scenario, return -EPROBE_DEFER in imx_scu_irq_group_enable()
> API if SCU IPC is NOT ready, then module driver which calls this API
> in probe phase will defer probe after SCU IPC ready.
> 
> Fixes: 851826c7566e ("firmware: imx: enable imx scu general irq function")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
