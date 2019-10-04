Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6388CCC446
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 22:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfIRK5jA/qavHi7a2iXsChMOmbC+nUToGDDyyN0WjO4=; b=qVyfHMdB7t7rVV
	9LWwfhMJPGY8Wj9pj5EG5Bp/Y9IOZQ0mjNhnc/WNEcInoyokSrQPCnSaIOsLWefQfH5LE9Jw0NAxL
	ZyZCzNFa+iXg58zqFsutfaEoBYN2/jTxwdj6tjwfOh7ejzU8OpSLtJ+43hqsmdNrRFZCe9n0qqVbn
	r+HEc+pE05q4M9sG7nur9sRj7haJhNV4FypEjPv37R3PPWXvjnlLnyZHBWGfF2NAVG42lloNgwY/C
	xrMBJ5/fAdeU4/1V+qb23wTZSSlRhrsubIRJLnoLRNn3QSbEaxhVHt3wTlZcr87x9DHu7LJVNnlwP
	vSryhXSZ5UCRWU71gn0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGUL5-0004Jw-3U; Fri, 04 Oct 2019 20:38:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGUKw-0004JS-SO
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 20:38:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id y21so7087507wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 13:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=skAE0yv65FpnWYSKjnu1eueJHObmclgqdYS8Pf8+I/s=;
 b=gfxGPVaWQe4goiBs+/E81XZaApl2EOVwJZVFW021/Z0udRY8gYnAiMT47APmQ+ypoZ
 IaHDVawvA33wl/OE7Oyyuv3bieyok7kGpMfrsNyR58ZOHm9UvTxf8gsh81crMR/mwsE+
 DKnX0OtqPf21vwGbMLrCsCUZHFqgbP+g5IeOXBU2G/Z2opKGc6zOfvSke1ox688ZE6cA
 6o0HWgxJD9NLUOaS0B6BbgTEgCjLl6V+D89tvk9OXeJQI3nJq/81A1bEVP3zzUgONVqd
 WMcnHkQ3GwVm4H5Ot5sm2V7AhTxH1Pffg9lMGoHWKnoYu4f8JbcqfO+RAu142sdDIlj7
 JQlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=skAE0yv65FpnWYSKjnu1eueJHObmclgqdYS8Pf8+I/s=;
 b=ouh2V2Yasmpg5fKwIRN5+v5Pq+Fu2SGVJFgZLpi5Ie6gK8Y65w1cjw8vjJWGNUwMdF
 F2xYw0a83O0ahi7eNCfxhV2jGcMrfkUTcS/dFazCe6P7pXcsPMZP7PZNZliU1gjjAHVN
 3QFsY0cuLs3QiDE0sqf275yWDomU3v75kQPw2iTFD5G3GpBH4BcpESdt49rvKyJkF4h/
 7owTfKKNWlUtAlXMkyUISytPmYDa5Na/N/mhsjjCAJcjoX9gdIuOc+jXyNm3uyjl3C2n
 b5grIohPfoDeg9JafpicVXtAB0jHANfrp6V+6UNrvwePdzyjCel3qBTk3XZiIAXoHcGZ
 vAZQ==
X-Gm-Message-State: APjAAAVA3Eamxn8bwVKyHKaVME4gQjtF5VYsVUX3bNQhCnr0x9mm0Dz3
 Ek0V+rUXIov/XLvwZLHfxMdxnOvKlBpAA5HkqCFEbw==
X-Google-Smtp-Source: APXvYqzyMV9MupndO2O27UkHRxd6bN6vFHp8NNFlCcPiqfGOEpWYt1tSEzWQHCwIs1Xos3TV8BZ1f4zz8N/5gxBVL1U=
X-Received: by 2002:a1c:2bc7:: with SMTP id
 r190mr12951679wmr.143.1570221481014; 
 Fri, 04 Oct 2019 13:38:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190301192017.39770-1-dianders@chromium.org>
 <CAJ+vNU0Ma5nG9_ThLO4cdO+=ivf7rmXiHZonF0HY0xx6X3R6Hw@mail.gmail.com>
 <5dce2964-8761-e7d0-8963-f0f5cb2feb02@arm.com>
 <CAJ+vNU0Q1-d7YDbAAEMqEcWnniqo6jLdKBbcUTar5=hJ+AC8vQ@mail.gmail.com>
 <1f6f7eb0-e1dc-d5a8-fb38-44c5bd839894@arm.com>
 <CAJ+vNU1Nd2p-ot2Qkj6vD9yD6gcYM-vm+snNWyt0ChgSqe4tBg@mail.gmail.com>
 <5cf9ec03-f6fb-8227-4ec5-62445038f283@arm.com>
 <CAJ+vNU28LrroW-XC4X2g3bdN171j0ieZenhYE1TrEM8yvKi=cQ@mail.gmail.com>
 <cb6392ff-fac6-300b-2e04-b34df8c42f28@arm.com>
