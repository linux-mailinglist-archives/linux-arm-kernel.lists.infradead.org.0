Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1A71F8403
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 17:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diy2M0feqB8GAqeOF5GhYlmo/Px5CcJufs64IzKh1rg=; b=E9g1LqXcmoNrqT
	HaFdPYZjqOO9M7S8faocdiRyXjiJNFSnzuwJmtSYg2e7Cr0Qe8EE7Bx43Ort2VY61afIhpZBY9+9H
	3RtRIcAredDjrYuPUdrVIpjHKjTZA5rnRsds+RbGGJrXesPsKwadRBtsjvbzN+tQEw/dfB58VYVJU
	WKkLDTzj8LccGd1mrVsdaw7eFn7zVz8QXFYevfWR7fV/S3RlDLh3IxbrMnKucn2YvyY+iUv4TE3jW
	zPONXUPFRUg+pTdLhSP0HqMEWESm+VtHdmXTXbhf31/EyROG0lvguZoEDw8dQZxGTP37LDu2X3Djn
	wNIK8mAd+IQv7rcalcQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk8QG-0007CA-Ca; Sat, 13 Jun 2020 15:50:20 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk8Pt-0007Bj-UP
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 15:49:59 +0000
Received: by mail-pj1-x1041.google.com with SMTP id h95so5123485pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 08:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yhXZuupoX7BIXVJwz1oZWc10VcIWtREfzC/bBd80nzM=;
 b=AYy1tMtC3vpxFVtV4TbjzgTbfxpa/ZxdZMlR8oURt05Pl7Clzj+WojnaX4FZjItOf/
 nWDv7QlbInSud5+UHygJ8LiwPB5wb5L0l0wM78xwG2UEhLWzp1/MhBRF5xzaY15u8jM6
 6JOc7bdiWi4rauyd1EOYPGBiqjMtBGPgN0pntaHkE7g/oBhd2htSMpM/EXdGzpW18IpH
 nU3CMotr42L/UBLWqClhKprp0taCk+a1Llu9HBklV/+nOw6jvOB80FYLSfin7ooSL0In
 Pji7bCDGcFId2kb30Ezgz1s2ASuHjm7ixkFJD89nfTPUvV8xmBcjHKKs2J2L70rv+hDx
 ewhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=yhXZuupoX7BIXVJwz1oZWc10VcIWtREfzC/bBd80nzM=;
 b=dAeGdJQQO5StMnIsJQgPXnNZvSXZzTmtRIcIYWSu13HWbwIrFfw32q3ciV/PkvVCKQ
 MFgukvpCKJT5xaJyFS46RLhLiiM8VkqGjHB0vqFqunc6CnROYPB17utwaKDlSG/42LDt
 LDlZI/GhOowPKJcCXXl1G2ozMK9KKJHF55YRpGlSW0PwwKU4V0MLHcX1sYf0fvKTn2Ie
 y8xcKOa3l+9hK5FHuQwPhBjaGKZ18VUN80vr/9w56skDofjv4JvK1UAwWOziGPcVN1+H
 f2180sqzxVI58DP/B5Qp1qWiRVGPOkjnErrqOPDd3DvB5UGlqQj4JlALsSJZBHZCa+67
 VTyA==
X-Gm-Message-State: AOAM530UcHPYs4CXe3/Zd9KTAGYpcKHx8C+kcL/DJnSOhmH3DtpsfSc3
 lUI6rJinhojbHNGmiXktxEU=
X-Google-Smtp-Source: ABdhPJwaIaqofgNvusVfAavV7moTWXepYh8H2dpeike2k8TBp5P1Lbn/7idzGED7fX1r2yC64nF9MQ==
X-Received: by 2002:a17:90a:7347:: with SMTP id
 j7mr4128971pjs.128.1592063396764; 
 Sat, 13 Jun 2020 08:49:56 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id m5sm7901529pga.3.2020.06.13.08.49.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 13 Jun 2020 08:49:55 -0700 (PDT)
