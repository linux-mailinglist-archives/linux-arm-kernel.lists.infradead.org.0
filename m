Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B632210F6A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 06:09:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WzAuOPdh3xMAnMxpbvPozgaZUzF6EwYtj4TMcCQbrSM=; b=PyFHq6+3IRl3Qj
	197rlbmSlPq5J0aMxKfSlEDf6SYcXc3U7m38bnsQP8ZQshqIr1hL1t67PtNoBHnOP17PlC2ndt/t6
	qXyJIdUzp9v//UVMhZwXQuksY8GPGTpqOHLrYTdbi9OAagJnZ3y7zPsodaw7C9JY2V1ve8nJue2DU
	wcfHbxs8SqB9VaIG5ErfcC9vNbbrjBZwkn6zOeZzZhRUdjOyR6ixbfVFOW3KHd3ilktmEYAsYEfHQ
	XQOWMb6A0LBNA2dyQcKNdW105POIwQ4gB8+YBBPLrucvB1bzf47KgyrLzmRwGYQtGoYIUsInOIBhX
	ctQhRyuj/SA5BKWUnyuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic0Qk-0005dy-T2; Tue, 03 Dec 2019 05:08:58 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic0Qd-0005dA-Jl
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 05:08:53 +0000
Received: by mail-ot1-x342.google.com with SMTP id i4so1837675otr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 21:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WZKMAVxtDLCraxcIiN00SsJEJBiXhWtyCoaPrnrSK7s=;
 b=oBqcKe8GwpzMfWCzOpz6k8A9kpdP/IpogOa4QMVMi1V41uaJwMzkXho7ydtuEMajNz
 szdX7Xtr7bE/4qsM0T2BFq8e80vtNeL84dLeM/iqGREr49p8N2c53zCmQa+n950nVR6Z
 6iGPayd+018+WDpv5SCby8xhrf+/42Npi3JOslIr4vH65sAgSziSEZGuefAlnAJocoBn
 id++ytyCPP/m9lOSO70QGToIxsNbT+MBZz33hSF1z/NGLHQr2n4eusakZHYVnS/cRl7g
 tqkF2YKPkJGN/mt88IQpUZ6SPZUwQmO8hGjGrYvQrv6Yq9v3/NTajW6FAB8XUZFC01vr
 bafw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WZKMAVxtDLCraxcIiN00SsJEJBiXhWtyCoaPrnrSK7s=;
 b=LTrCCsHnuYPLtZAfjutWP0HWBXirutOle0IrImGzP+oGK9qbouRv7sviYhfQLViMSt
 1+4Yw+cpqL3pPCsDShX65UvyA5Atf9W+GXhbvik9EJLxgUmiA9o34fbH9DdSOuDxZkpc
 h49S5F+DvnaMrgYkhqlcIetA4+Np1OwqlSrxVk5rkUfkOxiyQz//l5BakjSImozgJ3S1
 jZ+4CG/OekJpL14+ELV9ocQFCsE7eZx9NusTW5BwtiDl5FVsGBs5ksAzirtePhsiOZyN
 dgAaYOKJb4yGHcy6PwVB//+ekq5EXTYy9+JrrITIQVx1ylpSuMUYhropHHDg9l5S+0Nx
 Ka2Q==
X-Gm-Message-State: APjAAAXMcmYenTERFxPiUEin+06S01DQN0d7+LEA+smZP1yelmvaSGB8
 JlpmsKkq7jCyDhhJ2xiT5oBwbyZ7Yvw2gKyN66FXSA==
X-Google-Smtp-Source: APXvYqzEJd0JnrQikt41atghBrKjPPeBmz9MNjbEqllktVwshO8ISesIC+M+S9vKnsCFZYOczBBF7MBhb09xnC6+tFw=
X-Received: by 2002:a9d:66ca:: with SMTP id t10mr1941618otm.352.1575349730156; 
 Mon, 02 Dec 2019 21:08:50 -0800 (PST)
MIME-Version: 1.0
References: <20190911182546.17094-1-nsaenzjulienne@suse.de>
 <20190911182546.17094-4-nsaenzjulienne@suse.de>
In-Reply-To: <20190911182546.17094-4-nsaenzjulienne@suse.de>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 2 Dec 2019 21:08:38 -0800
Message-ID: <CALAqxLVVcsmFrDKLRGRq7GewcW405yTOxG=KR3csVzQ6bXutkA@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_210851_653377_CAE23EA9 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Amit Pundir <amit.pundir@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Will Deacon <will@kernel.org>,
 mbrugger@suse.com, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-mm <linux-mm@kvack.org>,
 Nicolas Dechense <nicolas.dechesne@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, wahrenst@gmx.net,
 Marek Szyprowski <m.szyprowski@samsung.com>, phill@raspberrypi.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 11:26 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
> So far all arm64 devices have supported 32 bit DMA masks for their
> peripherals. This is not true anymore for the Raspberry Pi 4 as most of
> it's peripherals can only address the first GB of memory on a total of
> up to 4 GB.
>
> This goes against ZONE_DMA32's intent, as it's expected for ZONE_DMA32
> to be addressable with a 32 bit mask. So it was decided to re-introduce
> ZONE_DMA in arm64.
>
> ZONE_DMA will contain the lower 1G of memory, which is currently the
> memory area addressable by any peripheral on an arm64 device.
> ZONE_DMA32 will contain the rest of the 32 bit addressable memory.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

Hey Nicolas,
  Testing the db845c with linus/master, I found a regression causing
system hangs in early boot:

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x517f803c]
[    0.000000] Linux version 5.4.0-mainline-10675-g957a03b9e38f
(docker@a4ec90a1e72c) (gcc version 7.4.0 (Ubuntu/Linaro
7.4.0-1ubuntu1~18.04.1)) #1209 SMP PREEMPT Tue Dec 3 00:23:15 UTC 2019
[    0.000000] Machine model: Thundercomm Dragonboard 845c
[    0.000000] earlycon: qcom_geni0 at MMIO 0x0000000000a84000
(options '115200n8')
[    0.000000] printk: bootconsole [qcom_geni0] enabled
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 16 MiB at 0x00000000ff000000
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.0
[    0.000000] psci: OSI mode supported.
[    0.000000] percpu: Embedded 31 pages/cpu s87512 r8192 d31272 u126976
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] CPU features: kernel page table isolation forced ON by KASLR
[    0.000000] CPU features: detected: Kernel page table isolation (KPTI)
[    0.000000] ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware
[    0.000000] CPU features: detected: Hardware dirty bit management
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: -188245
[    0.000000] Kernel command line: earlycon
firmware_class.path=/vendor/firmware/ androidboot.hardware=db845c
init=/init androidboot.boot_devices=soc/1d84000.ufshc
printk.devkmsg=on buildvariant=userdebug root=/dev/sda2
androidboot.bootdevice=1d84000.ufshc androidboot.serialno=c4e1189c
androidboot.baseband=sda
msm_drm.dsi_display0=dsi_lt9611_1080_video_display:
androidboot.slot_suffix=_a skip_initramfs rootwait ro init=/init

<hangs indefinitely here>

I bisected the issue down to this patch (1a8e1cef7603 upstream - the
previous patch a573cdd7973d works though I need to apply the
arm64_dma_phys_limit bit from this one as the previous patch doesn't
build on its own).

In the above log:
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: -188245
looks the most suspect, and going back to the working a573cdd7973d +
build fix I see:
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 957419

Do you have any suggestions for what might be going wrong?

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
