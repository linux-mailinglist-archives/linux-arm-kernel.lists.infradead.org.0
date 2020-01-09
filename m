Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6211B135647
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:54:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9utza2luYnkGyYVM4iqiVW6ZqQdDrgpfJSJgap9PTYs=; b=qTP7guHfRIC0+t
	/o4ZU2FbGdR9qpqxn5EfyeAlwzW404O95667BQScHHUfp4g1AtS+uFPGOxJQ2TmGtF93AOM4wOzJ5
	6MDOjvv8CsZzTfsNmC8xbLsrLU56RlWSL02rYhtpTrl0jYOMN/D7oK9JyaTjl/9dRHyyE8Pw8o+mE
	nkPqZK7ZewiI7l+rlZDm5wqvqJOPXfcY6DZT0vqzNX+yPEvluNKx+N71WzeMuIJEyWetRuyxRHZr3
	DC6NmtkUnj3Sv8PhsxrdzqfEPiAW3+p9rSzoCS+9o8+Mqs8rov8mfVbS4T58Pka0NcoGe3nQ0C0zc
	xQFM5fNy2ILjIDgvkfCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUW7-00068o-TL; Thu, 09 Jan 2020 09:54:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUVz-00068E-Kp
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:54:09 +0000
Received: by mail-wm1-x341.google.com with SMTP id t14so2066361wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 01:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=reRhFkkSbTi+HYG5loXVudYrpRXMMINGsWh+qsIUU+o=;
 b=ELh/2WFC6eCc9BY28TjxMy8nG9S+SxI8k5HCg9J6G7oBwvmBQ6cnSZhFuA5IsC+5RM
 /wKZPOkC1JBDBf0aD2NgGJ5oMGfxlaDAUc+P1yIUP53vwLAuR9Kac62vcXb6yqQ5BVqY
 nFtB0o/5QDVmRW5orLOfAt73BsUOjMWHjD6eJJlF+Lr0z1piYOBwUZijAaYoK8/TBQSZ
 aHhKhW5PvAmc4LwEeGAl7lJ1QTjR2TqiK0hAR662vpxTfLVFWz8Ylno/esnuSljUaSze
 Z1IbeJTSD1TE2sA3YG3dwfIFz0tjiosJXIE6vEynxSqsdBPq0NcF7CeW6Kl4jkUAneRa
 3oSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=reRhFkkSbTi+HYG5loXVudYrpRXMMINGsWh+qsIUU+o=;
 b=YghUtgkTLYGBDs+0jIzXAcw7fDxI1jGV+2wUNKJfT0G4frLGeHs4ZOzcT2yttO/KtW
 NXxVTUlFNzruX4EGKsis/8NcR3Xn1SSyvUHiTHIhEGFdOxr8fu+hWn4T/RzHQFRpyYvI
 WaQ6DRu/+nhHAzMJlFxkTvXpZ4/fMc1+7tMzZ6gFhR4DJB5vGLHGelsENtJVFymhg2QO
 uGhpzIHmrwvCm394qkBmQN8zOppaSe3q/6IMm9bpQjjUE070LuIFR4Vm0kixp8IMW//D
 pPpSZcjugKSGvgFMjsqD339S7lxNv/i9IYoBpxodgQgdHi/DKwu5sUcaFBRSrn8AcazM
 T7KQ==
X-Gm-Message-State: APjAAAWEhcDUC8qgtl774a0P4Ka6CwjSWqEn7WdzySlewJ1rjHG/IWq3
 oywyt6Sa9pjebbTVK8prXR43hq4a
X-Google-Smtp-Source: APXvYqzhSlPorJKL7eXSBzDYDSJjKiYBIjerG6m7I37JjML4GY+7T3sFAFiQOZmyzzZzQfCFc62bZA==
X-Received: by 2002:a1c:ddc5:: with SMTP id u188mr3566955wmg.83.1578563646048; 
 Thu, 09 Jan 2020 01:54:06 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id g21sm7997492wrb.48.2020.01.09.01.54.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 01:54:05 -0800 (PST)