Date: Sat, 13 Jun 2020 08:49:54 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] pinctrl: freescale: imx: Use 'devm_of_iomap()' to avoid
 a resource leak in case of error in 'imx_pinctrl_probe()'
Message-ID: <20200613154954.GA98985@roeck-us.net>
References: <20200602200626.677981-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602200626.677981-1-christophe.jaillet@wanadoo.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_084957_998824_6227A31F 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: aisheng.dong@nxp.com, aalonso@freescale.com, festevam@gmail.com,
 linus.walleij@linaro.org, stefan@agner.ch, linux-gpio@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org,
 s.hauer@pengutronix.de, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 10:06:26PM +0200, Christophe JAILLET wrote:
> Use 'devm_of_iomap()' instead 'of_iomap()' to avoid a resource leak in
> case of error.
> 
> Update the error handling code accordingly.
> 
> Fixes: 26d8cde5260b ("pinctrl: freescale: imx: add shared input select reg support")
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

When booting mcimx7d-sabre in qemu, his patch results in:

[    1.835341] imx7d-pinctrl 302c0000.iomuxc-lpsr: initialized IMX pinctrl driver
[    1.839702] imx7d-pinctrl 30330000.pinctrl: can't request region for resource [mem 0x30330000-0x3033ffff]
[    1.840261] imx7d-pinctrl: probe of 30330000.pinctrl failed with error -16

This is followed by:

[   21.589169] sdhci-esdhc-imx 30b40000.usdhc: could not get pinctrl
[   21.589569] 8<--- cut here ---
[   21.589683] Unable to handle kernel paging request at virtual address ffffff9e
[   21.589830] pgd = (ptrval)
[   21.589905] [ffffff9e] *pgd=8bfde841, *pte=00000000, *ppte=00000000
[   21.590404] Internal error: Oops: 27 [#1] SMP ARM
[   21.590595] Modules linked in:
[   21.590792] CPU: 0 PID: 5 Comm: kworker/0:0 Not tainted 5.7.0-14530-g464c47191c90-dirty #4
[   21.590926] Hardware name: Freescale i.MX7 Dual (Device Tree)
[   21.591402] Workqueue: events deferred_probe_work_func
[   21.591547] PC is at pinctrl_lookup_state+0x8/0x78
[   21.591626] LR is at sdhci_esdhc_imx_probe+0x5e4/0x6c4
[   21.591731] pc : [<c091e884>]    lr : [<c0f9c84c>]    psr: 20000013
[   21.591874] sp : cb1b5df8  ip : 00000001  fp : c1fee723
[   21.591993] r10: 00000009  r9 : 00000000  r8 : 00000000
[   21.592120] r7 : cb4c5810  r6 : cb4c5800  r5 : ffffff92  r4 : cbdd338c
[   21.592263] r3 : 00014368  r2 : d8f46c35  r1 : c1a1e710  r0 : ffffff92
[   21.592441] Flags: nzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
[   21.592610] Control: 10c5387d  Table: 8020406a  DAC: 00000051
[   21.592762] Process kworker/0:0 (pid: 5, stack limit = 0x(ptrval))
[   21.592935] Stack: (0xcb1b5df8 to 0xcb1b6000)
[   21.593129] 5de0:                                                       cbdd338c c9744540
[   21.593404] 5e00: cb4c5800 cb4c5810 00000000 c0f9c84c 00000000 d8f46c35 cb4c5810 00000000
[   21.593649] 5e20: cb4c5810 c1fc55b4 c2652ab0 00000000 c1fc55b4 c0bb98a4 cb4c5810 c2652aa8
[   21.593937] 5e40: 00000000 c2652ab0 00000000 c0bb73f8 cb4c5810 c1fc55b4 c0bb776c cb1b4000
[   21.594209] 5e60: c1f8b2e8 cb1b4000 c1e08eec c0bb766c 00000000 cb1b5eac c0bb776c c0bb55d0
[   21.594460] 5e80: cb4a7124 cb0bb8e4 c94af4d8 d8f46c35 00000004 cb4c5810 cb1b4000 00000001
[   21.594702] 5ea0: cb4c58a0 c0bb71a4 cb1b4000 cb4c5810 00000001 d8f46c35 00000000 cb4bbaf4
[   21.594973] 5ec0: cb4c5810 c1f8b750 c1f8b29c c0bb6470 cb4bbaf4 cb4c5810 c1f8b29c c0bb692c
[   21.595187] 5ee0: c1f8b340 cb0b4c80 cbd95c00 cbd98f00 c1fefbd0 c036885c 00000001 00000000
[   21.595457] 5f00: c03687a8 c120d364 00000000 00000000 00000000 cbd95c00 c1f8b340 c24673d8
[   21.595727] 5f20: 00000000 c19af744 00000000 d8f46c35 cbd95c00 cb0b4c80 cbd95c00 cb0b4c94
[   21.596023] 5f40: cbd95c38 c1e05d00 00000008 cb1b4000 cbd95c00 c0368f94 cb19a164 c1fef34a
[   21.596284] 5f60: cb1b4000 cb0b5280 cb17a7c0 cb1b4000 00000000 c0368d7c cb0b4c80 cb183e7c
[   21.596519] 5f80: cb0b52c4 c03714c8 cb1b4000 cb17a7c0 c0371388 00000000 00000000 00000000
[   21.596742] 5fa0: 00000000 00000000 00000000 c0300174 00000000 00000000 00000000 00000000
[   21.596976] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[   21.597196] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000000 00000000 00000000
[   21.597442] [<c091e884>] (pinctrl_lookup_state) from [<c0f9c84c>] (sdhci_esdhc_imx_probe+0x5e4/0x6c4)
[   21.597651] [<c0f9c84c>] (sdhci_esdhc_imx_probe) from [<c0bb98a4>] (platform_drv_probe+0x48/0x98)
[   21.597838] [<c0bb98a4>] (platform_drv_probe) from [<c0bb73f8>] (really_probe+0x1e0/0x348)
[   21.598016] [<c0bb73f8>] (really_probe) from [<c0bb766c>] (driver_probe_device+0x5c/0xb4)
[   21.598188] [<c0bb766c>] (driver_probe_device) from [<c0bb55d0>] (bus_for_each_drv+0x84/0xc8)
[   21.598367] [<c0bb55d0>] (bus_for_each_drv) from [<c0bb71a4>] (__device_attach+0xdc/0x148)
[   21.598545] [<c0bb71a4>] (__device_attach) from [<c0bb6470>] (bus_probe_device+0x88/0x90)
[   21.598720] [<c0bb6470>] (bus_probe_device) from [<c0bb692c>] (deferred_probe_work_func+0x74/0xa4)
[   21.598906] [<c0bb692c>] (deferred_probe_work_func) from [<c036885c>] (process_one_work+0x274/0x794)
[   21.599105] [<c036885c>] (process_one_work) from [<c0368f94>] (worker_thread+0x218/0x4f4)
[   21.599275] [<c0368f94>] (worker_thread) from [<c03714c8>] (kthread+0x140/0x174)
[   21.599441] [<c03714c8>] (kthread) from [<c0300174>] (ret_from_fork+0x14/0x20)
[   21.599606] Exception stack(0xcb1b5fb0 to 0xcb1b5ff8)
[   21.599782] 5fa0:                                     00000000 00000000 00000000 00000000
[   21.600042] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[   21.600290] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[   21.600582] Code: e8bd81f0 c138c66c e92d41f0 e1a05000 (e5b5400c)
[   21.601140] ---[ end trace a236f1b24b2698e6 ]---

After reverting the patch, the log is:

[    1.829261] imx7d-pinctrl 302c0000.iomuxc-lpsr: initialized IMX pinctrl driver
[    1.841358] imx7d-pinctrl 30330000.pinctrl: initialized IMX pinctrl driver

and there is no subsequent error/crash.

Guenter

---
bisect log:

# bad: [af7b4801030c07637840191c69eb666917e4135d] Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net
# good: [3b69e8b4571125bec1f77f886174fe6cab6b9d75] Merge tag 'sh-for-5.8' of git://git.libc.org/linux-sh
git bisect start 'af7b4801030c' '3b69e8b45711'
# good: [77f55d1305c11fb729b88f2c3f7881ba0831fa6f] staging: rtl8723bs: Use common packet header constants
git bisect good 77f55d1305c11fb729b88f2c3f7881ba0831fa6f
# good: [f558b8364e19f9222e7976c64e9367f66bab02cc] Merge tag 'driver-core-5.8-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core
git bisect good f558b8364e19f9222e7976c64e9367f66bab02cc
# good: [57343d51613227373759f5b0f2eede257fd4b82e] misc: xilinx-sdfec: improve get_user_pages_fast() error handling
git bisect good 57343d51613227373759f5b0f2eede257fd4b82e
# good: [e8dff03aef6a76c5c9184ed1dd3c770d4ce9c885] Merge tag 'rtc-5.8' of git://git.kernel.org/pub/scm/linux/kernel/git/abelloni/linux
git bisect good e8dff03aef6a76c5c9184ed1dd3c770d4ce9c885
# good: [920fecc1aa4591da27ef9dcb338fc5da86b404d7] pinctrl: bcm2835: Add support for wake-up interrupts
git bisect good 920fecc1aa4591da27ef9dcb338fc5da86b404d7
# good: [4e2905adac9f0fdc25154ac83719a986c2367a14] net: dp83869: Reset return variable if PHY strap is read
git bisect good 4e2905adac9f0fdc25154ac83719a986c2367a14
# good: [9049a40c858f49c141e12924b77b91cce4c46617] Merge branch 'for-davem' of git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs
git bisect good 9049a40c858f49c141e12924b77b91cce4c46617
# bad: [cf0c97f148e9e50aa5a7ddd1984a604dd2bde4af] Merge tag 'pinctrl-v5.8-1' of git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl
git bisect bad cf0c97f148e9e50aa5a7ddd1984a604dd2bde4af
# good: [11d8da5cabf7c6c3263ba2cd9c00260395867048] pinctrl: freescale: imx: Fix an error handling path in 'imx_pinctrl_probe()'
git bisect good 11d8da5cabf7c6c3263ba2cd9c00260395867048
# bad: [08acc963190a3a0eb491efa9cc466b2c18d59f22] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()' which is unused and broken
git bisect bad 08acc963190a3a0eb491efa9cc466b2c18d59f22
# bad: [ba403242615c2c99e27af7984b1650771a2cc2c9] pinctrl: freescale: imx: Use 'devm_of_iomap()' to avoid a resource leak in case of error in 'imx_pinctrl_probe()'
git bisect bad ba403242615c2c99e27af7984b1650771a2cc2c9
# first bad commit: [ba403242615c2c99e27af7984b1650771a2cc2c9] pinctrl: freescale: imx: Use 'devm_of_iomap()' to avoid a resource leak in case of error in 'imx_pinctrl_probe()'

---
qemu command line:

qemu-system-arm -M mcimx7d-sabre \
	-kernel arch/arm/boot/zImage -no-reboot \
	-initrd rootfs-armv7a.cpio \
	-m 256 -display none \
	--append "rdinit=/sbin/init earlycon=ec_imx6q,mmio,0x30860000,115200n8 console=ttymxc0,115200" \
	-dtb arch/arm/boot/dts/imx7d-sdb.dtb \
	-nographic -monitor null -serial stdio

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
