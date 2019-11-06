Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932E3F1A87
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:57:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C01Dcfx36NvpEdYh+0TKadPAuKRLt37iKL6I0QUHPRg=; b=NqPsBTVJ8j0d50
	UdA70Uz+sCwBRM3WCtcBVEysJ/0Vv8oPYkSPPn4nnL7oBYlQQc8sTXX6CNFFk+tP0oO3nBu0aaudW
	P8cwaXHNvBqiLPK1OA9V9Ui9wFgM7ldTKfktLOsDbCP6ZGGg7KbEULIWcsF48CC+bIxvAo8U5IRI6
	k5V8pKY8Ic9vmyRUj/Ok7gTbETAS6s320VFuSpsjzX/XTRZYTjFhwEBqvsjM7zlJCE1MKeLyIosL9
	SlaP7QO8qvicBudVXmwbneKQ6TTGF8vkNWAVI6chbWPKUjNkLsRUiROC5PhuHik6epakaytbB1T+e
	CHFqvnU4IkQ36QfmoHKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNfw-00075h-Cb; Wed, 06 Nov 2019 15:56:52 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNfm-00075P-SO
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:56:44 +0000
Received: by mail-lf1-x141.google.com with SMTP id f4so18441654lfk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 07:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=aiS8yf1PBS/zwPB99kdFUdDHK8ObT8Euu37jXtKB+OU=;
 b=SB+RSYaLHgZO+DHnvF8cg4n0qpsDLTzRosZVXmwQmRfO0mBW6j0ogHEw21u/VMF5tn
 VGhpx3cQaWeeLrGKg0kPKL7I7uRYa7S+YJfNUNG+3kt2Fip9zdTd2kdgXWz8cee+DzB2
 ZJ4Jll7OgC965CwUodVqBR9jkzuPgXr5UPo015rwYb+iqxy6y2tww+pkNs5fy+U7kkZd
 3L7TKiVaYBXqvNy9vvEjwz6snGNxVYiXvJidvHlg6S45nXMpNFEWhxVUQ7yn/U/5N3wj
 Yvcy6E0jGQX08tmSh9HdzqLkvTi5uotsyC+CrDv19Zh0mY1jBJwcO15lJ8TPKtd+YKql
 VNkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=aiS8yf1PBS/zwPB99kdFUdDHK8ObT8Euu37jXtKB+OU=;
 b=r3EWCXh5grfVNSO/kV81gWS0ccgZFc6aDZOcCtQAEvtt/0IRzoryXZBfh0ALOCgj7s
 JruQqqazxgkVCZiACMfTlzzGS5Pm83vFm045Ajgo3Oa/nf2Ki/xCCKncAoS0n69WpvcX
 HRjenGOulRwlW0CJ1ZYBogM0zeGigTOPMi4jDHeTJjIhNirytcBiqRg70XbmT8d/qrMM
 WElqnwQwobqERAudlf7IezJ22rSnzrMeCLUMxiN1YEm1AvU5LIGQg/RAm9OPBAbVWHJv
 aSh1HgXL7QkJm3hkWJ83aHOqurvAw50paFnqCSUBvBVDdOAjEcrTv3VY8LYe1ufZBy/T
 U10Q==
X-Gm-Message-State: APjAAAUt8yGvLCHPrrwcQEFdp48E0NLkjrOGr5VHWpiSIXOgoDYP37xg
 Q5lmTY509xQvQpWFVHdxaFjJtD4YCmu02/wAhCOUUQ==
X-Google-Smtp-Source: APXvYqxEpz992EkbrB/a5dIKeWULuZ6srp87L6GXRGeRPNnqNiAuMj7qZSX8/Wh8b4Cy8uQnCyEJiE0cDMpExc4B928=
X-Received: by 2002:ac2:5b42:: with SMTP id i2mr25207525lfp.164.1573055800396; 
 Wed, 06 Nov 2019 07:56:40 -0800 (PST)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Wed, 6 Nov 2019 21:26:29 +0530
Message-ID: <CA+G9fYvm_QEq+9e+dni1Y+bJswr9bU5=shJcC+wKjjOyiPsXXQ@mail.gmail.com>
Subject: Linux-next-20191106 : arm64: Internal error: Oops: 96000007
To: Russell King - ARM Linux <linux@armlinux.org.uk>, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_075642_914492_99191846 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org,
 Mark Brown <broonie@kernel.org>, John Stultz <john.stultz@linaro.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64 devices Juno-r2, hikey (Hi6220) and dragonboard (APQ 8016 SBC)
boot failed while running linux next 20191106 kernel. But qemu_arm64
boot pass.

Crash log from dragonboard,

