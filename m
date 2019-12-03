Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4072A10F763
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 06:38:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1WMjoVVqqk0lm/YKVIJ93fdOx9iz/zTSKcN7tIIlHE=; b=S4TxFnPj/DAbX7
	TLGgFgAy24K1TVX3mmPrffkpbJiXA2wMFfLCGWdQHQRxVvvpXVcl4pECv+psQn8gC3Z9v36fN1LKO
	C7YBtbOT6zYaGeTnqWdIT9q5wYkSCZVa07YMmBVtqW6b8APu3gsq7TkZ1tG0ZDUnEFfCHJPoYnujY
	HVU5CkBbSLo3L33sIbw7DsD6WKOqsbWbZZoygc8l+5yCaq7mUliLVSM0NfkQTZnzFnep9wzdWX4E1
	O2qo9AC316JgtB5Quofbp4cjjYPd6KLT+wbF9sGR8LS0QxXpF6M7S2velmMuqfkPmp5vtFo7KRkEk
	6Kvx7U6hjZbWOeiTXyMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic0tS-0001x3-1Z; Tue, 03 Dec 2019 05:38:38 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic0tK-0001w7-7P
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 05:38:32 +0000
Received: by mail-oi1-x241.google.com with SMTP id e9so2164101oif.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 21:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bxKEkxDBia5ioBHm8RVlU4uUCE2gbjwJh83vCZ7hmfs=;
 b=VN/qJlFTMiKIOyz/f6dXusZ23v2/RNQY8O+QxV1cdLRjyPIXIQ1tgU7l7ssMK4Xswr
 d4nvAG1H2SxlaWeTSQAKYwju0/RSGOjmNRKqSvfbfnDO5oLoJoNUjBWEXKaGDp7wnuWh
 HIIonmMjcT4LaroBmHqnSjDUk0Jauysh/Z+6iNEqv69Xqxarx7UK3qe6efABgbT/DVV7
 DS5E9h7hgRotmEdRre90KoAnGzu2GbsuB3m86dIcjwKBVe5FQtGdn+tDKxLm6oCR0nNF
 8sUocBp03T5yBnEqskXALqgNYgA+9HsmKJ10YJ3dekrOdXLD/UjM+Ue76VeGKaaNRkIY
 NnfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bxKEkxDBia5ioBHm8RVlU4uUCE2gbjwJh83vCZ7hmfs=;
 b=sQlTxyVryjTJ3Ha256bwFFdXydPf20kAsez5TuWt7/ePk8yBNLfFNbzM76jW1Vjbh1
 1b1hp7vsJFsYLOTyS/M0uG0Oenpo1QSppv00msvs0z5v0Pt2IdT0QvjmGjobyOhw/MT8
 cThX4/DtoxXoVxdmleTNgMajKHmH/56g9EOc7FaDnwlQf4/37aRP3U8L+p3RnFwCtBPL
 gC0CIKFMJDHk/s14euyfWsvfGyLaOMT11R1CE9zqa4kckoLzTFOvJC3t1nkMlGZFdk7s
 vM5BQgWbyi415AOuk74rXl1NqxYRYvFDejhfHENvQjA7/EByTQ6/SrdKwvrYhVGfT/RZ
 ZEJA==
X-Gm-Message-State: APjAAAXxcfM1F4MKb6eIy3lcWmvn4r9p0HTSx6/y5s/levnNGKypWTfd
 bz/sGdbPmiQiNEGC7rgoVDRLOTOQhHDeIuFd7WoYOw==
X-Google-Smtp-Source: APXvYqzOyctit94qUVdAD4+2E8DY1i265rqYPtq5w6+szwRcFQzPYSx1OiO04ERZDP2PnVBnzvSIzms9Y8NBmrpy+Ko=
X-Received: by 2002:aca:c551:: with SMTP id v78mr2310770oif.161.1575351508779; 
 Mon, 02 Dec 2019 21:38:28 -0800 (PST)
MIME-Version: 1.0
References: <20190911182546.17094-1-nsaenzjulienne@suse.de>
 <20190911182546.17094-4-nsaenzjulienne@suse.de>
 <CALAqxLVVcsmFrDKLRGRq7GewcW405yTOxG=KR3csVzQ6bXutkA@mail.gmail.com>