In-Reply-To: <cb6392ff-fac6-300b-2e04-b34df8c42f28@arm.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Fri, 4 Oct 2019 13:37:49 -0700
Message-ID: <CAJ+vNU0kDseyqAMKAv+9+aw6wVKjBQcHcGD_8XgCy_KzZTM4Gg@mail.gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_133802_978792_F7A56E81 
X-CRM114-Status: GOOD (  27.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: open list <linux-kernel@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 Douglas Anderson <dianders@chromium.org>, evgreen@chromium.org,
 tfiga@chromium.org, Rob Clark <robdclark@gmail.com>,
 iommu@lists.linux-foundation.org,
 Tirumalesh Chalamarla <tchalamarla@caviumnetworks.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 11:34 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 04/10/2019 18:13, Tim Harvey wrote:
> [...]
> >>> No difference... still need 'arm-smmu.disable_bypass=n' to boot. Are
> >>> all four iommu-map props above supposed to be the same? Seems to me
> >>> they all point to the same thing which looks wrong.
> >>
> >> Hmm... :/
> >>
> >> Those mappings just set Stream ID == PCI RID (strictly each one should
> >> only need to cover the bus range assigned to that bridge, but it's not
> >> crucial) which is the same thing the driver assumes for the mmu-masters
> >> property, so either that's wrong and never could have worked anyway -
> >> have you tried VFIO on this platform? - or there are other devices also
> >> mastering through the SMMU that aren't described at all. Are you able to
> >> capture a boot log? The SMMU faults do encode information about the
> >> offending ID, and you can typically correlate their appearance
> >> reasonably well with endpoint drivers probing.
> >>
> >
> > Robin,
> >
> > VFIO is enabled in the kernel but I don't know anything about how to
> > test/use it:
> > $ grep VFIO .config
> > CONFIG_KVM_VFIO=y
> > CONFIG_VFIO_IOMMU_TYPE1=y
> > CONFIG_VFIO_VIRQFD=y
> > CONFIG_VFIO=y
> > # CONFIG_VFIO_NOIOMMU is not set
> > CONFIG_VFIO_PCI=y
> > CONFIG_VFIO_PCI_MMAP=y
> > CONFIG_VFIO_PCI_INTX=y
> > # CONFIG_VFIO_PLATFORM is not set
> > # CONFIG_VFIO_MDEV is not set
>
> No worries - since it's a networking-focused SoC I figured there was a
> chance you might be using DPDK or similar userspace drivers with the NIC
> VFs, but I was just casting around for a quick and easy baseline of
> whether the SMMU works at all (another way would be using Qemu to run a
> VM with one or more PCI devices assigned).
>
> > I do have a boot console yet I'm not seeing any smmu faults at all.
> > Perhaps I've mis-diagnosed the issue completely. To be clear when I
> > boot with arm-smmu.disable_bypass=y the serial console appears to not
> > accept input in userspace and with arm-smmu.disable_bypass=n I'm fine.
> > I'm using a buildroot initramfs rootfs for simplicity. The system
> > isn't hung as I originally expected as the LED heartbeat trigger
> > continues blinking... I just can't get console to accept input.
>
> Curiouser and curiouser... I'm inclined to suspect that the interrupt
> configuration might also be messed up, such that the SMMU is blocking
> traffic and jammed up due to pending faults, but you're not getting the
> IRQ delivered to find out. Does this patch help reveal anything?
>
> http://linux-arm.org/git?p=linux-rm.git;a=commitdiff;h=29ac3648b580920692c9b417b2fc606995826517
>
> (untested, but it's a direct port of the one I've used for SMMUv3 to
> diagnose something similar)

This shows:
arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
GFSYNR1 0x00000140, GFSYNR2 0x00000000
arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
GFSYNR1 0x00000010, GFSYNR2 0x00000000
arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
GFSYNR1 0x00000010, GFSYNR2 0x00000000
arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
GFSYNR1 0x00000010, GFSYNR2 0x00000000
arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
GFSYNR1 0x00000010, GFSYNR2 0x00000000
arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
GFSYNR1 0x00000010, GFSYNR2 0x00000000
arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
GFSYNR1 0x00000010, GFSYNR2 0x00000000
arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
GFSYNR1 0x00000010, GFSYNR2 0x00000000
arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
GFSYNR1 0x00000010, GFSYNR2 0x00000000
arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
GFSYNR1 0x00000010, GFSYNR2 0x00000000
...
arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
GFSYNR1 0x00000010, GFSYNR2 0x00000000
^^^ these two repeat over and over

>
> That said, it's also puzzling that no other drivers are reporting DMA
> errors or timeouts either - is there any chance that some device is set
> running by the firmware/bootloader and not taken over by a kernel driver?
>

anything is possible - I'm using the Cavium 'BDK' as boot firmware to
configure the board which sits in from of arm trusted firmare and
bootloader.

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