[   10.656527] Unable to handle kernel paging request at virtual
address ffff800011b3ef68
[   10.656580] Mem abort info:
[   10.656587]   ESR = 0x96000007
[   10.656594]   EC = 0x25: DABT (current EL), IL = 32 bits
[   10.656600]   SET = 0, FnV = 0
[   10.656605]   EA = 0, S1PTW = 0
[   10.656610] Data abort info:
[   10.656616]   ISV = 0, ISS = 0x00000007
[   10.656621]   CM = 0, WnR = 0
[   10.656629] swapper pgtable: 4k pages, 48-bit VAs, pgdp=0000000081980000
[   10.656635] [ffff800011b3ef68] pgd=00000000bfeff003,
pud=00000000bfefe003, pmd=00000000bfefa003, pte=0000000000000000
[   10.656887] Internal error: Oops: 96000007 [#1] PREEMPT SMP
[   10.656894] Modules linked in: adv7511(+) cec msm(+) mdt_loader
drm_kms_helper qcom_rng drm socinfo rmtfs_mem qrtr fuse
[   10.656928] CPU: 0 PID: 230 Comm: systemd-udevd Not tainted
5.4.0-rc6-next-20191106 #1
[   10.656933] Hardware name: Qualcomm Technologies, Inc. APQ 8016 SBC (DT)
[   10.656939] pstate: a0000085 (NzCv daIf -PAN -UAO)
[   10.656953] pc : __of_match_node.part.5+0x48/0x88
[   10.656960] lr : of_match_node+0x40/0x70
[   10.656964] sp : ffff8000132534d0
[   10.656968] x29: ffff8000132534d0 x28: ffff8000101d6260
[   10.656977] x27: ffff80001241a7a0 x26: ffff80001241a7a0
[   10.656985] x25: ffff80001241a860 x24: ffff80001241a6e8
[   10.656993] x23: 0000000000000000 x22: ffff00003fd08010
[   10.657001] x21: 0000000000000000 x20: 0000000000000000
[   10.657008] x19: ffff800011b3ef68 x18: ffffffffffffffff
[   10.657016] x17: 0000000000000000 x16: 0000000000000000
[   10.657024] x15: ffff8000121ffa48 x14: 4e3a666f3d534149
[   10.657032] x13: 0000000000000040 x12: 0000000000000028
[   10.657039] x11: 0000000000000001 x10: 0101010101010101
[   10.657047] x9 : ffff800012532c50 x8 : 0000000000000050
[   10.657055] x7 : ffff800010df1164 x6 : 0000000000000000
[   10.657063] x5 : 00000000a4fd7f12 x4 : ffff00003bd7cd18
[   10.657070] x3 : 0000000000000000 x2 : 0000000000000001
[   10.657078] x1 : ffff00003fd08010 x0 : ffff800010df1178
[   10.657086] Call trace:
[   10.657094]  __of_match_node.part.5+0x48/0x88
[   10.657099]  of_match_node+0x40/0x70
[   10.657106]  of_match_device+0x30/0x50
[   10.657115]  platform_match+0x4c/0xe8
[   10.657122]  __device_attach_driver+0x3c/0x120
[   10.657128]  bus_for_each_drv+0x78/0xd8
[   10.657135]  __device_attach+0xe8/0x170
[   10.657141]  device_initial_probe+0x24/0x30
[   10.657148]  bus_probe_device+0xa0/0xa8
[   10.657154]  device_add+0x4fc/0x7a8
[   10.657160]  of_device_add+0x50/0x68
[   10.657167]  of_platform_device_create_pdata+0xf0/0x170
[   10.657173]  of_platform_bus_create+0x174/0x550
[   10.657180]  of_platform_populate+0x94/0x158
[   10.657358]  msm_pdev_probe+0x74/0x358 [msm]
[   10.657369]  platform_drv_probe+0x58/0xa8
[   10.657377]  really_probe+0x290/0x488
[   10.657384]  driver_probe_device+0x12c/0x148
[   10.657391]  device_driver_attach+0x74/0x98
[   10.657397]  __driver_attach+0xc4/0x178
[   10.657403]  bus_for_each_dev+0x84/0xd8
[   10.657409]  driver_attach+0x30/0x40
[   10.657416]  bus_add_driver+0x170/0x258
[   10.657423]  driver_register+0x64/0x118
[   10.657430]  __platform_driver_register+0x54/0x60
[   10.657582]  msm_drm_register+0x60/0x6c [msm]
[   10.657592]  do_one_initcall+0x94/0x460
[   10.657600]  do_init_module+0x60/0x204
[   10.657606]  load_module+0x2078/0x2720
[   10.657613]  __do_sys_finit_module+0x100/0x120
[   10.657619]  __arm64_sys_finit_module+0x28/0x38
[   10.657628]  el0_svc_common.constprop.2+0x7c/0x180
[   10.657635]  el0_svc_handler+0x34/0xa0
[   10.657643]  el0_sync_handler+0x124/0x1f8
[   10.657649]  el0_sync+0x140/0x180
[   10.657659] Code: 1a80d281 9a93d2b5 2a0103f4 91032273 (39400264)
[   10.657667] ---[ end trace 8b4c2740f71524d1 ]---

Full test log,
https://lkft.validation.linaro.org/scheduler/job/994051#L1396

metadata:
  git branch: master
  git repo: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
  git commit: dcd34bd234181ec74f081c7d0025204afe6b213e
  git describe: next-20191106
  make_kernelversion: 5.4.0-rc6
  kernel-config:
http://snapshots.linaro.org/openembedded/lkft/lkft/sumo/dragonboard-410c/lkft/linux-next/640/config
  build-location:
http://snapshots.linaro.org/openembedded/lkft/lkft/sumo/dragonboard-410c/lkft/linux-next/640


Best regards
Naresh Kamoju

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
