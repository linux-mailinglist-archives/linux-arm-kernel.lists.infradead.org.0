Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5D8868FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 20:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l6g/lgWKURB9j6yKDlDSI8po+f4ringsYSFoi8R5gH8=; b=Kf5Kn6EryHnJOHK39nlMa1txkF
	2UXDMEJA50+accbkZgxVekWm9SV4XCPN1jH1maIv68zlBPB7VxO9belgZQ8D8JxESq/uMua5LaV7p
	C0+g4k9QbB3qZQu6Np7idWLllrTONVOYp0paQ+OPh5MQKjea/BPDwEtQYOWVT/tIgflAPN0gD1udn
	57QE/KAZqBvj2WH15jKBtxXV/rf8UYzKaIuvSsvj16q9UtgFu4wGYQmkTKkCdhDQ55jaLVUkjLjkG
	OCInKusWlzMGtUkQr++wMi8uA99rx0xP+dJ7qbwFaWKE78JXJlbR4+kuSJFuKG2gHwUNRYoVMXpw+
	s5N6iWdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvnP2-0005iC-Vh; Thu, 08 Aug 2019 18:44:45 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvnOr-0005hZ-Fl
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 18:44:35 +0000
Received: by mail-ed1-x544.google.com with SMTP id e3so91943336edr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 11:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=OnD8REJjiUQ09MeUwthsY9J1rWTm5v/HD9eRCPSk++8=;
 b=lsfCX3ztpMTCzqQ61QI4k4mLGAlSga+SA+JM6MdlUtTurWRbcKyta2HZw3aGr9JkSh
 lh083Z3RQT+f96/OdGYY7TOTlfAXs/Ct/3S0YbTSDYFzd8i69ZTheFeB3q4VymF/1yuN
 jqJju+D34kBHkVCSmAsH6IsyvyWSC+HhugcsOldPNvAEue88NIkHWqVWOtBZmSxafItq
 4ClmEOENGPnKoxSymB55KP6UKk5UPwEq5MZjHjuDDxvtfUq7x0Tim3ajHEehi1BnGAt0
 4EB3+8c0QNGsSJ9+adK3i80N5672PpkAQIZkxp+VGnC9YbnpQiwunnuyTku/bsdLLn3Y
 V2YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=OnD8REJjiUQ09MeUwthsY9J1rWTm5v/HD9eRCPSk++8=;
 b=tYguFZcn3185jCkmWGfrKYkAfnUcyxjdbF5dSYCJurrFeGv4sDNpKs/Qj0JflFBsG1
 4QYNVQitW5owW6+p13Dzk4kxPLRImsq6TjpY1y51RtmPG2rwOanCyP/aI+8L7rmjUQoZ
 5CMx0um4HfV4x27m7TOMdMb9HryW4/XO3Wp/4o3LuPRIsBQa5zT61tWWzyMUkt+Q5aU1
 kXuxNYmQtvRdz+WihTJH0I3ZQaP/bkTMDdSfZ8Bq9414GxVDlRl+FlciIR6s0mx7F10s
 /f52SVwcYsqkcX2ZZNVKzpCsjkB2wHWBvsWoN4XV0Xi+qGmIgi6xvgVG/HKs9WsZhMkY
 QxDQ==
X-Gm-Message-State: APjAAAVEe/nf4whM6ScxkF1Rp8ZNQCBwM7FOfVHO/pErYySJ/gLIceFE
 OSe5JF8QcZEPGqtwwipUANIxmMw7p9/OCuljYctTAA==
X-Google-Smtp-Source: APXvYqzNTM/2itQnnnFi1jbNoHH2r8FhmS0Cb3CycZsD8PIZEFgt7etfdlqdZQ/7cAtXUSR7Ohty4Mg1UyiSLvXGrPI=
X-Received: by 2002:a17:906:5409:: with SMTP id
 q9mr15148025ejo.209.1565289871191; 
 Thu, 08 Aug 2019 11:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