In-Reply-To: <CALAqxLVVcsmFrDKLRGRq7GewcW405yTOxG=KR3csVzQ6bXutkA@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 2 Dec 2019 21:38:17 -0800
Message-ID: <CALAqxLUkPNf9JYyt+_VOrxq=Zq03veb1y-7aDx+_Vw+fF9i82A@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_213830_299029_480BA1BA 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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
 Rob Herring <robh+dt@kernel.org>, wahrenst@gmx.net,
 Nicolas Dechense <nicolas.dechesne@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 2, 2019 at 9:08 PM John Stultz <john.stultz@linaro.org> wrote:
>
> On Wed, Sep 11, 2019 at 11:26 AM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > So far all arm64 devices have supported 32 bit DMA masks for their
> > peripherals. This is not true anymore for the Raspberry Pi 4 as most of
> > it's peripherals can only address the first GB of memory on a total of
> > up to 4 GB.
> >
> > This goes against ZONE_DMA32's intent, as it's expected for ZONE_DMA32
> > to be addressable with a 32 bit mask. So it was decided to re-introduce
> > ZONE_DMA in arm64.
> >
> > ZONE_DMA will contain the lower 1G of memory, which is currently the
> > memory area addressable by any peripheral on an arm64 device.
> > ZONE_DMA32 will contain the rest of the 32 bit addressable memory.
> >
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
>
> Hey Nicolas,
>   Testing the db845c with linus/master, I found a regression causing
> system hangs in early boot:
>
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x517f803c]
> [    0.000000] Linux version 5.4.0-mainline-10675-g957a03b9e38f
> (docker@a4ec90a1e72c) (gcc version 7.4.0 (Ubuntu/Linaro
> 7.4.0-1ubuntu1~18.04.1)) #1209 SMP PREEMPT Tue Dec 3 00:23:15 UTC 2019
> [    0.000000] Machine model: Thundercomm Dragonboard 845c
> [    0.000000] earlycon: qcom_geni0 at MMIO 0x0000000000a84000
> (options '115200n8')
> [    0.000000] printk: bootconsole [qcom_geni0] enabled
> [    0.000000] efi: Getting EFI parameters from FDT:
> [    0.000000] efi: UEFI not found.
> [    0.000000] cma: Reserved 16 MiB at 0x00000000ff000000
> [    0.000000] psci: probing for conduit method from DT.
> [    0.000000] psci: PSCIv1.1 detected in firmware.
> [    0.000000] psci: Using standard PSCI v0.2 function IDs
> [    0.000000] psci: MIGRATE_INFO_TYPE not supported.
> [    0.000000] psci: SMC Calling Convention v1.0
> [    0.000000] psci: OSI mode supported.
> [    0.000000] percpu: Embedded 31 pages/cpu s87512 r8192 d31272 u126976
> [    0.000000] Detected VIPT I-cache on CPU0
> [    0.000000] CPU features: detected: GIC system register CPU interface
> [    0.000000] CPU features: kernel page table isolation forced ON by KASLR
> [    0.000000] CPU features: detected: Kernel page table isolation (KPTI)
> [    0.000000] ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware
> [    0.000000] CPU features: detected: Hardware dirty bit management
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: -188245
> [    0.000000] Kernel command line: earlycon
> firmware_class.path=/vendor/firmware/ androidboot.hardware=db845c
> init=/init androidboot.boot_devices=soc/1d84000.ufshc
> printk.devkmsg=on buildvariant=userdebug root=/dev/sda2
> androidboot.bootdevice=1d84000.ufshc androidboot.serialno=c4e1189c
> androidboot.baseband=sda
> msm_drm.dsi_display0=dsi_lt9611_1080_video_display:
> androidboot.slot_suffix=_a skip_initramfs rootwait ro init=/init
>
> <hangs indefinitely here>
>
> I bisected the issue down to this patch (1a8e1cef7603 upstream - the
> previous patch a573cdd7973d works though I need to apply the
> arm64_dma_phys_limit bit from this one as the previous patch doesn't
> build on its own).
>
> In the above log:
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: -188245
> looks the most suspect, and going back to the working a573cdd7973d +
> build fix I see:
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 957419
>
> Do you have any suggestions for what might be going wrong?

Digging further, it seems the error is found in calculate_node_totalpages()
 real_size = size - zone_absent_pages_in_node(pgdat->node_id, i,
                                                  node_start_pfn, node_end_pfn,
                                                  zholes_size);

Where for zone DMA32 size is 262144, but real_size is calculated as -883520.

I've not traced through to figure out why zone_absent_pages_in_node is
coming up with such a large number yet, but I'm about to crash so I
wanted to share.

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
