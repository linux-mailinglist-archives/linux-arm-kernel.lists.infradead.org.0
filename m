Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAAE1F1529
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dd9vWg3zqpX1tAeWGb/oYMTPc3Ybeyr+XKMV3aBaQe0=; b=nX5ScjTKYKhWdI
	iCI/oPLKboarCxEDgzUuhGP/luWe2Lahy1RIOyZgc2uElHpIOCNnZuj8XysaRGwbtLFXVmTBr372t
	gvM8kxUgjvzxQSBbNstpO+7SqTi9DWm/Lfh8BLRTkXdJaLP9NPA9vDg9mBFcsPPey8JvUwZERxRLX
	vzXiDpPErWYjLnvoEawWATsLGy0ygvKTZmYkV4pMeDYyEEFuhhsUAUzSaNhFHtZK/01A8y6/ypGUX
	fPn8QfP0BYAEiK72ph9spIOe0WxPSarh5WIp5J4oEMH/AgRDx1/awBkfpaojT0vojiq+xZVpHfiYq
	XbBqeoQ9lc+5sTl1Ds6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDuB-0001ve-A7; Mon, 08 Jun 2020 09:17:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDu1-0001vE-Qy; Mon, 08 Jun 2020 09:17:11 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so16524607wrn.11;
 Mon, 08 Jun 2020 02:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=x0rzL+JBSt0PxuxsYolSfveoNgeDOUePGAauitnN6I0=;
 b=Kq5D7j2aA9D1+3DPqrcJzhCcg3yzqBE9dHELPqnpsjmt5nj5H0oebL+DUZ/u1AS/kB
 4bCTGM8wiuL4iWwb9iu8u5PRufVxX4vSdiucshvaghGq0c97h3YhaysmKwlUx5hXfZzj
 VuefeEP33YCWbCcbuG99UFvlbxoZajYPM0kclsLBzgzd94cjhVTNj8UmociEsBsq+m1F
 VY54dJ0ocMTkIClGEG5SWcnt1cfEwspuAQE/p+vBfPs3f9aYP+Or+6rvqrTJ214qSPgd
 AratGTuzZGofqY0OBLRro4YqUaaBU8PdtKfKFvpNoYye2XUbb1Dmx93co9HcrRy40lV/
 ofRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=x0rzL+JBSt0PxuxsYolSfveoNgeDOUePGAauitnN6I0=;
 b=cR02nMerJpn8qa2cb3O6QFJSeW0okq2+ohoJkV5XpNdObaWN1sEGUfDmnoqJSJpBIs
 eBo9iewdOzXspiDfmSBV5OOgPcfpxBF3S15QVtAk1WP9fx21tjZQIis+4Aq5cVULXV3x
 fzA+E4Cj/hds3XvzttNJH5xn5aEvVUI+1peBMri2Hxu8UaV53YYxdu2HNmbKuARBild4
 nmqC8HyAVYoUIblL6nZ3A78NqrmX4a3k/e7WmDEmx7W0bVvQRtDhrafS6qQ5bkdxwGsM
 /JjAkSpkUix6FgUlzI9td35esGjBARJpsp3/3XfRUKhlMGeQZY1822xWMhJ1cORLSyyY
 KzGg==
X-Gm-Message-State: AOAM532bM6HrkbIGe8IRDhadPZ0/bA+IGQdhWB78WcIJH0b2cKvXvP7b
 F8BJPVRevsT+azFlV1b78I3N/CZK
X-Google-Smtp-Source: ABdhPJzLsXfow6EBsPsJEUZcyA9hty9ZpahwVHooio1/j30TeHSqXph69GZjBPnZpH7F8c/3XYlQiw==
X-Received: by 2002:adf:b348:: with SMTP id k8mr24671207wrd.157.1591607827762; 
 Mon, 08 Jun 2020 02:17:07 -0700 (PDT)
Received: from ziggy.stardust ([213.195.114.138])
 by smtp.gmail.com with ESMTPSA id r5sm23527907wrq.0.2020.06.08.02.17.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 02:17:07 -0700 (PDT)
Subject: Re: 7edd363421 ("mfd: Add support for PMIC MT6360"): [ 121.241021]
 BUG: kernel NULL pointer dereference, address: 00000000
To: kernel test robot <lkp@intel.com>,
 "Gene, Chen," <gene.chen.richtek@gmail.com>
References: <20200606151517.GM12456@shao2-debian>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <f680a770-b705-42ee-5862-a29e34dcbcef@gmail.com>
Date: Mon, 8 Jun 2020 11:17:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200606151517.GM12456@shao2-debian>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_021709_881118_043D3ADB 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Gene Chen <gene_chen@richtek.com>, linux-kernel@vger.kernel.org,
 LKP <lkp@lists.01.org>, linux-mediatek@lists.infradead.org, "Lee, Jones,
 " <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/06/2020 17:15, kernel test robot wrote:
> Greetings,
> 
> 0day kernel testing robot got the below dmesg and the first bad commit is
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> 
> commit 7edd363421dab1d4806802ac65613d1c0ec85824
> Author:     Gene Chen <gene.chen.richtek@gmail.com>
> AuthorDate: Thu Apr 23 19:24:52 2020 +0800
> Commit:     Lee Jones <lee.jones@linaro.org>
> CommitDate: Wed May 27 07:46:18 2020 +0100
> 
>     mfd: Add support for PMIC MT6360
>     
>     Add MFD driver for mt6360 pmic chip include Battery Charger/
>     USB_PD/Flash, LED/RGB and LED/LDO/Buck
>     
>     Signed-off-by: Gene Chen <gene_chen@richtek.com>
>     Signed-off-by: Lee Jones <lee.jones@linaro.org>
> 
> 12e5bf757a  mfd: max77620: Use single-byte writes on MAX77620
> 7edd363421  mfd: Add support for PMIC MT6360
> 435faf5c21  Merge tag 'riscv-for-linus-5.8-mw0' of git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux
> +---------------------------------------------+------------+------------+------------+
> |                                             | 12e5bf757a | 7edd363421 | 435faf5c21 |
> +---------------------------------------------+------------+------------+------------+
> | boot_successes                              | 29         | 0          | 0          |
> | boot_failures                               | 1          | 15         | 10         |
> | BUG:kernel_hang_in_boot_stage               | 1          |            |            |
> | BUG:kernel_NULL_pointer_dereference,address | 0          | 15         | 10         |
> | Oops:#[##]                                  | 0          | 15         | 10         |
> | EIP:strcmp                                  | 0          | 15         | 10         |
> | Kernel_panic-not_syncing:Fatal_exception    | 0          | 15         | 10         |
> +---------------------------------------------+------------+------------+------------+
> 
> If you fix the issue, kindly add following tag
> Reported-by: kernel test robot <lkp@intel.com>
> 
> [  121.091622] Phantom Linux Driver, version n0.9.8, init OK
> [  121.113939] Silicon Labs C2 port support v. 0.51.0 - (C) 2007 Rodolfo Giometti
> [  121.146046] Guest personality initialized and is inactive
> [  121.169091] VMCI host device registered (name=vmci, major=10, minor=60)
> [  121.188032] Initialized host personality
> [  121.241021] BUG: kernel NULL pointer dereference, address: 00000000
> [  121.243012] #PF: supervisor read access in kernel mode
> [  121.243012] #PF: error_code(0x0000) - not-present page
> [  121.243012] *pdpt = 0000000000000000 *pde = f000ff53f000ff53 
> [  121.243012] Oops: 0000 [#1] DEBUG_PAGEALLOC
> [  121.243012] CPU: 0 PID: 1 Comm: swapper Not tainted 5.7.0-rc1-00052-g7edd363421dab #1
> [  121.243012] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
> [  121.243012] EIP: strcmp+0x11/0x30
> [  121.243012] Code: fa 8b 75 f8 89 c8 8b 7d fc 89 ec 5d c3 8d b4 26 00 00 00 00 8d 74 26 00 90 55 89 e5 83 ec 08 89 75 f8 89 c6 89 7d fc 89 d7 ac <ae> 75 08 84 c0 75 f8 31 c0 eb 04 19 c0 0c 01 8b 75 f8 8b 7d fc 89
> [  121.243012] EAX: c2a8bc64 EBX: 00000000 ECX: 00000000 EDX: 00000000
> [  121.243012] ESI: c2a8bc79 EDI: 00000000 EBP: e54bdea8 ESP: e54bdea0
> [  121.243012] DS: 007b ES: 007b FS: 0000 GS: 0000 SS: 0068 EFLAGS: 00010286
> [  121.243012] CR0: 80050033 CR2: 00000000 CR3: 02ec3000 CR4: 000006b0
> [  121.243012] Call Trace:
> [  121.243012]  kset_find_obj+0x3d/0xc0

This happens because the driver has no name. Actually I think we should fix this
in the driver and in the base code.

I'll prepare some patches.

Regards,
Matthias

> [  121.243012]  driver_find+0x16/0x40
> [  121.243012]  driver_register+0x49/0x100
> [  121.243012]  ? i2c_for_each_dev+0x39/0x50
> [  121.243012]  ? __process_new_adapter+0x20/0x20
> [  121.243012]  ? cht_wc_driver_init+0x11/0x11
> [  121.243012]  i2c_register_driver+0x30/0x80
> [  121.243012]  ? intel_lpss_pci_driver_init+0x16/0x16
> [  121.243012]  mt6360_pmu_driver_init+0xf/0x11
> [  121.243012]  do_one_initcall+0x33/0x1a0
> [  121.243012]  ? parse_args+0x1eb/0x3d0
> [  121.243012]  ? __might_sleep+0x31/0x90
> [  121.243012]  ? kernel_init_freeable+0x10a/0x17f
> [  121.243012]  kernel_init_freeable+0x12c/0x17f
> [  121.243012]  ? rest_init+0x110/0x110
> [  121.243012]  kernel_init+0xb/0x100
> [  121.243012]  ? schedule_tail_wrapper+0x9/0xc
> [  121.243012]  ret_from_fork+0x19/0x24
> [  121.243012] Modules linked in:
> [  121.243012] CR2: 0000000000000000
> [  121.243012] random: get_random_bytes called from init_oops_id+0x3a/0x40 with crng_init=0
> [  121.243012] ---[ end trace 38a803400f1a2bee ]---
> [  121.243012] EIP: strcmp+0x11/0x30
> 
>                                                           # HH:MM RESULT GOOD BAD GOOD_BUT_DIRTY DIRTY_NOT_BAD
> git bisect start e7b08814b16b80a0bf76eeca16317f8c2ed23b8c v5.6 --
> git bisect good 0e698dfa282211e414076f9dc7e83c1c288314fd  # 10:46  G     10     0    0   0  Linux 5.7-rc4
> git bisect good e6dffbf84da606cdb0a9bbaf5578cd2f7f792e05  # 11:36  G     10     0    0   0  Merge remote-tracking branch 'omap/for-next'
> git bisect good 2a74742ab11f42d8f855b00f88b3ed269c68040b  # 12:11  G     10     0    0   0  Merge remote-tracking branch 'sound-asoc/for-next'
> git bisect  bad 259921c0dc98a30df65d25d91f2f5c95567d12c9  # 12:37  B      0     1   17   0  Merge remote-tracking branch 'driver-core/driver-core-next'
> git bisect  bad d9baaa8ac86327a7a913f79db4b7342d0fa09c91  # 12:56  B      0     1   17   0  Merge remote-tracking branch 'iommu/next'
> git bisect  bad aacbf7c5e5f087e216d3c8772ef36ef46d873876  # 13:14  B      0     1   17   0  Merge remote-tracking branch 'regulator/for-next'
> git bisect good f7793e0aaba983940644b9610e8a04d2c417b797  # 13:49  G     10     0    0   0  Merge remote-tracking branch 'pcmcia/pcmcia-next'
> git bisect  bad 5ba24b008cb7900cfe07e3bf27ff854e4cf520cc  # 14:51  B      0     4   22   0  Merge remote-tracking branch 'mfd/for-mfd-next'
> git bisect good ae683dc18d5e3febf0a0346f56a641351a95dc48  # 15:29  G     10     0    1   1  Merge remote-tracking branch 'mmc/next'
> git bisect good 2f72d35ea75ee8bf8c9e63fb43d43d5bfb4ac8fd  # 15:49  G     10     0    0   0  MAINTAINERS: Update entry for Intel Broxton PMC driver
> git bisect good ff8bd0b59cfdabb9bc4c0941724fafaf9a508c07  # 16:08  G     10     0    0   0  mfd: tqmx86: Fix a typo in MODULE_DESCRIPTION
> git bisect good f4a1954036c1a256e89fb087eb39cb719336e7c4  # 16:23  G     10     0    0   0  mfd: wm8994: Fix unbalanced calls to regulator_bulk_disable()
> git bisect good 97eda5dcc2cde5dcc778bef7a9344db3b6bf8ef5  # 17:25  G     10     0    1   1  mfd: stmfx: Disable IRQ in suspend to avoid spurious interrupt
> git bisect good 12e5bf757a1fd03c5d736942428732be641daa1c  # 17:41  G     10     0    0   0  mfd: max77620: Use single-byte writes on MAX77620
> git bisect  bad 7edd363421dab1d4806802ac65613d1c0ec85824  # 18:00  B      0     3   19   0  mfd: Add support for PMIC MT6360
> # first bad commit: [7edd363421dab1d4806802ac65613d1c0ec85824] mfd: Add support for PMIC MT6360
> git bisect good 12e5bf757a1fd03c5d736942428732be641daa1c  # 18:10  G     30     0    3   4  mfd: max77620: Use single-byte writes on MAX77620
> # extra tests with debug options
> git bisect  bad 7edd363421dab1d4806802ac65613d1c0ec85824  # 18:21  B      0     3   19   0  mfd: Add support for PMIC MT6360
> # extra tests on head commit of linus/master
> git bisect  bad 435faf5c218a47fd6258187f62d9bb1009717896  # 18:39  B      0    10   26   0  Merge tag 'riscv-for-linus-5.8-mw0' of git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux
> # bad: [435faf5c218a47fd6258187f62d9bb1009717896] Merge tag 'riscv-for-linus-5.8-mw0' of git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux
> # extra tests on linus/master
> # duplicated: [435faf5c218a47fd6258187f62d9bb1009717896] Merge tag 'riscv-for-linus-5.8-mw0' of git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux
> # extra tests on linux-next/master
> # 119: [af30725c132e2e5c5369b60369ff0771fde7d4ff] Add linux-next specific files for 20200605
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/lkp@lists.01.org
> 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
