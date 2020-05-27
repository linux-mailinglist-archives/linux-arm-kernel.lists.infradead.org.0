Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEB81E3457
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7VxCI0Y9/k9PXO/44jb3nPtA5qOjGYA1bvCCsQ8YSw=; b=TCcipSP6lSpXJl
	fMySOsmb80QCvbO+uOlZE99iEHhAghXICVMPXkOpuK3wQWnx22P0NVyPQ2mvhJ0J3Aw1UoRUpNsN+
	cvVCcTPvg9PXP+Z7wsVmfIl4JoQa2JX8m13FrjpVLOH5IznQArkVvLARABHh5ZuAIAM28cqeXHZl4
	346SoTVjcFRNt042M7tkod7u8e2JTmNwHMFeiV/jh3zfePvML8/4g2C5RFtr453aPFnB5BvGgWg43
	/b0sxTZFyUSEn8e5gq5gTOWoV08BOlOZG0uygwZzTVGQvqDeC34FuruwKzvecqqSa6XK6EALtY4Pu
	xEwlTdlAXwq+ApHHvGng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkSh-00012I-Eb; Wed, 27 May 2020 01:02:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkRo-0000Sz-4T
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:01:33 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3E9A2089D;
 Wed, 27 May 2020 01:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590541291;
 bh=IalWd4Xi90xxEr2sSVYq8Yz0kpu6R7Ec8NZfSol/dsg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=rcIsDQwf/Nnau0w/608uHUWg4zVLqOjv4AZVYRMTTXk3yeGJTPOYmOXU3Mn42y8Lc
 AEzrWWzeZXS3QwZNIKN0Y2MYzkBHyQHyd2wysNJdVm7P5o4WbRPFhbX6tZh2ysuZ5d
 hH9EQK24Ajtv/FdDcKwbd4EYdEjzmOGprkdq3d8s=
MIME-Version: 1.0
In-Reply-To: <1583185843-20707-5-git-send-email-jolly.shah@xilinx.com>
References: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
 <1583185843-20707-5-git-send-email-jolly.shah@xilinx.com>
Subject: Re: [PATCH v2 4/4] drivers: clk: zynqmp: fix memory leak in
 zynqmp_register_clocks
From: Stephen Boyd <sboyd@kernel.org>
To: Jolly Shah <jolly.shah@xilinx.com>, arm@kernel.org,
 linux-clk@vger.kernel.org, michal.simek@xilinx.com, mturquette@baylibre.com,
 olof@lixom.net
Date: Tue, 26 May 2020 18:01:31 -0700
Message-ID: <159054129103.88029.738005386305981615@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_180132_216380_C845C04A 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, linux-kernel@vger.kernel.org,
 rajanv@xilinx.com, Jolly Shah <jolly.shah@xilinx.com>,
 Quanyang Wang <quanyang.wang@windriver.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jolly Shah (2020-03-02 13:50:43)
> From: Quanyang Wang <quanyang.wang@windriver.com>
> 
> This is detected by kmemleak running on zcu102 board:
> 
> unreferenced object 0xffffffc877e48180 (size 128):
> comm "swapper/0", pid 1, jiffies 4294892909 (age 315.436s)
> hex dump (first 32 bytes):
> 64 70 5f 76 69 64 65 6f 5f 72 65 66 5f 64 69 76 dp_video_ref_div
> 31 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1...............
> backtrace:
> [<00000000c9be883b>] __kmalloc_track_caller+0x200/0x380
> [<00000000f02c3809>] kvasprintf+0x7c/0x100
> [<00000000e51dde4d>] kasprintf+0x60/0x80
> [<0000000092298b05>] zynqmp_register_clocks+0x29c/0x398
> [<00000000faaff182>] zynqmp_clock_probe+0x3cc/0x4c0
> [<000000005f5986f0>] platform_drv_probe+0x58/0xa8
> [<00000000d5810136>] really_probe+0xd8/0x2a8
> [<00000000f5b671be>] driver_probe_device+0x5c/0x100
> [<0000000038f91fcf>] __device_attach_driver+0x98/0xb8
> [<000000008a3f2ac2>] bus_for_each_drv+0x74/0xd8
> [<000000001cb2783d>] __device_attach+0xe0/0x140
> [<00000000c268031b>] device_initial_probe+0x24/0x30
> [<000000006998de4b>] bus_probe_device+0x9c/0xa8
> [<00000000647ae6ff>] device_add+0x3c0/0x610
> [<0000000071c14bb8>] of_device_add+0x40/0x50
> [<000000004bb5d132>] of_platform_device_create_pdata+0xbc/0x138
> 
> This is because that when num_nodes is larger than 1, clk_out is
> allocated using kasprintf for these nodes but only the last node's
> clk_out is freed.
> 
> Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