Date: Thu, 9 Jan 2020 10:54:03 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: alexandre.torgue@st.com, mripard@kernel.org, wens@csie.org,
 kishon@ti.com, lgirdwood@gmail.com, broonie@kernel.org, axboe@kernel.dk
Subject: ata: sunxi: Regression due to 5253fe05bb47 ("phy: core: Add consumer
 device link support")
Message-ID: <20200109095403.GA26453@Red>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_015407_708308_D84164EE 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ide@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

On next-20200108 (at least), the sunxi_ahci fail to probe with:
    3.025955] 8<--- cut here ---
[    3.029012] Unable to handle kernel NULL pointer dereference at virtual address 00000071
[    3.037115] pgd = (ptrval)
[    3.039819] [00000071] *pgd=00000000
[    3.043408] Internal error: Oops: 5 [#1] SMP ARM
[    3.048019] Modules linked in:
[    3.051078] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.5.0-rc1-00004-g5253fe05bb47 #24
[    3.059067] Hardware name: Allwinner sun7i (A20) Family
[    3.064297] PC is at device_link_add+0x68/0x4c8
[    3.068824] LR is at device_link_add+0x68/0x4c8
[    3.073348] pc : [<c04783ac>]    lr : [<c04783ac>]    psr: 60000013
[    3.079605] sp : ef04dd68  ip : 60000013  fp : 00000007
[    3.084822] r10: 00000000  r9 : eea8a740  r8 : ef0a5c10
[    3.090039] r7 : ef0a5c10  r6 : ffffffed  r5 : 00000001  r4 : 00000001
[    3.096556] r3 : ef060000  r2 : 00000000  r1 : 00000000  r0 : c0a4e588
[    3.103076] Flags: nZCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
[    3.110201] Control: 10c5387d  Table: 4000406a  DAC: 00000051
[    3.115937] Process swapper/0 (pid: 1, stack limit = 0x(ptrval))
[    3.121936] Stack: (0xef04dd68 to 0xef04e000)
[    3.126292] dd60:                   000005e4 c02141e4 ef7bf970 ffffffed ef0a5c10 eea8a7c0
[    3.134461] dd80: 00000000 ef0a5c10 eea8a740 00000000 00000007 c03acaec 00000000 ee8a3700
[    3.142630] dda0: ef7bf970 ee8a3700 ef0a5c10 c04d2804 ef04c000 ef0a5c10 ef0a5c00 ee8a3700
[    3.150799] ddc0: 00000000 00000000 00000000 c04d2e20 00000001 c029b2bc c0a4f9fc 00000000
[    3.158969] dde0: ef0b3630 c029aec8 00000000 5aef773a eea8c478 ef0a5c10 00000000 ef0a5c00
[    3.167138] de00: 00000000 00000000 c0a4f9fc 00000000 00000007 c04cedfc ef0a5c10 00000000
[    3.175307] de20: c0a4f9fc c047d6b8 c0aa51dc ef0a5c10 c0aa51e0 00000000 00000000 c047b894
[    3.183476] de40: ef0a5c10 c0a4f9fc c0a4f9fc c047be38 c093d834 c09004a8 000000d8 c047bb84
[    3.191646] de60: 000000d8 c05a37c0 c0760330 ef0a5c10 00000000 c0a4f9fc c047be38 c093d834
[    3.199815] de80: c09004a8 000000d8 00000007 c047be30 00000000 c0a4f9fc ef0a5c10 c047be90
[    3.207984] dea0: ef0fc634 ef04c000 c0a4f9fc c0479c68 c09004a8 ef01e458 ef0fc634 5aef773a
[    3.216152] dec0: c0a4df18 c0a4f9fc eea8a300 c0a4df18 00000000 c047acb0 c083ac48 c0aa5870
[    3.224321] dee0: c0a4f9fc c0a4f9fc c091eff4 00000000 ffffe000 c047c6fc c0a6fc40 c091eff4
[    3.232491] df00: 00000000 c01026e8 effffe6e c013c488 00000000 c08b9d00 c0845f90 00000000
[    3.240660] df20: 00000006 00000006 c07ff574 00000000 c0809bd8 c07ff5e8 00000000 effffe67
[    3.248829] df40: effffe6a 5aef773a 00000000 00000006 c0a6fc40 5aef773a c093d850 c0952220
[    3.256998] df60: c0a6fc40 c0a6fc40 c093d854 c0900ed0 00000006 00000006 00000000 c09004a8
[    3.265167] df80: 00000000 00000000 c06f7a9c 00000000 00000000 00000000 00000000 00000000
[    3.273335] dfa0: 00000000 c06f7aa4 00000000 c01010e8 00000000 00000000 00000000 00000000
[    3.281504] dfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    3.289672] dfe0: 00000000 00000000 00000000 00000000 00000013 00000000 00000000 00000000
[    3.297858] [<c04783ac>] (device_link_add) from [<c03acaec>] (devm_of_phy_get+0x64/0xb0)
[    3.305947] [<c03acaec>] (devm_of_phy_get) from [<c04d2804>] (ahci_platform_get_phy+0x28/0xd0)
[    3.314552] [<c04d2804>] (ahci_platform_get_phy) from [<c04d2e20>] (ahci_platform_get_resources+0x234/0x448)
[    3.324372] [<c04d2e20>] (ahci_platform_get_resources) from [<c04cedfc>] (ahci_sunxi_probe+0x10/0xa8)
[    3.333585] [<c04cedfc>] (ahci_sunxi_probe) from [<c047d6b8>] (platform_drv_probe+0x48/0x98)
[    3.342017] [<c047d6b8>] (platform_drv_probe) from [<c047b894>] (really_probe+0x1e0/0x348)
[    3.350267] [<c047b894>] (really_probe) from [<c047bb84>] (driver_probe_device+0x60/0x16c)
[    3.358525] [<c047bb84>] (driver_probe_device) from [<c047be30>] (device_driver_attach+0x58/0x60)
[    3.367390] [<c047be30>] (device_driver_attach) from [<c047be90>] (__driver_attach+0x58/0xcc)
[    3.375908] [<c047be90>] (__driver_attach) from [<c0479c68>] (bus_for_each_dev+0x78/0xb8)
[    3.384080] [<c0479c68>] (bus_for_each_dev) from [<c047acb0>] (bus_add_driver+0x1b4/0x1d4)
[    3.392337] [<c047acb0>] (bus_add_driver) from [<c047c6fc>] (driver_register+0x74/0x108)
[    3.400423] [<c047c6fc>] (driver_register) from [<c01026e8>] (do_one_initcall+0x78/0x1d4)
[    3.408598] [<c01026e8>] (do_one_initcall) from [<c0900ed0>] (kernel_init_freeable+0x138/0x1d4)
[    3.417291] [<c0900ed0>] (kernel_init_freeable) from [<c06f7aa4>] (kernel_init+0x8/0x110)
[    3.425462] [<c06f7aa4>] (kernel_init) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
[    3.433019] Exception stack(0xef04dfb0 to 0xef04dff8)
[    3.438065] dfa0:                                     00000000 00000000 00000000 00000000
[    3.446234] dfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    3.454400] dfe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    3.461010] Code: e59f0464 03844040 eb0a0b7b eb004882 (e5d63084) 
[    3.467153] ---[ end trace 0dbbaca7a7b65a4b ]---

The problem was bisected to 5253fe05bb47a2402f471d76078b3dcc66442d6c ("phy: core: Add consumer device link support")
Reverting this patch fix the problem

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