In-Reply-To: <20190801152439.11363-1-pasha.tatashin@soleen.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 8 Aug 2019 14:44:20 -0400
Message-ID: <CA+CK2bADiBMEx9cJuXT5fQkBYFZAtxUtc7ZzjrNfEjijPZkPtw@mail.gmail.com>
Subject: Re: [PATCH v1 0/8] arm64: MMU enabled kexec relocation
To: Pavel Tatashin <pasha.tatashin@soleen.com>,
 James Morris <jmorris@namei.org>, 
 Sasha Levin <sashal@kernel.org>, "Eric W. Biederman" <ebiederm@xmission.com>, 
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 will@kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <marc.zyngier@arm.com>, 
 James Morse <james.morse@arm.com>, Vladimir Murzin <vladimir.murzin@arm.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Bhupesh Sharma <bhsharma@redhat.com>,
 linux-mm <linux-mm@kvack.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_114433_556977_2A2DE05A 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Just a friendly reminder, please send your comments on this series.
It's been a week since I sent out these patches, and no feedback yet.
Also, I'd appreciate if anyone could test this series on vhe hardware
with vhe kernel, it does not look like QEMU can emulate it yet

Thank you,
Pasha

On Thu, Aug 1, 2019 at 11:24 AM Pavel Tatashin
<pasha.tatashin@soleen.com> wrote:
>
> Enable MMU during kexec relocation in order to improve reboot performance.
>
> If kexec functionality is used for a fast system update, with a minimal
> downtime, the relocation of kernel + initramfs takes a significant portion
> of reboot.
>
> The reason for slow relocation is because it is done without MMU, and thus
> not benefiting from D-Cache.
>
> Performance data
> ----------------
> For this experiment, the size of kernel plus initramfs is small, only 25M.
> If initramfs was larger, than the improvements would be greater, as time
> spent in relocation is proportional to the size of relocation.
>
> Previously:
> kernel shutdown 0.022131328s
> relocation      0.440510736s
> kernel startup  0.294706768s
>
> Relocation was taking: 58.2% of reboot time
>
> Now:
> kernel shutdown 0.032066576s
> relocation      0.022158152s
> kernel startup  0.296055880s
>
> Now: Relocation takes 6.3% of reboot time
>
> Total reboot is x2.16 times faster.
>
> Previous approaches and discussions
> -----------------------------------
> https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com
> reserve space for kexec to avoid relocation, involves changes to generic code
> to optimize a problem that exists on arm64 only:
>
> https://lore.kernel.org/lkml/20190716165641.6990-1-pasha.tatashin@soleen.com
> The first attempt to enable MMU, some bugs that prevented performance
> improvement. The page tables unnecessary configured idmap for the whole
> physical space.
>
> https://lore.kernel.org/lkml/20190731153857.4045-1-pasha.tatashin@soleen.com
> No linear copy, bug with EL2 reboots.
>
> Pavel Tatashin (8):
>   kexec: quiet down kexec reboot
>   arm64, mm: transitional tables
>   arm64: hibernate: switch to transtional page tables.
>   kexec: add machine_kexec_post_load()
>   arm64, kexec: move relocation function setup and clean up
>   arm64, kexec: add expandable argument to relocation function
>   arm64, kexec: configure transitional page table for kexec
>   arm64, kexec: enable MMU during kexec relocation
>
>  arch/arm64/Kconfig                     |   4 +
>  arch/arm64/include/asm/kexec.h         |  51 ++++-
>  arch/arm64/include/asm/pgtable-hwdef.h |   1 +
>  arch/arm64/include/asm/trans_table.h   |  68 ++++++
>  arch/arm64/kernel/asm-offsets.c        |  14 ++
>  arch/arm64/kernel/cpu-reset.S          |   4 +-
>  arch/arm64/kernel/cpu-reset.h          |   8 +-
>  arch/arm64/kernel/hibernate.c          | 261 ++++++-----------------
>  arch/arm64/kernel/machine_kexec.c      | 199 ++++++++++++++----
>  arch/arm64/kernel/relocate_kernel.S    | 196 +++++++++---------
>  arch/arm64/mm/Makefile                 |   1 +
>  arch/arm64/mm/trans_table.c            | 273 +++++++++++++++++++++++++
>  kernel/kexec.c                         |   4 +
>  kernel/kexec_core.c                    |   8 +-
>  kernel/kexec_file.c                    |   4 +
>  kernel/kexec_internal.h                |   2 +
>  16 files changed, 758 insertions(+), 340 deletions(-)
>  create mode 100644 arch/arm64/include/asm/trans_table.h
>  create mode 100644 arch/arm64/mm/trans_table.c
>
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
